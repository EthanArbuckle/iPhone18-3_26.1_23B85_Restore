@interface RCCloudKitService
- (RCCloudKitService)init;
- (id)_metaDataDeviceQueryOperation;
- (void)_fetchDeviceRecordsWithCursor:(id)cursor results:(id)results completion:(id)completion;
@end

@implementation RCCloudKitService

- (RCCloudKitService)init
{
  v6.receiver = self;
  v6.super_class = RCCloudKitService;
  v2 = [(RCCloudKitService *)&v6 init];
  if (v2)
  {
    v3 = +[RCCloudKitContainerUtilities createContainer];
    ckContainer = v2->_ckContainer;
    v2->_ckContainer = v3;
  }

  return v2;
}

- (id)_metaDataDeviceQueryOperation
{
  v2 = [NSPredicate predicateWithValue:1];
  v3 = [[CKQuery alloc] initWithRecordType:@"metadata_device_type" predicate:v2];
  v4 = [[CKQueryOperation alloc] initWithQuery:v3];
  v5 = [[CKRecordZone alloc] initWithZoneName:@"metadata_zone"];
  zoneID = [v5 zoneID];
  [v4 setZoneID:zoneID];

  v9[0] = @"DeviceOSType";
  v9[1] = @"DeviceOSVersionNumber";
  v7 = [NSArray arrayWithObjects:v9 count:2];
  [v4 setDesiredKeys:v7];

  return v4;
}

- (void)_fetchDeviceRecordsWithCursor:(id)cursor results:(id)results completion:(id)completion
{
  cursorCopy = cursor;
  resultsCopy = results;
  completionCopy = completion;
  if (cursorCopy)
  {
    _metaDataDeviceQueryOperation = [[CKQueryOperation alloc] initWithCursor:cursorCopy];
  }

  else
  {
    _metaDataDeviceQueryOperation = [(RCCloudKitService *)self _metaDataDeviceQueryOperation];
  }

  v12 = _metaDataDeviceQueryOperation;
  if (!resultsCopy)
  {
    resultsCopy = objc_opt_new();
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000228FC;
  v25[3] = &unk_100056500;
  v13 = resultsCopy;
  v26 = v13;
  [v12 setRecordMatchedBlock:v25];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10002290C;
  v21 = &unk_100056528;
  selfCopy = self;
  v23 = v13;
  v24 = completionCopy;
  v14 = completionCopy;
  v15 = v13;
  [v12 setQueryCompletionBlock:&v18];
  v16 = [(RCCloudKitService *)self ckContainer:v18];
  privateCloudDatabase = [v16 privateCloudDatabase];
  [privateCloudDatabase addOperation:v12];
}

@end