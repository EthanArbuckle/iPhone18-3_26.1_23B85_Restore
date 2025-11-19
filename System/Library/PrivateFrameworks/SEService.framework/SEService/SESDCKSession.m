@interface SESDCKSession
+ (id)requestAssertionForKeyID:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (BOOL)sendPassthroughMessage:(id)a3 error:(id *)a4;
- (SESDCKSessionDelegate)delegate;
- (SESDCKSessionPassthroughDelegate)passthroughDelegate;
- (id)cancelRKEAction:(unint64_t)a3;
- (id)cancelRKEFunction:(id)a3;
- (id)sendRKEAction:(unint64_t)a3 authorization:(id)a4;
- (id)sendRKEFunction:(id)a3 action:(id)a4 authorization:(id)a5;
- (id)setActiveKey:(id)a3;
- (id)setAuthorization:(id)a3;
- (id)setSecureElementToken:(id)a3;
- (void)didEndUnexpectedly:(id)a3;
- (void)didReceivePassthroughMessage:(id)a3;
- (void)didStartSession:(id)a3;
- (void)endSession;
- (void)sendEvent:(id)a3;
- (void)sendRKEFunction:(id)a3 action:(id)a4 actionType:(unint64_t)a5 arbitraryData:(id)a6 authorization:(id)a7 completion:(id)a8;
@end

@implementation SESDCKSession

- (id)setActiveKey:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setActiveKey %@", &buf, 0xCu);
  }

  if ([(SESSession *)self state]== 1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__6;
    v35 = __Block_byref_object_dispose__6;
    v36 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __30__SESDCKSession_setActiveKey___block_invoke;
    v25[3] = &unk_1E82D1170;
    v25[4] = &buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __30__SESDCKSession_setActiveKey___block_invoke_2;
    v24[3] = &unk_1E82D0DF0;
    v24[4] = &v26;
    v24[5] = &buf;
    [v6 setActiveKey:v4 reply:v24];

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
    if (!v4 || *(v7 + 40))
    {
      self->_aid = 0;

      v15 = 0;
      activeKeyIdentifier = self->_activeKeyIdentifier;
      self->_activeKeyIdentifier = 0;
    }

    else
    {
      self->_aid = @"A000000809434343444B417631";

      v13 = v4;
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
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v26, 8);
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

- (id)setSecureElementToken:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__SESDCKSession_setSecureElementToken___block_invoke;
    v21[3] = &unk_1E82D1170;
    v21[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __39__SESDCKSession_setSecureElementToken___block_invoke_2;
    v20[3] = &unk_1E82D0DF0;
    v20[4] = &v22;
    v20[5] = buf;
    [v6 setSecureElementToken:v4 reply:v20];

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

- (id)setAuthorization:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setAuthorization", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __34__SESDCKSession_setAuthorization___block_invoke;
    v21[3] = &unk_1E82D1170;
    v21[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __34__SESDCKSession_setAuthorization___block_invoke_2;
    v20[3] = &unk_1E82D0DF0;
    v20[4] = &v22;
    v20[5] = buf;
    [v6 setAuthorization:v4 reply:v20];

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

- (void)sendRKEFunction:(id)a3 action:(id)a4 actionType:(unint64_t)a5 arbitraryData:(id)a6 authorization:(id)a7 completion:(id)a8
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = [v14 unsignedIntValue];
    LOWORD(v36) = 1024;
    *(&v36 + 2) = [v15 unsignedIntValue];
    HIWORD(v36) = 1024;
    LODWORD(v37) = v17 != 0;
    _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_INFO, "sendRKEFunction 0x%X action 0x%X authorization %d", buf, 0x14u);
  }

  if ([(SESSession *)self state]== 1)
  {
    if ([v16 length] < 0x41)
    {
      *buf = 0;
      v36 = buf;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__6;
      v39 = __Block_byref_object_dispose__6;
      v40 = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __90__SESDCKSession_sendRKEFunction_action_actionType_arbitraryData_authorization_completion___block_invoke;
      v32[3] = &unk_1E82D1170;
      v32[4] = buf;
      v26 = [(SESSession *)self remoteObjectProxyWithErrorHandler:v32];
      [v26 sendRKEFunction:objc_msgSend(v14 action:"unsignedShortValue") actionType:objc_msgSend(v15 arbitraryData:"unsignedCharValue") authorization:a5 completion:{v16, v17, v18}];

      if (*(v36 + 5))
      {
        v27 = SESDefaultLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(v36 + 5);
          *v33 = 138412290;
          v34 = v28;
          _os_log_impl(&dword_1C7B9A000, v27, OS_LOG_TYPE_ERROR, "%@", v33, 0xCu);
        }

        v29 = *(v36 + 5);
        v30 = SESEnsureError();
        v18[2](v18, 0, v30);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = SESDefaultLogObject();
      v21 = *MEMORY[0x1E69E5148];
      [v16 length];
      v22 = SESCreateAndLogError();
      v18[2](v18, 0, v22);
    }
  }

  else
  {
    v23 = SESDefaultLogObject();
    v24 = *MEMORY[0x1E69E5148];
    v25 = SESCreateAndLogError();
    v18[2](v18, 0, v25);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)cancelRKEFunction:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = [v4 unsignedIntValue];
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "cancelRKEFunction 0x%X", buf, 8u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__6;
    v33 = __Block_byref_object_dispose__6;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__SESDCKSession_cancelRKEFunction___block_invoke;
    v22[3] = &unk_1E82D1170;
    v22[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
    v7 = [v4 unsignedShortValue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __35__SESDCKSession_cancelRKEFunction___block_invoke_2;
    v21[3] = &unk_1E82D0DF0;
    v21[4] = &v23;
    v21[5] = buf;
    [v6 cancelRKEFunction:v7 reply:v21];

    v8 = v30;
    if ((v24[3] & 1) == 0 && !*(v30 + 5))
    {
      v9 = SESDefaultLogObject();
      v10 = *MEMORY[0x1E69E5148];
      v11 = SESCreateAndLogError();
      v12 = *(v30 + 5);
      *(v30 + 5) = v11;

      v8 = v30;
    }

    v13 = *(v8 + 5);
    if (v13)
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(v30 + 5);
        *v27 = 138412290;
        v28 = v15;
        _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
      }

      v13 = *(v30 + 5);
    }

    v16 = v13;
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = SESDefaultLogObject();
    v18 = *MEMORY[0x1E69E5148];
    v16 = SESCreateAndLogError();
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)sendPassthroughMessage:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, "sendPassthroughMessage", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    if ([v6 length] < 0x10000)
    {
      *buf = 0;
      v29 = buf;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__6;
      v32 = __Block_byref_object_dispose__6;
      v33 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __46__SESDCKSession_sendPassthroughMessage_error___block_invoke;
      v23[3] = &unk_1E82D1170;
      v23[4] = buf;
      v12 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v23];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __46__SESDCKSession_sendPassthroughMessage_error___block_invoke_2;
      v22[3] = &unk_1E82D0DF0;
      v22[4] = &v24;
      v22[5] = buf;
      [v12 sendPassthroughMessage:v6 reply:v22];

      v13 = v29;
      if ((v25[3] & 1) == 0 && !*(v29 + 5))
      {
        v14 = SESDefaultLogObject();
        v15 = *MEMORY[0x1E69E5148];
        v16 = SESCreateAndLogError();
        v17 = *(v29 + 5);
        *(v29 + 5) = v16;

        v13 = v29;
      }

      if (*(v13 + 5))
      {
        v18 = SESDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(v29 + 5);
          *v34 = 138412290;
          v35 = v19;
          _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_ERROR, "%@", v34, 0xCu);
        }

        v13 = v29;
      }

      if (a4)
      {
        *a4 = *(v13 + 5);
        v13 = v29;
      }

      LOBYTE(a4) = *(v13 + 5) == 0;
      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(buf, 8);
    }

    else if (a4)
    {
      v8 = SESDefaultLogObject();
      v9 = *MEMORY[0x1E69E5148];
      [v6 length];
      *a4 = SESCreateAndLogError();

LABEL_9:
      LOBYTE(a4) = 0;
    }
  }

  else if (a4)
  {
    v10 = SESDefaultLogObject();
    v11 = *MEMORY[0x1E69E5148];
    *a4 = SESCreateAndLogError();

    goto LABEL_9;
  }

  v20 = *MEMORY[0x1E69E9840];
  return a4;
}

+ (id)requestAssertionForKeyID:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[SESSessionManager sharedInstance];
  v14 = 0;
  v10 = [v9 startDCKAssertionForKeyIdentifier:v8 withOptions:v7 error:&v14];

  v11 = v14;
  if (a5)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v10;
}

- (void)didStartSession:(id)a3
{
  v3.receiver = self;
  v3.super_class = SESDCKSession;
  [(SESSession *)&v3 didStartSession:a3];
}

- (void)didEndUnexpectedly:(id)a3
{
  v3.receiver = self;
  v3.super_class = SESDCKSession;
  [(SESSession *)&v3 didEndUnexpectedly:a3];
}

- (void)endSession
{
  v3.receiver = self;
  v3.super_class = SESDCKSession;
  [(SESSession *)&v3 endSession];
  [(SESDCKSession *)self sendEvent:&unk_1F4762E50];
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  if ([(SESSession *)self state]== 1)
  {
    v5 = [(SESSession *)self queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__SESDCKSession_sendEvent___block_invoke;
    v7[3] = &unk_1E82D11C0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
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

void __27__SESDCKSession_sendEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sesSession:*(a1 + 32) event:*(a1 + 40)];
}

- (void)didReceivePassthroughMessage:(id)a3
{
  v4 = a3;
  if ([(SESSession *)self state]!= 1)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Dropping passthrough message while no active session";
LABEL_8:
      _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v5 = [(SESDCKSession *)self passthroughDelegate];

  if (!v5)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Dropping passthrough message due to no delegate";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = [(SESSession *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SESDCKSession_didReceivePassthroughMessage___block_invoke;
  v9[3] = &unk_1E82D11C0;
  v9[4] = self;
  v10 = v4;
  dispatch_async(v6, v9);

LABEL_10:
}

void __46__SESDCKSession_didReceivePassthroughMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passthroughDelegate];
  [v2 sesSession:*(a1 + 32) didReceivePassthroughMessage:*(a1 + 40)];
}

- (id)sendRKEAction:(unint64_t)a3 authorization:(id)a4
{
  v4 = SESDefaultLogObject();
  v5 = *MEMORY[0x1E69E5148];
  v6 = SESCreateAndLogError();

  return v6;
}

- (id)sendRKEFunction:(id)a3 action:(id)a4 authorization:(id)a5
{
  v5 = SESDefaultLogObject();
  v6 = *MEMORY[0x1E69E5148];
  v7 = SESCreateAndLogError();

  return v7;
}

- (id)cancelRKEAction:(unint64_t)a3
{
  v3 = SESDefaultLogObject();
  v4 = *MEMORY[0x1E69E5148];
  v5 = SESCreateAndLogError();

  return v5;
}

- (SESDCKSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SESDCKSessionPassthroughDelegate)passthroughDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passthroughDelegate);

  return WeakRetained;
}

@end