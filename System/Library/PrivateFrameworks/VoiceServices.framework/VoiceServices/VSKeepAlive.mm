@interface VSKeepAlive
- (id)_remoteKeepAlive;
- (id)_serverConnection;
- (void)_ensureKeepAliveMaintenance;
- (void)dealloc;
- (void)setActive:(BOOL)active;
@end

@implementation VSKeepAlive

- (void)_ensureKeepAliveMaintenance
{
  if (self->_active)
  {
    _remoteKeepAlive = [(VSKeepAlive *)self _remoteKeepAlive];
    [_remoteKeepAlive maintainWithAudioType:self->_audioType keepAudioSessionActive:self->_keepAudioSessionActive];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    _remoteKeepAlive = [(VSKeepAlive *)self _remoteKeepAlive];
    v7 = _remoteKeepAlive;
    if (activeCopy)
    {
      [_remoteKeepAlive maintainWithAudioType:self->_audioType keepAudioSessionActive:self->_keepAudioSessionActive];
    }

    else
    {
      [_remoteKeepAlive cancel];
    }
  }
}

- (id)_remoteKeepAlive
{
  _serverConnection = [(VSKeepAlive *)self _serverConnection];
  remoteObjectProxy = [_serverConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_serverConnection
{
  serverConnection = self->_serverConnection;
  if (!serverConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.voiceservices.keepalive" options:0];
    v5 = self->_serverConnection;
    self->_serverConnection = v4;

    v6 = self->_serverConnection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881EE5F8];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v8 = self->_serverConnection;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __32__VSKeepAlive__serverConnection__block_invoke;
    v13 = &unk_279E4F7B8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:&v10];
    [(NSXPCConnection *)self->_serverConnection resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    serverConnection = self->_serverConnection;
  }

  return serverConnection;
}

void __32__VSKeepAlive__serverConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ensureKeepAliveMaintenance];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_serverConnection invalidate];
  v3.receiver = self;
  v3.super_class = VSKeepAlive;
  [(VSKeepAlive *)&v3 dealloc];
}

@end