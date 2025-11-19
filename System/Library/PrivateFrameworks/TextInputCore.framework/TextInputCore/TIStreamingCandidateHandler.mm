@interface TIStreamingCandidateHandler
- (TIKeyboardInputManagerLogging)logger;
- (TIStreamingCandidateHandler)initWithClientProxy:(id)a3 keyboardState:(id)a4 requestToken:(id)a5 logger:(id)a6 inputManager:(id)a7 candidateHandler:(id)a8 candidateResultSetHandler:(id)a9;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)pushCandidateResultSet:(id)a3;
- (void)pushCandidates:(id)a3;
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
      v8 = [(TIStreamingCandidateHandler *)self candidateHandler];

      if (v8)
      {
        v9 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:0];
        v10 = [(TIStreamingCandidateHandler *)self candidateHandler];
        (v10)[2](v10, v9);
      }

      v11 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];

      if (v11)
      {
        v12 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];
        v12[2](v12, 0);
      }

      self->_didCallHandler = 1;
    }

    v13 = [(TIStreamingCandidateHandler *)self clientProxy];
    v14 = [(TIStreamingCandidateHandler *)self requestToken];
    [v13 closeRequestToken:v14];
  }
}

- (void)pushCandidateResultSet:(id)a3
{
  v4 = a3;
  if (self->_status == 1)
  {
    v13 = v4;
    v5 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];
    v4 = v13;
    if (v5)
    {
      v6 = [(TIStreamingCandidateHandler *)self candidateHandler];

      v4 = v13;
      if (!v6)
      {
        if (self->_didCallHandler)
        {
          v7 = [(TIStreamingCandidateHandler *)self clientProxy];
          v8 = [(TIStreamingCandidateHandler *)self requestToken];
          [v7 pushCandidateResultSet:v13 requestToken:v8];

          v9 = [(TIStreamingCandidateHandler *)self logger];
          v10 = [(TIStreamingCandidateHandler *)self keyboardState];
          v11 = [(TIStreamingCandidateHandler *)self requestToken];
          [v9 logCandidateResultSet:v13 trace:0 forKeyboardState:v10 requestToken:v11];

          v4 = v13;
        }

        else
        {
          v12 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];
          (v12)[2](v12, v13);

          v4 = v13;
          self->_didCallHandler = 1;
        }
      }
    }
  }
}

- (void)pushCandidates:(id)a3
{
  v15 = a3;
  if (self->_status == 1)
  {
    v4 = [(TIStreamingCandidateHandler *)self candidateHandler];
    if (v4)
    {
      v5 = v4;
      v6 = [(TIStreamingCandidateHandler *)self candidateResultSetHandler];

      if (!v6)
      {
        if (self->_didCallHandler)
        {
          v7 = [(TIStreamingCandidateHandler *)self clientProxy];
          v8 = [(TIStreamingCandidateHandler *)self requestToken];
          [v7 pushCandidates:v15 requestToken:v8];

          v9 = [(TIStreamingCandidateHandler *)self logger];
          v10 = [(TIStreamingCandidateHandler *)self keyboardState];
          v11 = [(TIStreamingCandidateHandler *)self requestToken];
          [v9 logAutocorrections:v15 trace:0 forKeyboardState:v10 requestToken:v11];

          WeakRetained = objc_loadWeakRetained(&self->_inputManager);
          if (WeakRetained)
          {
            v13 = objc_loadWeakRetained(&self->_inputManager);
            [v13 candidatesOfferedFeedback:v15 keyboardState:self->_keyboardState];
          }
        }

        else
        {
          v14 = [(TIStreamingCandidateHandler *)self candidateHandler];
          (v14)[2](v14, v15);

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

- (TIStreamingCandidateHandler)initWithClientProxy:(id)a3 keyboardState:(id)a4 requestToken:(id)a5 logger:(id)a6 inputManager:(id)a7 candidateHandler:(id)a8 candidateResultSetHandler:(id)a9
{
  v29 = a3;
  v28 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v30.receiver = self;
  v30.super_class = TIStreamingCandidateHandler;
  v21 = [(TIStreamingCandidateHandler *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_clientProxy, a3);
    objc_storeStrong(&v22->_keyboardState, a4);
    objc_storeStrong(&v22->_requestToken, a5);
    objc_storeWeak(&v22->_logger, v17);
    objc_storeWeak(&v22->_inputManager, v18);
    v23 = [v19 copy];
    candidateHandler = v22->_candidateHandler;
    v22->_candidateHandler = v23;

    v25 = [v20 copy];
    candidateResultSetHandler = v22->_candidateResultSetHandler;
    v22->_candidateResultSetHandler = v25;

    v22->_status = 0;
  }

  return v22;
}

@end