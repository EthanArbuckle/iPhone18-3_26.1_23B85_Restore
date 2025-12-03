@interface WFRemoteExecutionOutgoingFileSession
- (BOOL)sendToDestinations:(id)destinations options:(id)options error:(id *)error;
- (WFRemoteExecutionOutgoingFileSession)initWithService:(id)service fileURL:(id)l transferIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
- (void)fileSentWithSuccess:(BOOL)success error:(id)error;
@end

@implementation WFRemoteExecutionOutgoingFileSession

- (void)fileSentWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    transferIdentifier = [(WFRemoteExecutionOutgoingFileSession *)self transferIdentifier];
    v10 = 136315906;
    v11 = "[WFRemoteExecutionOutgoingFileSession fileSentWithSuccess:error:]";
    v12 = 2114;
    v13 = transferIdentifier;
    v14 = 1024;
    v15 = successCopy;
    v16 = 2114;
    v17 = errorCopy;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s <%{public}@> file sent with success: %i, error: %{public}@", &v10, 0x26u);
  }

  [(WFRemoteExecutionSession *)self finish];
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendToDestinations:(id)destinations options:(id)options error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  if (!destinationsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
  }

  v11 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    transferIdentifier = [(WFRemoteExecutionOutgoingFileSession *)self transferIdentifier];
    fileURL = [(WFRemoteExecutionOutgoingFileSession *)self fileURL];
    *buf = 136315650;
    v31 = "[WFRemoteExecutionOutgoingFileSession sendToDestinations:options:error:]";
    v32 = 2114;
    v33 = transferIdentifier;
    v34 = 2114;
    v35 = fileURL;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s <%{public}@> Sending file at URL: %{public}@", buf, 0x20u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  requestIdentifier = [(WFRemoteExecutionOutgoingFileSession *)self requestIdentifier];
  [v14 setObject:requestIdentifier forKey:@"requestIdentifier"];

  transferIdentifier2 = [(WFRemoteExecutionOutgoingFileSession *)self transferIdentifier];
  [v14 setObject:transferIdentifier2 forKey:@"transferIdentifier"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_opt_class(), "version")}];
  [v14 setObject:v17 forKey:@"version"];

  service = [(WFRemoteExecutionSession *)self service];
  fileURL2 = [(WFRemoteExecutionOutgoingFileSession *)self fileURL];
  v28 = 0;
  v29 = 0;
  v20 = [service sendResourceAtURL:fileURL2 metadata:v14 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v29 error:&v28];
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

    if (error)
    {
      v24 = v22;
      *error = v22;
    }

    [(WFRemoteExecutionSession *)self finish];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (WFRemoteExecutionOutgoingFileSession)initWithService:(id)service fileURL:(id)l transferIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  serviceCopy = service;
  lCopy = l;
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  if (serviceCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"service"}];

  if (!lCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingFileSession.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"transferIdentifier"}];

LABEL_4:
  v22.receiver = self;
  v22.super_class = WFRemoteExecutionOutgoingFileSession;
  v15 = [(WFRemoteExecutionSession *)&v22 initWithService:serviceCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fileURL, l);
    objc_storeStrong(&v16->_transferIdentifier, identifier);
    objc_storeStrong(&v16->_requestIdentifier, requestIdentifier);
    [(WFRemoteExecutionSession *)v16 setState:100];
    v17 = v16;
  }

  return v16;
}

@end