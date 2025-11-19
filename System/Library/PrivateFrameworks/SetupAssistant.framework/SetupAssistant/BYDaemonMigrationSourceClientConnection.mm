@interface BYDaemonMigrationSourceClientConnection
- (BYDaemonMigrationSourceClientConnection)initWithConnection:(id)a3 migrationController:(id)a4;
- (void)cancel;
- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4;
- (void)launchSetupForMigration;
- (void)registerAsUserInterfaceHost:(id)a3;
- (void)setFileTransferTemplate:(id)a3;
@end

@implementation BYDaemonMigrationSourceClientConnection

- (BYDaemonMigrationSourceClientConnection)initWithConnection:(id)a3 migrationController:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYDaemonMigrationSourceClientConnection;
  v8 = [(BYDaemonClientConnection *)&v11 initWithConnection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_migrationController, a4);
  }

  return v9;
}

- (void)cancel
{
  v2 = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [v2 cancel];
}

- (void)registerAsUserInterfaceHost:(id)a3
{
  v4 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B118;
  v11[3] = &unk_100020868;
  v11[4] = self;
  v5 = [(BYDaemonClientConnection *)self connection];
  [v5 setInvalidationHandler:v11];

  v6 = [(BYDaemonClientConnection *)self connection:_NSConcreteStackBlock];
  [v6 setInterruptionHandler:&v10];

  v7 = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [v7 addDelegate:self];

  if (v4)
  {
    v8 = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
    v9 = [v8 targetDeviceName];
    v4[2](v4, v9);
  }
}

- (void)launchSetupForMigration
{
  v3 = [(BYDaemonClientConnection *)self connection];
  [v3 setInvalidationHandler:0];

  v4 = [(BYDaemonClientConnection *)self connection];
  [v4 setInterruptionHandler:0];

  v5 = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [v5 launchSetupForMigration];
}

- (void)setFileTransferTemplate:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [v5 setFileTransferTemplate:v4];
}

- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4
{
  v5 = a4;
  v7 = [(BYDaemonClientConnection *)self connection];
  v6 = [v7 remoteObjectProxy];
  [v6 didChangeConnectionInformation:v5];
}

- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4
{
  v5 = a4;
  v7 = [(BYDaemonClientConnection *)self connection];
  v6 = [v7 remoteObjectProxy];
  [v6 didUpdateProgress:v5];
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  v7 = [(BYDaemonClientConnection *)self connection];
  v6 = [v7 remoteObjectProxy];
  [v6 didFinishWithError:v5];
}

@end