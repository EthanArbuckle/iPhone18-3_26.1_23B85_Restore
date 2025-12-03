@interface BYMigrationSourceController
- (BYMigrationSourceController)init;
- (void)launchSetupForMigration:(id)migration;
- (void)setFileTransferSession:(id)session;
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

- (void)launchSetupForMigration:(id)migration
{
  migrationSourceClient = [(BYMigrationSourceController *)self migrationSourceClient];
  [migrationSourceClient launchSetupForMigration];
}

- (void)setFileTransferSession:(id)session
{
  sessionCopy = session;
  migrationSourceClient = [(BYMigrationSourceController *)self migrationSourceClient];
  [migrationSourceClient setFileTransferTemplate:sessionCopy];
}

@end