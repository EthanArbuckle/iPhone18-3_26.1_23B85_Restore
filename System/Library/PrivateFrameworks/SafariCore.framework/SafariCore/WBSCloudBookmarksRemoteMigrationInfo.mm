@interface WBSCloudBookmarksRemoteMigrationInfo
- (WBSCloudBookmarksRemoteMigrationInfo)initWithMigrationState:(int64_t)state migratorDeviceIdentifier:(id)identifier serverModificationDate:(id)date;
@end

@implementation WBSCloudBookmarksRemoteMigrationInfo

- (WBSCloudBookmarksRemoteMigrationInfo)initWithMigrationState:(int64_t)state migratorDeviceIdentifier:(id)identifier serverModificationDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = WBSCloudBookmarksRemoteMigrationInfo;
  v10 = [(WBSCloudBookmarksRemoteMigrationInfo *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_migrationState = state;
    v12 = [identifierCopy copy];
    migratorDeviceIdentifier = v11->_migratorDeviceIdentifier;
    v11->_migratorDeviceIdentifier = v12;

    objc_storeStrong(&v11->_serverModificationDate, date);
    v14 = v11;
  }

  return v11;
}

@end