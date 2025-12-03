@interface TIStreamingCandidateHandler
- (TIKeyboardInputManagerLogging)logger;
- (TIStreamingCandidateHandler)initWithClientProxy:(id)proxy keyboardState:(id)state requestToken:(id)token logger:(id)logger inputManager:(id)manager candidateHandler:(id)handler candidateResultSetHandler:(id)setHandler;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)pushCandidateResultSet:(id)set;
- (void)pushCandidates:(id)candidates;
@end

@implementation TIStreamingCandidateHandler

- (TIKeyboardInputManagerLogging)logger
{
  WeakRetained = objc_loadWeakRetained(&self->_logger);

  return WeakRetained;
}

- (void)close
{
  if (self->_status != 2)
  {
    v16 = v2;
    v17 = v3;
    self->_status = 2;
    kdebug_trace();
    v5 = kac_get_log();
    v6 = os_signpost_id_make_with_pointer(v5, (self ^ 2));
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateAutocorrections.async", &unk_22CCA4FEF, v15, 2u);
      }
    }

    if (!self->_didCallHandler)
    {
      candidateHandler = [(TIStreamingCandidateHandler *)self candidateHandler];

      if (candidateHandler)
      {
        v9 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:0];
        candidateHandler2 = [(TIStreamingCandidateHandler *)self candidateHandler];
        (candidateHandler2)[2](candidateHandler2, v9);
      }

      candidateResultSetHandler = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];

      if (candidateResultSetHandler)
      {
        candidateResultSetHandler2 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];
        candidateResultSetHandler2[2](candidateResultSetHandler2, 0);
      }

      self->_didCallHandler = 1;
    }

    clientProxy = [(TIStreamingCandidateHandler *)self clientProxy];
    requestToken = [(TIStreamingCandidateHandler *)self requestToken];
    [clientProxy closeRequestToken:requestToken];
  }
}

- (void)pushCandidateResultSet:(id)set
{
  setCopy = set;
  if (self->_status == 1)
  {
    v13 = setCopy;
    candidateResultSetHandler = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];
    setCopy = v13;
    if (candidateResultSetHandler)
    {
      candidateHandler = [(TIStreamingCandidateHandler *)self candidateHandler];

      setCopy = v13;
      if (!candidateHandler)
      {
        if (self->_didCallHandler)
        {
          clientProxy = [(TIStreamingCandidateHandler *)self clientProxy];
          requestToken = [(TIStreamingCandidateHandler *)self requestToken];
          [clientProxy pushCandidateResultSet:v13 requestToken:requestToken];

          logger = [(TIStreamingCandidateHandler *)self logger];
          keyboardState = [(TIStreamingCandidateHandler *)self keyboardState];
          requestToken2 = [(TIStreamingCandidateHandler *)self requestToken];
          [logger logCandidateResultSet:v13 trace:0 forKeyboardState:keyboardState requestToken:requestToken2];

          setCopy = v13;
        }

        else
        {
          candidateResultSetHandler2 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];
          (candidateResultSetHandler2)[2](candidateResultSetHandler2, v13);

          setCopy = v13;
          self->_didCallHandler = 1;
        }
      }
    }
  }
}

- (void)pushCandidates:(id)candidates
{
  candidatesCopy = candidates;
  if (self->_status == 1)
  {
    candidateHandler = [(TIStreamingCandidateHandler *)self candidateHandler];
    if (candidateHandler)
    {
      v5 = candidateHandler;
      candidateResultSetHandler = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];

      if (!candidateResultSetHandler)
      {
        if (self->_didCallHandler)
        {
          clientProxy = [(TIStreamingCandidateHandler *)self clientProxy];
          requestToken = [(TIStreamingCandidateHandler *)self requestToken];
          [clientProxy pushCandidates:candidatesCopy requestToken:requestToken];

          logger = [(TIStreamingCandidateHandler *)self logger];
          keyboardState = [(TIStreamingCandidateHandler *)self keyboardState];
          requestToken2 = [(TIStreamingCandidateHandler *)self requestToken];
          [logger logAutocorrections:candidatesCopy trace:0 forKeyboardState:keyboardState requestToken:requestToken2];

          WeakRetained = objc_loadWeakRetained(&self->_inputManager);
          if (WeakRetained)
          {
            v13 = objc_loadWeakRetained(&self->_inputManager);
            [v13 candidatesOfferedFeedback:candidatesCopy keyboardState:self->_keyboardState];
          }
        }

        else
        {
          candidateHandler2 = [(TIStreamingCandidateHandler *)self candidateHandler];
          (candidateHandler2)[2](candidateHandler2, candidatesCopy);

          self->_didCallHandler = 1;
        }
      }
    }
  }
}

- (void)open
{
  if (!self->_status)
  {
    v9 = v2;
    v10 = v3;
    self->_status = 1;
    kdebug_trace();
    v5 = kac_get_log();
    v6 = os_signpost_id_make_with_pointer(v5, (self ^ 2));
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.generateAutocorrections.async", &unk_22CCA4FEF, v8, 2u);
      }
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TIStreamingCandidateHandler;
  [(TIStreamingCandidateHandler *)&v2 dealloc];
}

- (TIStreamingCandidateHandler)initWithClientProxy:(id)proxy keyboardState:(id)state requestToken:(id)token logger:(id)logger inputManager:(id)manager candidateHandler:(id)handler candidateResultSetHandler:(id)setHandler
{
  proxyCopy = proxy;
  stateCopy = state;
  tokenCopy = token;
  loggerCopy = logger;
  managerCopy = manager;
  handlerCopy = handler;
  setHandlerCopy = setHandler;
  v30.receiver = self;
  v30.super_class = TIStreamingCandidateHandler;
  v21 = [(TIStreamingCandidateHandler *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_clientProxy, proxy);
    objc_storeStrong(&v22->_keyboardState, state);
    objc_storeStrong(&v22->_requestToken, token);
    objc_storeWeak(&v22->_logger, loggerCopy);
    objc_storeWeak(&v22->_inputManager, managerCopy);
    v23 = [handlerCopy copy];
    candidateHandler = v22->_candidateHandler;
    v22->_candidateHandler = v23;

    v25 = [setHandlerCopy copy];
    candidateResultSetHandler = v22->_candidateResultSetHandler;
    v22->_candidateResultSetHandler = v25;

    v22->_status = 0;
  }

  return v22;
}

@end