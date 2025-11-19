@interface WBSCloudBookmarksRemoteMigrationInfo
- (WBSCloudBookmarksRemoteMigrationInfo)initWithMigrationState:(int64_t)a3 migratorDeviceIdentifier:(id)a4 serverModificationDate:(id)a5;
@end

@implementation WBSCloudBookmarksRemoteMigrationInfo

- (WBSCloudBookmarksRemoteMigrationInfo)initWithMigrationState:(int64_t)a3 migratorDeviceIdentifier:(id)a4 serverModificationDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = WBSCloudBookmarksRemoteMigrationInfo;
  v10 = [(WBSCloudBookmarksRemoteMigrationInfo *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_migrationState = a3;
    v12 = [v8 copy];
    migratorDeviceIdentifier = v11->_migratorDeviceIdentifier;
    v11->_migratorDeviceIdentifier = v12;

    objc_storeStrong(&v11->_serverModificationDate, a5);
    v14 = v11;
  }

  return v11;
}

@end