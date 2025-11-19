@interface SLDShareableContentService
+ (id)sharedService;
+ (void)setupInterface:(id)a3;
- (BOOL)_connShouldAllowBackgroundCollaboration:(id)a3;
- (BOOL)allowsConnection:(id)a3;
- (BOOL)populateInitiatorMetadata:(id)a3 name:(id)a4 email:(id)a5;
- (SLDShareableContentService)init;
- (id)_applicationIdentifierForConnection:(id)a3;
- (id)visibleApplicationForSceneIdentifier:(id)a3;
- (id)visibleApplications;
- (void)dealloc;
- (void)fetchAsynchronousLPMetadataFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)fetchShareableContentFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 requestedTypeIdentifier:(id)a5 requestedItemProviderIndex:(int64_t)a6 responseHandler:(id)a7;
- (void)fetchShareableContentMetadataFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)launchApplicationWithBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 forActions:(id)a5 completionHandler:(id)a6;
- (void)loadRepresentationFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 requestedTypeIdentifier:(id)a5 requestedItemProviderIndex:(int64_t)a6 completionHandler:(id)a7;
- (void)performAction:(id)a3 onApplicationWithBundleIdentifier:(id)a4 sceneIdentifier:(id)a5;
- (void)populateInitiatorMetadata:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)presentMessageComposeSheetForSceneIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)retrieveShareableContentMetadataMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5;
- (void)shareCollaborationData:(id)a3 faceTimeConversationUUID:(id)a4 completionHandler:(id)a5;
@end

@implementation SLDShareableContentService

+ (void)setupInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [v4 setClasses:v6 forSelector:sel_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion_ argumentIndex:0 ofReply:1];
}

+ (id)sharedService
{
  if (sharedService_onceToken_3 != -1)
  {
    +[SLDShareableContentService sharedService];
  }

  v3 = sharedService_sService_3;

  return v3;
}

uint64_t __43__SLDShareableContentService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDShareableContentService);
  v1 = sharedService_sService_3;
  sharedService_sService_3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDShareableContentService)init
{
  v16.receiver = self;
  v16.super_class = SLDShareableContentService;
  v2 = [(SLDShareableContentService *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.SharedWithYou.SLDShareableContentService", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v2);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __34__SLDShareableContentService_init__block_invoke;
    v13 = &unk_278926DD8;
    objc_copyWeak(&v14, &location);
    [v6 setTransitionHandler:&v10];
    v7 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{v6, v10, v11, v12, v13}];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v7;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__SLDShareableContentService_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&to, (a1 + 32));
  v10 = objc_loadWeakRetained(&to);
  v11 = [v10 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SLDShareableContentService_init__block_invoke_2;
  block[3] = &unk_278926DB0;
  v14 = v8;
  v12 = v8;
  objc_copyWeak(&v15, &to);
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&to);
}

void __34__SLDShareableContentService_init__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if ([WeakRetained isLayoutMonitorReady])
    {
    }

    else
    {
      v2 = objc_loadWeakRetained((a1 + 40));
      v3 = [v2 retrieveShareableContentBlock];

      if (v3)
      {
        v4 = SLShareableContentLogHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "Layout monitor is now ready.", buf, 2u);
        }

        v5 = objc_loadWeakRetained((a1 + 40));
        [v5 setIsLayoutMonitorReady:1];

        v6 = objc_loadWeakRetained((a1 + 40));
        v7 = [v6 retrieveShareableContentBlock];
        v7[2]();

        v8 = objc_loadWeakRetained((a1 + 40));
        [v8 setRetrieveShareableContentBlock:0];
      }
    }
  }
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = SLDShareableContentService;
  [(SLDShareableContentService *)&v3 dealloc];
}

- (BOOL)allowsConnection:(id)a3
{
  v3 = a3;
  IsEntitledForShareableContent = SLDConnectionIsEntitledForShareableContent(v3);
  if ((IsEntitledForShareableContent & 1) == 0)
  {
    v5 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService allowsConnection:];
    }
  }

  return IsEntitledForShareableContent;
}

- (id)visibleApplications
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(SLDShareableContentService *)self layoutMonitor];
  v4 = [v3 currentLayout];
  v5 = [v4 elements];

  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCAE80] currentConnection];
        v13 = [v11 bundleIdentifier];
        v14 = [(SLDShareableContentService *)self _applicationIdentifierForConnection:v12];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v16 = SLShareableContentLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v11 bundleIdentifier];
            *buf = 138412290;
            v31 = v17;
            v18 = v16;
            v19 = OS_LOG_TYPE_INFO;
            v20 = "[VisibleApplications] Skipping element for %@ because it's from the process requesting shareable content";
LABEL_16:
            _os_log_impl(&dword_231772000, v18, v19, v20, buf, 0xCu);
          }
        }

        else
        {
          v21 = [v11 bundleIdentifier];
          v22 = [v21 isEqualToString:@"com.apple.purplebuddy"];

          if (v22)
          {
            v16 = SLShareableContentLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v11 bundleIdentifier];
              *buf = 138412290;
              v31 = v17;
              v18 = v16;
              v19 = OS_LOG_TYPE_DEFAULT;
              v20 = "[VisibleApplications] Skipping element for %@ as Purple Buddy is not a valid source of shareable content";
              goto LABEL_16;
            }
          }

          else
          {
            if ([v11 isUIApplicationElement])
            {
              [v25 addObject:v11];
              goto LABEL_18;
            }

            v16 = SLShareableContentLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [v11 bundleIdentifier];
              *buf = 138412290;
              v31 = v17;
              v18 = v16;
              v19 = OS_LOG_TYPE_INFO;
              v20 = "[VisibleApplications] Skipping element for %@ because it's not a UI application element";
              goto LABEL_16;
            }
          }
        }

LABEL_18:
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)visibleApplicationForSceneIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(SLDShareableContentService *)self visibleApplications];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)launchApplicationWithBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 forActions:(id)a5 completionHandler:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  if (v8)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0ABF0]];
    [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0ABD0]];
    v12 = [MEMORY[0x277D0AD60] optionsWithDictionary:v11];
    v13 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke;
    v15[3] = &unk_278926380;
    v16 = v8;
    v17 = v10;
    [v13 openApplication:v16 withOptions:v12 completion:v15];
  }

  else
  {
    v14 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService launchApplicationWithBundleIdentifier:sceneIdentifier:forActions:completionHandler:];
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

void __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SLShareableContentLogHandle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "Application launch succeeded for bundle identifier: %@", &v12, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performAction:(id)a3 onApplicationWithBundleIdentifier:(id)a4 sceneIdentifier:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = [a3 action];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(SLDShareableContentService *)self launchApplicationWithBundleIdentifier:v9 sceneIdentifier:v8 forActions:v11 completionHandler:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)populateInitiatorMetadata:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 collaborationMetadata];
  if (v11)
  {
    v12 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_DEFAULT, "Populating initiator name and handle from custom collaboration metadata: %@", buf, 0xCu);
    }

    v13 = [v11 initiatorHandle];
    [v8 setInitiatorHandle:v13];

    v14 = [v11 initiatorNameComponents];
    [v8 setInitiatorNameComponents:v14];

    v10[2](v10, 1, 0);
    goto LABEL_13;
  }

  v15 = [v9 fileURL];
  if (v15)
  {

LABEL_8:
    v17 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v9 fileURL];
      v19 = [v9 containerSetupInfo];
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_231772000, v17, OS_LOG_TYPE_DEFAULT, "Populating initiator name and handle from initiator metadata (fileURL: %@, containerSetupInfo: %@", buf, 0x16u);
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v20 = getCSCloudSharingClass_softClass_0;
    v32 = getCSCloudSharingClass_softClass_0;
    if (!getCSCloudSharingClass_softClass_0)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSCloudSharingClass_block_invoke_0;
      v34 = &unk_278925B78;
      v35 = &v29;
      __getCSCloudSharingClass_block_invoke_0(buf);
      v20 = v30[3];
    }

    v21 = v20;
    _Block_object_dispose(&v29, 8);
    v22 = [v9 fileURL];
    v23 = [v9 containerSetupInfo];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke;
    v26[3] = &unk_278926E28;
    v26[4] = self;
    v28 = v10;
    v27 = v8;
    [v20 userNameAndEmail:v22 containerSetupInfo:v23 completionHandler:v26];

    goto LABEL_13;
  }

  v16 = [v9 containerSetupInfo];

  if (v16)
  {
    goto LABEL_8;
  }

  v25 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v25, OS_LOG_TYPE_DEFAULT, "Not populating initiator name and handle for shareable content with no collaborative representations", buf, 2u);
  }

  v10[2](v10, 1, 0);
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke_2;
  v17[3] = &unk_278926E00;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v22 = v11;
  v17[4] = v12;
  v18 = v13;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, v17);
}

uint64_t __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) populateInitiatorMetadata:*(a1 + 40) name:*(a1 + 48) email:*(a1 + 56)];
  v4 = *(a1 + 64);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (BOOL)populateInitiatorMetadata:(id)a3 name:(id)a4 email:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = (v8 | a5) != 0;
  if (v8 | a5)
  {
    [v7 setInitiatorHandle:a5];
    if (v8)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAC08]);
      v11 = [v10 personNameComponentsFromString:v8];
      [v7 setInitiatorNameComponents:v11];
    }
  }

  return v9;
}

- (void)fetchShareableContentMetadataFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [SLFetchShareableContentMetadataAction alloc];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v17[3] = &unk_278926E78;
  v19 = self;
  v20 = v10;
  v18 = v8;
  v12 = v10;
  v13 = v8;
  v14 = [(SLShareableContentAction *)v11 initWithSceneIdentifier:v9 responseHandler:v17];
  v15 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v9;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Fetching shareable content metadata for scene: %{public}@", buf, 0xCu);
  }

  [(SLDShareableContentService *)self performAction:v14 onApplicationWithBundleIdentifier:v13 sceneIdentifier:v9];
  v16 = *MEMORY[0x277D85DE8];
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 metadata];
  v8 = [v6 initiatorRequest];

  if (!v7)
  {
    v12 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_2(a1);
    }

    v13 = *(*(a1 + 48) + 16);
    goto LABEL_10;
  }

  v9 = [v7 bundleIdentifier];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if ((v10 & 1) == 0)
  {
    v14 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1((a1 + 32));
    }

    v13 = *(*(a1 + 48) + 16);
LABEL_10:
    v13();
    goto LABEL_11;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81;
  v15[3] = &unk_278926E50;
  v11 = *(a1 + 40);
  v16 = *(a1 + 32);
  v18 = *(a1 + 48);
  v17 = v7;
  [v11 populateInitiatorMetadata:v17 request:v8 completionHandler:v15];

LABEL_11:
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v7 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAsynchronousLPMetadataFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [SLFetchAsynchronousLPMetadataAction alloc];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v20 = &unk_278926EA0;
  v21 = v8;
  v22 = v10;
  v12 = v10;
  v13 = v8;
  v14 = [(SLShareableContentAction *)v11 initWithSceneIdentifier:v9 responseHandler:&v17];
  v15 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v9;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous content metadata for scene: %{public}@", buf, 0xCu);
  }

  [(SLDShareableContentService *)self performAction:v14 onApplicationWithBundleIdentifier:v13 sceneIdentifier:v9, v17, v18, v19, v20];
  v16 = *MEMORY[0x277D85DE8];
}

void __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = [a2 metadata];
    (*(v6 + 16))(v6, v7, v5);
  }

  else
  {
    v8 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchShareableContentFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 requestedTypeIdentifier:(id)a5 requestedItemProviderIndex:(int64_t)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 length])
  {
    v16 = v12;
    if (v16)
    {
LABEL_3:
      v17 = [[SLFetchShareableContentAction alloc] initWithSceneIdentifier:v13 requestedTypeIdentifier:v14 requestedItemProviderIndex:a6 responseHandler:v15];
      [(SLDShareableContentService *)self performAction:v17 onApplicationWithBundleIdentifier:v16 sceneIdentifier:v13];

      goto LABEL_8;
    }
  }

  else
  {
    v18 = [(SLDShareableContentService *)self visibleApplicationForSceneIdentifier:v13];
    v16 = [v18 bundleIdentifier];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v19 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [SLDShareableContentService fetchShareableContentFromBundleIdentifier:v13 sceneIdentifier:self requestedTypeIdentifier:? requestedItemProviderIndex:? responseHandler:?];
  }

  (*(v15 + 2))(v15, 0, 0);
LABEL_8:
}

- (void)retrieveShareableContentMetadataMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDShareableContentService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v15[3] = &unk_278926F68;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a1[4] length] && objc_msgSend(a1[5], "length"))
  {
    v2 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = a1[5];
      *buf = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "Fetching shareable content from bundle identifier: %@ scene identifier: %@", buf, 0x16u);
    }

    v6 = a1[5];
    v5 = a1[6];
    v7 = a1[4];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_87;
    v17[3] = &unk_278926EC8;
    v18 = a1[7];
    [v5 fetchShareableContentMetadataFromBundleIdentifier:v7 sceneIdentifier:v6 completion:v17];
  }

  else
  {
    objc_initWeak(buf, a1[6]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2;
    aBlock[3] = &unk_278926F40;
    objc_copyWeak(&v16, buf);
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[7];
    v8 = _Block_copy(aBlock);
    if ([a1[6] isLayoutMonitorReady])
    {
      v8[2](v8);
    }

    else
    {
      v9 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "Layout monitor is not ready, waiting to fetch shareable content.", &v11, 2u);
      }

      [a1[6] setRetrieveShareableContentBlock:v8];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, a1 + 7);
  v2 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "Fetching shareable content matching bundle identifier: %@ scene identifier: %@", buf, 0x16u);
  }

  v5 = objc_loadWeakRetained(&to);
  v6 = [v5 visibleApplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_89;
  v10[3] = &unk_278926EF0;
  v11 = a1[4];
  v12 = a1[5];
  objc_copyWeak(&v13, &to);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_98;
  v8[3] = &unk_278926F18;
  v9 = a1[6];
  [v6 sl_mapAsynchronously:v10 completionHandler:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&to);
  v7 = *MEMORY[0x277D85DE8];
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 bundleIdentifier];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 isEqualToString:v7] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v5 identifier];
    LODWORD(v10) = [v10 isEqualToString:v11] ^ 1;
  }

  if ([v7 length] == 0) | v9 & 1 || (v10)
  {
    v14 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"YES";
      if (v9)
      {
        v16 = @"NO";
      }

      else
      {
        v16 = @"YES";
      }

      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v16;
      if (v10)
      {
        v15 = @"NO";
      }

      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_INFO, "Skipping fetching shareable content for layout element: %@ layoutElementMatchesBundleIdentifier: %@ layoutElementMatchesSceneIdentifier: %@", buf, 0x20u);
    }

    v6[2](v6, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = [v5 identifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2_90;
    v18[3] = &unk_278926EC8;
    v19 = v6;
    [WeakRetained fetchShareableContentMetadataFromBundleIdentifier:v7 sceneIdentifier:v13 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_98(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "Fetched shareable content metadata for on screen applications: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SLDShareableContentService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v15[3] = &unk_278926F68;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a1[4] length] && objc_msgSend(a1[5], "length"))
  {
    v2 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = a1[5];
      *buf = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous content from bundle identifier: %@ scene identifier: %@", buf, 0x16u);
    }

    v6 = a1[5];
    v5 = a1[6];
    v7 = a1[4];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_100;
    v17[3] = &unk_278926F90;
    v18 = a1[7];
    [v5 fetchAsynchronousLPMetadataFromBundleIdentifier:v7 sceneIdentifier:v6 completion:v17];
  }

  else
  {
    objc_initWeak(buf, a1[6]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2;
    aBlock[3] = &unk_278926F40;
    objc_copyWeak(&v16, buf);
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[7];
    v8 = _Block_copy(aBlock);
    if ([a1[6] isLayoutMonitorReady])
    {
      v8[2](v8);
    }

    else
    {
      v9 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "Layout monitor is not ready, waiting to fetch shareable content.", &v11, 2u);
      }

      [a1[6] setRetrieveShareableContentBlock:v8];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, a1 + 7);
  v2 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous content matching bundle identifier: %@ scene identifier: %@", buf, 0x16u);
  }

  v5 = objc_loadWeakRetained(&to);
  v6 = [v5 visibleApplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_102;
  v10[3] = &unk_278926FB8;
  v11 = a1[4];
  v12 = a1[5];
  objc_copyWeak(&v13, &to);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_105;
  v8[3] = &unk_278926F18;
  v9 = a1[6];
  [v6 sl_mapAsynchronously:v10 completionHandler:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&to);
  v7 = *MEMORY[0x277D85DE8];
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 bundleIdentifier];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 isEqualToString:v7] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v5 identifier];
    LODWORD(v10) = [v10 isEqualToString:v11] ^ 1;
  }

  if ([v7 length] == 0) | v9 & 1 || (v10)
  {
    v14 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"YES";
      if (v9)
      {
        v16 = @"NO";
      }

      else
      {
        v16 = @"YES";
      }

      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v16;
      if (v10)
      {
        v15 = @"NO";
      }

      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_DEFAULT, "Skipping fetching asynchronous content for layout element: %@ layoutElementMatchesBundleIdentifier: %@ layoutElementMatchesSceneIdentifier: %@", buf, 0x20u);
    }

    v6[2](v6, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = [v5 identifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2_103;
    v18[3] = &unk_278926F90;
    v19 = v6;
    [WeakRetained fetchAsynchronousLPMetadataFromBundleIdentifier:v7 sceneIdentifier:v13 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_105(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "Fetched asynchronous content metadata for on screen applications: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 firstObject];
  (*(v5 + 16))(v5, v6, 0);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadRepresentationFromBundleIdentifier:(id)a3 sceneIdentifier:(id)a4 requestedTypeIdentifier:(id)a5 requestedItemProviderIndex:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke;
  v16[3] = &unk_278926FE0;
  v17 = v12;
  v18 = v13;
  v14 = v13;
  v15 = v12;
  [(SLDShareableContentService *)self fetchShareableContentFromBundleIdentifier:a3 sceneIdentifier:v15 requestedTypeIdentifier:a5 requestedItemProviderIndex:a6 responseHandler:v16];
}

void __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 result];
  if (!v6)
  {
    v7 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)presentMessageComposeSheetForSceneIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SLDShareableContentService *)self visibleApplicationForSceneIdentifier:v6];
  if (v8)
  {
    v9 = [SLSendShareableContentAction alloc];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke;
    v16 = &unk_278927008;
    v17 = v6;
    v18 = v7;
    v10 = [(SLShareableContentAction *)v9 initWithSceneIdentifier:v17 responseHandler:&v13];
    v11 = [v8 bundleIdentifier];
    [(SLDShareableContentService *)self performAction:v10 onApplicationWithBundleIdentifier:v11 sceneIdentifier:0];
  }

  else
  {
    v12 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService presentMessageComposeSheetForSceneIdentifier:? completion:?];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)shareCollaborationData:(id)a3 faceTimeConversationUUID:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAE80] currentConnection];
  v12 = [(SLDShareableContentService *)self _connShouldAllowBackgroundCollaboration:v11];

  v13 = SLDaemonLogHandle();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService shareCollaborationData:faceTimeConversationUUID:completionHandler:];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_INFO, "Initiating process has background collaboration entitlement, proceeding to initiate collaboration", buf, 2u);
    }

    v29 = v10;

    v15 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:@"com.apple.Messages.BackgroundCollaboration"];
    [(SLDShareableContentService *)self setActivity:v15];

    v14 = [MEMORY[0x277CBEB38] dictionary];
    [v14 setObject:v8 forKeyedSubscript:@"shud"];
    [v14 setObject:v9 forKeyedSubscript:@"FaceTimeUUID"];
    v16 = [v14 copy];
    v17 = [(SLDShareableContentService *)self activity];
    [v17 setUserInfo:v16];

    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_INFO, "Initiating collaboration via messages using userInfoDictionary %@", buf, 0xCu);
    }

    v32 = 0;
    v19 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:@"com.apple.MobileSMS" error:&v32];
    v20 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v19;
      v22 = objc_opt_new();
      v33 = *MEMORY[0x277D0ABF0];
      v34 = MEMORY[0x277CBEC38];
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [v22 setFrontBoardOptions:v23];
      [(SLDShareableContentService *)self activity];
      v24 = v28 = v20;
      [v24 becomeCurrent];

      v25 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v26 = [(SLDShareableContentService *)self activity];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __96__SLDShareableContentService_shareCollaborationData_faceTimeConversationUUID_completionHandler___block_invoke;
      v30[3] = &unk_278927030;
      v30[4] = self;
      v31 = v29;
      [v25 openUserActivity:v26 usingApplicationRecord:v21 configuration:v22 completionHandler:v30];

      v10 = v29;
      v20 = v28;
    }

    else
    {
      v22 = SLDaemonLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231772000, v22, OS_LOG_TYPE_DEFAULT, "Did not find LSApplicationRecord for messages, cannot launch user activity to initiate background collaboration", buf, 2u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __96__SLDShareableContentService_shareCollaborationData_faceTimeConversationUUID_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLDaemonLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "Opened user activity for collaboration success: %@ error: %@", buf, 0x16u);
  }

  v8 = dispatch_time(0, 2000000000);
  v9 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__SLDShareableContentService_shareCollaborationData_faceTimeConversationUUID_completionHandler___block_invoke_124;
  v13[3] = &unk_2789260C8;
  v10 = *(a1 + 40);
  v14 = v5;
  v15 = v10;
  v11 = v5;
  dispatch_after(v8, v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_connShouldAllowBackgroundCollaboration:(id)a3
{
  v3 = [MEMORY[0x277CF0CD0] processHandleForNSXPCConnection:a3];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [0 hasEntitlement:@"com.apple.private.sociallayer.background-collaboration"];
  }

  return v4;
}

- (id)_applicationIdentifierForConnection:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = MEMORY[0x277CC1E90];
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v12 = 0;
  v6 = [v5 bundleRecordForAuditToken:v13 error:&v12];
  v7 = v12;
  v8 = [v6 applicationIdentifier];

  if (!v8)
  {
    v9 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService _applicationIdentifierForConnection:];
    }
  }

  v10 = [v6 applicationIdentifier];

  return v10;
}

- (void)allowsConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v1, v2, "Application launch failed for %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v1, v2, "Failed to get shareable content for scene in %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v1, v2, "Failed to populate metadata for scene in %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v1, v2, "Failed to fetch asynchronous shareable content for scene in %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)fetchShareableContentFromBundleIdentifier:(uint64_t)a1 sceneIdentifier:(void *)a2 requestedTypeIdentifier:requestedItemProviderIndex:responseHandler:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 visibleApplications];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v1, v2, "Failed to load representation for content in scene %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)presentMessageComposeSheetForSceneIdentifier:(void *)a1 completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 visibleApplications];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_applicationIdentifierForConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end