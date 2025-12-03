@interface SESRKESession
- (BOOL)continueExecutingRKEFunction:(id)function action:(id)action arbitraryData:(id)data readerIdentifier:(id)identifier error:(id *)error;
- (BOOL)isPassiveEntryAvailable:(id)available isAvailable:(BOOL *)isAvailable error:(id *)error;
- (BOOL)sendPassthroughMessage:(id)message readerIdentifier:(id)identifier error:(id *)error;
- (SESRKESessionContinuationDelegate)continuationDelegate;
- (SESRKESessionDelegate)delegate;
- (id)cancelRKEFunction:(id)function readerIdentifier:(id)identifier;
- (id)getVehicleReports:(id *)reports;
- (id)sign:(id)sign readerIdentifier:(id)identifier error:(id *)error;
- (void)didCreateKey:(id)key forVehicle:(id)vehicle;
- (void)didEndUnexpectedly:(id)unexpectedly;
- (void)didInvalidateWithError:(id)error;
- (void)didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data fromVehicle:(id)vehicle;
- (void)didReceivePassthroughMessage:(id)message fromVehicle:(id)vehicle;
- (void)didStartSession:(id)session;
- (void)sendEvent:(id)event fromVehicle:(id)vehicle;
@end

@implementation SESRKESession

- (BOOL)isPassiveEntryAvailable:(id)available isAvailable:(BOOL *)isAvailable error:(id *)error
{
  availableCopy = available;
  if ([(SESSession *)self state]== 1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__10;
    v19 = __Block_byref_object_dispose__10;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__SESRKESession_isPassiveEntryAvailable_isAvailable_error___block_invoke;
    v14[3] = &unk_1E82D1170;
    v14[4] = &v15;
    v9 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SESRKESession_isPassiveEntryAvailable_isAvailable_error___block_invoke_2;
    v13[3] = &unk_1E82D0DF0;
    v13[4] = &v21;
    v13[5] = &v15;
    [v9 isPassiveEntryAvailable:availableCopy reply:v13];

    if (isAvailable)
    {
      *isAvailable = *(v22 + 24);
    }

    if (error)
    {
      *error = v16[5];
    }

    LOBYTE(error) = v16[5] == 0;
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else if (error)
  {
    v10 = SESDefaultLogObject();
    v11 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();

    LOBYTE(error) = 0;
  }

  return error;
}

- (id)cancelRKEFunction:(id)function readerIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  identifierCopy = identifier;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = [functionCopy unsignedIntValue];
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "cancelRKEFunction 0x%X", buf, 8u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__SESRKESession_cancelRKEFunction_readerIdentifier___block_invoke;
    v25[3] = &unk_1E82D1170;
    v25[4] = buf;
    v9 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v25];
    unsignedShortValue = [functionCopy unsignedShortValue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__SESRKESession_cancelRKEFunction_readerIdentifier___block_invoke_2;
    v24[3] = &unk_1E82D0DF0;
    v24[4] = &v26;
    v24[5] = buf;
    [v9 cancelRKEFunction:unsignedShortValue readerIdentifier:identifierCopy reply:v24];

    v11 = v33;
    if ((v27[3] & 1) == 0 && !*(v33 + 5))
    {
      v12 = SESDefaultLogObject();
      v13 = *MEMORY[0x1E69E5148];
      v14 = SESCreateAndLogError();
      v15 = *(v33 + 5);
      *(v33 + 5) = v14;

      v11 = v33;
    }

    v16 = *(v11 + 5);
    if (v16)
    {
      v17 = SESDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(v33 + 5);
        *v30 = 138412290;
        v31 = v18;
        _os_log_impl(&dword_1C7B9A000, v17, OS_LOG_TYPE_ERROR, "%@", v30, 0xCu);
      }

      v16 = *(v33 + 5);
    }

    v19 = v16;
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = SESDefaultLogObject();
    v21 = *MEMORY[0x1E69E5148];
    v19 = SESCreateAndLogError();
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)continueExecutingRKEFunction:(id)function action:(id)action arbitraryData:(id)data readerIdentifier:(id)identifier error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  actionCopy = action;
  dataCopy = data;
  identifierCopy = identifier;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    *&buf[4] = [functionCopy unsignedIntValue];
    LOWORD(v36) = 1024;
    *(&v36 + 2) = [actionCopy unsignedIntValue];
    HIWORD(v36) = 1024;
    LODWORD(v37) = dataCopy != 0;
    WORD2(v37) = 2112;
    *(&v37 + 6) = identifierCopy;
    _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_INFO, "continueExecutingRKEFunction 0x%X rkeAction 0x%X arbitraryData %d readerIdentifier %@", buf, 0x1Eu);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v36 = buf;
    *&v37 = 0x3032000000;
    *(&v37 + 1) = __Block_byref_object_copy__10;
    v38 = __Block_byref_object_dispose__10;
    v39 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __90__SESRKESession_continueExecutingRKEFunction_action_arbitraryData_readerIdentifier_error___block_invoke;
    v30[3] = &unk_1E82D1170;
    v30[4] = buf;
    v17 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v30];
    unsignedShortValue = [functionCopy unsignedShortValue];
    unsignedCharValue = [actionCopy unsignedCharValue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __90__SESRKESession_continueExecutingRKEFunction_action_arbitraryData_readerIdentifier_error___block_invoke_2;
    v29[3] = &unk_1E82D0DF0;
    v29[4] = &v31;
    v29[5] = buf;
    [v17 continueExecutingRKEFunction:unsignedShortValue action:unsignedCharValue arbitraryData:dataCopy readerIdentifier:identifierCopy reply:v29];

    v20 = v36;
    if ((v32[3] & 1) != 0 || *(v36 + 5))
    {
      if (!error)
      {
LABEL_8:
        LOBYTE(error) = *(v20 + 5) == 0;
        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_11;
      }
    }

    else
    {
      v25 = SESDefaultLogObject();
      v26 = *MEMORY[0x1E69E5148];
      v27 = SESCreateAndLogError();
      v28 = *(v36 + 5);
      *(v36 + 5) = v27;

      v20 = v36;
      if (!error)
      {
        goto LABEL_8;
      }
    }

    *error = *(v20 + 5);
    v20 = v36;
    goto LABEL_8;
  }

  if (error)
  {
    v21 = SESDefaultLogObject();
    v22 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();

    LOBYTE(error) = 0;
  }

LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)sendPassthroughMessage:(id)message readerIdentifier:(id)identifier error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "sendPassthroughMessage", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    if ([messageCopy length] < 0x10000)
    {
      *buf = 0;
      v32 = buf;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__10;
      v35 = __Block_byref_object_dispose__10;
      v36 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __63__SESRKESession_sendPassthroughMessage_readerIdentifier_error___block_invoke;
      v26[3] = &unk_1E82D1170;
      v26[4] = buf;
      v15 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v26];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __63__SESRKESession_sendPassthroughMessage_readerIdentifier_error___block_invoke_2;
      v25[3] = &unk_1E82D0DF0;
      v25[4] = &v27;
      v25[5] = buf;
      [v15 sendPassthroughMessage:messageCopy readerIdentifier:identifierCopy reply:v25];

      v16 = v32;
      if ((v28[3] & 1) == 0 && !*(v32 + 5))
      {
        v17 = SESDefaultLogObject();
        v18 = *MEMORY[0x1E69E5148];
        v19 = SESCreateAndLogError();
        v20 = *(v32 + 5);
        *(v32 + 5) = v19;

        v16 = v32;
      }

      if (*(v16 + 5))
      {
        v21 = SESDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v32 + 5);
          *v37 = 138412290;
          v38 = v22;
          _os_log_impl(&dword_1C7B9A000, v21, OS_LOG_TYPE_ERROR, "%@", v37, 0xCu);
        }

        v16 = v32;
      }

      if (error)
      {
        *error = *(v16 + 5);
        v16 = v32;
      }

      LOBYTE(error) = *(v16 + 5) == 0;
      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(buf, 8);
    }

    else if (error)
    {
      v11 = SESDefaultLogObject();
      v12 = *MEMORY[0x1E69E5148];
      [messageCopy length];
      *error = SESCreateAndLogError();

LABEL_9:
      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    v13 = SESDefaultLogObject();
    v14 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();

    goto LABEL_9;
  }

  v23 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)getVehicleReports:(id *)reports
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "getVehicleReports", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__10;
    v30 = __Block_byref_object_dispose__10;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__10;
    v24 = __Block_byref_object_dispose__10;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __35__SESRKESession_getVehicleReports___block_invoke;
    v19[3] = &unk_1E82D1170;
    v19[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __35__SESRKESession_getVehicleReports___block_invoke_2;
    v18[3] = &unk_1E82D1198;
    v18[4] = &v20;
    v18[5] = buf;
    [v6 getVehicleReports:v18];

    v7 = v27;
    if (!v21[5] && !*(v27 + 5))
    {
      v8 = SESDefaultLogObject();
      v9 = *MEMORY[0x1E69E5148];
      v10 = SESCreateAndLogError();
      v11 = *(v27 + 5);
      *(v27 + 5) = v10;

      v7 = v27;
    }

    if (*(v7 + 5))
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v27 + 5);
        *v32 = 138412290;
        v33 = v13;
        _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_ERROR, "%@", v32, 0xCu);
      }
    }

    if (reports)
    {
      *reports = *(v27 + 5);
    }

    reports = v21[5];
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(buf, 8);
  }

  else if (reports)
  {
    v14 = SESDefaultLogObject();
    v15 = *MEMORY[0x1E69E5148];
    *reports = SESCreateAndLogError();

    reports = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return reports;
}

void __35__SESRKESession_getVehicleReports___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)sign:(id)sign readerIdentifier:(id)identifier error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  signCopy = sign;
  identifierCopy = identifier;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "sign", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    hexStringAsData = [identifierCopy hexStringAsData];
    if (hexStringAsData)
    {
      *buf = 0;
      v35 = buf;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__10;
      v38 = __Block_byref_object_dispose__10;
      v39 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__10;
      v32 = __Block_byref_object_dispose__10;
      v33 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __45__SESRKESession_sign_readerIdentifier_error___block_invoke;
      v27[3] = &unk_1E82D1170;
      v27[4] = buf;
      v12 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v27];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __45__SESRKESession_sign_readerIdentifier_error___block_invoke_2;
      v26[3] = &unk_1E82D17E0;
      v26[4] = &v28;
      v26[5] = buf;
      [v12 sign:signCopy readerIdentifier:hexStringAsData reply:v26];

      v13 = v35;
      if (!v29[5] && !*(v35 + 5))
      {
        v14 = SESDefaultLogObject();
        v15 = *MEMORY[0x1E69E5148];
        v16 = SESCreateAndLogError();
        v17 = *(v35 + 5);
        *(v35 + 5) = v16;

        v13 = v35;
      }

      if (*(v13 + 5))
      {
        v18 = SESDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(v35 + 5);
          *v40 = 138412290;
          v41 = v19;
          _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_ERROR, "%@", v40, 0xCu);
        }
      }

      if (error)
      {
        *error = *(v35 + 5);
      }

      v20 = v29[5];
      _Block_object_dispose(&v28, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (error)
      {
        v22 = SESDefaultLogObject();
        v23 = *MEMORY[0x1E69E5148];
        *error = SESCreateAndLogError();
      }

      v20 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v20 = 0;
      goto LABEL_22;
    }

    hexStringAsData = SESDefaultLogObject();
    v21 = *MEMORY[0x1E69E5148];
    SESCreateAndLogError();
    *error = v20 = 0;
  }

LABEL_22:
  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

void __45__SESRKESession_sign_readerIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)didStartSession:(id)session
{
  v3.receiver = self;
  v3.super_class = SESRKESession;
  [(SESSession *)&v3 didStartSession:session];
}

- (void)didEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  [(SESRKESession *)self didInvalidateWithError:unexpectedlyCopy];
  v5.receiver = self;
  v5.super_class = SESRKESession;
  [(SESSession *)&v5 didEndUnexpectedly:unexpectedlyCopy];
}

- (void)didInvalidateWithError:(id)error
{
  errorCopy = error;
  queue = [(SESSession *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SESRKESession_didInvalidateWithError___block_invoke;
  v7[3] = &unk_1E82D11C0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __40__SESRKESession_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sesSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

- (void)didCreateKey:(id)key forVehicle:(id)vehicle
{
  keyCopy = key;
  vehicleCopy = vehicle;
  queue = [(SESSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SESRKESession_didCreateKey_forVehicle___block_invoke;
  block[3] = &unk_1E82D0CF8;
  block[4] = self;
  v12 = keyCopy;
  v13 = vehicleCopy;
  v9 = vehicleCopy;
  v10 = keyCopy;
  dispatch_async(queue, block);
}

void __41__SESRKESession_didCreateKey_forVehicle___block_invoke(id *a1)
{
  v5 = [a1[4] delegate];
  v2 = a1[4];
  v3 = [a1[5] asHexString];
  v4 = [a1[6] asHexString];
  [v5 sesSession:v2 didCreateKey:v3 forVehicle:v4];
}

- (void)sendEvent:(id)event fromVehicle:(id)vehicle
{
  eventCopy = event;
  vehicleCopy = vehicle;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SESRKESession_sendEvent_fromVehicle___block_invoke;
    block[3] = &unk_1E82D0CF8;
    block[4] = self;
    v11 = eventCopy;
    v12 = vehicleCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_INFO, "Dropping event while no active session", buf, 2u);
    }
  }
}

void __39__SESRKESession_sendEvent_fromVehicle___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) asHexString];
  [v5 sesSession:v2 event:v3 fromVehicle:v4];
}

- (void)didReceivePassthroughMessage:(id)message fromVehicle:(id)vehicle
{
  messageCopy = message;
  vehicleCopy = vehicle;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SESRKESession_didReceivePassthroughMessage_fromVehicle___block_invoke;
    block[3] = &unk_1E82D0CF8;
    block[4] = self;
    v11 = messageCopy;
    v12 = vehicleCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_INFO, "Dropping passthrough message while no active session", buf, 2u);
    }
  }
}

void __58__SESRKESession_didReceivePassthroughMessage_fromVehicle___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) asHexString];
  [v5 sesSession:v2 didReceivePassthroughMessage:v3 fromVehicle:v4];
}

- (void)didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data fromVehicle:(id)vehicle
{
  forCopy = for;
  identifierCopy = identifier;
  dataCopy = data;
  vehicleCopy = vehicle;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__SESRKESession_didReceiveContinuationRequestFor_actionIdentifier_arbitraryData_fromVehicle___block_invoke;
    block[3] = &unk_1E82D1808;
    block[4] = self;
    v17 = forCopy;
    v18 = identifierCopy;
    v19 = dataCopy;
    v20 = vehicleCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_INFO, "Dropping confirmation request while no active session", buf, 2u);
    }
  }
}

void __93__SESRKESession_didReceiveContinuationRequestFor_actionIdentifier_arbitraryData_fromVehicle___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) continuationDelegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) asHexString];
  [v7 sesSession:v2 didReceiveContinuationRequestFor:v3 actionIdentifier:v4 arbitraryData:v5 fromVehicle:v6];
}

- (SESRKESessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SESRKESessionContinuationDelegate)continuationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_continuationDelegate);

  return WeakRetained;
}

@end