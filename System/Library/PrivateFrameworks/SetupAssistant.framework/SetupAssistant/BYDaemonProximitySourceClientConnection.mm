@interface BYDaemonProximitySourceClientConnection
- (BYDaemonProximitySourceClientConnection)initWithConnection:(id)connection migrationController:(id)controller;
- (void)activateWithSharingChannel:(id)channel;
- (void)backupCompletedWithError:(id)error dateOfLastBackup:(id)backup;
- (void)backupUpdatedProgress:(double)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)finishedWithError:(id)error;
- (void)invalidate;
- (void)prepareForMigrationToDevice:(id)device;
- (void)receivedBackupAction:(id)action;
- (void)startMigration;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
@end

@implementation BYDaemonProximitySourceClientConnection

- (BYDaemonProximitySourceClientConnection)initWithConnection:(id)connection migrationController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = BYDaemonProximitySourceClientConnection;
  v7 = [(BYDaemonClientConnection *)&v11 initWithConnection:connection];
  if (v7)
  {
    v8 = [[BYDaemonBackupController alloc] initWithMigrationController:controllerCopy];
    [(BYDaemonProximitySourceClientConnection *)v7 setBackupController:v8];

    [(BYDaemonProximitySourceClientConnection *)v7 setMigrationController:controllerCopy];
    v9 = voucher_copy();
    [(BYDaemonProximitySourceClientConnection *)v7 setClientVoucher:v9];
  }

  return v7;
}

- (void)activateWithSharingChannel:(id)channel
{
  channelCopy = channel;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Proximity setup source session activated", v15, 2u);
  }

  v6 = objc_alloc_init(SASProximitySession);
  [(BYDaemonProximitySourceClientConnection *)self setSession:v6];

  session = [(BYDaemonProximitySourceClientConnection *)self session];
  [session setDelegate:self];

  session2 = [(BYDaemonProximitySourceClientConnection *)self session];
  [session2 setSharingMessageSession:channelCopy];

  backupController = [(BYDaemonProximitySourceClientConnection *)self backupController];
  [backupController setDelegate:self];

  session3 = [(BYDaemonProximitySourceClientConnection *)self session];
  [session3 setConnected:1];

  session4 = [(BYDaemonProximitySourceClientConnection *)self session];
  [session4 activate];

  session5 = [(BYDaemonProximitySourceClientConnection *)self session];
  v13 = objc_alloc_init(SASProximityReadyAction);
  v14 = [session5 sendAction:v13];
}

- (void)invalidate
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Proximity setup source session invalidated", v6, 2u);
  }

  session = [(BYDaemonProximitySourceClientConnection *)self session];
  [session setConnected:0];

  [(BYDaemonProximitySourceClientConnection *)self setSession:0];
  v5 = +[BYDaemonCloudSyncController sharedController];
  [v5 removeDelegate:self];
}

- (void)finishedWithError:(id)error
{
  errorCopy = error;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy finishedWithError:errorCopy];

  migrationController = [(BYDaemonProximitySourceClientConnection *)self migrationController];
  [migrationController cancel];
}

- (void)receivedBackupAction:(id)action
{
  if ([action shouldStartBackup])
  {
    backupController = [(BYDaemonProximitySourceClientConnection *)self backupController];
    [backupController startBackup];

    v5 = +[BYDaemonCloudSyncController sharedController];
    [v5 addDelegate:self];

    v6 = +[BYDaemonCloudSyncController sharedController];
    [v6 startSync];
  }
}

- (void)prepareForMigrationToDevice:(id)device
{
  deviceCopy = device;
  migrationController = [(BYDaemonProximitySourceClientConnection *)self migrationController];
  [migrationController setTargetDeviceName:deviceCopy];
}

- (void)startMigration
{
  migrationController = [(BYDaemonProximitySourceClientConnection *)self migrationController];
  [migrationController start];
}

- (void)backupCompletedWithError:(id)error dateOfLastBackup:(id)backup
{
  backupCopy = backup;
  errorCopy = error;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy backupCompletedWithError:errorCopy];

  v12 = objc_alloc_init(SASProximityBackupAction);
  [v12 setFinishedBackup:1];
  [v12 setError:errorCopy];

  [v12 setCompletionDate:backupCopy];
  session = [(BYDaemonProximitySourceClientConnection *)self session];
  v11 = [session sendAction:v12];
}

- (void)backupUpdatedProgress:(double)progress estimatedTimeRemaining:(unint64_t)remaining
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy backupProgress:remaining estimatedTimeRemaining:progress];

  v11 = objc_alloc_init(SASProximityBackupAction);
  [v11 setPercentComplete:progress];
  [v11 setTimeRemaining:remaining];
  session = [(BYDaemonProximitySourceClientConnection *)self session];
  v10 = [session sendAction:v11];
}

- (void)syncProgress:(double)progress
{
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy syncProgress:progress];
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  connection = [(BYDaemonClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy syncCompletedWithErrors:errorsCopy];

  v7 = [errorsCopy count];
  v8 = _BYLoggingFacility();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = errorsCopy;
      v10 = "iCloud sync completed with error: %@";
      v11 = v8;
      v12 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
    }
  }

  else if (v9)
  {
    LOWORD(v13) = 0;
    v10 = "iCloud sync completed successfully!";
    v11 = v8;
    v12 = 2;
    goto LABEL_6;
  }
}

@end