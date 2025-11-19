@interface BYBuddyDaemonProximitySourceClient
+ (id)proximitySourceClientInterface;
- (BYBuddyDaemonProximitySourceClient)init;
- (BYBuddyDaemonProximitySourceProtocol)delegate;
- (void)activateWithSharingChannel:(id)a3;
- (void)backupCompletedWithError:(id)a3;
- (void)backupProgress:(double)a3 estimatedTimeRemaining:(int64_t)a4;
- (void)connectToDaemon;
- (void)finishedWithError:(id)a3;
- (void)invalidate;
- (void)receivedData:(id)a3;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
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
  v5 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [v5 setRemoteObjectInterface:v4];

  v6 = [objc_opt_class() proximitySourceClientInterface];
  v7 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [v7 setExportedInterface:v6];

  v8 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [v8 setExportedObject:self];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__BYBuddyDaemonProximitySourceClient_connectToDaemon__block_invoke;
  v14[3] = &unk_1E7D027D0;
  objc_copyWeak(&v15, &location);
  v9 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [v9 setInvalidationHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__BYBuddyDaemonProximitySourceClient_connectToDaemon__block_invoke_78;
  v12[3] = &unk_1E7D027D0;
  objc_copyWeak(&v13, &location);
  v10 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [v10 setInterruptionHandler:v12];

  v11 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  [v11 resume];

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

- (void)activateWithSharingChannel:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 activateWithSharingChannel:v4];
}

- (void)invalidate
{
  v3 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 invalidate];
}

- (void)receivedData:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonProximitySourceClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 receivedData:v4];
}

- (void)finishedWithError:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [v5 finishedWithError:v4];
}

- (void)backupProgress:(double)a3 estimatedTimeRemaining:(int64_t)a4
{
  v6 = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [v6 backupProgress:a4 estimatedTimeRemaining:a3];
}

- (void)backupCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [v5 backupCompletedWithError:v4];
}

- (void)syncProgress:(double)a3
{
  v4 = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [v4 syncProgress:a3];
}

- (void)syncCompletedWithErrors:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximitySourceClient *)self delegate];
  [v5 syncCompletedWithErrors:v4];
}

- (BYBuddyDaemonProximitySourceProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end