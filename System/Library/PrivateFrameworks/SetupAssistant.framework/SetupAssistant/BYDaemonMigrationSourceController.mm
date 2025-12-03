@interface BYDaemonMigrationSourceController
- (BYDaemonMigrationSourceController)init;
- (void)addDelegate:(id)delegate;
- (void)cancel;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)launchSetupForMigration;
- (void)removeDelegate:(id)delegate;
- (void)start;
- (void)waitForMigrationToCompleteWithTimeout:(double)timeout completionBlock:(id)block;
@end

@implementation BYDaemonMigrationSourceController

- (BYDaemonMigrationSourceController)init
{
  v6.receiver = self;
  v6.super_class = BYDaemonMigrationSourceController;
  v2 = [(BYDaemonMigrationSourceController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Migration Complete Queue", 0);
    migrationCompleteQueue = v2->_migrationCompleteQueue;
    v2->_migrationCompleteQueue = v3;
  }

  return v2;
}

- (void)start
{
  migrationManager = [(BYDaemonMigrationSourceController *)self migrationManager];

  if (migrationManager)
  {
    migrationManager2 = [(BYDaemonMigrationSourceController *)self migrationManager];
    [migrationManager2 cancelWithCause:8];
  }

  v5 = [BYSourceDeviceMigration alloc];
  fileTransferSessionTemplate = [(BYDaemonMigrationSourceController *)self fileTransferSessionTemplate];
  v7 = [v5 initWithFileTranferSession:fileTransferSessionTemplate];
  [(BYDaemonMigrationSourceController *)self setMigrationManager:v7];

  migrationManager3 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [migrationManager3 addDelegate:self];

  migrationManager4 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [migrationManager4 start];
}

- (void)cancel
{
  migrationManager = [(BYDaemonMigrationSourceController *)self migrationManager];
  [migrationManager cancelWithCause:1];

  migrationManager2 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [migrationManager2 removeDelegate:self];

  [(BYDaemonMigrationSourceController *)self setMigrationManager:0];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  migrationManager = [(BYDaemonMigrationSourceController *)self migrationManager];
  [migrationManager addDelegate:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  migrationManager = [(BYDaemonMigrationSourceController *)self migrationManager];
  [migrationManager removeDelegate:delegateCopy];
}

- (void)launchSetupForMigration
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = BYSetupAssistantLaunchMigrationSourceUINotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (void)waitForMigrationToCompleteWithTimeout:(double)timeout completionBlock:(id)block
{
  blockCopy = block;
  migrationCompleteQueue = [(BYDaemonMigrationSourceController *)self migrationCompleteQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F808;
  block[3] = &unk_100020E38;
  block[4] = self;
  v10 = blockCopy;
  timeoutCopy = timeout;
  v8 = blockCopy;
  dispatch_async(migrationCompleteQueue, block);
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  v5 = [(BYDaemonMigrationSourceController *)self migrationCompleteQueue:manager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA4C;
  block[3] = &unk_100020868;
  block[4] = self;
  dispatch_async(v5, block);
}

@end