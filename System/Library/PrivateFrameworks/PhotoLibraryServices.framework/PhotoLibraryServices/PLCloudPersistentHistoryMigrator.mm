@interface PLCloudPersistentHistoryMigrator
+ (void)migrateToPersistentHistoryIfNecessaryWithMigratorContext:(id)context;
- (PLCloudPersistentHistoryMigrator)initWithMigratorContext:(id)context;
- (int64_t)migrate;
- (void)migrateToPersistentHistoryIfNecessary;
@end

@implementation PLCloudPersistentHistoryMigrator

- (int64_t)migrate
{
  WeakRetained = objc_loadWeakRetained(&self->_migratorContext);
  readLocalVersion = [WeakRetained readLocalVersion];

  return readLocalVersion != 0;
}

- (void)migrateToPersistentHistoryIfNecessary
{
  v3 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Start migration from change hub to persistent history", buf, 2u);
    }
  }

  migrate = [(PLCloudPersistentHistoryMigrator *)self migrate];
  if (migrate == 1)
  {
    if ((*v3 & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Migration from change hub succeeded (forced reset sync)", v9, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_migratorContext);
    [WeakRetained resetSyncDueToMigrationMarker];

    v6 = objc_loadWeakRetained(&self->_migratorContext);
    [v6 removeAllChangeHubKeys];
    goto LABEL_15;
  }

  if (!migrate && (*v3 & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Migration from change hub not needed", v10, 2u);
    }

LABEL_15:
  }
}

- (PLCloudPersistentHistoryMigrator)initWithMigratorContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PLCloudPersistentHistoryMigrator;
  v5 = [(PLCloudPersistentHistoryMigrator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_migratorContext, contextCopy);
    v7 = v6;
  }

  return v6;
}

+ (void)migrateToPersistentHistoryIfNecessaryWithMigratorContext:(id)context
{
  contextCopy = context;
  v3 = objc_autoreleasePoolPush();
  v4 = [[PLCloudPersistentHistoryMigrator alloc] initWithMigratorContext:contextCopy];
  [(PLCloudPersistentHistoryMigrator *)v4 migrateToPersistentHistoryIfNecessary];

  objc_autoreleasePoolPop(v3);
}

@end