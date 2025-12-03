@interface BMSyncCKRecord
- (BMSyncCKRecord)initWithFMResultSet:(id)set;
@end

@implementation BMSyncCKRecord

- (BMSyncCKRecord)initWithFMResultSet:(id)set
{
  setCopy = set;
  v15.receiver = self;
  v15.super_class = BMSyncCKRecord;
  v5 = [(BMSyncCKRecord *)&v15 init];
  if (v5)
  {
    v6 = [setCopy stringForColumn:@"record_name"];
    recordName = v5->_recordName;
    v5->_recordName = v6;

    v8 = [setCopy stringForColumn:@"stream_identifier"];
    streamIdentifier = v5->_streamIdentifier;
    v5->_streamIdentifier = v8;

    v10 = [setCopy dataForColumn:@"local_mergeable_value"];
    localMergeableValue = v5->_localMergeableValue;
    v5->_localMergeableValue = v10;

    v12 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [setCopy longForColumn:@"location_id"]);
    locationID = v5->_locationID;
    v5->_locationID = v12;
  }

  return v5;
}

@end