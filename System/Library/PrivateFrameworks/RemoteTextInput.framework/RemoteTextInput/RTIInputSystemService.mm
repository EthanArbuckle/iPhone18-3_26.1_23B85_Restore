@interface RTIInputSystemService
+ (id)sharedServiceWithMachName:(id)name;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RTIInputSystemDelegate)delegate;
- (RTIInputSystemService)initWithMachName:(id)name;
- (RTIInputSystemServiceSession)currentSession;
- (void)_createListenerIfNecessary;
- (void)_destroyListenerIfNecessary;
- (void)dealloc;
- (void)inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon;
- (void)inputSession:(id)session didAddSupplementalLexicon:(id)lexicon;
- (void)inputSession:(id)session didChangePause:(BOOL)pause withReason:(id)reason;
- (void)inputSession:(id)session didReceiveConnection:(id)connection;
- (void)inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon;
- (void)inputSession:(id)session didRemoveSupplementalLexicon:(id)lexicon;
- (void)inputSession:(id)session documentStateDidChange:(id)change;
- (void)inputSession:(id)session documentTraitsDidChange:(id)change;
- (void)inputSession:(id)session performInputOperation:(id)operation;
- (void)inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response;
- (void)inputSession:(id)session textSuggestionsChanged:(id)changed;
- (void)inputSessionDidBegin:(id)begin options:(id)options;
- (void)inputSessionDidDie:(id)die;
- (void)inputSessionDidEnd:(id)end options:(id)options completion:(id)completion;
- (void)prepareForInputSession:(id)session options:(id)options;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation RTIInputSystemService

+ (id)sharedServiceWithMachName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (sharedServiceWithMachName__onceToken == -1)
  {
    if (nameCopy)
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

- (RTIInputSystemService)initWithMachName:(id)name
{
  nameCopy = name;
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

    objc_storeStrong(&v7->_machName, name);
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
      anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    }

    else
    {
      anonymousListener = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:self->_machName];
    }

    listener = self->_listener;
    self->_listener = anonymousListener;

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

- (void)inputSession:(id)session didReceiveConnection:(id)connection
{
  sessionCopy = session;
  connectionCopy = connection;
  [sessionCopy setSessionDelegate:self];
  [connectionCopy _setQueue:self->_dispatchQueue];
  os_unfair_lock_lock(&self->_sessionsLock);
  [(NSMutableSet *)self->_sessions addObject:sessionCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);
  if ([(RTIInputSystemService *)self _canResumeConnection])
  {
    [connectionCopy resume];
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
      [v11 inputSystemService:self didCreateInputSession:sessionCopy];
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [objc_msgSend(objc_opt_class() "serviceSessionClass")];
  [(RTIInputSystemService *)self inputSession:v6 didReceiveConnection:connectionCopy];

  return 1;
}

- (RTIInputSystemServiceSession)currentSession
{
  os_unfair_lock_lock(&self->_sessionsLock);
  v3 = self->_currentSession;
  os_unfair_lock_unlock(&self->_sessionsLock);

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  if (enabled)
  {
    [(RTIInputSystemService *)self _createListenerIfNecessary];
  }

  else
  {
    [(RTIInputSystemService *)self _destroyListenerIfNecessary];
  }
}

- (void)prepareForInputSession:(id)session options:(id)options
{
  sessionCopy = session;
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self prepareForInputSession:sessionCopy options:optionsCopy];
    }
  }
}

- (void)inputSessionDidBegin:(id)begin options:(id)options
{
  beginCopy = begin;
  optionsCopy = options;
  os_unfair_lock_lock(&self->_sessionsLock);
  lastAppId = self->_lastAppId;
  documentTraits = [beginCopy documentTraits];
  appId = [documentTraits appId];
  v11 = appId;
  if (lastAppId)
  {
    v12 = [(NSString *)lastAppId isEqualToString:appId];

    documentTraits2 = [beginCopy documentTraits];
    appId2 = [documentTraits2 appId];
    v15 = self->_lastAppId;
    self->_lastAppId = appId2;

    objc_storeStrong(&self->_currentSession, begin);
    os_unfair_lock_unlock(&self->_sessionsLock);
    if (!v12)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"RTIInputSessionWillChangeToNewProcessNotification" object:0];
    }
  }

  else
  {
    v17 = self->_lastAppId;
    self->_lastAppId = appId;

    objc_storeStrong(&self->_currentSession, begin);
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
      if (!optionsCopy)
      {
        optionsCopy = +[RTISessionOptions defaultBeginOptions];
      }

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 inputSystemService:self inputSessionDidBegin:beginCopy options:optionsCopy];
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
      [v22 inputSystemService:self inputSessionDidBegin:beginCopy];
LABEL_13:
    }
  }
}

- (void)inputSessionDidEnd:(id)end options:(id)options completion:(id)completion
{
  endCopy = end;
  optionsCopy = options;
  completionCopy = completion;
  v11 = dispatch_group_create();
  v12 = dispatch_time(0, 2100000000);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = WeakRetained;
  if (!completionCopy || !WeakRetained)
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
      if (!optionsCopy)
      {
        optionsCopy = +[RTISessionOptions defaultEndOptions];
      }

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 inputSystemService:self inputSessionDidEnd:endCopy options:optionsCopy];
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
      [v22 inputSystemService:self inputSessionDidEnd:endCopy];
    }

    goto LABEL_17;
  }

  if (!optionsCopy)
  {
    optionsCopy = +[RTISessionOptions defaultEndOptions];
  }

  dispatch_group_enter(v11);
  v17 = objc_loadWeakRetained(&self->_delegate);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__RTIInputSystemService_inputSessionDidEnd_options_completion___block_invoke;
  v29[3] = &unk_1E75140C8;
  v30 = v11;
  [v17 inputSystemService:self inputSessionDidEnd:endCopy options:optionsCopy completion:v29];

LABEL_17:
  os_unfair_lock_lock(&self->_sessionsLock);
  currentSession = self->_currentSession;
  if (currentSession == endCopy)
  {
    self->_currentSession = 0;
  }

  [(NSMutableSet *)self->_sessions removeObject:endCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);
  if (completionCopy)
  {
    if (dispatch_group_wait(v11, v12))
    {
      v28 = RTIInputSessionChangeLogFacility();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemService inputSessionDidEnd:endCopy options:v28 completion:?];
      }
    }

    completionCopy[2](completionCopy);
  }
}

- (void)inputSessionDidDie:(id)die
{
  dieCopy = die;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 inputSystemService:self inputSessionDidDie:dieCopy];
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
      [v13 inputSystemService:self inputSessionDidEnd:dieCopy options:v8];

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
      [v8 inputSystemService:self inputSessionDidEnd:dieCopy];
      goto LABEL_10;
    }
  }

LABEL_11:
  currentSession = self->_currentSession;
  if (currentSession == dieCopy)
  {
    self->_currentSession = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"RTIInputSessionDidEndUnexpectedlyNotification" object:0];
  }

  os_unfair_lock_lock(&self->_sessionsLock);
  [(NSMutableSet *)self->_sessions removeObject:dieCopy];
  os_unfair_lock_unlock(&self->_sessionsLock);
}

- (void)inputSession:(id)session documentTraitsDidChange:(id)change
{
  sessionCopy = session;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self inputSession:sessionCopy documentTraitsDidChange:changeCopy];
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
      [v11 inputSystemService:self inputSessionDocumentDidChange:sessionCopy];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)inputSession:(id)session documentStateDidChange:(id)change
{
  sessionCopy = session;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 inputSystemService:self inputSession:sessionCopy documentStateDidChange:changeCopy];
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
      [v11 inputSystemService:self inputSessionDocumentDidChange:sessionCopy];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)inputSession:(id)session didChangePause:(BOOL)pause withReason:(id)reason
{
  pauseCopy = pause;
  sessionCopy = session;
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (pauseCopy)
  {
    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 inputSystemService:self inputSessionDidPause:sessionCopy withReason:reasonCopy];
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
      [v13 inputSystemService:self inputSessionDidUnpause:sessionCopy withReason:reasonCopy];
      goto LABEL_8;
    }
  }
}

- (void)inputSession:(id)session textSuggestionsChanged:(id)changed
{
  sessionCopy = session;
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:sessionCopy textSuggestionsChanged:changedCopy];
  }
}

- (void)inputSession:(id)session didAddSupplementalLexicon:(id)lexicon
{
  sessionCopy = session;
  lexiconCopy = lexicon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:sessionCopy didAddSupplementalLexicon:lexiconCopy];
  }
}

- (void)inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon
{
  sessionCopy = session;
  lexiconCopy = lexicon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:sessionCopy didAddRTISupplementalLexicon:lexiconCopy];
  }
}

- (void)inputSession:(id)session didRemoveSupplementalLexicon:(id)lexicon
{
  sessionCopy = session;
  lexiconCopy = lexicon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:sessionCopy didRemoveSupplementalLexicon:lexiconCopy];
  }
}

- (void)inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon
{
  sessionCopy = session;
  lexiconCopy = lexicon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:sessionCopy didRemoveRTISupplementalLexicon:lexiconCopy];
  }
}

- (void)inputSession:(id)session performInputOperation:(id)operation
{
  sessionCopy = session;
  operationCopy = operation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 inputSystemService:self inputSession:sessionCopy performInputOperation:operationCopy];
  }
}

- (void)inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response
{
  sessionCopy = session;
  operationCopy = operation;
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 inputSystemService:self inputSession:sessionCopy performInputOperation:operationCopy withResponse:responseCopy];
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