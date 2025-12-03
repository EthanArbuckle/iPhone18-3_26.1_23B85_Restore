@interface SLShareableContentActionHandler
+ (SLShareableContentActionHandler)sharedActionHandler;
- (id)activityItemsConfigurationForSceneWithIdentifier:(id)identifier;
- (id)lpMetadataForActivityItemsConfiguration:(id)configuration;
- (id)respondToBSActions:(id)actions;
- (id)sceneWithIdentifier:(id)identifier;
- (id)titleForActivityItemsConfiguration:(id)configuration;
- (void)fulfillAsynchronousMetadataAction:(id)action linkMetadata:(id)metadata;
- (void)fulfillAsynchronousMetadataAction:(id)action response:(id)response;
- (void)fulfillContentAction:(id)action itemProvider:(id)provider;
- (void)fulfillMetadataAction:(id)action error:(id)error;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata containerSetupInfo:(id)info;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata highlightURL:(id)l initiatorRequest:(id)request;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata inPlaceFileURL:(id)l;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata pendingCollaboration:(id)collaboration;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata sharingContext:(id)context;
- (void)fulfillMetadataAction:(id)action response:(id)response;
- (void)performAction:(id)action;
- (void)performActions:(id)actions;
- (void)performFetchAsynchronousLPMetadataAction:(id)action;
- (void)performFetchShareableContentAction:(id)action;
- (void)performFetchShareableContentMetadataAction:(id)action;
- (void)performSendShareableContentAction:(id)action;
@end

@implementation SLShareableContentActionHandler

+ (SLShareableContentActionHandler)sharedActionHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLShareableContentActionHandler_sharedActionHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)sceneWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = connectedScenes;
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
        _FBSScene = [v11 _FBSScene];
        identifier = [_FBSScene identifier];
        v14 = [identifier isEqualToString:identifierCopy];

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

- (id)activityItemsConfigurationForSceneWithIdentifier:(id)identifier
{
  v4 = [(SLShareableContentActionHandler *)self sceneWithIdentifier:identifier];
  v5 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForScene:v4];

  return v5;
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata
{
  v48 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  providersCopy = providers;
  metadataCopy = metadata;
  firstObject = [providersCopy firstObject];
  v12 = [firstObject registeredTypeIdentifiersWithFileOptions:1];
  if ([firstObject canLoadObjectOfClass:getCKPostSharingContextClass()])
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke;
    v42[3] = &unk_278927658;
    v42[4] = self;
    v43 = actionCopy;
    v44 = providersCopy;
    v45 = metadataCopy;
    v14 = [firstObject loadObjectOfClass:CKPostSharingContextClass completionHandler:v42];

    v15 = v43;
LABEL_13:

    goto LABEL_14;
  }

  if ([firstObject canLoadObjectOfClass:getCKContainerSetupInfoClass()])
  {
    CKContainerSetupInfoClass = getCKContainerSetupInfoClass();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_13;
    v38[3] = &unk_278927658;
    v38[4] = self;
    v39 = actionCopy;
    v40 = providersCopy;
    v41 = metadataCopy;
    v17 = [firstObject loadObjectOfClass:CKContainerSetupInfoClass completionHandler:v38];

    v15 = v39;
    goto LABEL_13;
  }

  if ([firstObject canLoadObjectOfClass:objc_opt_class()])
  {
    v18 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_16;
    v34[3] = &unk_278927658;
    v34[4] = self;
    v35 = actionCopy;
    v36 = providersCopy;
    v37 = metadataCopy;
    v19 = [firstObject loadObjectOfClass:v18 completionHandler:v34];

    v15 = v35;
    goto LABEL_13;
  }

  firstObject2 = [v12 firstObject];
  if ([firstObject2 isEqualToString:*MEMORY[0x277CDC720]])
  {
    v21 = [firstObject hasItemConformingToTypeIdentifier:@"public.file-url"];

    if (v21)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_21;
      v30[3] = &unk_278927680;
      v30[4] = self;
      v31 = actionCopy;
      v32 = providersCopy;
      v33 = metadataCopy;
      [firstObject loadItemForTypeIdentifier:@"public.file-url" options:0 completionHandler:v30];

      v15 = v31;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v12 count])
  {
    firstObject3 = [v12 firstObject];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_24;
    v26[3] = &unk_2789276D0;
    v26[4] = self;
    v27 = actionCopy;
    v28 = providersCopy;
    v29 = metadataCopy;
    v23 = [firstObject loadInPlaceFileRepresentationForTypeIdentifier:firstObject3 completionHandler:v26];

    v15 = v27;
    goto LABEL_13;
  }

  v25 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = firstObject;
    _os_log_impl(&dword_231772000, v25, OS_LOG_TYPE_DEFAULT, "Fulfilling action without initiator request for item provider without any registered collaborations: %@", buf, 0xCu);
  }

  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:0 initiatorRequest:0];
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

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata sharingContext:(id)context
{
  contextCopy = context;
  metadataCopy = metadata;
  providersCopy = providers;
  actionCopy = action;
  v14 = [SLShareableContentInitiatorRequest alloc];
  containerSetupInfo = [contextCopy containerSetupInfo];
  v18 = [(SLShareableContentInitiatorRequest *)v14 initWithContainerSetupInfo:containerSetupInfo];

  share = [contextCopy share];

  v17 = [share URL];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:v17 initiatorRequest:v18];
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata containerSetupInfo:(id)info
{
  infoCopy = info;
  metadataCopy = metadata;
  providersCopy = providers;
  actionCopy = action;
  v14 = [[SLShareableContentInitiatorRequest alloc] initWithContainerSetupInfo:infoCopy];

  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:0 initiatorRequest:v14];
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata pendingCollaboration:(id)collaboration
{
  providersCopy = providers;
  metadataCopy = metadata;
  collaborationCopy = collaboration;
  actionCopy = action;
  collaborationMetadata = [collaborationCopy collaborationMetadata];
  if (collaborationMetadata)
  {
    v15 = [[SLShareableContentInitiatorRequest alloc] initWithCollaborationMetadata:collaborationMetadata];
    fileURL = [collaborationCopy fileURL];
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:fileURL initiatorRequest:v15];
  }

  else
  {
    v17 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLShareableContentActionHandler fulfillMetadataAction:v17 itemProviders:? linkMetadata:? pendingCollaboration:?];
    }

    v15 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v15];
  }
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata inPlaceFileURL:(id)l
{
  lCopy = l;
  metadataCopy = metadata;
  providersCopy = providers;
  actionCopy = action;
  v14 = [[SLShareableContentInitiatorRequest alloc] initWithFileURL:lCopy];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:lCopy initiatorRequest:v14];
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata highlightURL:(id)l initiatorRequest:(id)request
{
  v47 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  providersCopy = providers;
  metadataCopy = metadata;
  lCopy = l;
  requestCopy = request;
  sceneIdentifier = [actionCopy sceneIdentifier];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v15 = bundleIdentifier;
  v16 = &stru_28468DAB8;
  if (bundleIdentifier)
  {
    v16 = bundleIdentifier;
  }

  v37 = v16;

  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = providersCopy;
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
        sl_representations = [v23 sl_representations];
        suggestedName = [v23 suggestedName];
        v27 = [(SLShareableContentRepresentationCollection *)v24 initWithRepresentations:sl_representations suggestedFileName:suggestedName];

        [array addObject:v27];
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v20);
  }

  v28 = [[SLShareableContentMetadata alloc] initWithSceneIdentifier:sceneIdentifier bundleIdentifier:v37 representations:array metadata:metadataCopy highlightURL:lCopy];
  v29 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v28;
    v44 = 2112;
    v45 = requestCopy;
    _os_log_impl(&dword_231772000, v29, OS_LOG_TYPE_DEFAULT, "Fulfilling action with metadata: %@ initiatorRequest: %@", buf, 0x16u);
  }

  v30 = [SLFetchShareableContentMetadataActionResponse responseWithMetadata:v28 initiatorRequest:requestCopy];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v30];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)fulfillMetadataAction:(id)action response:(id)response
{
  responseCopy = response;
  actionCopy = action;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [actionCopy fulfillWithResponse:responseCopy];
}

- (void)fulfillMetadataAction:(id)action error:(id)error
{
  errorCopy = error;
  actionCopy = action;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [actionCopy failWithError:errorCopy];
}

- (void)fulfillAsynchronousMetadataAction:(id)action linkMetadata:(id)metadata
{
  v13 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  actionCopy = action;
  v8 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = metadataCopy;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "Fulfilling action with metadata: %@", &v11, 0xCu);
  }

  v9 = [SLFetchAsynchronousLPMetadataActionResponse responseWithMetadata:metadataCopy];
  [(SLShareableContentActionHandler *)self fulfillAsynchronousMetadataAction:actionCopy response:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fulfillAsynchronousMetadataAction:(id)action response:(id)response
{
  responseCopy = response;
  actionCopy = action;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [actionCopy fulfillWithResponse:responseCopy];
}

- (void)performFetchShareableContentMetadataAction:(id)action
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    v19 = 138412290;
    v20 = sceneIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching on screen content for scene identifier: %@", &v19, 0xCu);
  }

  sceneIdentifier2 = [actionCopy sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier2];

  if (v8)
  {
    itemProvidersForActivityItemsConfiguration = [v8 itemProvidersForActivityItemsConfiguration];
    v10 = itemProvidersForActivityItemsConfiguration;
    if (!itemProvidersForActivityItemsConfiguration || ![itemProvidersForActivityItemsConfiguration count])
    {
      v13 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sceneIdentifier3 = [actionCopy sceneIdentifier];
        v19 = 138412290;
        v20 = sceneIdentifier3;
        _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "Could not find content attached to the given scene with identifier: %@", &v19, 0xCu);
      }

      v12 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
      [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v12];
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
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:v10 linkMetadata:v12];
LABEL_19:

    goto LABEL_20;
  }

  v15 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier4 = [actionCopy sceneIdentifier];
    v19 = 138412290;
    v20 = sceneIdentifier4;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Could not find an activity items configuration for the requested scene: %@", &v19, 0xCu);
  }

  v10 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v10];
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)performFetchAsynchronousLPMetadataAction:(id)action
{
  v25 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    *buf = 138412290;
    v24 = sceneIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous metdata for on screen content for scene identifier: %@", buf, 0xCu);
  }

  sceneIdentifier2 = [actionCopy sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier2];

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
    selfCopy = self;
    v22 = actionCopy;
    v15 = v11;
    [v15 _loadAsynchronousFieldsWithUpdateHandler:v19];
  }

  else
  {
    v16 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sceneIdentifier3 = [actionCopy sceneIdentifier];
      *buf = 138412290;
      v24 = sceneIdentifier3;
      _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_DEFAULT, "Could not find an activity items configuration for the requested scene: %@", buf, 0xCu);
    }

    v15 = +[(SLShareableContentActionResponse *)SLFetchAsynchronousLPMetadataActionResponse];
    [(SLShareableContentActionHandler *)self fulfillAsynchronousMetadataAction:actionCopy response:v15];
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

- (void)fulfillContentAction:(id)action itemProvider:(id)provider
{
  actionCopy = action;
  providerCopy = provider;
  requestedTypeIdentifier = [actionCopy requestedTypeIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SLShareableContentActionHandler_fulfillContentAction_itemProvider___block_invoke;
  v9[3] = &unk_2789276F8;
  v10 = actionCopy;
  v8 = actionCopy;
  [providerCopy sl_loadRepresentationForTypeIdentifier:requestedTypeIdentifier completionHandler:v9];
}

void __69__SLShareableContentActionHandler_fulfillContentAction_itemProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SLFetchShareableContentActionResponse responseWithResult:a2];
  [v2 fulfillWithResponse:v3];
}

- (void)performFetchShareableContentAction:(id)action
{
  v28 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    requestedTypeIdentifier = [actionCopy requestedTypeIdentifier];
    *buf = 138412546;
    v25 = sceneIdentifier;
    v26 = 2112;
    v27 = requestedTypeIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching on screen content representation for scene identifier: %@ requested type identifier: %@", buf, 0x16u);
  }

  requestedTypeIdentifier2 = [actionCopy requestedTypeIdentifier];

  if (requestedTypeIdentifier2)
  {
    sceneIdentifier2 = [actionCopy sceneIdentifier];
    v10 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier2];

    if (!v10)
    {
      v17 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA5B8];
      v22 = *MEMORY[0x277CCA068];
      v23 = @"Could not find an activity items configuration for the requested scene.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = [v18 errorWithDomain:v19 code:2 userInfo:v20];

      [actionCopy failWithError:v12];
      goto LABEL_21;
    }

    itemProvidersForActivityItemsConfiguration = [v10 itemProvidersForActivityItemsConfiguration];
    v12 = itemProvidersForActivityItemsConfiguration;
    if (itemProvidersForActivityItemsConfiguration && [itemProvidersForActivityItemsConfiguration count])
    {
      requestedItemProviderIndex = [actionCopy requestedItemProviderIndex];
      if (requestedItemProviderIndex < [v12 count])
      {
        v14 = [v12 objectAtIndexedSubscript:requestedItemProviderIndex];
        [(SLShareableContentActionHandler *)self fulfillContentAction:actionCopy itemProvider:v14];
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v16 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }
    }

    else
    {
      v16 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }
    }

    v14 = +[(SLShareableContentActionResponse *)SLFetchShareableContentActionResponse];
    [actionCopy fulfillWithResponse:v14];
    goto LABEL_20;
  }

  v15 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
  }

  v10 = +[(SLShareableContentActionResponse *)SLFetchShareableContentActionResponse];
  [actionCopy fulfillWithResponse:v10];
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)performSendShareableContentAction:(id)action
{
  v27 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    v25 = 138412290;
    v26 = sceneIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Presenting message compose sheet to send on screen content for scene identifier: %@", &v25, 0xCu);
  }

  sceneIdentifier2 = [actionCopy sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self sceneWithIdentifier:sceneIdentifier2];

  if (v8)
  {
    sceneIdentifier3 = [actionCopy sceneIdentifier];
    v10 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier3];

    if (v10)
    {
      itemProvidersForActivityItemsConfiguration = [v10 itemProvidersForActivityItemsConfiguration];
      firstObject = [itemProvidersForActivityItemsConfiguration firstObject];

      if (firstObject)
      {
        v13 = [objc_alloc(MEMORY[0x277CDC6C0]) initWithCollaborationIdentifier:&stru_28468DAB8 title:&stru_28468DAB8 defaultShareOptions:0];
        v14 = +[SLSoftLinks newComposeViewControllerInstance];
        array = [MEMORY[0x277CBEA60] array];
        [v14 insertCollaborationItemProvider:firstObject collaborationOptions:array collaborationMetadata:v13 isCollaboration:1];

        [v14 setSl_messageComposeResultHandler:&__block_literal_global_18];
        keyWindow = [v8 keyWindow];
        v17 = [MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:keyWindow];
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
          [v22 _presentViewController:v14 sendingView:keyWindow animated:1];
        }

        v23 = +[SLShareableContentActionResponse response];
        [actionCopy fulfillWithResponse:v23];
      }

      else
      {
        v20 = SLShareableContentLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
        }

        v13 = +[SLShareableContentActionResponse response];
        [actionCopy fulfillWithResponse:v13];
      }
    }

    else
    {
      v19 = SLShareableContentLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }

      firstObject = +[SLShareableContentActionResponse response];
      [actionCopy fulfillWithResponse:firstObject];
    }
  }

  else
  {
    v10 = +[SLShareableContentActionResponse response];
    [actionCopy fulfillWithResponse:v10];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __69__SLShareableContentActionHandler_performSendShareableContentAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SLShareableContentActionHandler *)self performFetchShareableContentMetadataAction:actionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SLShareableContentActionHandler *)self performFetchShareableContentAction:actionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SLShareableContentActionHandler *)self performSendShareableContentAction:actionCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SLShareableContentActionHandler *)self performFetchAsynchronousLPMetadataAction:actionCopy];
        }
      }
    }
  }
}

- (void)performActions:(id)actions
{
  v15 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        [(SLShareableContentActionHandler *)self performAction:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)respondToBSActions:(id)actions
{
  v4 = MEMORY[0x277CBEB58];
  actionsCopy = actions;
  v6 = [v4 setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __54__SLShareableContentActionHandler_respondToBSActions___block_invoke;
  v16 = &unk_278927740;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  [actionsCopy enumerateObjectsUsingBlock:&v13];
  [(SLShareableContentActionHandler *)self performActions:v9, v13, v14, v15, v16];
  v10 = [actionsCopy mutableCopy];

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

- (id)titleForActivityItemsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    v4 = [configurationCopy activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76608]];
  }

  else
  {
    v4 = 0;
  }

  itemProvidersForActivityItemsConfiguration = [configurationCopy itemProvidersForActivityItemsConfiguration];
  v6 = [itemProvidersForActivityItemsConfiguration count];

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
      v10 = [configurationCopy activityItemsConfigurationMetadataForItemAtIndex:v8 key:v9];
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
    string = [v4 string];

    v4 = string;
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

- (id)lpMetadataForActivityItemsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    v4 = [configurationCopy activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76600]];
  }

  else
  {
    v4 = 0;
  }

  itemProvidersForActivityItemsConfiguration = [configurationCopy itemProvidersForActivityItemsConfiguration];
  v6 = [itemProvidersForActivityItemsConfiguration count];

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0 && v6)
  {
    v10 = 0;
    v11 = *MEMORY[0x277D76600];
    while (1)
    {
      v12 = [configurationCopy activityItemsConfigurationMetadataForItemAtIndex:v10 key:v11];
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