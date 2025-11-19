@interface SLShareableContentActionHandler
+ (SLShareableContentActionHandler)sharedActionHandler;
- (id)activityItemsConfigurationForSceneWithIdentifier:(id)a3;
- (id)lpMetadataForActivityItemsConfiguration:(id)a3;
- (id)respondToBSActions:(id)a3;
- (id)sceneWithIdentifier:(id)a3;
- (id)titleForActivityItemsConfiguration:(id)a3;
- (void)fulfillAsynchronousMetadataAction:(id)a3 linkMetadata:(id)a4;
- (void)fulfillAsynchronousMetadataAction:(id)a3 response:(id)a4;
- (void)fulfillContentAction:(id)a3 itemProvider:(id)a4;
- (void)fulfillMetadataAction:(id)a3 error:(id)a4;
- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5;
- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 containerSetupInfo:(id)a6;
- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 highlightURL:(id)a6 initiatorRequest:(id)a7;
- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 inPlaceFileURL:(id)a6;
- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 pendingCollaboration:(id)a6;
- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 sharingContext:(id)a6;
- (void)fulfillMetadataAction:(id)a3 response:(id)a4;
- (void)performAction:(id)a3;
- (void)performActions:(id)a3;
- (void)performFetchAsynchronousLPMetadataAction:(id)a3;
- (void)performFetchShareableContentAction:(id)a3;
- (void)performFetchShareableContentMetadataAction:(id)a3;
- (void)performSendShareableContentAction:(id)a3;
@end

@implementation SLShareableContentActionHandler

+ (SLShareableContentActionHandler)sharedActionHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLShareableContentActionHandler_sharedActionHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedActionHandler_onceToken != -1)
  {
    dispatch_once(&sharedActionHandler_onceToken, block);
  }

  v2 = sharedActionHandler_sExtractor;

  return v2;
}

uint64_t __54__SLShareableContentActionHandler_sharedActionHandler__block_invoke(uint64_t a1)
{
  sharedActionHandler_sExtractor = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)sceneWithIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 connectedScenes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 _FBSScene];
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:v3];

        if (v14)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v15 = v11;

    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = v15;
  }

  else
  {
LABEL_10:

LABEL_13:
    v17 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLShareableContentActionHandler sceneWithIdentifier:];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)activityItemsConfigurationForSceneWithIdentifier:(id)a3
{
  v4 = [(SLShareableContentActionHandler *)self sceneWithIdentifier:a3];
  v5 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForScene:v4];

  return v5;
}

- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 firstObject];
  v12 = [v11 registeredTypeIdentifiersWithFileOptions:1];
  if ([v11 canLoadObjectOfClass:getCKPostSharingContextClass()])
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke;
    v42[3] = &unk_278927658;
    v42[4] = self;
    v43 = v8;
    v44 = v9;
    v45 = v10;
    v14 = [v11 loadObjectOfClass:CKPostSharingContextClass completionHandler:v42];

    v15 = v43;
LABEL_13:

    goto LABEL_14;
  }

  if ([v11 canLoadObjectOfClass:getCKContainerSetupInfoClass()])
  {
    CKContainerSetupInfoClass = getCKContainerSetupInfoClass();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_13;
    v38[3] = &unk_278927658;
    v38[4] = self;
    v39 = v8;
    v40 = v9;
    v41 = v10;
    v17 = [v11 loadObjectOfClass:CKContainerSetupInfoClass completionHandler:v38];

    v15 = v39;
    goto LABEL_13;
  }

  if ([v11 canLoadObjectOfClass:objc_opt_class()])
  {
    v18 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_16;
    v34[3] = &unk_278927658;
    v34[4] = self;
    v35 = v8;
    v36 = v9;
    v37 = v10;
    v19 = [v11 loadObjectOfClass:v18 completionHandler:v34];

    v15 = v35;
    goto LABEL_13;
  }

  v20 = [v12 firstObject];
  if ([v20 isEqualToString:*MEMORY[0x277CDC720]])
  {
    v21 = [v11 hasItemConformingToTypeIdentifier:@"public.file-url"];

    if (v21)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_21;
      v30[3] = &unk_278927680;
      v30[4] = self;
      v31 = v8;
      v32 = v9;
      v33 = v10;
      [v11 loadItemForTypeIdentifier:@"public.file-url" options:0 completionHandler:v30];

      v15 = v31;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v12 count])
  {
    v22 = [v12 firstObject];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_24;
    v26[3] = &unk_2789276D0;
    v26[4] = self;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v23 = [v11 loadInPlaceFileRepresentationForTypeIdentifier:v22 completionHandler:v26];

    v15 = v27;
    goto LABEL_13;
  }

  v25 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v11;
    _os_log_impl(&dword_231772000, v25, OS_LOG_TYPE_DEFAULT, "Fulfilling action without initiator request for item provider without any registered collaborations: %@", buf, 0xCu);
  }

  [(SLShareableContentActionHandler *)self fulfillMetadataAction:v8 itemProviders:v9 linkMetadata:v10 highlightURL:0 initiatorRequest:0];
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  getCKPostSharingContextClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 sharingContext:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_cold_1(a1, v9);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  getCKContainerSetupInfoClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 containerSetupInfo:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14_cold_1(a1, v9);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 pendingCollaboration:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17_cold_1(a1, v9);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isFileURL])
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 inPlaceFileURL:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22_cold_1(v2, a1);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_24(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25;
  block[3] = &unk_2789276A8;
  v21 = a3;
  v17 = v7;
  v18 = v8;
  v15 = *(a1 + 32);
  v9 = *(&v15 + 1);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v19 = v15;
  v20 = v12;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isFileURL] && (*(a1 + 80) & 1) != 0)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 inPlaceFileURL:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25_cold_1(v2, a1);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 sharingContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [SLShareableContentInitiatorRequest alloc];
  v15 = [v10 containerSetupInfo];
  v18 = [(SLShareableContentInitiatorRequest *)v14 initWithContainerSetupInfo:v15];

  v16 = [v10 share];

  v17 = [v16 URL];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:v13 itemProviders:v12 linkMetadata:v11 highlightURL:v17 initiatorRequest:v18];
}

- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 containerSetupInfo:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[SLShareableContentInitiatorRequest alloc] initWithContainerSetupInfo:v10];

  [(SLShareableContentActionHandler *)self fulfillMetadataAction:v13 itemProviders:v12 linkMetadata:v11 highlightURL:0 initiatorRequest:v14];
}

- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 pendingCollaboration:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v12 collaborationMetadata];
  if (v14)
  {
    v15 = [[SLShareableContentInitiatorRequest alloc] initWithCollaborationMetadata:v14];
    v16 = [v12 fileURL];
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:v13 itemProviders:v10 linkMetadata:v11 highlightURL:v16 initiatorRequest:v15];
  }

  else
  {
    v17 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLShareableContentActionHandler fulfillMetadataAction:v17 itemProviders:? linkMetadata:? pendingCollaboration:?];
    }

    v15 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:v13 response:v15];
  }
}

- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 inPlaceFileURL:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[SLShareableContentInitiatorRequest alloc] initWithFileURL:v10];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:v13 itemProviders:v12 linkMetadata:v11 highlightURL:v10 initiatorRequest:v14];
}

- (void)fulfillMetadataAction:(id)a3 itemProviders:(id)a4 linkMetadata:(id)a5 highlightURL:(id)a6 initiatorRequest:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v36 = a5;
  v35 = a6;
  v33 = a7;
  v32 = [v11 sceneIdentifier];
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 bundleIdentifier];
  v15 = v14;
  v16 = &stru_28468DAB8;
  if (v14)
  {
    v16 = v14;
  }

  v37 = v16;

  v17 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        v24 = [SLShareableContentRepresentationCollection alloc];
        v25 = [v23 sl_representations];
        v26 = [v23 suggestedName];
        v27 = [(SLShareableContentRepresentationCollection *)v24 initWithRepresentations:v25 suggestedFileName:v26];

        [v17 addObject:v27];
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v20);
  }

  v28 = [[SLShareableContentMetadata alloc] initWithSceneIdentifier:v32 bundleIdentifier:v37 representations:v17 metadata:v36 highlightURL:v35];
  v29 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v28;
    v44 = 2112;
    v45 = v33;
    _os_log_impl(&dword_231772000, v29, OS_LOG_TYPE_DEFAULT, "Fulfilling action with metadata: %@ initiatorRequest: %@", buf, 0x16u);
  }

  v30 = [SLFetchShareableContentMetadataActionResponse responseWithMetadata:v28 initiatorRequest:v33];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:v11 response:v30];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)fulfillMetadataAction:(id)a3 response:(id)a4
{
  v5 = a4;
  v7 = a3;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [v7 fulfillWithResponse:v5];
}

- (void)fulfillMetadataAction:(id)a3 error:(id)a4
{
  v5 = a4;
  v7 = a3;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [v7 failWithError:v5];
}

- (void)fulfillAsynchronousMetadataAction:(id)a3 linkMetadata:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "Fulfilling action with metadata: %@", &v11, 0xCu);
  }

  v9 = [SLFetchAsynchronousLPMetadataActionResponse responseWithMetadata:v6];
  [(SLShareableContentActionHandler *)self fulfillAsynchronousMetadataAction:v7 response:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fulfillAsynchronousMetadataAction:(id)a3 response:(id)a4
{
  v5 = a4;
  v7 = a3;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [v7 fulfillWithResponse:v5];
}

- (void)performFetchShareableContentMetadataAction:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sceneIdentifier];
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching on screen content for scene identifier: %@", &v19, 0xCu);
  }

  v7 = [v4 sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:v7];

  if (v8)
  {
    v9 = [v8 itemProvidersForActivityItemsConfiguration];
    v10 = v9;
    if (!v9 || ![v9 count])
    {
      v13 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v4 sceneIdentifier];
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "Could not find content attached to the given scene with identifier: %@", &v19, 0xCu);
      }

      v12 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
      [(SLShareableContentActionHandler *)self fulfillMetadataAction:v4 response:v12];
      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v8 activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76600]];
      if (v11)
      {
        objc_opt_class();
        v12 = v11;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_alloc_init(MEMORY[0x277CD46C8]);

    v17 = [(SLShareableContentActionHandler *)self titleForActivityItemsConfiguration:v8];
    [v12 setTitle:v17];

LABEL_18:
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:v4 itemProviders:v10 linkMetadata:v12];
LABEL_19:

    goto LABEL_20;
  }

  v15 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v4 sceneIdentifier];
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Could not find an activity items configuration for the requested scene: %@", &v19, 0xCu);
  }

  v10 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:v4 response:v10];
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)performFetchAsynchronousLPMetadataAction:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sceneIdentifier];
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous metdata for on screen content for scene identifier: %@", buf, 0xCu);
  }

  v7 = [v4 sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:v7];

  if (v8)
  {
    v9 = [(SLShareableContentActionHandler *)self lpMetadataForActivityItemsConfiguration:v8];
    v10 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "Fetched synchronous previewMetadata %@", buf, 0xCu);
    }

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CD46C8]);

      v12 = [(SLShareableContentActionHandler *)self titleForActivityItemsConfiguration:v8];
      [v11 setTitle:v12];

      if (objc_opt_respondsToSelector())
      {
        v13 = [v8 activityItemsConfigurationPreviewForItemAtIndex:0 intent:*MEMORY[0x277D76618] suggestedSize:{64.0, 64.0}];
        [v11 setIconProvider:v13];

        v14 = [v8 activityItemsConfigurationPreviewForItemAtIndex:0 intent:*MEMORY[0x277D76610] suggestedSize:{512.0, 512.0}];
        [v11 setImageProvider:v14];
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SLShareableContentActionHandler_performFetchAsynchronousLPMetadataAction___block_invoke;
    v19[3] = &unk_2789275B0;
    v20 = v11;
    v21 = self;
    v22 = v4;
    v15 = v11;
    [v15 _loadAsynchronousFieldsWithUpdateHandler:v19];
  }

  else
  {
    v16 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 sceneIdentifier];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_DEFAULT, "Could not find an activity items configuration for the requested scene: %@", buf, 0xCu);
    }

    v15 = +[(SLShareableContentActionResponse *)SLFetchAsynchronousLPMetadataActionResponse];
    [(SLShareableContentActionHandler *)self fulfillAsynchronousMetadataAction:v4 response:v15];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __76__SLShareableContentActionHandler_performFetchAsynchronousLPMetadataAction___block_invoke(uint64_t result, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    v3 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 32);
      v5 = [v4 image];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "Completed loading asynchronous fields for previewMetadata %@ %@", &v7, 0x16u);
    }

    result = [*(v2 + 40) fulfillAsynchronousMetadataAction:*(v2 + 48) linkMetadata:*(v2 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fulfillContentAction:(id)a3 itemProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 requestedTypeIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SLShareableContentActionHandler_fulfillContentAction_itemProvider___block_invoke;
  v9[3] = &unk_2789276F8;
  v10 = v5;
  v8 = v5;
  [v6 sl_loadRepresentationForTypeIdentifier:v7 completionHandler:v9];
}

void __69__SLShareableContentActionHandler_fulfillContentAction_itemProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SLFetchShareableContentActionResponse responseWithResult:a2];
  [v2 fulfillWithResponse:v3];
}

- (void)performFetchShareableContentAction:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sceneIdentifier];
    v7 = [v4 requestedTypeIdentifier];
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching on screen content representation for scene identifier: %@ requested type identifier: %@", buf, 0x16u);
  }

  v8 = [v4 requestedTypeIdentifier];

  if (v8)
  {
    v9 = [v4 sceneIdentifier];
    v10 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:v9];

    if (!v10)
    {
      v17 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:v4];
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA5B8];
      v22 = *MEMORY[0x277CCA068];
      v23 = @"Could not find an activity items configuration for the requested scene.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = [v18 errorWithDomain:v19 code:2 userInfo:v20];

      [v4 failWithError:v12];
      goto LABEL_21;
    }

    v11 = [v10 itemProvidersForActivityItemsConfiguration];
    v12 = v11;
    if (v11 && [v11 count])
    {
      v13 = [v4 requestedItemProviderIndex];
      if (v13 < [v12 count])
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        [(SLShareableContentActionHandler *)self fulfillContentAction:v4 itemProvider:v14];
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v16 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:v4];
      }
    }

    else
    {
      v16 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:v4];
      }
    }

    v14 = +[(SLShareableContentActionResponse *)SLFetchShareableContentActionResponse];
    [v4 fulfillWithResponse:v14];
    goto LABEL_20;
  }

  v15 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SLShareableContentActionHandler performFetchShareableContentAction:v4];
  }

  v10 = +[(SLShareableContentActionResponse *)SLFetchShareableContentActionResponse];
  [v4 fulfillWithResponse:v10];
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)performSendShareableContentAction:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sceneIdentifier];
    v25 = 138412290;
    v26 = v6;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Presenting message compose sheet to send on screen content for scene identifier: %@", &v25, 0xCu);
  }

  v7 = [v4 sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self sceneWithIdentifier:v7];

  if (v8)
  {
    v9 = [v4 sceneIdentifier];
    v10 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:v9];

    if (v10)
    {
      v11 = [v10 itemProvidersForActivityItemsConfiguration];
      v12 = [v11 firstObject];

      if (v12)
      {
        v13 = [objc_alloc(MEMORY[0x277CDC6C0]) initWithCollaborationIdentifier:&stru_28468DAB8 title:&stru_28468DAB8 defaultShareOptions:0];
        v14 = +[SLSoftLinks newComposeViewControllerInstance];
        v15 = [MEMORY[0x277CBEA60] array];
        [v14 insertCollaborationItemProvider:v12 collaborationOptions:v15 collaborationMetadata:v13 isCollaboration:1];

        [v14 setSl_messageComposeResultHandler:&__block_literal_global_18];
        v16 = [v8 keyWindow];
        v17 = [MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:v16];
        v18 = v17;
        if (v17)
        {
          [v17 presentViewController:v14 animated:1 completion:0];
        }

        else
        {
          v21 = SLShareableContentLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 138412290;
            v26 = v8;
            _os_log_impl(&dword_231772000, v21, OS_LOG_TYPE_DEFAULT, "Could not find a suitable presenting view controller for scene: %@. Content will be presented from a fallback view controller", &v25, 0xCu);
          }

          v22 = objc_alloc_init(MEMORY[0x277D75F48]);
          [v22 _presentViewController:v14 sendingView:v16 animated:1];
        }

        v23 = +[SLShareableContentActionResponse response];
        [v4 fulfillWithResponse:v23];
      }

      else
      {
        v20 = SLShareableContentLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SLShareableContentActionHandler performFetchShareableContentAction:v4];
        }

        v13 = +[SLShareableContentActionResponse response];
        [v4 fulfillWithResponse:v13];
      }
    }

    else
    {
      v19 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:v4];
      }

      v12 = +[SLShareableContentActionResponse response];
      [v4 fulfillWithResponse:v12];
    }
  }

  else
  {
    v10 = +[SLShareableContentActionResponse response];
    [v4 fulfillWithResponse:v10];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __69__SLShareableContentActionHandler_performSendShareableContentAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SLShareableContentActionHandler *)self performFetchShareableContentMetadataAction:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SLShareableContentActionHandler *)self performFetchShareableContentAction:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SLShareableContentActionHandler *)self performSendShareableContentAction:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SLShareableContentActionHandler *)self performFetchAsynchronousLPMetadataAction:v4];
        }
      }
    }
  }
}

- (void)performActions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SLShareableContentActionHandler *)self performAction:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)respondToBSActions:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __54__SLShareableContentActionHandler_respondToBSActions___block_invoke;
  v16 = &unk_278927740;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:&v13];
  [(SLShareableContentActionHandler *)self performActions:v9, v13, v14, v15, v16];
  v10 = [v5 mutableCopy];

  [v10 minusSet:v8];
  v11 = [v10 copy];

  return v11;
}

void __54__SLShareableContentActionHandler_respondToBSActions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [SLShareableContentAction actionWithBSAction:?];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v4];
  }
}

- (id)titleForActivityItemsConfiguration:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76608]];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 itemProvidersForActivityItemsConfiguration];
  v6 = [v5 count];

  if (!v4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || !v6)
    {
      goto LABEL_13;
    }

    v8 = 0;
    v9 = *MEMORY[0x277D76608];
    while (1)
    {
      v10 = [v3 activityItemsConfigurationMetadataForItemAtIndex:v8 key:v9];
      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    v4 = v10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 string];

    v4 = v7;
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)lpMetadataForActivityItemsConfiguration:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76600]];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 itemProvidersForActivityItemsConfiguration];
  v6 = [v5 count];

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0 && v6)
  {
    v10 = 0;
    v11 = *MEMORY[0x277D76600];
    while (1)
    {
      v12 = [v3 activityItemsConfigurationMetadataForItemAtIndex:v10 key:v11];
      if (v12)
      {
        break;
      }

      if (v6 == ++v10)
      {
        v4 = 0;
        goto LABEL_5;
      }
    }

    v4 = v12;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)sceneWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_231772000, v1, OS_LOG_TYPE_ERROR, "Could not find the requested scene with identifier: %@ in connected scenes: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly failed to load CKPostSharingContext from item provider: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly failed to load CKContainerSetupInfo from item provider: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  v10 = 2112;
  v11 = v7;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly failed to load a %@ from item provider: %@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_4(&dword_231772000, v4, v5, "Unexpectedly failed to load item for type public.file-url of %@: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_4(&dword_231772000, v4, v5, "Unexpectedly failed to load in-place file representation of %@: %@");
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end