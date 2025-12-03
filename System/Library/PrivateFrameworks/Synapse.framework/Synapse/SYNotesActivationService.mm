@interface SYNotesActivationService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SYNotesActivationService)init;
- (void)activateNotesWithContext:(id)context completion:(id)completion;
- (void)beginListeningToConnections;
@end

@implementation SYNotesActivationService

- (SYNotesActivationService)init
{
  v9.receiver = self;
  v9.super_class = SYNotesActivationService;
  v2 = [(SYNotesActivationService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.NotesActivationService", v3);
    serviceQueue = v2->__serviceQueue;
    v2->__serviceQueue = v4;

    v6 = [[SYNotesActivationObserver alloc] initWithHandler:&__block_literal_global_9];
    notesActivationObserver = v2->__notesActivationObserver;
    v2->__notesActivationObserver = v6;
  }

  return v2;
}

- (void)beginListeningToConnections
{
  _listener = [(SYNotesActivationService *)self _listener];

  if (!_listener)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.notes-activation-service"];
    [(SYNotesActivationService *)self _setListener:v4];

    _listener2 = [(SYNotesActivationService *)self _listener];
    _serviceQueue = [(SYNotesActivationService *)self _serviceQueue];
    [_listener2 _setQueue:_serviceQueue];

    _listener3 = [(SYNotesActivationService *)self _listener];
    [_listener3 setDelegate:self];

    _listener4 = [(SYNotesActivationService *)self _listener];
    [_listener4 resume];
  }
}

- (void)activateNotesWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (SYIsPhone() && SYIsQuickNoteOnPhoneEnabled() && (-[SYNotesActivationService _notesActivationObserver](self, "_notesActivationObserver"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isVisible], v7, !v8))
  {
    v9 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.SystemPaperViewService" viewControllerClassName:@"ViewController"];
    v10 = objc_alloc_init(MEMORY[0x277D66BD0]);
    v11 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v9 configurationContext:v10];
    v12 = objc_alloc_init(MEMORY[0x277D66BC0]);
    processHandle = [contextCopy processHandle];

    if (processHandle)
    {
      v14 = objc_alloc(MEMORY[0x277D66C08]);
      processHandle2 = [contextCopy processHandle];
      v16 = [v14 initWithTargetProcess:processHandle2];
      [v12 setPresentationTarget:v16];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ([contextCopy contextID] && objc_msgSend(contextCopy, "renderID"))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(contextCopy, "renderID")}];
      [dictionary setObject:v18 forKeyedSubscript:@"renderID"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(contextCopy, "contextID")}];
      [dictionary setObject:v19 forKeyedSubscript:@"contextID"];
    }

    userActivityData = [contextCopy userActivityData];

    if (userActivityData)
    {
      userActivityData2 = [contextCopy userActivityData];
      [dictionary setObject:userActivityData2 forKeyedSubscript:@"userActivityData"];
    }

    v22 = [dictionary copy];
    [v12 setUserInfo:v22];

    [v11 activateWithContext:v12];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-127 userInfo:0];
    (completionCopy)[2](completionCopy, v9);
  }

LABEL_7:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listenerCopy = listener;
  _listener = [(SYNotesActivationService *)self _listener];

  if (_listener == listenerCopy)
  {
    _serviceQueue = [(SYNotesActivationService *)self _serviceQueue];
    [connectionCopy _setQueue:_serviceQueue];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F4608];
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  return _listener == listenerCopy;
}

@end