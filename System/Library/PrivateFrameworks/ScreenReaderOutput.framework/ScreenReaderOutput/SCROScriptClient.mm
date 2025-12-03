@interface SCROScriptClient
+ (SCROScriptClient)sharedClient;
- (BOOL)_isReady;
- (BOOL)_runAsyncWithConnection:(int)connection object:(id)object;
- (BOOL)runScriptFile:(id)file;
- (BOOL)runShortcutWithIdentifier:(id)identifier;
- (SCROScriptClient)init;
- (id)_lazyConnection;
- (void)_killConnection;
- (void)dealloc;
- (void)handleCallback:(id)callback;
@end

@implementation SCROScriptClient

+ (SCROScriptClient)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[SCROScriptClient sharedClient];
  }

  v3 = _sharedClient;

  return v3;
}

uint64_t __32__SCROScriptClient_sharedClient__block_invoke()
{
  v0 = objc_alloc_init(SCROScriptClient);
  _sharedClient = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (SCROScriptClient)init
{
  v10.receiver = self;
  v10.super_class = SCROScriptClient;
  v2 = [(SCROScriptClient *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [objc_alloc(MEMORY[0x277D4B820]) initWithTarget:v2 selector:sel__killConnection threadKey:0];
    timer = v2->_timer;
    v2->_timer = v5;

    v7 = dispatch_queue_create("SCROScriptClient_scriptRunner", 0);
    scriptDispatchQueue = v2->__scriptDispatchQueue;
    v2->__scriptDispatchQueue = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = SCROScriptClient;
  [(SCROScriptClient *)&v3 dealloc];
}

- (void)_killConnection
{
  [(NSLock *)self->_lock lock];
  [(SCROConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  self->_isReady = 0;
  [(NSLock *)self->_lock unlock];
}

- (id)_lazyConnection
{
  [(NSLock *)self->_lock lock];
  v3 = self->_connection;
  [(NSLock *)self->_lock unlock];
  if (v3)
  {
    goto LABEL_6;
  }

  [(NSLock *)self->_lock lock];
  if (!self->_connection)
  {
    v4 = [[SCROConnection alloc] initWithHandlerType:2 delegate:self];
    connection = self->_connection;
    self->_connection = v4;

    if (![(SCROScriptClient *)self _isReady])
    {
      fwrite("Screen Reader Script Server: NOT AVAILABLE\n", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  v3 = self->_connection;
  [(NSLock *)self->_lock unlock];
  if (v3)
  {
LABEL_6:
    [(SCRCTargetSelectorTimer *)self->_timer dispatchAfterDelay:300.0];
  }

  return v3;
}

- (BOOL)_isReady
{
  if (self->_isReady)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    usleep(0x186A0u);
    if (v5 == 49)
    {
      break;
    }

    v4 = v5 + 1;
  }

  while (!self->_isReady);
  return v5 < 0x31;
}

- (void)handleCallback:(id)callback
{
  callbackCopy = callback;
  v4 = [callbackCopy key];
  if (v4 == 4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (v4 == 3)
  {
    object = [callbackCopy object];
    connection = self->_connection;

    if (object == connection)
    {
      v7 = 1;
LABEL_6:
      self->_isReady = v7;
    }
  }
}

- (BOOL)_runAsyncWithConnection:(int)connection object:(id)object
{
  objectCopy = object;
  _lazyConnection = [(SCROScriptClient *)self _lazyConnection];
  if (_lazyConnection)
  {
    _scriptDispatchQueue = [(SCROScriptClient *)self _scriptDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SCROScriptClient__runAsyncWithConnection_object___block_invoke;
    block[3] = &unk_279B74918;
    v11 = _lazyConnection;
    connectionCopy = connection;
    v12 = objectCopy;
    dispatch_async(_scriptDispatchQueue, block);
  }

  return _lazyConnection != 0;
}

- (BOOL)runScriptFile:(id)file
{
  fileCopy = file;
  if (!fileCopy)
  {
    [(SCROScriptClient *)a2 runScriptFile:?];
  }

  if ([fileCopy length])
  {
    v6 = [(SCROScriptClient *)self _runAsyncWithConnection:105 object:fileCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)runShortcutWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(SCROScriptClient *)a2 runShortcutWithIdentifier:?];
  }

  if ([identifierCopy length])
  {
    v6 = [(SCROScriptClient *)self _runAsyncWithConnection:106 object:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)runScriptFile:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCROScriptClient.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"file"}];
}

- (void)runShortcutWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCROScriptClient.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end