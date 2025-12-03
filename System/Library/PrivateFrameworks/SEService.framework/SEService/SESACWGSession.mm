@interface SESACWGSession
- (SESACWGSessionDelegate)delegate;
- (id)setActiveKey:(id)key;
- (id)setSecureElementToken:(id)token;
- (void)didEndUnexpectedly:(id)unexpectedly;
- (void)didStartSession:(id)session;
- (void)endSession;
- (void)sendEvent:(id)event;
@end

@implementation SESACWGSession

- (id)setActiveKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = keyCopy;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setActiveKey %@", &buf, 0xCu);
  }

  if ([(SESSession *)self state]== 1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__4;
    v35 = __Block_byref_object_dispose__4;
    v36 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __31__SESACWGSession_setActiveKey___block_invoke;
    v25[3] = &unk_1E82D1170;
    v25[4] = &buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __31__SESACWGSession_setActiveKey___block_invoke_2;
    v24[3] = &unk_1E82D0DF0;
    v24[4] = &v26;
    v24[5] = &buf;
    [v6 setActiveKey:keyCopy reply:v24];

    v7 = *(&buf + 1);
    if ((v27[3] & 1) == 0 && !*(*(&buf + 1) + 40))
    {
      v8 = SESDefaultLogObject();
      v9 = *MEMORY[0x1E69E5148];
      v10 = SESCreateAndLogError();
      v11 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v10;

      v7 = *(&buf + 1);
    }

    aid = self->_aid;
    if (!keyCopy || *(v7 + 40))
    {
      self->_aid = 0;

      v15 = 0;
      activeKeyIdentifier = self->_activeKeyIdentifier;
      self->_activeKeyIdentifier = 0;
    }

    else
    {
      self->_aid = @"A000000909ACCE5501";

      v13 = keyCopy;
      activeKeyIdentifier = self->_activeKeyIdentifier;
      self->_activeKeyIdentifier = v13;
      v15 = 1;
    }

    self->_supportsSecureRanging = v15;
    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      v20 = SESDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(*(&buf + 1) + 40);
        *v30 = 138412290;
        v31 = v21;
        _os_log_impl(&dword_1C7B9A000, v20, OS_LOG_TYPE_ERROR, "%@", v30, 0xCu);
      }

      v19 = *(*(&buf + 1) + 40);
    }

    v18 = v19;
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = SESDefaultLogObject();
    v17 = *MEMORY[0x1E69E5148];
    v18 = SESCreateAndLogError();
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)setSecureElementToken:(id)token
{
  v34 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setSecureElementToken", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4;
    v30 = __Block_byref_object_dispose__4;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __40__SESACWGSession_setSecureElementToken___block_invoke;
    v21[3] = &unk_1E82D1170;
    v21[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__SESACWGSession_setSecureElementToken___block_invoke_2;
    v20[3] = &unk_1E82D0DF0;
    v20[4] = &v22;
    v20[5] = buf;
    [v6 setSecureElementToken:tokenCopy reply:v20];

    v7 = v27;
    if ((v23[3] & 1) == 0 && !*(v27 + 5))
    {
      v8 = SESDefaultLogObject();
      v9 = *MEMORY[0x1E69E5148];
      v10 = SESCreateAndLogError();
      v11 = *(v27 + 5);
      *(v27 + 5) = v10;

      v7 = v27;
    }

    v12 = *(v7 + 5);
    if (v12)
    {
      v13 = SESDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(v27 + 5);
        *v32 = 138412290;
        v33 = v14;
        _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_ERROR, "%@", v32, 0xCu);
      }

      v12 = *(v27 + 5);
    }

    v15 = v12;
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = SESDefaultLogObject();
    v17 = *MEMORY[0x1E69E5148];
    v15 = SESCreateAndLogError();
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)didStartSession:(id)session
{
  v3.receiver = self;
  v3.super_class = SESACWGSession;
  [(SESSession *)&v3 didStartSession:session];
}

- (void)didEndUnexpectedly:(id)unexpectedly
{
  v3.receiver = self;
  v3.super_class = SESACWGSession;
  [(SESSession *)&v3 didEndUnexpectedly:unexpectedly];
}

- (void)endSession
{
  v3.receiver = self;
  v3.super_class = SESACWGSession;
  [(SESSession *)&v3 endSession];
  [(SESACWGSession *)self sendEvent:&unk_1F4762E28];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __28__SESACWGSession_sendEvent___block_invoke;
    v7[3] = &unk_1E82D11C0;
    v7[4] = self;
    v8 = eventCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_INFO, "Dropping event while no active session", buf, 2u);
    }
  }
}

void __28__SESACWGSession_sendEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sesSession:*(a1 + 32) event:*(a1 + 40)];
}

- (SESACWGSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end