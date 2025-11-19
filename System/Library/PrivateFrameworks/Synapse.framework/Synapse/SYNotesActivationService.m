@interface SYNotesActivationService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SYNotesActivationService)init;
- (void)activateNotesWithContext:(id)a3 completion:(id)a4;
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
  v3 = [(SYNotesActivationService *)self _listener];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.notes-activation-service"];
    [(SYNotesActivationService *)self _setListener:v4];

    v5 = [(SYNotesActivationService *)self _listener];
    v6 = [(SYNotesActivationService *)self _serviceQueue];
    [v5 _setQueue:v6];

    v7 = [(SYNotesActivationService *)self _listener];
    [v7 setDelegate:self];

    v8 = [(SYNotesActivationService *)self _listener];
    [v8 resume];
  }
}

- (void)activateNotesWithContext:(id)a3 completion:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (SYIsPhone() && SYIsQuickNoteOnPhoneEnabled() && (-[SYNotesActivationService _notesActivationObserver](self, "_notesActivationObserver"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isVisible], v7, !v8))
  {
    v9 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.SystemPaperViewService" viewControllerClassName:@"ViewController"];
    v10 = objc_alloc_init(MEMORY[0x277D66BD0]);
    v11 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v9 configurationContext:v10];
    v12 = objc_alloc_init(MEMORY[0x277D66BC0]);
    v13 = [v23 processHandle];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D66C08]);
      v15 = [v23 processHandle];
      v16 = [v14 initWithTargetProcess:v15];
      [v12 setPresentationTarget:v16];
    }

    v17 = [MEMORY[0x277CBEB38] dictionary];
    if ([v23 contextID] && objc_msgSend(v23, "renderID"))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "renderID")}];
      [v17 setObject:v18 forKeyedSubscript:@"renderID"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "contextID")}];
      [v17 setObject:v19 forKeyedSubscript:@"contextID"];
    }

    v20 = [v23 userActivityData];

    if (v20)
    {
      v21 = [v23 userActivityData];
      [v17 setObject:v21 forKeyedSubscript:@"userActivityData"];
    }

    v22 = [v17 copy];
    [v12 setUserInfo:v22];

    [v11 activateWithContext:v12];
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-127 userInfo:0];
    (v6)[2](v6, v9);
  }

LABEL_7:
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SYNotesActivationService *)self _listener];

  if (v8 == v7)
  {
    v9 = [(SYNotesActivationService *)self _serviceQueue];
    [v6 _setQueue:v9];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F4608];
    [v6 setExportedInterface:v10];

    [v6 setExportedObject:self];
    [v6 resume];
  }

  return v8 == v7;
}

@end