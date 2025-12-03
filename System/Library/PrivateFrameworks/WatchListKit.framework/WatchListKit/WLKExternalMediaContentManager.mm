@interface WLKExternalMediaContentManager
+ (id)sharedManager;
- (WLKExternalMediaContentManager)init;
- (id)_connection;
- (id)_init;
- (id)_proxy;
- (void)_deletePlaybackActivityWithIdentifier:(id)identifier bundleID:(id)d;
- (void)deletePlaybackActivityWithIdentifier:(id)identifier;
@end

@implementation WLKExternalMediaContentManager

+ (id)sharedManager
{
  if (sharedManager___once != -1)
  {
    +[WLKExternalMediaContentManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __47__WLKExternalMediaContentManager_sharedManager__block_invoke()
{
  v0 = [[WLKExternalMediaContentManager alloc] _init];
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WLKExternalMediaContentManager)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKExternalMediaContentManagerInitException" format:@"-init is not supported. Use +sharedManager."];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WLKExternalMediaContentManager;
  return [(WLKExternalMediaContentManager *)&v3 init];
}

- (void)deletePlaybackActivityWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCA8D8];
  identifierCopy = identifier;
  mainBundle = [v4 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(WLKExternalMediaContentManager *)self _deletePlaybackActivityWithIdentifier:identifierCopy bundleID:bundleIdentifier];
}

- (void)_deletePlaybackActivityWithIdentifier:(id)identifier bundleID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  _proxy = [(WLKExternalMediaContentManager *)self _proxy];
  [_proxy deletePlaybackActivityWithIdentifier:identifierCopy bundleID:dCopy];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288235FF8];
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288236058];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_113_0];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __45__WLKExternalMediaContentManager__connection__block_invoke_2;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __45__WLKExternalMediaContentManager__connection__block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_ConnectionInva.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
    v4 = WeakRetained;

    WeakRetained = v4;
  }
}

- (id)_proxy
{
  _connection = [(WLKExternalMediaContentManager *)self _connection];
  v3 = [_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_122];

  return v3;
}

@end