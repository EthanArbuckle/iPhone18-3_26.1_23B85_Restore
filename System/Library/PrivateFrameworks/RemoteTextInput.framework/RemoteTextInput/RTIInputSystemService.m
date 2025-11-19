@interface RTIInputSystemService
+ (id)sharedServiceWithMachName:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RTIInputSystemDelegate)delegate;
- (RTIInputSystemService)initWithMachName:(id)a3;
- (RTIInputSystemServiceSession)currentSession;
- (void)_createListenerIfNecessary;
- (void)_destroyListenerIfNecessary;
- (void)dealloc;
- (void)inputSession:(id)a3 didAddRTISupplementalLexicon:(id)a4;
- (void)inputSession:(id)a3 didAddSupplementalLexicon:(id)a4;
- (void)inputSession:(id)a3 didChangePause:(BOOL)a4 withReason:(id)a5;
- (void)inputSession:(id)a3 didReceiveConnection:(id)a4;
- (void)inputSession:(id)a3 didRemoveRTISupplementalLexicon:(id)a4;
- (void)inputSession:(id)a3 didRemoveSupplementalLexicon:(id)a4;
- (void)inputSession:(id)a3 documentStateDidChange:(id)a4;
- (void)inputSession:(id)a3 documentTraitsDidChange:(id)a4;
- (void)inputSession:(id)a3 performInputOperation:(id)a4;
- (void)inputSession:(id)a3 performInputOperation:(id)a4 withResponse:(id)a5;
- (void)inputSession:(id)a3 textSuggestionsChanged:(id)a4;
- (void)inputSessionDidBegin:(id)a3 options:(id)a4;
- (void)inputSessionDidDie:(id)a3;
- (void)inputSessionDidEnd:(id)a3 options:(id)a4 completion:(id)a5;
- (void)prepareForInputSession:(id)a3 options:(id)a4;
- (void)setEnabled:(BOOL)a3;
@end

@implementation RTIInputSystemService

+ (id)sharedServiceWithMachName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (sharedServiceWithMachName__onceToken == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[RTIInputSystemService sharedServiceWithMachName:];
    if (v4)
    {
LABEL_3:
      if (![(__CFString *)v4 isEqualToString:@"com.apple.iosmac.remote-text-editing"])
      {
        goto LABEL_5;
      }
    }
  }

  v4 = @"Anonymous";
LABEL_5:
  v5 = [sharedServiceWithMachName___services objectForKey:v4];
  if (!v5)
  {
    v5 = [[RTIInputSystemService alloc] initWithMachName:v4];
    [sharedServiceWithMachName___services setObject:v5 forKey:v4];
  }

  return v5;
}

uint64_t __51__RTIInputSystemService_sharedServiceWithMachName___block_invoke()
{
  sharedServiceWithMachName___services = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

- (RTIInputSystemService)initWithMachName:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = RTIInputSystemService;
  v6 = [(RTIInputSystemService *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_enabled = 1;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sessions = v7->_sessions;
    v7->_sessions = v8;

    v7->_sessionsLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INTERACTIVE, 0);

    v12 = dispatch_queue_create("com.apple.RemoteTextInput.service", v11);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v12;

    objc_storeStrong(&v7->_machName, a3);
    [(RTIInputSystemService *)v7 _createListenerIfNecessary];
  }

  return v7;
}

- (void)dealloc
{
  [(RTIInputSystemService *)self _destroyListenerIfNecessary];
  v3.receiver = self;
  v3.super_class = RTIInputSystemService;
  [(RTIInputSystemService *)&v3 dealloc];
}

- (void)_createListenerIfNecessary
{
  if (!self->_listener)
  {
    if ([(NSString *)self->_machName isEqualToString:@"Anonymous"])
    {
      v4 = [MEMORY[0x1E696B0D8] anonymousListener];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:self->_machName];
    }

    listener = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:self->_dispatchQueue];
    v6 = self->_listener;

    [(NSXPCListener *)v6 resume];
  }
}

- (void)_destroyListenerIfNecessary
{
  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener setDelegate:0];
    [(NSXPCListener *)self->_listener invalidate];
    v4 = self->_listener;
    self->_listener = 0;
  }
}

- (void)inputSession:(id)a3 didReceiveConnection:(id)a4
{
  v12 = a3;
  v6 = a4;
  [v12 setSessionDelegate:self];
  [v6 _setQueue:self->_dispatchQueue];
  os_unfair_lock_lock(&self->_sessionsLock);
  [(NSMutableSet *)self->_sessions addObject:v12];
  os_unfair_lock_unlock(&self->_sessionsLock);
  if ([(RTIInputSystemService *)self _canResumeConnection])
  {
    [v6 resume];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self didCreateInputSession:v12];
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [objc_msgSend(objc_opt_class() "serviceSessionClass")];
  [(RTIInputSystemService *)self inputSession:v6 didReceiveConnection:v5];

  return 1;
}

- (RTIInputSystemServiceSession)currentSession
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = self->_currentSession;
  os_unfair_lock_unlock(&self->_sessionsLock);

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  if (a3)
  {
    [(RTIInputSystemService *)self _createListenerIfNecessary];
  }

  else
  {
    [(RTIInputSystemService *)self _destroyListenerIfNecessary];
  }
}

- (void)prepareForInputSession:(id)a3 options:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self prepareForInputSession:v12 options:v6];
    }
  }
}

- (void)inputSessionDidBegin:(id)a3 options:(id)a4
{
  v27 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_sessionsLock);
  lastAppId = self->_lastAppId;
  v9 = [v27 documentTraits];
  v10 = [v9 appId];
  v11 = v10;
  if (lastAppId)
  {
    v12 = [(NSString *)lastAppId isEqualToString:v10];

    v13 = [v27 documentTraits];
    v14 = [v13 appId];
    v15 = self->_lastAppId;
    self->_lastAppId = v14;

    objc_storeStrong(&self->_currentSession, a3);
    os_unfair_lock_unlock(&self->_sessionsLock);
    if (!v12)
    {
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"RTIInputSessionWillChangeToNewProcessNotification" object:0];
    }
  }

  else
  {
    v17 = self->_lastAppId;
    self->_lastAppId = v10;

    objc_storeStrong(&self->_currentSession, a3);
    os_unfair_lock_unlock(&self->_sessionsLock);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      if (!v7)
      {
        v7 = +[RTISessionOptions defaultBeginOptions];
      }

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 inputSystemService:self inputSessionDidBegin:v27 options:v7];
      goto LABEL_13;
    }
  }

  v23 = objc_loadWeakRetained(&self->_delegate);
  if (v23)
  {
    v24 = v23;
    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 inputSystemService:self inputSessionDidBegin:v27];
LABEL_13:
    }
  }
}

- (void)inputSessionDidEnd:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_group_create();
  v12 = dispatch_time(0, 2100000000);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = WeakRetained;
  if (!v10 || !WeakRetained)
  {

    goto LABEL_8;
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if ((v16 & 1) == 0)
  {
LABEL_8:
    v18 = objc_loadWeakRetained(&self->_delegate);
    if (v18 && (v19 = v18, v20 = objc_loadWeakRetained(&self->_delegate), v21 = objc_opt_respondsToSelector(), v20, v19, (v21 & 1) != 0))
    {
      if (!v9)
      {
        v9 = +[RTISessionOptions defaultEndOptions];
      }

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 inputSystemService:self inputSessionDidEnd:v8 options:v9];
    }

    else
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      if (!v23)
      {
        goto LABEL_17;
      }

      v24 = v23;
      v25 = objc_loadWeakRetained(&self->_delegate);
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 inputSystemService:self inputSessionDidEnd:v8];
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    v9 = +[RTISessionOptions defaultEndOptions];
  }

  dispatch_group_enter(v11);
  v17 = objc_loadWeakRetained(&self->_delegate);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__RTIInputSystemService_inputSessionDidEnd_options_completion___block_invoke;
  v29[3] = &unk_1E75140C8;
  v30 = v11;
  [v17 inputSystemService:self inputSessionDidEnd:v8 options:v9 completion:v29];

LABEL_17:
  os_unfair_lock_lock(&self->_sessionsLock);
  currentSession = self->_currentSession;
  if (currentSession == v8)
  {
    self->_currentSession = 0;
  }

  [(NSMutableSet *)self->_sessions removeObject:v8];
  os_unfair_lock_unlock(&self->_sessionsLock);
  if (v10)
  {
    if (dispatch_group_wait(v11, v12))
    {
      v28 = RTIInputSessionChangeLogFacility();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemService inputSessionDidEnd:v8 options:v28 completion:?];
      }
    }

    v10[2](v10);
  }
}

- (void)inputSessionDidDie:(id)a3
{
  v20 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 inputSystemService:self inputSessionDidDie:v20];
LABEL_10:

      goto LABEL_11;
    }
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v8 = +[RTISessionOptions defaultOptions];
      [v8 setShouldResign:0];
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 inputSystemService:self inputSessionDidEnd:v20 options:v8];

      goto LABEL_10;
    }
  }

  v14 = objc_loadWeakRetained(&self->_delegate);
  if (v14)
  {
    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 inputSystemService:self inputSessionDidEnd:v20];
      goto LABEL_10;
    }
  }

LABEL_11:
  currentSession = self->_currentSession;
  if (currentSession == v20)
  {
    self->_currentSession = 0;

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 postNotificationName:@"RTIInputSessionDidEndUnexpectedlyNotification" object:0];
  }

  os_unfair_lock_lock(&self->_sessionsLock);
  [(NSMutableSet *)self->_sessions removeObject:v20];
  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (void)inputSession:(id)a3 documentTraitsDidChange:(id)a4
{
  v16 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self inputSession:v16 documentTraitsDidChange:v6];
LABEL_7:

      goto LABEL_8;
    }
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (v12)
  {
    v13 = v12;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self inputSessionDocumentDidChange:v16];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)inputSession:(id)a3 documentStateDidChange:(id)a4
{
  v16 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self inputSession:v16 documentStateDidChange:v6];
LABEL_7:

      goto LABEL_8;
    }
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (v12)
  {
    v13 = v12;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self inputSessionDocumentDidChange:v16];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)inputSession:(id)a3 didChangePause:(BOOL)a4 withReason:(id)a5
{
  v6 = a4;
  v16 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (v6)
  {
    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 inputSystemService:self inputSessionDidPause:v16 withReason:v8];
LABEL_8:
      }
    }
  }

  else if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 inputSystemService:self inputSessionDidUnpause:v16 withReason:v8];
      goto LABEL_8;
    }
  }
}

- (void)inputSession:(id)a3 textSuggestionsChanged:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:v10 textSuggestionsChanged:v6];
  }
}

- (void)inputSession:(id)a3 didAddSupplementalLexicon:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:v10 didAddSupplementalLexicon:v6];
  }
}

- (void)inputSession:(id)a3 didAddRTISupplementalLexicon:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:v10 didAddRTISupplementalLexicon:v6];
  }
}

- (void)inputSession:(id)a3 didRemoveSupplementalLexicon:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:v10 didRemoveSupplementalLexicon:v6];
  }
}

- (void)inputSession:(id)a3 didRemoveRTISupplementalLexicon:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:v10 didRemoveRTISupplementalLexicon:v6];
  }
}

- (void)inputSession:(id)a3 performInputOperation:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:v10 performInputOperation:v6];
  }
}

- (void)inputSession:(id)a3 performInputOperation:(id)a4 withResponse:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 inputSystemService:self inputSession:v13 performInputOperation:v8 withResponse:v9];
  }
}

- (RTIInputSystemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)inputSessionDidEnd:(void *)a1 options:(NSObject *)a2 completion:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 uuid];
  v5 = 136315394;
  v6 = "[RTIInputSystemService inputSessionDidEnd:options:completion:]";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_19A2A6000, a2, OS_LOG_TYPE_ERROR, "%s  Timeout while waiting to end session. sessionID = %@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end