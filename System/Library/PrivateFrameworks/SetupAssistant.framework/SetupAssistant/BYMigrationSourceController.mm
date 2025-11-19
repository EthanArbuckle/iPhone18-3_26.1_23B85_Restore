@interface BYMigrationSourceController
- (BYMigrationSourceController)init;
- (void)launchSetupForMigration:(id)a3;
- (void)setFileTransferSession:(id)a3;
@end

@implementation BYMigrationSourceController

- (BYMigrationSourceController)init
{
  v6.receiver = self;
  v6.super_class = BYMigrationSourceController;
  v2 = [(BYMigrationSourceController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BYBuddyDaemonMigrationSourceClient);
    migrationSourceClient = v2->_migrationSourceClient;
    v2->_migrationSourceClient = v3;
  }

  return v2;
}

- (void)launchSetupForMigration:(id)a3
{
  v3 = [(BYMigrationSourceController *)self migrationSourceClient];
  [v3 launchSetupForMigration];
}

- (void)setFileTransferSession:(id)a3
{
  v4 = a3;
  v5 = [(BYMigrationSourceController *)self migrationSourceClient];
  [v5 setFileTransferTemplate:v4];
}

@end