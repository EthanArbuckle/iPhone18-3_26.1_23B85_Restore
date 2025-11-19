@interface BYBuddyDaemonMigrationSourceClient
- (BYBuddyDaemonMigrationSourceClient)init;
- (BYDeviceMigrationDelegate)delegate;
- (void)_connectToDaemon;
- (void)cancel;
- (void)didChangeConnectionInformation:(id)a3;
- (void)didFinishWithError:(id)a3;
- (void)didUpdateProgress:(id)a3;
- (void)launchSetupForMigration;
- (void)registerAsUserInterfaceHost:(id)a3;
- (void)setFileTransferTemplate:(id)a3;
@end

@implementation BYBuddyDaemonMigrationSourceClient

- (BYBuddyDaemonMigrationSourceClient)init
{
  v5.receiver = self;
  v5.super_class = BYBuddyDaemonMigrationSourceClient;
  v2 = [(BYBuddyDaemonMigrationSourceClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYBuddyDaemonMigrationSourceClient *)v2 _connectToDaemon];
  }

  return v3;
}

- (void)cancel
{
  v3 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 cancel];
}

- (void)registerAsUserInterfaceHost:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 registerAsUserInterfaceHost:v4];
}

- (void)launchSetupForMigration
{
  v3 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 launchSetupForMigration];
}

- (void)setFileTransferTemplate:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 setFileTransferTemplate:v4];
}

- (void)_connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.migration.source.xpc" options:0];
  [(BYBuddyDaemonMigrationSourceClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4DB8];
  v5 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [v5 setRemoteObjectInterface:v4];

  v6 = [objc_opt_class() clientInterface];
  v7 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [v7 setExportedInterface:v6];

  v8 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [v8 setExportedObject:self];

  v9 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [v9 setInvalidationHandler:&__block_literal_global_25];

  v10 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [v10 setInterruptionHandler:&__block_literal_global_74_0];

  v11 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [v11 resume];
}

void __54__BYBuddyDaemonMigrationSourceClient__connectToDaemon__block_invoke()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __54__BYBuddyDaemonMigrationSourceClient__connectToDaemon__block_invoke_cold_1(v0);
  }
}

void __54__BYBuddyDaemonMigrationSourceClient__connectToDaemon__block_invoke_72()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __54__BYBuddyDaemonMigrationSourceClient__connectToDaemon__block_invoke_72_cold_1(v0);
  }
}

- (void)didUpdateProgress:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonMigrationSourceClient *)self delegate];
  [v5 deviceMigrationManager:0 didUpdateProgress:v4];
}

- (void)didFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonMigrationSourceClient *)self delegate];
  [v5 deviceMigrationManager:0 didCompleteWithError:v4];
}

- (void)didChangeConnectionInformation:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonMigrationSourceClient *)self delegate];
  [v5 deviceMigrationManager:0 didChangeConnectionInformation:v4];
}

- (BYDeviceMigrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end