@interface CloudLoadBulkArtworkInfoOperation
- (CloudLoadBulkArtworkInfoOperation)initWithCloudIDs:(id)ds;
- (CloudLoadBulkArtworkInfoOperation)initWithConfiguration:(id)configuration cloudIDs:(id)ds;
- (void)main;
@end

@implementation CloudLoadBulkArtworkInfoOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[ICDeviceInfo currentDeviceInfo];
  if ([v4 isWatch])
  {
    v5 = +[ICEnvironmentMonitor sharedMonitor];
    currentThermalLevel = [v5 currentThermalLevel];

    if (currentThermalLevel >= 0x14)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = "Not performing artwork info operation because of elevated thermal levels";
        v9 = v7;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 2;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = +[ICPrivacyInfo sharedPrivacyInfo];
  privacyAcknowledgementRequiredForMedia = [v12 privacyAcknowledgementRequiredForMedia];

  if (privacyAcknowledgementRequiredForMedia)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      v8 = "%{public}@ Skipping update because privacy acknowledgement is required";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 12;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%@ - (item count = %lu)", objc_opt_class(), [(NSArray *)self->_cloudIDs count]];
    v14 = [[MSVXPCTransaction alloc] initWithName:v7];
    [v14 beginTransaction];
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      cloudIDs = self->_cloudIDs;
      v18 = v16;
      *buf = 138543618;
      selfCopy = v16;
      v27 = 2048;
      v28 = [(NSArray *)cloudIDs count];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading artwork info for %lu cloud IDs", buf, 0x16u);
    }

    connection = [(CloudLibraryOperation *)self connection];
    v20 = -[ICBulkArtworkInfoRequest initWithDatabaseID:cloudIDs:itemKind:useLongIDs:]([ICBulkArtworkInfoRequest alloc], "initWithDatabaseID:cloudIDs:itemKind:useLongIDs:", [connection databaseID], self->_cloudIDs, -[CloudLoadBulkArtworkInfoOperation itemKind](self, "itemKind"), -[CloudLoadBulkArtworkInfoOperation useLongIDs](self, "useLongIDs"));
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10005C210;
    v23[3] = &unk_1001DF838;
    v23[4] = self;
    v24 = dispatch_semaphore_create(0);
    v21 = v24;
    [connection sendRequest:v20 withResponseHandler:v23];
    v22 = dispatch_time(0, 300000000000);
    dispatch_semaphore_wait(v21, v22);
    [v14 endTransaction];
  }

LABEL_13:

  objc_autoreleasePoolPop(v3);
}

- (CloudLoadBulkArtworkInfoOperation)initWithConfiguration:(id)configuration cloudIDs:(id)ds
{
  configurationCopy = configuration;
  dsCopy = ds;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"CloudLoadBulkArtworkInfoOperation.m" lineNumber:31 description:@"CloudIDs must be an array!"];
  }

  v14.receiver = self;
  v14.super_class = CloudLoadBulkArtworkInfoOperation;
  v9 = [(CloudLibraryOperation *)&v14 initWithConfiguration:configurationCopy];
  if (v9)
  {
    v10 = [dsCopy copy];
    cloudIDs = v9->_cloudIDs;
    v9->_cloudIDs = v10;
  }

  return v9;
}

- (CloudLoadBulkArtworkInfoOperation)initWithCloudIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  v6 = [(CloudLoadBulkArtworkInfoOperation *)self initWithConfiguration:v5 cloudIDs:dsCopy];

  return v6;
}

@end