@interface WFOnScreenContentManager
- (WFOnScreenContentManager)init;
- (id)visibleApplicationsFromLayout:(id)a3;
- (void)finishGettingVisibleApplicationsWithLayout:(id)a3;
- (void)getContentForLayoutElement:(id)a3 serviceOptions:(id)a4 completionHandler:(id)a5;
- (void)getNodeForGlobalUserActivityWithCompletionHandler:(id)a3;
- (void)getOnScreenContentWithOptions:(id)a3 completion:(id)a4;
- (void)getOnScreenContentWithOptions:(id)a3 completionHandler:(id)a4;
- (void)getVisibleApplicationsWithCompletionHandler:(id)a3;
@end

@implementation WFOnScreenContentManager

- (void)getNodeForGlobalUserActivityWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D77BA8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__WFOnScreenContentManager_getNodeForGlobalUserActivityWithCompletionHandler___block_invoke;
  v6[3] = &unk_2788FFE70;
  v7 = v3;
  v5 = v3;
  [v4 currentUserActivityUUIDWithOptions:0 completionHandler:v6];
}

void __78__WFOnScreenContentManager_getNodeForGlobalUserActivityWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D77BA8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__WFOnScreenContentManager_getNodeForGlobalUserActivityWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_2788FFE48;
    v9 = *(a1 + 32);
    v8 = v5;
    [v6 fetchUserActivityWithUUID:a2 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __78__WFOnScreenContentManager_getNodeForGlobalUserActivityWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_32;
  }

  v7 = [v5 typeIdentifier];
  if ([v7 isEqualToString:@"com.apple.mobileslideshow.oneUp"])
  {
    goto LABEL_5;
  }

  v8 = [v5 typeIdentifier];
  if ([v8 isEqualToString:@"com.apple.Photos.oneUp"])
  {

LABEL_5:
    goto LABEL_6;
  }

  v22 = [v5 typeIdentifier];
  v23 = [v22 isEqualToString:@"com.apple.screenshotservices.sirisharing"];

  if ((v23 & 1) == 0)
  {
    v24 = [v5 typeIdentifier];
    v25 = [v24 isEqualToString:@"com.apple.Contacts.ViewingCard"];

    if (v25)
    {
      v26 = [v5 userInfo];
      v27 = [v26 objectForKey:@"contact-identifier"];

      if (v27)
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x2050000000;
        v28 = getWFCNContactStoreClass_softClass;
        v50 = getWFCNContactStoreClass_softClass;
        if (!getWFCNContactStoreClass_softClass)
        {
          v42 = MEMORY[0x277D85DD0];
          v43 = 3221225472;
          v44 = __getWFCNContactStoreClass_block_invoke;
          v45 = &unk_2788FFE98;
          v46 = &v47;
          __getWFCNContactStoreClass_block_invoke(&v42);
          v28 = v48[3];
        }

        v29 = v28;
        _Block_object_dispose(&v47, 8);
        v30 = objc_opt_new();
        v31 = [v30 contactWithIdentifier:v27];

        if (v31)
        {
          v14 = [getWFContentItemClass() itemWithObject:v31];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v32 = 0;
      v17 = 0;
    }

    else
    {
      v39 = [v5 typeIdentifier];
      v40 = [v39 isEqualToString:@"com.apple.Messages"];

      if (v40)
      {
        v41 = [v5 userInfo];
        v32 = [v41 objectForKey:@"__kIMChatRegistryContinuityURLKey"];
      }

      else
      {
        v32 = 0;
      }

      v17 = 0;
      v14 = 0;
    }

    goto LABEL_24;
  }

LABEL_6:
  v9 = [v5 userInfo];
  v10 = [v9 objectForKey:@"selectedUUIDs"];
  v11 = [v10 firstObject];

  if (v11)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v12 = getWFPhotoMediaContentItemClass_softClass;
    v50 = getWFPhotoMediaContentItemClass_softClass;
    if (!getWFPhotoMediaContentItemClass_softClass)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getWFPhotoMediaContentItemClass_block_invoke;
      v45 = &unk_2788FFE98;
      v46 = &v47;
      __getWFPhotoMediaContentItemClass_block_invoke(&v42);
      v12 = v48[3];
    }

    v13 = v12;
    _Block_object_dispose(&v47, 8);
    v14 = [v12 itemWithAssetIdentifier:v11];
    v15 = [v14 asset];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 mainFileURL];

      if (v17)
      {
        v18 = MEMORY[0x277CD3C08];
        v19 = [v16 mainFileURL];
        v20 = [v16 filename];
        v21 = [v16 uniformTypeIdentifier];
        v17 = [v18 fileWithFileURL:v19 filename:v20 typeIdentifier:v21];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
  }

  v32 = 0;
LABEL_24:
  v33 = [v5 webpageURL];

  if (v33)
  {
    WFContentItemClass = getWFContentItemClass();
    v35 = [v5 webpageURL];
    v36 = [WFContentItemClass itemWithObject:v35];

    v14 = v36;
  }

  if (v14 || v17 || v32)
  {
    v37 = objc_alloc(MEMORY[0x277D7A060]);
    v38 = [v37 initWithContentItem:v14 file:v17 applicationBundleIdentifier:*(a1 + 32) source:*MEMORY[0x277D7A538]];
    [v38 setChatRegistryContinuityKey:v32];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_32:
}

- (id)visibleApplicationsFromLayout:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 elements], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = [v4 elements];
    v8 = [v7 if_compactMap:&__block_literal_global_6454];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

id __58__WFOnScreenContentManager_visibleApplicationsFromLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isUIApplicationElement])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)finishGettingVisibleApplicationsWithLayout:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(WFOnScreenContentManager *)self layoutMonitor];
  [v4 invalidate];

  [(WFOnScreenContentManager *)self setLayoutMonitor:0];
  v5 = [(WFOnScreenContentManager *)self visibleApplicationFetchCompletionHandler];

  if (v5)
  {
    v6 = [(WFOnScreenContentManager *)self visibleApplicationFetchCompletionHandler];
    v7 = [(WFOnScreenContentManager *)self visibleApplicationsFromLayout:v8];
    (v6)[2](v6, v7, 0);

    [(WFOnScreenContentManager *)self setVisibleApplicationFetchCompletionHandler:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getVisibleApplicationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WFOnScreenContentManager *)self layoutMonitor];

  v6 = [(WFOnScreenContentManager *)self visibleApplicationFetchCompletionHandler];

  os_unfair_lock_unlock(&self->_lock);
  if (v5 && v6)
  {
    [(WFOnScreenContentManager *)self finishGettingVisibleApplicationsWithLayout:0];
  }

  v7 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__WFOnScreenContentManager_getVisibleApplicationsWithCompletionHandler___block_invoke;
  v13[3] = &unk_2788FFE00;
  v13[4] = self;
  [v7 setTransitionHandler:v13];
  [v7 setNeedsUserInteractivePriority:1];
  v8 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v7];
  os_unfair_lock_lock(&self->_lock);
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v8;
  v10 = v8;

  v11 = [v4 copy];
  visibleApplicationFetchCompletionHandler = self->_visibleApplicationFetchCompletionHandler;
  self->_visibleApplicationFetchCompletionHandler = v11;

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __72__WFOnScreenContentManager_getVisibleApplicationsWithCompletionHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) finishGettingVisibleApplicationsWithLayout:?];
  }

  return result;
}

- (void)getContentForLayoutElement:(id)a3 serviceOptions:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CD3C60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [v10 identifier];
  v13 = [v11 initWithSceneIdentifier:v12 serviceOptions:v9];

  v14 = objc_alloc(MEMORY[0x277CD3A78]);
  v15 = [v10 bundleIdentifier];

  v16 = [v14 initWithBundleIdentifier:v15 intentForwardingAction:v13];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__WFOnScreenContentManager_getContentForLayoutElement_serviceOptions_completionHandler___block_invoke;
  v18[3] = &unk_2788FFDD8;
  v19 = v7;
  v17 = v7;
  [v16 deliverIntentForwardingActionWithResponseHandler:v18];
}

void __88__WFOnScreenContentManager_getContentForLayoutElement_serviceOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = *(a1 + 32);
    v4 = [v6 node];
    v5 = [v6 error];
    (*(v3 + 16))(v3, v4, v5);
  }

  else
  {

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getOnScreenContentWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__WFOnScreenContentManager_getOnScreenContentWithOptions_completion___block_invoke;
  v8[3] = &unk_2788FFDB0;
  v9 = v6;
  v7 = v6;
  [(WFOnScreenContentManager *)self getOnScreenContentWithOptions:a3 completionHandler:v8];
}

void __69__WFOnScreenContentManager_getOnScreenContentWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_alloc(MEMORY[0x277D7A058]);
    v4 = [v7 URL];
    v5 = [v7 file];
    v6 = [v3 initWithURL:v4 file:v5];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getOnScreenContentWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke;
  v12[3] = &unk_2788FFD88;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(WFOnScreenContentManager *)self getNodeForGlobalUserActivityWithCompletionHandler:v12];
}

void __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__6467;
  v19[4] = __Block_byref_object_dispose__6468;
  v7 = v5;
  v20 = v7;
  v8 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke_188;
  v14[3] = &unk_2788FFD60;
  v9 = *(a1 + 56);
  v18 = v19;
  v10 = v7;
  v15 = v10;
  v13 = *(a1 + 32);
  v11 = *(&v13 + 1);
  *&v12 = *(a1 + 48);
  *(&v12 + 1) = v9;
  v16 = v13;
  v17 = v12;
  [v8 getVisibleApplicationsWithCompletionHandler:v14];

  _Block_object_dispose(v19, 8);
}

void __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) applicationBundleIdentifier];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke_2;
    v14[3] = &unk_2788FFD10;
    v18 = *(a1 + 72);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke_3;
    v11[3] = &unk_2788FFD38;
    v10 = *(a1 + 64);
    v7 = v10;
    v13 = v10;
    v12 = *(a1 + 56);
    v8 = v4;
    [v3 if_mapAsynchronously:v14 completionHandler:v11];
  }

  else
  {
    v9 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 64) + 16))();
  }
}

void __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v6 = a4;
  if ([*(a1 + 32) length])
  {
    v7 = [v29 bundleIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      v9 = [*(*(*(a1 + 56) + 8) + 40) chatRegistryContinuityKey];
      v10 = objc_alloc(MEMORY[0x277D7A060]);
      v11 = [*(*(*(a1 + 56) + 8) + 40) contentItem];
      v12 = [*(*(*(a1 + 56) + 8) + 40) file];
      v13 = [*(*(*(a1 + 56) + 8) + 40) applicationBundleIdentifier];
      [v29 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "level")}];
      v23 = [*(*(*(a1 + 56) + 8) + 40) source];
      v24 = [v10 initWithContentItem:v11 file:v12 applicationBundleIdentifier:v13 applicationFrame:v22 applicationLevel:v23 source:0 linkPresentationMetadata:{v15, v17, v19, v21}];
      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      [*(*(*(a1 + 56) + 8) + 40) setChatRegistryContinuityKey:v9];
    }
  }

  v27 = [v29 bundleIdentifier];
  v28 = [v27 isEqualToString:*MEMORY[0x277D7A2A8]];

  if (v28)
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    [*(a1 + 40) getContentForLayoutElement:v29 serviceOptions:*(a1 + 48) completionHandler:v6];
  }
}

void __76__WFOnScreenContentManager_getOnScreenContentWithOptions_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v13 = v3;
  if (v4)
  {
    v5 = v3;
LABEL_5:
    [v4 addChildren:v5];
    goto LABEL_6;
  }

  if ([v3 count] >= 2)
  {
    v6 = objc_alloc_init(MEMORY[0x277D7A060]);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = v13;
    goto LABEL_5;
  }

  if ([v13 count] == 1)
  {
    v10 = [v13 firstObject];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

LABEL_6:
  v9 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
}

- (WFOnScreenContentManager)init
{
  v6.receiver = self;
  v6.super_class = WFOnScreenContentManager;
  v2 = [(WFOnScreenContentManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end