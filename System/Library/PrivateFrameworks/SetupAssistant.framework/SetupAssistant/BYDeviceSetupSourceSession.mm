@interface BYDeviceSetupSourceSession
- (void)activate;
- (void)backupCompletedWithError:(id)a3;
- (void)backupProgress:(double)a3 estimatedTimeRemaining:(int64_t)a4;
- (void)finishedWithError:(id)a3;
- (void)invalidate;
- (void)setFileTransferSessionTemplate:(id)a3;
- (void)setMessageSession:(id)a3;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
- (void)updateProgress;
@end

@implementation BYDeviceSetupSourceSession

- (void)setMessageSession:(id)a3
{
  objc_storeStrong(&self->_messageSession, a3);
  v4 = [(BYDeviceSetupSourceSession *)self client];

  if (v4)
  {
    [(BYDeviceSetupSourceSession *)self invalidate];

    [(BYDeviceSetupSourceSession *)self activate];
  }
}

- (void)setFileTransferSessionTemplate:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_fileTransferSessionTemplate, a3);
  v5 = [(BYDeviceSetupSourceSession *)self migrationSourceClient];

  if (v5)
  {
    v6 = [(BYDeviceSetupSourceSession *)self migrationSourceClient];
    [v6 setFileTransferTemplate:v7];
  }
}

- (void)activate
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Proximity setup source session activated", v11, 2u);
  }

  [(BYDeviceSetupSourceSession *)self setCurrentPhase:0];
  v4 = objc_alloc_init(BYBuddyDaemonProximitySourceClient);
  [(BYDeviceSetupSourceSession *)self setClient:v4];

  v5 = [(BYDeviceSetupSourceSession *)self client];
  [v5 setDelegate:self];

  v6 = objc_alloc_init(BYBuddyDaemonMigrationSourceClient);
  [(BYDeviceSetupSourceSession *)self setMigrationSourceClient:v6];

  v7 = [(BYDeviceSetupSourceSession *)self migrationSourceClient];
  v8 = [(BYDeviceSetupSourceSession *)self fileTransferSessionTemplate];
  [v7 setFileTransferTemplate:v8];

  [(BYDeviceSetupSourceSession *)self setTimeRemaining:-1.0];
  v9 = [(BYDeviceSetupSourceSession *)self client];
  v10 = [(BYDeviceSetupSourceSession *)self messageSession];
  [v9 activateWithSharingChannel:v10];
}

- (void)invalidate
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Proximity setup source session invalidated", v5, 2u);
  }

  v4 = [(BYDeviceSetupSourceSession *)self client];
  [v4 invalidate];

  [(BYDeviceSetupSourceSession *)self setClient:0];
}

- (void)updateProgress
{
  if ([(BYDeviceSetupSourceSession *)self currentPhase]== 1 && [(BYDeviceSetupSourceSession *)self hasBackupCompleted])
  {
    [(BYDeviceSetupSourceSession *)self setCurrentPhase:2];
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(BYDeviceSetupSourceSession *)self backupProgress];
  v4 = v3;
  [(BYDeviceSetupSourceSession *)self syncProgress];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 0.200000003 + v4 * 0.800000012];
  [v13 setObject:v6 forKeyedSubscript:@"percentComplete"];

  v7 = MEMORY[0x1E696AD98];
  [(BYDeviceSetupSourceSession *)self timeRemaining];
  v9 = [v7 numberWithDouble:v8 * 60.0];
  [v13 setObject:v9 forKeyedSubscript:@"timeRemaining"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BYDeviceSetupSourceSession currentPhase](self, "currentPhase")}];
  [v13 setObject:v10 forKeyedSubscript:@"phase"];

  v11 = [(BYDeviceSetupSourceSession *)self progressHandler];

  if (v11)
  {
    v12 = [(BYDeviceSetupSourceSession *)self progressHandler];
    (v12)[2](v12, v13);
  }
}

- (void)finishedWithError:(id)a3
{
  v9 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (v9)
  {
    v6 = @"eo";
    v7 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E695E118];
    v6 = @"finished";
  }

  [v4 setObject:v7 forKeyedSubscript:v6];
  v8 = [(BYDeviceSetupSourceSession *)self progressHandler];
  (v8)[2](v8, v5);
}

- (void)backupProgress:(double)a3 estimatedTimeRemaining:(int64_t)a4
{
  [(BYDeviceSetupSourceSession *)self setBackupProgress:a3];
  [(BYDeviceSetupSourceSession *)self setTimeRemaining:a4];
  [(BYDeviceSetupSourceSession *)self setHasBackupCompleted:0];
  [(BYDeviceSetupSourceSession *)self setCurrentPhase:1];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

- (void)backupCompletedWithError:(id)a3
{
  [(BYDeviceSetupSourceSession *)self setHasBackupCompleted:1];
  [(BYDeviceSetupSourceSession *)self setTimeRemaining:-1.0];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

- (void)syncProgress:(double)a3
{
  [(BYDeviceSetupSourceSession *)self setSyncProgress:a3];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

- (void)syncCompletedWithErrors:(id)a3
{
  [(BYDeviceSetupSourceSession *)self setHasSyncCompleted:1];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

@end