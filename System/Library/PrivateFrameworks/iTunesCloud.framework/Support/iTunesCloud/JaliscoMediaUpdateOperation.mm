@interface JaliscoMediaUpdateOperation
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (BOOL)preflightImport;
- (JaliscoMediaUpdateOperation)initWithConfiguration:(id)configuration reason:(int64_t)reason supportedMediaKindsHandler:(id)handler clientIdentity:(id)identity;
- (id)newImporter;
- (id)queryFilterPercentEscaped;
- (int64_t)localDatabaseRevision;
- (void)handleSuccess:(int64_t)success;
@end

@implementation JaliscoMediaUpdateOperation

- (int64_t)localDatabaseRevision
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  jaliscoOnDiskDatabaseRevision = [musicLibrary jaliscoOnDiskDatabaseRevision];

  return jaliscoOnDiskDatabaseRevision;
}

- (BOOL)preflightImport
{
  configuration = [(CloudLibraryOperation *)self configuration];
  userIdentity = [configuration userIdentity];

  v5 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:userIdentity];
  shouldBlockPersonalizedNetworkRequestsForMedia = [v5 shouldBlockPersonalizedNetworkRequestsForMedia];

  connection3 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  v8 = os_log_type_enabled(connection3, OS_LOG_TYPE_DEFAULT);
  if (shouldBlockPersonalizedNetworkRequestsForMedia)
  {
    if (v8)
    {
      v15 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, connection3, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping update because privacy acknowledgement is required", &v15, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    if (v8)
    {
      connection = [(CloudLibraryOperation *)self connection];
      v11 = objc_opt_class();
      v12 = v11;
      connection2 = [(CloudLibraryOperation *)self connection];
      v15 = 138543618;
      selfCopy = v11;
      v17 = 2048;
      v18 = connection2;
      _os_log_impl(&_mh_execute_header, connection3, OS_LOG_TYPE_DEFAULT, "Updating using connection: <%{public}@ %p>", &v15, 0x16u);
    }

    connection3 = [(CloudLibraryOperation *)self connection];
    v9 = connection3 != 0;
  }

  return v9;
}

- (id)queryFilterPercentEscaped
{
  v2 = [[ICDJaliscoMediaFilter alloc] initWithKindsToExclude:&__NSArray0__struct supportedMediaKindsHandler:self->_supportedMediaKindsHandler];
  daapQueryFilterString = [(ICDJaliscoMediaFilter *)v2 daapQueryFilterString];

  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v5 = [daapQueryFilterString stringByAddingPercentEncodingWithAllowedCharacters:v4];

  return v5;
}

+ (id)logCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");

  return v2;
}

- (void)handleSuccess:(int64_t)success
{
  localDatabaseRevision = [(JaliscoMediaUpdateOperation *)self localDatabaseRevision];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  [musicLibrary setJaliscoOnDiskDatabaseRevision:success];

  if (!localDatabaseRevision)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = 710000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting initial user version: %lli", &v10, 0xCu);
    }

    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    [musicLibrary2 icd_setSagaDatabaseUserVersion:710000];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientInitialCloudLibraryImportCompletedNotification, 0, 0, 1u);
  }
}

- (id)newImporter
{
  v3 = [JaliscoMediaImporter alloc];
  connection = [(CloudLibraryOperation *)self connection];
  v5 = [(JaliscoMediaImporter *)v3 initWithConnection:connection supportedMediaKindsHandler:self->_supportedMediaKindsHandler];

  return v5;
}

- (JaliscoMediaUpdateOperation)initWithConfiguration:(id)configuration reason:(int64_t)reason supportedMediaKindsHandler:(id)handler clientIdentity:(id)identity
{
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = JaliscoMediaUpdateOperation;
  v12 = [(JaliscoUpdateOperation *)&v15 initWithConfiguration:configuration reason:reason clientIdentity:identity];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_supportedMediaKindsHandler, handler);
  }

  return v13;
}

+ (id)oversizeLogCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync_Oversize");

  return v2;
}

@end