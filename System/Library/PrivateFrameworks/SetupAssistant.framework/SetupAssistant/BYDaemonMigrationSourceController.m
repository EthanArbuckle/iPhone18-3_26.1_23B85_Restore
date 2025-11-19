@interface BYDaemonMigrationSourceController
- (BYDaemonMigrationSourceController)init;
- (void)addDelegate:(id)a3;
- (void)cancel;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)launchSetupForMigration;
- (void)removeDelegate:(id)a3;
- (void)start;
- (void)waitForMigrationToCompleteWithTimeout:(double)a3 completionBlock:(id)a4;
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
  v3 = [(BYDaemonMigrationSourceController *)self migrationManager];

  if (v3)
  {
    v4 = [(BYDaemonMigrationSourceController *)self migrationManager];
    [v4 cancelWithCause:8];
  }

  v5 = [BYSourceDeviceMigration alloc];
  v6 = [(BYDaemonMigrationSourceController *)self fileTransferSessionTemplate];
  v7 = [v5 initWithFileTranferSession:v6];
  [(BYDaemonMigrationSourceController *)self setMigrationManager:v7];

  v8 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [v8 addDelegate:self];

  v9 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [v9 start];
}

- (void)cancel
{
  v3 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [v3 cancelWithCause:1];

  v4 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [v4 removeDelegate:self];

  [(BYDaemonMigrationSourceController *)self setMigrationManager:0];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [v5 addDelegate:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonMigrationSourceController *)self migrationManager];
  [v5 removeDelegate:v4];
}

- (void)launchSetupForMigration
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = BYSetupAssistantLaunchMigrationSourceUINotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (void)waitForMigrationToCompleteWithTimeout:(double)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [(BYDaemonMigrationSourceController *)self migrationCompleteQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F808;
  block[3] = &unk_100020E38;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  v5 = [(BYDaemonMigrationSourceController *)self migrationCompleteQueue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA4C;
  block[3] = &unk_100020868;
  block[4] = self;
  dispatch_async(v5, block);
}

@end