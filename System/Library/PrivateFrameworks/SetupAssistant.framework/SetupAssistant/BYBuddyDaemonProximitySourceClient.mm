@interface BYBuddyDaemonProximitySourceClient
+ (id)proximitySourceClientInterface;
- (BYBuddyDaemonProximitySourceClient)init;
- (BYBuddyDaemonProximitySourceProtocol)delegate;
- (void)activateWithSharingChannel:(id)channel;
- (void)backupCompletedWithError:(id)error;
- (void)backupProgress:(double)progress estimatedTimeRemaining:(int64_t)remaining;
- (void)connectToDaemon;
- (void)finishedWithError:(id)error;
- (void)invalidate;
- (void)receivedData:(id)data;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
@end

@implementation BYBuddyDaemonProximitySourceClient

- (BYBuddyDaemonProximitySourceClient)init
{
  v5.receiver = self;
  v5.super_class = BYBuddyDaemonProximitySourceClient;
  v2 = [(BYBuddyDaemonProximitySourceClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYBuddyDaemonProximitySourceClient *)v2 connectToDaemon];
  }

  return v3;
}

+ (id)proximitySourceClientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30AF788];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_syncCompletedWithErrors_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.proximity.source.xpc" options:0];
  [(BYBuddyDaemonProximitySourceClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B0248];
  connection = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [connection setRemoteObjectInterface:v4];

  proximitySourceClientInterface = [objc_opt_class() proximitySourceClientInterface];
  connection2 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [connection2 setExportedInterface:proximitySourceClientInterface];

  connection3 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [connection3 setExportedObject:self];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__BYBuddyDaemonProximitySourceClient_connectToDaemon__block_invoke;
  v14[3] = &unk_1E7D027D0;
  objc_copyWeak(&v15, &location);
  connection4 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [connection4 setInvalidationHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__BYBuddyDaemonProximitySourceClient_connectToDaemon__block_invoke_78;
  v12[3] = &unk_1E7D027D0;
  objc_copyWeak(&v13, &location);
  connection5 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [connection5 setInterruptionHandler:v12];

  connection6 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [connection6 resume];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __53__BYBuddyDaemonProximitySourceClient_connectToDaemon__block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Proximity source client connection invalidated!", v6, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BYBuddyDaemonProximitySourceClientErrorDomain" code:-1 userInfo:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  [v5 finishedWithError:v3];
}

void __53__BYBuddyDaemonProximitySourceClient_connectToDaemon__block_invoke_78(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Proximity source client connection interruption!", v6, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BYBuddyDaemonProximitySourceClientErrorDomain" code:-2 userInfo:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  [v5 finishedWithError:v3];
}

- (void)activateWithSharingChannel:(id)channel
{
  channelCopy = channel;
  connection = [(BYBuddyDaemonProximitySourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy activateWithSharingChannel:channelCopy];
}

- (void)invalidate
{
  connection = [(BYBuddyDaemonProximitySourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy invalidate];
}

- (void)receivedData:(id)data
{
  dataCopy = data;
  connection = [(BYBuddyDaemonProximitySourceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy receivedData:dataCopy];
}

- (void)finishedWithError:(id)error
{
  errorCopy = error;
  delegate = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [delegate finishedWithError:errorCopy];
}

- (void)backupProgress:(double)progress estimatedTimeRemaining:(int64_t)remaining
{
  delegate = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [delegate backupProgress:remaining estimatedTimeRemaining:progress];
}

- (void)backupCompletedWithError:(id)error
{
  errorCopy = error;
  delegate = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [delegate backupCompletedWithError:errorCopy];
}

- (void)syncProgress:(double)progress
{
  delegate = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [delegate syncProgress:progress];
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  delegate = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [delegate syncCompletedWithErrors:errorsCopy];
}

- (BYBuddyDaemonProximitySourceProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end