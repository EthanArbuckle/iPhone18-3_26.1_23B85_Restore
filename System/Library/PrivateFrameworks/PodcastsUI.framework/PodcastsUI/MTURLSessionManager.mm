@interface MTURLSessionManager
+ (id)originalURLForTask:(id)task;
+ (int64_t)statusCodeForTask:(id)task;
+ (void)purgeExternalCookies;
- (MTURLSessionManager)init;
- (id)backgroundSessionConfigurationIdentifier;
- (id)sessionCompletionHandler;
- (id)sessionForConfiguration:(id)configuration;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)_assertSubclassRequirements;
- (void)_invokeURLSessionBackgroundEventsCompletionHandler;
- (void)_showCredentialsActionControllerForHost:(id)host signIn:(id)in cancel:(id)cancel;
- (void)loadSessionsIfNeeded;
- (void)setSessionCompletionHandler:(id)handler;
- (void)startDownloadTaskForURL:(id)l userInitiated:(BOOL)initiated useBackgroundFetch:(BOOL)fetch usePrivatePath:(id)path downloadStartedBlock:(id)block;
@end

@implementation MTURLSessionManager

- (MTURLSessionManager)init
{
  v10.receiver = self;
  v10.super_class = MTURLSessionManager;
  v2 = [(MTURLSessionManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(MTURLSessionManager *)v2 _assertSubclassRequirements];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
    [(MTURLSessionManager *)v3 setStartQueue:v7];

    v8 = v3;
  }

  return v3;
}

- (void)_assertSubclassRequirements
{
  _subclassImplementsDataDidDownload = [(MTURLSessionManager *)self _subclassImplementsDataDidDownload];
  _subclassImplementsURLDidDownload = [(MTURLSessionManager *)self _subclassImplementsURLDidDownload];
  _subclassImplementsDidFailWithError = [(MTURLSessionManager *)self _subclassImplementsDidFailWithError];
  _subclassImplementsConfigureSession = [(MTURLSessionManager *)self _subclassImplementsConfigureSession];
  if (_subclassImplementsDataDidDownload && _subclassImplementsURLDidDownload)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses may not implement both -task:didCompleteWithData: and -task:didCompleteWithDownloadedContentUrl:";
    goto LABEL_11;
  }

  if (!_subclassImplementsDataDidDownload && !_subclassImplementsURLDidDownload)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses must implement one of -task:didCompleteWithData: or -task:didCompleteWithDownloadedContentUrl:";
    goto LABEL_11;
  }

  if (!_subclassImplementsDidFailWithError)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses must implement task:didFailWithError:orStatusCode:";
    goto LABEL_11;
  }

  if (!_subclassImplementsConfigureSession)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses must implement configureSession:";
LABEL_11:
    v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }
}

- (void)loadSessionsIfNeeded
{
  sessionForBackgroundDownloads = [(MTURLSessionManager *)self sessionForBackgroundDownloads];

  if (!sessionForBackgroundDownloads)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    sessionForBackgroundDownloads2 = [(MTURLSessionManager *)selfCopy sessionForBackgroundDownloads];

    if (!sessionForBackgroundDownloads2)
    {
      v6 = MEMORY[0x277CCAD38];
      backgroundSessionConfigurationIdentifier = [(MTURLSessionManager *)selfCopy backgroundSessionConfigurationIdentifier];
      v8 = [v6 backgroundSessionConfigurationWithIdentifier:backgroundSessionConfigurationIdentifier];

      [v8 set_allowsConstrainedNetworkAccess:0];
      v9 = [(MTURLSessionManager *)selfCopy sessionForConfiguration:v8];
      [(MTURLSessionManager *)selfCopy setSessionForBackgroundDownloads:v9];
    }

    objc_sync_exit(selfCopy);
  }

  sessionForForegroundDownloads = [(MTURLSessionManager *)self sessionForForegroundDownloads];

  if (!sessionForForegroundDownloads)
  {
    obj = self;
    objc_sync_enter(obj);
    sessionForForegroundDownloads2 = [(MTURLSessionManager *)obj sessionForForegroundDownloads];

    if (!sessionForForegroundDownloads2)
    {
      defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v13 = [(MTURLSessionManager *)obj sessionForConfiguration:defaultSessionConfiguration];
      [(MTURLSessionManager *)obj setSessionForForegroundDownloads:v13];
    }

    objc_sync_exit(obj);
  }
}

- (void)_invokeURLSessionBackgroundEventsCompletionHandler
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionCompletionHandler = [(MTURLSessionManager *)self sessionCompletionHandler];
    v5 = _Block_copy(sessionCompletionHandler);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ _invokeURLSessionBackgroundEventsCompletionHandler called with completionHandler: %@.", buf, 0x16u);
  }

  sessionCompletionHandler2 = [(MTURLSessionManager *)self sessionCompletionHandler];

  if (sessionCompletionHandler2)
  {
    sessionCompletionHandler3 = [(MTURLSessionManager *)self sessionCompletionHandler];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__MTURLSessionManager__invokeURLSessionBackgroundEventsCompletionHandler__block_invoke;
    block[3] = &unk_2782BDFC8;
    v10 = sessionCompletionHandler3;
    v8 = sessionCompletionHandler3;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(MTURLSessionManager *)self setSessionCompletionHandler:0];
  }
}

- (id)sessionCompletionHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(selfCopy->_sessionCompletionHandler);
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)backgroundSessionConfigurationIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)sessionForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy setAllowsCellularAccess:1];
  [configurationCopy setDiscretionary:0];
  [configurationCopy setSessionSendsLaunchEvents:1];
  [configurationCopy setHTTPShouldUsePipelining:1];
  [configurationCopy setRequestCachePolicy:1];
  [configurationCopy setHTTPShouldSetCookies:0];
  [configurationCopy setHTTPCookieAcceptPolicy:1];
  [(MTURLSessionManager *)self configureSession:configurationCopy];
  v5 = objc_opt_new();
  if (isMulticore())
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  [v5 setMaxConcurrentOperationCount:v6];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  identifier = [configurationCopy identifier];
  v11 = [v7 stringWithFormat:@"%@ - %@", v9, identifier];
  [v5 setName:v11];

  v12 = [MEMORY[0x277CCAD30] sessionWithConfiguration:configurationCopy delegate:self delegateQueue:v5];

  return v12;
}

- (void)startDownloadTaskForURL:(id)l userInitiated:(BOOL)initiated useBackgroundFetch:(BOOL)fetch usePrivatePath:(id)path downloadStartedBlock:(id)block
{
  lCopy = l;
  pathCopy = path;
  blockCopy = block;
  v15 = [lCopy url];
  if (v15)
  {
    startQueue = [(MTURLSessionManager *)self startQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __116__MTURLSessionManager_startDownloadTaskForURL_userInitiated_useBackgroundFetch_usePrivatePath_downloadStartedBlock___block_invoke;
    v18[3] = &unk_2782BE7C8;
    v18[4] = self;
    fetchCopy = fetch;
    v19 = v15;
    v20 = lCopy;
    v21 = pathCopy;
    initiatedCopy = initiated;
    v22 = blockCopy;
    dispatch_async(startQueue, v18);
  }

  else
  {
    v17 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, v17, OS_LOG_TYPE_ERROR, "Download task failed to start. Found nil URL", buf, 2u);
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

void __116__MTURLSessionManager_startDownloadTaskForURL_userInitiated_useBackgroundFetch_usePrivatePath_downloadStartedBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) loadSessionsIfNeeded];
  v2 = *(a1 + 32);
  if (*(a1 + 72))
  {
    [v2 sessionForBackgroundDownloads];
  }

  else
  {
    [v2 sessionForForegroundDownloads];
  }
  v3 = ;
  v4 = [MEMORY[0x277CCAB70] requestWithURL:*(a1 + 40)];
  [v4 setNonAppInitiated:{objc_msgSend(*(a1 + 48), "nonAppInitiated")}];
  v5 = [v3 downloadTaskWithRequest:v4];
  v6 = v5;
  if (*(a1 + 56))
  {
    [v5 set_pathToDownloadTaskFile:?];
    v7 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [v6 _pathToDownloadTaskFile];
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_DEFAULT, "Download task created for URL %@. Response to be stored at %@.", buf, 0x16u);
    }
  }

  [v6 setInteractive:*(a1 + 73)];
  [v6 setUseBackgroundFetch:*(a1 + 72)];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@ task for: %@", v12, *(a1 + 40)];
  [v6 setTaskDescription:v13];

  if (*(a1 + 73) == 1)
  {
    LODWORD(v14) = 1.0;
    [v6 setPriority:v14];
  }

  v15 = [MEMORY[0x277D3DA90] sharedLogger];
  v16 = [v15 shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

  if (v16)
  {
    v17 = [MEMORY[0x277D3DA90] sharedLogger];
    [v17 logFunction:"-[MTURLSessionManager startDownloadTaskForURL:userInitiated:useBackgroundFetch:usePrivatePath:downloadStartedBlock:]_block_invoke" format:{@"Start: %@, Session: %@, backgroundFetch: %d", *(a1 + 40), v3, *(a1 + 72)}];
  }

  [v6 resume];
  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, 1);
  }
}

- (void)setSessionCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _Block_copy(handlerCopy);
    v10 = 138412546;
    v11 = selfCopy;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ setting sessionCompletionHandler to %@.", &v10, 0x16u);
  }

  v8 = _Block_copy(handlerCopy);
  sessionCompletionHandler = selfCopy->_sessionCompletionHandler;
  selfCopy->_sessionCompletionHandler = v8;

  objc_sync_exit(selfCopy);
  [(MTURLSessionManager *)selfCopy loadSessionsIfNeeded];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v13 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = taskCopy;
    *&buf[22] = 2112;
    v52 = sessionCopy;
    v53 = 2112;
    v54 = challengeCopy;
    _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didReceiveChallenge called for task %@ with session %@. Challenge: %@", buf, 0x2Au);
  }

  proposedCredential = [challengeCopy proposedCredential];
  protectionSpace = [challengeCopy protectionSpace];
  if (!proposedCredential)
  {
    mEMORY[0x277CCACF8] = [MEMORY[0x277CCACF8] sharedCredentialStorage];
    v17 = [mEMORY[0x277CCACF8] credentialsForProtectionSpace:protectionSpace];

    if ([v17 count] == 1)
    {
      allValues = [v17 allValues];
      firstObject = [allValues firstObject];

      v20 = MEMORY[0x277CCACF0];
      user = [firstObject user];
      password = [firstObject password];
      proposedCredential = [v20 credentialWithUser:user password:password persistence:3];
    }

    else
    {
      proposedCredential = 0;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v52) = [challengeCopy previousFailureCount] > 2;
  failureResponse = [challengeCopy failureResponse];
  if (failureResponse && [challengeCopy previousFailureCount] >= 1)
  {

    if (proposedCredential)
    {
      mEMORY[0x277D3DA90] = [MEMORY[0x277D3DA90] sharedLogger];
      v25 = [mEMORY[0x277D3DA90] shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

      if (v25)
      {
        mEMORY[0x277D3DA90]2 = [MEMORY[0x277D3DA90] sharedLogger];
        [mEMORY[0x277D3DA90]2 logFunction:"-[MTURLSessionManager URLSession:task:didReceiveChallenge:completionHandler:]" format:{@"Failing auth due to max failure count: %ld", objc_msgSend(challengeCopy, "previousFailureCount")}];
      }

      [taskCopy setUserCanceledAuth:1];
    }

    proposedCredential = 0;
  }

  else
  {
  }

  if ([MEMORY[0x277D3DB60] supportsGUI])
  {
    isInteractive = [taskCopy isInteractive];
    v28 = *&buf[8];
    if (isInteractive && (*(*&buf[8] + 24) & 1) == 0 && !proposedCredential)
    {
      originalRequest = [taskCopy originalRequest];
      v30 = [originalRequest URL];

      mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
      importContext = [mEMORY[0x277D3DAE8] importContext];

      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
      v43[3] = &unk_2782BDD40;
      v33 = importContext;
      v44 = v33;
      v34 = v30;
      v45 = v34;
      v46 = &v47;
      [v33 performBlockAndWait:v43];
      if ((v48[3] & 1) == 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_2;
        block[3] = &unk_2782BE818;
        v38 = taskCopy;
        selfCopy = self;
        v40 = challengeCopy;
        v41 = handlerCopy;
        v42 = buf;
        dispatch_async(MEMORY[0x277D85CD0], block);

        _Block_object_dispose(&v47, 8);
        goto LABEL_30;
      }

      _Block_object_dispose(&v47, 8);
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      v35 = 3;
LABEL_29:
      (*(handlerCopy + 2))(handlerCopy, v35, 0);
      goto LABEL_30;
    }
  }

  else
  {
    v28 = *&buf[8];
  }

  if (*(v28 + 24))
  {
    goto LABEL_25;
  }

  if (!proposedCredential)
  {
LABEL_28:
    v35 = 1;
    goto LABEL_29;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, proposedCredential);
LABEL_30:
  _Block_object_dispose(buf, 8);
}

void __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v5 = [v2 podcastForFeedUrl:v3];

  v4 = v5;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 isAuthenticatedDark];
    v4 = v5;
  }
}

void __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) originalRequest];
  v3 = [v2 URL];
  v4 = [v3 host];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_3;
  v10[3] = &unk_2782BE7F0;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_4;
  v6[3] = &unk_2782BDCA0;
  v9 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  [v5 _showCredentialsActionControllerForHost:v4 signIn:v10 cancel:v6];
}

void __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACF8];
  v6 = a2;
  v4 = [v3 sharedCredentialStorage];
  v5 = [*(a1 + 32) protectionSpace];
  [v4 setCredential:v6 forProtectionSpace:v5];

  (*(*(a1 + 40) + 16))();
}

uint64_t __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_4(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) setUserCanceledAuth:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_showCredentialsActionControllerForHost:(id)host signIn:(id)in cancel:(id)cancel
{
  inCopy = in;
  cancelCopy = cancel;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277CCA8D8];
  hostCopy = host;
  mainBundle = [v10 mainBundle];
  v13 = [mainBundle localizedStringForKey:@"AUTHENTICATION_MESSAGE" value:&stru_282CBB070 table:0];
  hostCopy = [v9 localizedStringWithFormat:v13, hostCopy];

  v15 = MEMORY[0x277D75110];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [mainBundle2 localizedStringForKey:@"AUTHENTICATION_TITLE" value:&stru_282CBB070 table:0];
  v18 = [v15 alertControllerWithTitle:v17 message:hostCopy preferredStyle:1];

  v19 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [mainBundle3 localizedStringForKey:@"AUTHENTICATION_SIGNIN" value:&stru_282CBB070 table:0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke;
  v34[3] = &unk_2782BE840;
  v35 = v18;
  v36 = inCopy;
  v22 = inCopy;
  v23 = v18;
  v24 = [v19 actionWithTitle:v21 style:0 handler:v34];
  [v23 addAction:v24];

  v25 = MEMORY[0x277D750F8];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [mainBundle4 localizedStringForKey:@"Cancel" value:&stru_282CBB070 table:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke_2;
  v32[3] = &unk_2782BE868;
  v33 = cancelCopy;
  v28 = cancelCopy;
  v29 = [v25 actionWithTitle:v27 style:1 handler:v32];
  [v23 addAction:v29];

  [v23 addTextFieldWithConfigurationHandler:&__block_literal_global_11];
  [v23 addTextFieldWithConfigurationHandler:&__block_literal_global_72];
  mt_rootViewController = [MEMORY[0x277D75D28] mt_rootViewController];
  mt_topViewController = [mt_rootViewController mt_topViewController];

  [mt_topViewController presentViewController:v23 animated:1 completion:0];
}

void __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v10 = [v2 objectAtIndex:0];

  v3 = [*(a1 + 32) textFields];
  v4 = [v3 objectAtIndex:1];

  v5 = MEMORY[0x277CCACF0];
  v6 = [v10 text];
  v7 = [v4 text];
  v8 = [v5 credentialWithUser:v6 password:v7 persistence:3];

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

uint64_t __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = a2;
  v5 = [v2 mainBundle];
  v4 = [v5 localizedStringForKey:@"Username" value:&stru_282CBB070 table:0];
  [v3 setPlaceholder:v4];
}

void __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSecureTextEntry:1];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v4 localizedStringForKey:@"Password" value:&stru_282CBB070 table:0];
  [v2 setPlaceholder:v3];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = sessionCopy;
    *&buf[22] = 2112;
    v36 = challengeCopy;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didReceiveChallenge called for session %@. Challenge: %@", buf, 0x20u);
  }

  protectionSpace = [challengeCopy protectionSpace];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  proposedCredential = [challengeCopy proposedCredential];
  v13 = [challengeCopy previousFailureCount] > 2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MTURLSessionManager_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  aBlock[3] = &unk_2782BE8B0;
  v34 = v13;
  v14 = handlerCopy;
  v32 = v14;
  v33 = buf;
  v15 = _Block_copy(aBlock);
  authenticationMethod = [protectionSpace authenticationMethod];
  v17 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v17)
  {
    goto LABEL_8;
  }

  defaultTrustManager = [MEMORY[0x277CF9710] defaultTrustManager];
  serverTrust = [protectionSpace serverTrust];
  host = [protectionSpace host];
  v21 = [defaultTrustManager actionForTrust:serverTrust forHost:host andService:*MEMORY[0x277CF9718]];

  if (v21 == 1)
  {
    v22 = MEMORY[0x277CCACF0];
    protectionSpace2 = [challengeCopy protectionSpace];
    v24 = [v22 credentialForTrust:{objc_msgSend(protectionSpace2, "serverTrust")}];
    v25 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v24;

    goto LABEL_8;
  }

  if (v21 != 2)
  {
LABEL_8:
    v15[2](v15);
    goto LABEL_9;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__MTURLSessionManager_URLSession_didReceiveChallenge_completionHandler___block_invoke_2;
  v26[3] = &unk_2782BE8D8;
  v27 = challengeCopy;
  v28 = protectionSpace;
  v30 = buf;
  v29 = v15;
  [sessionCopy getAllTasksWithCompletionHandler:v26];

LABEL_9:
  _Block_object_dispose(buf, 8);
}

void __72__MTURLSessionManager_URLSession_didReceiveChallenge_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v22 + 1) + 8 * v8) isInteractive])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        v5 = v3;
        goto LABEL_14;
      }
    }

    v5 = objc_alloc_init(MEMORY[0x277CF9708]);
    v9 = [*(a1 + 32) protectionSpace];
    [v5 setTrust:{objc_msgSend(v9, "serverTrust")}];

    v10 = [*(a1 + 32) protectionSpace];
    v11 = [v10 host];
    [v5 setHost:v11];

    v12 = *MEMORY[0x277CF9718];
    [v5 setService:*MEMORY[0x277CF9718]];
    v13 = [v5 showAndWaitForResponse];
    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = [MEMORY[0x277CF9710] defaultTrustManager];
      v15 = [*(a1 + 40) serverTrust];
      v16 = [*(a1 + 40) host];
      [v14 addSSLTrust:v15 hostname:v16 service:v12];
    }

    v17 = MEMORY[0x277CCACF0];
    v18 = [*(a1 + 32) protectionSpace];
    v19 = [v17 credentialForTrust:{objc_msgSend(v18, "serverTrust")}];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_14:

  (*(*(a1 + 48) + 16))();
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v24 = 2112;
    v25 = taskCopy;
    v26 = 2112;
    v27 = sessionCopy;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didCompleteWithError called for task %@ with session %@. Error: %@", buf, 0x2Au);
  }

  mEMORY[0x277D3DA90] = [MEMORY[0x277D3DA90] sharedLogger];
  v13 = [mEMORY[0x277D3DA90] shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

  if (v13)
  {
    mEMORY[0x277D3DA90]2 = [MEMORY[0x277D3DA90] sharedLogger];
    [mEMORY[0x277D3DA90]2 logFunction:"-[MTURLSessionManager URLSession:task:didCompleteWithError:]" format:{@"Session Did Complete: %@", sessionCopy}];
  }

  mEMORY[0x277D3DA90]3 = [MEMORY[0x277D3DA90] sharedLogger];
  v16 = mEMORY[0x277D3DA90]3;
  if (errorCopy)
  {
    v17 = debuggingInfoForTask(taskCopy);
    v18 = [errorCopy description];
    [v16 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m" lineNumber:487 format:{@"ERROR: %@ (%@)", v17, v18}];

    [(MTURLSessionManager *)self _invokeURLSessionBackgroundEventsCompletionHandler];
    [(MTURLSessionManager *)self task:taskCopy didFailWithError:errorCopy orStatusCode:-1];
  }

  else
  {
    v19 = [mEMORY[0x277D3DA90]3 shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

    if (v19)
    {
      mEMORY[0x277D3DA90]4 = [MEMORY[0x277D3DA90] sharedLogger];
      v21 = debuggingInfoForTask(taskCopy);
      [mEMORY[0x277D3DA90]4 logFunction:"-[MTURLSessionManager URLSession:task:didCompleteWithError:]" format:{@"SUCCESS: %@", v21}];
    }
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = taskCopy;
    v18 = 2112;
    v19 = sessionCopy;
    v20 = 2112;
    v21 = lCopy;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didFinishDownloadingToURL called for task %@ with session %@ and location %@", &v14, 0x2Au);
  }

  if ([(MTURLSessionManager *)self _subclassImplementsURLDidDownload])
  {
    [(MTURLSessionManager *)self task:taskCopy didCompleteWithDownloadedContentUrl:lCopy];
  }

  else
  {
    v12 = [objc_opt_class() statusCodeForTask:taskCopy];
    if (lCopy && v12 == 200)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
      [(MTURLSessionManager *)self task:taskCopy didCompleteWithData:v13];
    }

    else
    {
      [(MTURLSessionManager *)self task:taskCopy didFailWithError:0 orStatusCode:v12];
    }
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_ERROR, "[BackgroundSession] %@ didBecomeInvalidWithError called for session %@ with error %@.", &v9, 0x20u);
  }

  [(MTURLSessionManager *)self _invokeURLSessionBackgroundEventsCompletionHandler];
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionCompletionHandler = [(MTURLSessionManager *)self sessionCompletionHandler];
    v7 = _Block_copy(sessionCompletionHandler);
    v8 = 138412802;
    selfCopy = self;
    v10 = 2112;
    v11 = sessionCopy;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ URLSessionDidFinishEventsForBackgroundURLSession called for session %@ with completionHandler: %@.", &v8, 0x20u);
  }

  [(MTURLSessionManager *)self _invokeURLSessionBackgroundEventsCompletionHandler];
}

+ (int64_t)statusCodeForTask:(id)task
{
  response = [task response];
  statusCode = [response statusCode];

  return statusCode;
}

+ (id)originalURLForTask:(id)task
{
  originalRequest = [task originalRequest];
  v4 = [originalRequest URL];

  return v4;
}

+ (void)purgeExternalCookies
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEBUG, "Purging external cookies", buf, 2u);
  }

  mEMORY[0x277CCAA38] = [MEMORY[0x277CCAA38] sharedHTTPCookieStorage];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  cookies = [mEMORY[0x277CCAA38] cookies];
  v5 = [cookies countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(cookies);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        domain = [v10 domain];
        v12 = [domain hasSuffix:@".apple.com"];

        if ((v12 & 1) == 0)
        {
          v13 = _MTLogCategoryNetwork();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            domain2 = [v10 domain];
            value = [v10 value];
            *buf = v16;
            v22 = domain2;
            v23 = 2112;
            v24 = value;
            _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEBUG, "Purging cookie: %@ (%@)", buf, 0x16u);
          }

          [mEMORY[0x277CCAA38] deleteCookie:v10];
        }
      }

      v7 = [cookies countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }
}

@end