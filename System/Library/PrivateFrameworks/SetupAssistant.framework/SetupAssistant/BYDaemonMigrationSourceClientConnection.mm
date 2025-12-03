@interface BYDaemonMigrationSourceClientConnection
- (BYDaemonMigrationSourceClientConnection)initWithConnection:(id)connection migrationController:(id)controller;
- (void)cancel;
- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress;
- (void)launchSetupForMigration;
- (void)registerAsUserInterfaceHost:(id)host;
- (void)setFileTransferTemplate:(id)template;
@end

@implementation BYDaemonMigrationSourceClientConnection

- (BYDaemonMigrationSourceClientConnection)initWithConnection:(id)connection migrationController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = BYDaemonMigrationSourceClientConnection;
  v8 = [(BYDaemonClientConnection *)&v11 initWithConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_migrationController, controller);
  }

  return v9;
}

- (void)cancel
{
  migrationController = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [migrationController cancel];
}

- (void)registerAsUserInterfaceHost:(id)host
{
  hostCopy = host;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B118;
  v11[3] = &unk_100020868;
  v11[4] = self;
  connection = [(BYDaemonClientConnection *)self connection];
  [connection setInvalidationHandler:v11];

  v6 = [(BYDaemonClientConnection *)self connection:_NSConcreteStackBlock];
  [v6 setInterruptionHandler:&v10];

  migrationController = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [migrationController addDelegate:self];

  if (hostCopy)
  {
    migrationController2 = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
    targetDeviceName = [migrationController2 targetDeviceName];
    hostCopy[2](hostCopy, targetDeviceName);
  }
}

- (void)launchSetupForMigration
{
  connection = [(BYDaemonClientConnection *)self connection];
  [connection setInvalidationHandler:0];

  connection2 = [(BYDaemonClientConnection *)self connection];
  [connection2 setInterruptionHandler:0];

  migrationController = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [migrationController launchSetupForMigration];
}

- (void)setFileTransferTemplate:(id)template
{
  templateCopy = template;
  migrationController = [(BYDaemonMigrationSourceClientConnection *)self migrationController];
  [migrationController setFileTransferTemplate:templateCopy];
}

- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information
{
  informationCopy = information;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy didChangeConnectionInformation:informationCopy];
}

- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress
{
  progressCopy = progress;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy didUpdateProgress:progressCopy];
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  errorCopy = error;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy didFinishWithError:errorCopy];
}

@end