@interface BMSyncCKRecord
- (BMSyncCKRecord)initWithFMResultSet:(id)a3;
@end

@implementation BMSyncCKRecord

- (BMSyncCKRecord)initWithFMResultSet:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BMSyncCKRecord;
  v5 = [(BMSyncCKRecord *)&v15 init];
  if (v5)
  {
    v6 = [v4 stringForColumn:@"record_name"];
    recordName = v5->_recordName;
    v5->_recordName = v6;

    v8 = [v4 stringForColumn:@"stream_identifier"];
    streamIdentifier = v5->_streamIdentifier;
    v5->_streamIdentifier = v8;

    v10 = [v4 dataForColumn:@"local_mergeable_value"];
    localMergeableValue = v5->_localMergeableValue;
    v5->_localMergeableValue = v10;

    v12 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 longForColumn:@"location_id"]);
    locationID = v5->_locationID;
    v5->_locationID = v12;
  }

  return v5;
}

@end