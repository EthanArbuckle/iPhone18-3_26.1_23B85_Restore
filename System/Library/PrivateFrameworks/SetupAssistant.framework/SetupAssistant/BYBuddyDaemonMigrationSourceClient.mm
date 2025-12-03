@interface BYBuddyDaemonMigrationSourceClient
- (BYBuddyDaemonMigrationSourceClient)init;
- (BYDeviceMigrationDelegate)delegate;
- (void)_connectToDaemon;
- (void)cancel;
- (void)didChangeConnectionInformation:(id)information;
- (void)didFinishWithError:(id)error;
- (void)didUpdateProgress:(id)progress;
- (void)launchSetupForMigration;
- (void)registerAsUserInterfaceHost:(id)host;
- (void)setFileTransferTemplate:(id)template;
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
  connection = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy cancel];
}

- (void)registerAsUserInterfaceHost:(id)host
{
  hostCopy = host;
  connection = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy registerAsUserInterfaceHost:hostCopy];
}

- (void)launchSetupForMigration
{
  connection = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy launchSetupForMigration];
}

- (void)setFileTransferTemplate:(id)template
{
  templateCopy = template;
  connection = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy setFileTransferTemplate:templateCopy];
}

- (void)_connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.migration.source.xpc" options:0];
  [(BYBuddyDaemonMigrationSourceClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4DB8];
  connection = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [connection setRemoteObjectInterface:v4];

  clientInterface = [objc_opt_class() clientInterface];
  connection2 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [connection2 setExportedInterface:clientInterface];

  connection3 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [connection3 setExportedObject:self];

  connection4 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [connection4 setInvalidationHandler:&__block_literal_global_25];

  connection5 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [connection5 setInterruptionHandler:&__block_literal_global_74_0];

  connection6 = [(BYBuddyDaemonMigrationSourceClient *)self connection];
  [connection6 resume];
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

- (void)didUpdateProgress:(id)progress
{
  progressCopy = progress;
  delegate = [(BYBuddyDaemonMigrationSourceClient *)self delegate];
  [delegate deviceMigrationManager:0 didUpdateProgress:progressCopy];
}

- (void)didFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(BYBuddyDaemonMigrationSourceClient *)self delegate];
  [delegate deviceMigrationManager:0 didCompleteWithError:errorCopy];
}

- (void)didChangeConnectionInformation:(id)information
{
  informationCopy = information;
  delegate = [(BYBuddyDaemonMigrationSourceClient *)self delegate];
  [delegate deviceMigrationManager:0 didChangeConnectionInformation:informationCopy];
}

- (BYDeviceMigrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end