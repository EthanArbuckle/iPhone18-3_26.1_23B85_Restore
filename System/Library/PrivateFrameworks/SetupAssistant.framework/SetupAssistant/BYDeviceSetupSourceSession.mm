@interface BYDeviceSetupSourceSession
- (void)activate;
- (void)backupCompletedWithError:(id)error;
- (void)backupProgress:(double)progress estimatedTimeRemaining:(int64_t)remaining;
- (void)finishedWithError:(id)error;
- (void)invalidate;
- (void)setFileTransferSessionTemplate:(id)template;
- (void)setMessageSession:(id)session;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
- (void)updateProgress;
@end

@implementation BYDeviceSetupSourceSession

- (void)setMessageSession:(id)session
{
  objc_storeStrong(&self->_messageSession, session);
  client = [(BYDeviceSetupSourceSession *)self client];

  if (client)
  {
    [(BYDeviceSetupSourceSession *)self invalidate];

    [(BYDeviceSetupSourceSession *)self activate];
  }
}

- (void)setFileTransferSessionTemplate:(id)template
{
  templateCopy = template;
  objc_storeStrong(&self->_fileTransferSessionTemplate, template);
  migrationSourceClient = [(BYDeviceSetupSourceSession *)self migrationSourceClient];

  if (migrationSourceClient)
  {
    migrationSourceClient2 = [(BYDeviceSetupSourceSession *)self migrationSourceClient];
    [migrationSourceClient2 setFileTransferTemplate:templateCopy];
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

  client = [(BYDeviceSetupSourceSession *)self client];
  [client setDelegate:self];

  v6 = objc_alloc_init(BYBuddyDaemonMigrationSourceClient);
  [(BYDeviceSetupSourceSession *)self setMigrationSourceClient:v6];

  migrationSourceClient = [(BYDeviceSetupSourceSession *)self migrationSourceClient];
  fileTransferSessionTemplate = [(BYDeviceSetupSourceSession *)self fileTransferSessionTemplate];
  [migrationSourceClient setFileTransferTemplate:fileTransferSessionTemplate];

  [(BYDeviceSetupSourceSession *)self setTimeRemaining:-1.0];
  client2 = [(BYDeviceSetupSourceSession *)self client];
  messageSession = [(BYDeviceSetupSourceSession *)self messageSession];
  [client2 activateWithSharingChannel:messageSession];
}

- (void)invalidate
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Proximity setup source session invalidated", v5, 2u);
  }

  client = [(BYDeviceSetupSourceSession *)self client];
  [client invalidate];

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

  progressHandler = [(BYDeviceSetupSourceSession *)self progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [(BYDeviceSetupSourceSession *)self progressHandler];
    (progressHandler2)[2](progressHandler2, v13);
  }
}

- (void)finishedWithError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (errorCopy)
  {
    v6 = @"eo";
    v7 = errorCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E118];
    v6 = @"finished";
  }

  [v4 setObject:v7 forKeyedSubscript:v6];
  progressHandler = [(BYDeviceSetupSourceSession *)self progressHandler];
  (progressHandler)[2](progressHandler, v5);
}

- (void)backupProgress:(double)progress estimatedTimeRemaining:(int64_t)remaining
{
  [(BYDeviceSetupSourceSession *)self setBackupProgress:progress];
  [(BYDeviceSetupSourceSession *)self setTimeRemaining:remaining];
  [(BYDeviceSetupSourceSession *)self setHasBackupCompleted:0];
  [(BYDeviceSetupSourceSession *)self setCurrentPhase:1];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

- (void)backupCompletedWithError:(id)error
{
  [(BYDeviceSetupSourceSession *)self setHasBackupCompleted:1];
  [(BYDeviceSetupSourceSession *)self setTimeRemaining:-1.0];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

- (void)syncProgress:(double)progress
{
  [(BYDeviceSetupSourceSession *)self setSyncProgress:progress];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

- (void)syncCompletedWithErrors:(id)errors
{
  [(BYDeviceSetupSourceSession *)self setHasSyncCompleted:1];

  [(BYDeviceSetupSourceSession *)self updateProgress];
}

@end