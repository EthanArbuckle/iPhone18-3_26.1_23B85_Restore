@interface MTURLSessionManager
+ (id)originalURLForTask:(id)a3;
+ (int64_t)statusCodeForTask:(id)a3;
+ (void)purgeExternalCookies;
- (MTURLSessionManager)init;
- (id)backgroundSessionConfigurationIdentifier;
- (id)sessionCompletionHandler;
- (id)sessionForConfiguration:(id)a3;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)_assertSubclassRequirements;
- (void)_invokeURLSessionBackgroundEventsCompletionHandler;
- (void)_showCredentialsActionControllerForHost:(id)a3 signIn:(id)a4 cancel:(id)a5;
- (void)loadSessionsIfNeeded;
- (void)setSessionCompletionHandler:(id)a3;
- (void)startDownloadTaskForURL:(id)a3 userInitiated:(BOOL)a4 useBackgroundFetch:(BOOL)a5 usePrivatePath:(id)a6 downloadStartedBlock:(id)a7;
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
    v6 = [v5 UTF8String];
    v7 = dispatch_queue_create(v6, MEMORY[0x277D85CD8]);
    [(MTURLSessionManager *)v3 setStartQueue:v7];

    v8 = v3;
  }

  return v3;
}

- (void)_assertSubclassRequirements
{
  v3 = [(MTURLSessionManager *)self _subclassImplementsDataDidDownload];
  v4 = [(MTURLSessionManager *)self _subclassImplementsURLDidDownload];
  v5 = [(MTURLSessionManager *)self _subclassImplementsDidFailWithError];
  v6 = [(MTURLSessionManager *)self _subclassImplementsConfigureSession];
  if (v3 && v4)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses may not implement both -task:didCompleteWithData: and -task:didCompleteWithDownloadedContentUrl:";
    goto LABEL_11;
  }

  if (!v3 && !v4)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses must implement one of -task:didCompleteWithData: or -task:didCompleteWithDownloadedContentUrl:";
    goto LABEL_11;
  }

  if (!v5)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Subclasses must implement task:didFailWithError:orStatusCode:";
    goto LABEL_11;
  }

  if (!v6)
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
  v3 = [(MTURLSessionManager *)self sessionForBackgroundDownloads];

  if (!v3)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(MTURLSessionManager *)v4 sessionForBackgroundDownloads];

    if (!v5)
    {
      v6 = MEMORY[0x277CCAD38];
      v7 = [(MTURLSessionManager *)v4 backgroundSessionConfigurationIdentifier];
      v8 = [v6 backgroundSessionConfigurationWithIdentifier:v7];

      [v8 set_allowsConstrainedNetworkAccess:0];
      v9 = [(MTURLSessionManager *)v4 sessionForConfiguration:v8];
      [(MTURLSessionManager *)v4 setSessionForBackgroundDownloads:v9];
    }

    objc_sync_exit(v4);
  }

  v10 = [(MTURLSessionManager *)self sessionForForegroundDownloads];

  if (!v10)
  {
    obj = self;
    objc_sync_enter(obj);
    v11 = [(MTURLSessionManager *)obj sessionForForegroundDownloads];

    if (!v11)
    {
      v12 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v13 = [(MTURLSessionManager *)obj sessionForConfiguration:v12];
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
    v4 = [(MTURLSessionManager *)self sessionCompletionHandler];
    v5 = _Block_copy(v4);
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ _invokeURLSessionBackgroundEventsCompletionHandler called with completionHandler: %@.", buf, 0x16u);
  }

  v6 = [(MTURLSessionManager *)self sessionCompletionHandler];

  if (v6)
  {
    v7 = [(MTURLSessionManager *)self sessionCompletionHandler];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__MTURLSessionManager__invokeURLSessionBackgroundEventsCompletionHandler__block_invoke;
    block[3] = &unk_2782BDFC8;
    v10 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(MTURLSessionManager *)self setSessionCompletionHandler:0];
  }
}

- (id)sessionCompletionHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_sessionCompletionHandler);
  objc_sync_exit(v2);

  return v3;
}

- (id)backgroundSessionConfigurationIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)sessionForConfiguration:(id)a3
{
  v4 = a3;
  [v4 setAllowsCellularAccess:1];
  [v4 setDiscretionary:0];
  [v4 setSessionSendsLaunchEvents:1];
  [v4 setHTTPShouldUsePipelining:1];
  [v4 setRequestCachePolicy:1];
  [v4 setHTTPShouldSetCookies:0];
  [v4 setHTTPCookieAcceptPolicy:1];
  [(MTURLSessionManager *)self configureSession:v4];
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
  v10 = [v4 identifier];
  v11 = [v7 stringWithFormat:@"%@ - %@", v9, v10];
  [v5 setName:v11];

  v12 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4 delegate:self delegateQueue:v5];

  return v12;
}

- (void)startDownloadTaskForURL:(id)a3 userInitiated:(BOOL)a4 useBackgroundFetch:(BOOL)a5 usePrivatePath:(id)a6 downloadStartedBlock:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [v12 url];
  if (v15)
  {
    v16 = [(MTURLSessionManager *)self startQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __116__MTURLSessionManager_startDownloadTaskForURL_userInitiated_useBackgroundFetch_usePrivatePath_downloadStartedBlock___block_invoke;
    v18[3] = &unk_2782BE7C8;
    v18[4] = self;
    v23 = a5;
    v19 = v15;
    v20 = v12;
    v21 = v13;
    v24 = a4;
    v22 = v14;
    dispatch_async(v16, v18);
  }

  else
  {
    v17 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, v17, OS_LOG_TYPE_ERROR, "Download task failed to start. Found nil URL", buf, 2u);
    }

    if (v14)
    {
      (*(v14 + 2))(v14, 0);
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

- (void)setSessionCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _Block_copy(v4);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ setting sessionCompletionHandler to %@.", &v10, 0x16u);
  }

  v8 = _Block_copy(v4);
  sessionCompletionHandler = v5->_sessionCompletionHandler;
  v5->_sessionCompletionHandler = v8;

  objc_sync_exit(v5);
  [(MTURLSessionManager *)v5 loadSessionsIfNeeded];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = v11;
    _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didReceiveChallenge called for task %@ with session %@. Challenge: %@", buf, 0x2Au);
  }

  v14 = [v11 proposedCredential];
  v15 = [v11 protectionSpace];
  if (!v14)
  {
    v16 = [MEMORY[0x277CCACF8] sharedCredentialStorage];
    v17 = [v16 credentialsForProtectionSpace:v15];

    if ([v17 count] == 1)
    {
      v18 = [v17 allValues];
      v19 = [v18 firstObject];

      v20 = MEMORY[0x277CCACF0];
      v21 = [v19 user];
      v22 = [v19 password];
      v14 = [v20 credentialWithUser:v21 password:v22 persistence:3];
    }

    else
    {
      v14 = 0;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v52) = [v11 previousFailureCount] > 2;
  v23 = [v11 failureResponse];
  if (v23 && [v11 previousFailureCount] >= 1)
  {

    if (v14)
    {
      v24 = [MEMORY[0x277D3DA90] sharedLogger];
      v25 = [v24 shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

      if (v25)
      {
        v26 = [MEMORY[0x277D3DA90] sharedLogger];
        [v26 logFunction:"-[MTURLSessionManager URLSession:task:didReceiveChallenge:completionHandler:]" format:{@"Failing auth due to max failure count: %ld", objc_msgSend(v11, "previousFailureCount")}];
      }

      [v10 setUserCanceledAuth:1];
    }

    v14 = 0;
  }

  else
  {
  }

  if ([MEMORY[0x277D3DB60] supportsGUI])
  {
    v27 = [v10 isInteractive];
    v28 = *&buf[8];
    if (v27 && (*(*&buf[8] + 24) & 1) == 0 && !v14)
    {
      v29 = [v10 originalRequest];
      v30 = [v29 URL];

      v31 = [MEMORY[0x277D3DAE8] sharedInstance];
      v32 = [v31 importContext];

      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __77__MTURLSessionManager_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
      v43[3] = &unk_2782BDD40;
      v33 = v32;
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
        v38 = v10;
        v39 = self;
        v40 = v11;
        v41 = v12;
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
      (*(v12 + 2))(v12, v35, 0);
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

  if (!v14)
  {
LABEL_28:
    v35 = 1;
    goto LABEL_29;
  }

  (*(v12 + 2))(v12, 0, v14);
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

- (void)_showCredentialsActionControllerForHost:(id)a3 signIn:(id)a4 cancel:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277CCA8D8];
  v11 = a3;
  v12 = [v10 mainBundle];
  v13 = [v12 localizedStringForKey:@"AUTHENTICATION_MESSAGE" value:&stru_282CBB070 table:0];
  v14 = [v9 localizedStringWithFormat:v13, v11];

  v15 = MEMORY[0x277D75110];
  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 localizedStringForKey:@"AUTHENTICATION_TITLE" value:&stru_282CBB070 table:0];
  v18 = [v15 alertControllerWithTitle:v17 message:v14 preferredStyle:1];

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [v20 localizedStringForKey:@"AUTHENTICATION_SIGNIN" value:&stru_282CBB070 table:0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke;
  v34[3] = &unk_2782BE840;
  v35 = v18;
  v36 = v7;
  v22 = v7;
  v23 = v18;
  v24 = [v19 actionWithTitle:v21 style:0 handler:v34];
  [v23 addAction:v24];

  v25 = MEMORY[0x277D750F8];
  v26 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [v26 localizedStringForKey:@"Cancel" value:&stru_282CBB070 table:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__MTURLSessionManager__showCredentialsActionControllerForHost_signIn_cancel___block_invoke_2;
  v32[3] = &unk_2782BE868;
  v33 = v8;
  v28 = v8;
  v29 = [v25 actionWithTitle:v27 style:1 handler:v32];
  [v23 addAction:v29];

  [v23 addTextFieldWithConfigurationHandler:&__block_literal_global_11];
  [v23 addTextFieldWithConfigurationHandler:&__block_literal_global_72];
  v30 = [MEMORY[0x277D75D28] mt_rootViewController];
  v31 = [v30 mt_topViewController];

  [v31 presentViewController:v23 animated:1 completion:0];
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

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v36 = v9;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didReceiveChallenge called for session %@. Challenge: %@", buf, 0x20u);
  }

  v12 = [v9 protectionSpace];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = [v9 proposedCredential];
  v13 = [v9 previousFailureCount] > 2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MTURLSessionManager_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  aBlock[3] = &unk_2782BE8B0;
  v34 = v13;
  v14 = v10;
  v32 = v14;
  v33 = buf;
  v15 = _Block_copy(aBlock);
  v16 = [v12 authenticationMethod];
  v17 = [v16 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = [MEMORY[0x277CF9710] defaultTrustManager];
  v19 = [v12 serverTrust];
  v20 = [v12 host];
  v21 = [v18 actionForTrust:v19 forHost:v20 andService:*MEMORY[0x277CF9718]];

  if (v21 == 1)
  {
    v22 = MEMORY[0x277CCACF0];
    v23 = [v9 protectionSpace];
    v24 = [v22 credentialForTrust:{objc_msgSend(v23, "serverTrust")}];
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
  v27 = v9;
  v28 = v12;
  v30 = buf;
  v29 = v15;
  [v8 getAllTasksWithCompletionHandler:v26];

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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v23 = self;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didCompleteWithError called for task %@ with session %@. Error: %@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x277D3DA90] sharedLogger];
  v13 = [v12 shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

  if (v13)
  {
    v14 = [MEMORY[0x277D3DA90] sharedLogger];
    [v14 logFunction:"-[MTURLSessionManager URLSession:task:didCompleteWithError:]" format:{@"Session Did Complete: %@", v8}];
  }

  v15 = [MEMORY[0x277D3DA90] sharedLogger];
  v16 = v15;
  if (v10)
  {
    v17 = debuggingInfoForTask(v9);
    v18 = [v10 description];
    [v16 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m" lineNumber:487 format:{@"ERROR: %@ (%@)", v17, v18}];

    [(MTURLSessionManager *)self _invokeURLSessionBackgroundEventsCompletionHandler];
    [(MTURLSessionManager *)self task:v9 didFailWithError:v10 orStatusCode:-1];
  }

  else
  {
    v19 = [v15 shouldOverrideCondition:@"MAXDEBUG" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Networking/MTURLSessionManager.m"];

    if (v19)
    {
      v20 = [MEMORY[0x277D3DA90] sharedLogger];
      v21 = debuggingInfoForTask(v9);
      [v20 logFunction:"-[MTURLSessionManager URLSession:task:didCompleteWithError:]" format:{@"SUCCESS: %@", v21}];
    }
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ didFinishDownloadingToURL called for task %@ with session %@ and location %@", &v14, 0x2Au);
  }

  if ([(MTURLSessionManager *)self _subclassImplementsURLDidDownload])
  {
    [(MTURLSessionManager *)self task:v9 didCompleteWithDownloadedContentUrl:v10];
  }

  else
  {
    v12 = [objc_opt_class() statusCodeForTask:v9];
    if (v10 && v12 == 200)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v10];
      [(MTURLSessionManager *)self task:v9 didCompleteWithData:v13];
    }

    else
    {
      [(MTURLSessionManager *)self task:v9 didFailWithError:0 orStatusCode:v12];
    }
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_ERROR, "[BackgroundSession] %@ didBecomeInvalidWithError called for session %@ with error %@.", &v9, 0x20u);
  }

  [(MTURLSessionManager *)self _invokeURLSessionBackgroundEventsCompletionHandler];
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTURLSessionManager *)self sessionCompletionHandler];
    v7 = _Block_copy(v6);
    v8 = 138412802;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ URLSessionDidFinishEventsForBackgroundURLSession called for session %@ with completionHandler: %@.", &v8, 0x20u);
  }

  [(MTURLSessionManager *)self _invokeURLSessionBackgroundEventsCompletionHandler];
}

+ (int64_t)statusCodeForTask:(id)a3
{
  v3 = [a3 response];
  v4 = [v3 statusCode];

  return v4;
}

+ (id)originalURLForTask:(id)a3
{
  v3 = [a3 originalRequest];
  v4 = [v3 URL];

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

  v3 = [MEMORY[0x277CCAA38] sharedHTTPCookieStorage];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 cookies];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 domain];
        v12 = [v11 hasSuffix:@".apple.com"];

        if ((v12 & 1) == 0)
        {
          v13 = _MTLogCategoryNetwork();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v10 domain];
            v15 = [v10 value];
            *buf = v16;
            v22 = v14;
            v23 = 2112;
            v24 = v15;
            _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEBUG, "Purging cookie: %@ (%@)", buf, 0x16u);
          }

          [v3 deleteCookie:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }
}

@end