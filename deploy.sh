TMPFILE=`mktemp`
echo "API_KEY=${API_KEY:?API_KEY is required}"
echo "SPREADSHEET_ID=${SPREADSHEET_ID:?SPREADSHEET_ID is required}"
sed "s/REPLACE_API_KEY/$API_KEY/g" index.html | sed "s/REPLACE_SPREAD_SHEET/$SPREADSHEET_ID/g" > $TMPFILE
scp $TMPFILE dockyard:/opt/sites/gleisdrei.ch/${DEST:?DEST is required}/index.html