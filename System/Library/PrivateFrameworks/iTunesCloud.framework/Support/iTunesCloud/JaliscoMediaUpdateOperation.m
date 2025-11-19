@interface JaliscoMediaUpdateOperation
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (BOOL)preflightImport;
- (JaliscoMediaUpdateOperation)initWithConfiguration:(id)a3 reason:(int64_t)a4 supportedMediaKindsHandler:(id)a5 clientIdentity:(id)a6;
- (id)newImporter;
- (id)queryFilterPercentEscaped;
- (int64_t)localDatabaseRevision;
- (void)handleSuccess:(int64_t)a3;
@end

@implementation JaliscoMediaUpdateOperation

- (int64_t)localDatabaseRevision
{
  v2 = [(CloudLibraryOperation *)self musicLibrary];
  v3 = [v2 jaliscoOnDiskDatabaseRevision];

  return v3;
}

- (BOOL)preflightImport
{
  v3 = [(CloudLibraryOperation *)self configuration];
  v4 = [v3 userIdentity];

  v5 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v4];
  v6 = [v5 shouldBlockPersonalizedNetworkRequestsForMedia];

  v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v15 = 138543362;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping update because privacy acknowledgement is required", &v15, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    if (v8)
    {
      v10 = [(CloudLibraryOperation *)self connection];
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(CloudLibraryOperation *)self connection];
      v15 = 138543618;
      v16 = v11;
      v17 = 2048;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating using connection: <%{public}@ %p>", &v15, 0x16u);
    }

    v7 = [(CloudLibraryOperation *)self connection];
    v9 = v7 != 0;
  }

  return v9;
}

- (id)queryFilterPercentEscaped
{
  v2 = [[ICDJaliscoMediaFilter alloc] initWithKindsToExclude:&__NSArray0__struct supportedMediaKindsHandler:self->_supportedMediaKindsHandler];
  v3 = [(ICDJaliscoMediaFilter *)v2 daapQueryFilterString];

  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  return v5;
}

+ (id)logCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");

  return v2;
}

- (void)handleSuccess:(int64_t)a3
{
  v5 = [(JaliscoMediaUpdateOperation *)self localDatabaseRevision];
  v6 = [(CloudLibraryOperation *)self musicLibrary];
  [v6 setJaliscoOnDiskDatabaseRevision:a3];

  if (!v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = 710000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting initial user version: %lli", &v10, 0xCu);
    }

    v8 = [(CloudLibraryOperation *)self musicLibrary];
    [v8 icd_setSagaDatabaseUserVersion:710000];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientInitialCloudLibraryImportCompletedNotification, 0, 0, 1u);
  }
}

- (id)newImporter
{
  v3 = [JaliscoMediaImporter alloc];
  v4 = [(CloudLibraryOperation *)self connection];
  v5 = [(JaliscoMediaImporter *)v3 initWithConnection:v4 supportedMediaKindsHandler:self->_supportedMediaKindsHandler];

  return v5;
}

- (JaliscoMediaUpdateOperation)initWithConfiguration:(id)a3 reason:(int64_t)a4 supportedMediaKindsHandler:(id)a5 clientIdentity:(id)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = JaliscoMediaUpdateOperation;
  v12 = [(JaliscoUpdateOperation *)&v15 initWithConfiguration:a3 reason:a4 clientIdentity:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_supportedMediaKindsHandler, a5);
  }

  return v13;
}

+ (id)oversizeLogCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync_Oversize");

  return v2;
}

@end