@interface WFRemoteExecutionOutgoingFileSession
- (BOOL)sendToDestinations:(id)a3 options:(id)a4 error:(id *)a5;
- (WFRemoteExecutionOutgoingFileSession)initWithService:(id)a3 fileURL:(id)a4 transferIdentifier:(id)a5 requestIdentifier:(id)a6;
- (void)fileSentWithSuccess:(BOOL)a3 error:(id)a4;
@end

@implementation WFRemoteExecutionOutgoingFileSession

- (void)fileSentWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(WFRemoteExecutionOutgoingFileSession *)self transferIdentifier];
    v10 = 136315906;
    v11 = "[WFRemoteExecutionOutgoingFileSession fileSentWithSuccess:error:]";
    v12 = 2114;
    v13 = v8;
    v14 = 1024;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s <%{public}@> file sent with success: %i, error: %{public}@", &v10, 0x26u);
  }

  [(WFRemoteExecutionSession *)self finish];
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendToDestinations:(id)a3 options:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
  }

  v11 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(WFRemoteExecutionOutgoingFileSession *)self transferIdentifier];
    v13 = [(WFRemoteExecutionOutgoingFileSession *)self fileURL];
    *buf = 136315650;
    v31 = "[WFRemoteExecutionOutgoingFileSession sendToDestinations:options:error:]";
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s <%{public}@> Sending file at URL: %{public}@", buf, 0x20u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [(WFRemoteExecutionOutgoingFileSession *)self requestIdentifier];
  [v14 setObject:v15 forKey:@"requestIdentifier"];

  v16 = [(WFRemoteExecutionOutgoingFileSession *)self transferIdentifier];
  [v14 setObject:v16 forKey:@"transferIdentifier"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_opt_class(), "version")}];
  [v14 setObject:v17 forKey:@"version"];

  v18 = [(WFRemoteExecutionSession *)self service];
  v19 = [(WFRemoteExecutionOutgoingFileSession *)self fileURL];
  v28 = 0;
  v29 = 0;
  v20 = [v18 sendResourceAtURL:v19 metadata:v14 toDestinations:v9 priority:300 options:v10 identifier:&v29 error:&v28];
  v21 = v29;
  v22 = v28;

  if (v20)
  {
    [(WFRemoteExecutionSession *)self setIdsIdentifier:v21];
    [(WFRemoteExecutionSession *)self setState:101];
  }

  else
  {
    [(WFRemoteExecutionSession *)self setState:1];
    v23 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[WFRemoteExecutionOutgoingFileSession sendToDestinations:options:error:]";
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s File sending failed with error: %{public}@", buf, 0x16u);
    }

    if (a5)
    {
      v24 = v22;
      *a5 = v22;
    }

    [(WFRemoteExecutionSession *)self finish];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (WFRemoteExecutionOutgoingFileSession)initWithService:(id)a3 fileURL:(id)a4 transferIdentifier:(id)a5 requestIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"service"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"transferIdentifier"}];

LABEL_4:
  v22.receiver = self;
  v22.super_class = WFRemoteExecutionOutgoingFileSession;
  v15 = [(WFRemoteExecutionSession *)&v22 initWithService:v11];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fileURL, a4);
    objc_storeStrong(&v16->_transferIdentifier, a5);
    objc_storeStrong(&v16->_requestIdentifier, a6);
    [(WFRemoteExecutionSession *)v16 setState:100];
    v17 = v16;
  }

  return v16;
}

@end