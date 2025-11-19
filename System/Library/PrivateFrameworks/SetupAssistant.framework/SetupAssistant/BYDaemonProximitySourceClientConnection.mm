@interface BYDaemonProximitySourceClientConnection
- (BYDaemonProximitySourceClientConnection)initWithConnection:(id)a3 migrationController:(id)a4;
- (void)activateWithSharingChannel:(id)a3;
- (void)backupCompletedWithError:(id)a3 dateOfLastBackup:(id)a4;
- (void)backupUpdatedProgress:(double)a3 estimatedTimeRemaining:(unint64_t)a4;
- (void)finishedWithError:(id)a3;
- (void)invalidate;
- (void)prepareForMigrationToDevice:(id)a3;
- (void)receivedBackupAction:(id)a3;
- (void)startMigration;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
@end

@implementation BYDaemonProximitySourceClientConnection

- (BYDaemonProximitySourceClientConnection)initWithConnection:(id)a3 migrationController:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = BYDaemonProximitySourceClientConnection;
  v7 = [(BYDaemonClientConnection *)&v11 initWithConnection:a3];
  if (v7)
  {
    v8 = [[BYDaemonBackupController alloc] initWithMigrationController:v6];
    [(BYDaemonProximitySourceClientConnection *)v7 setBackupController:v8];

    [(BYDaemonProximitySourceClientConnection *)v7 setMigrationController:v6];
    v9 = voucher_copy();
    [(BYDaemonProximitySourceClientConnection *)v7 setClientVoucher:v9];
  }

  return v7;
}

- (void)activateWithSharingChannel:(id)a3
{
  v4 = a3;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Proximity setup source session activated", v15, 2u);
  }

  v6 = objc_alloc_init(SASProximitySession);
  [(BYDaemonProximitySourceClientConnection *)self setSession:v6];

  v7 = [(BYDaemonProximitySourceClientConnection *)self session];
  [v7 setDelegate:self];

  v8 = [(BYDaemonProximitySourceClientConnection *)self session];
  [v8 setSharingMessageSession:v4];

  v9 = [(BYDaemonProximitySourceClientConnection *)self backupController];
  [v9 setDelegate:self];

  v10 = [(BYDaemonProximitySourceClientConnection *)self session];
  [v10 setConnected:1];

  v11 = [(BYDaemonProximitySourceClientConnection *)self session];
  [v11 activate];

  v12 = [(BYDaemonProximitySourceClientConnection *)self session];
  v13 = objc_alloc_init(SASProximityReadyAction);
  v14 = [v12 sendAction:v13];
}

- (void)invalidate
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Proximity setup source session invalidated", v6, 2u);
  }

  v4 = [(BYDaemonProximitySourceClientConnection *)self session];
  [v4 setConnected:0];

  [(BYDaemonProximitySourceClientConnection *)self setSession:0];
  v5 = +[BYDaemonCloudSyncController sharedController];
  [v5 removeDelegate:self];
}

- (void)finishedWithError:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonClientConnection *)self connection];
  v6 = [v5 remoteObjectProxy];
  [v6 finishedWithError:v4];

  v7 = [(BYDaemonProximitySourceClientConnection *)self migrationController];
  [v7 cancel];
}

- (void)receivedBackupAction:(id)a3
{
  if ([a3 shouldStartBackup])
  {
    v4 = [(BYDaemonProximitySourceClientConnection *)self backupController];
    [v4 startBackup];

    v5 = +[BYDaemonCloudSyncController sharedController];
    [v5 addDelegate:self];

    v6 = +[BYDaemonCloudSyncController sharedController];
    [v6 startSync];
  }
}

- (void)prepareForMigrationToDevice:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonProximitySourceClientConnection *)self migrationController];
  [v5 setTargetDeviceName:v4];
}

- (void)startMigration
{
  v2 = [(BYDaemonProximitySourceClientConnection *)self migrationController];
  [v2 start];
}

- (void)backupCompletedWithError:(id)a3 dateOfLastBackup:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BYDaemonClientConnection *)self connection];
  v9 = [v8 remoteObjectProxy];
  [v9 backupCompletedWithError:v7];

  v12 = objc_alloc_init(SASProximityBackupAction);
  [v12 setFinishedBackup:1];
  [v12 setError:v7];

  [v12 setCompletionDate:v6];
  v10 = [(BYDaemonProximitySourceClientConnection *)self session];
  v11 = [v10 sendAction:v12];
}

- (void)backupUpdatedProgress:(double)a3 estimatedTimeRemaining:(unint64_t)a4
{
  v7 = [(BYDaemonClientConnection *)self connection];
  v8 = [v7 remoteObjectProxy];
  [v8 backupProgress:a4 estimatedTimeRemaining:a3];

  v11 = objc_alloc_init(SASProximityBackupAction);
  [v11 setPercentComplete:a3];
  [v11 setTimeRemaining:a4];
  v9 = [(BYDaemonProximitySourceClientConnection *)self session];
  v10 = [v9 sendAction:v11];
}

- (void)syncProgress:(double)a3
{
  v5 = [(BYDaemonClientConnection *)self connection];
  v4 = [v5 remoteObjectProxy];
  [v4 syncProgress:a3];
}

- (void)syncCompletedWithErrors:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonClientConnection *)self connection];
  v6 = [v5 remoteObjectProxy];
  [v6 syncCompletedWithErrors:v4];

  v7 = [v4 count];
  v8 = _BYLoggingFacility();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = v4;
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