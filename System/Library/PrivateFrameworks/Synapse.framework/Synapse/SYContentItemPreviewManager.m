@interface SYContentItemPreviewManager
+ (void)_loadPreviewForAppContentItem:(id)a3 completion:(id)a4;
+ (void)_loadPreviewUsingLPForItem:(id)a3 fullDetail:(BOOL)a4 completion:(id)a5;
@end

@implementation SYContentItemPreviewManager

void __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2;
  v7[3] = &unk_27856B300;
  v11 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(a1 + 56);
    [*(a1 + 40) setLinkPreviewMetadata:? loadLevel:?];
    v2 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2_cold_1((a1 + 40), (a1 + 56), v2);
    }
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SYContentItemLinkPreviewDidFinishLoading" object:*(a1 + 40)];
}

void __81__SYContentItemPreviewManager__loadPreviewMetadataForItem_fullDetail_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _loadPreviewForAppContentItem:*(a1 + 32) completion:*(a1 + 40)];
  }
}

+ (void)_loadPreviewUsingLPForItem:(id)a3 fullDetail:(BOOL)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [v9 itemURL];
  if (!v11)
  {
    [SYContentItemPreviewManager _loadPreviewUsingLPForItem:a2 fullDetail:a1 completion:?];
  }

  if (SYIsDeviceLocked())
  {
    v12 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Device is locked, skipping LP preview for item: %@", buf, 0xCu);
    }

    v10[2](v10, 0);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke;
    v14[3] = &unk_27856B300;
    v18 = a4;
    v15 = v11;
    v16 = v9;
    v17 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getLPMetadataProviderClass_softClass;
  v13 = getLPMetadataProviderClass_softClass;
  if (!getLPMetadataProviderClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getLPMetadataProviderClass_block_invoke;
    v9[3] = &unk_27856B3C8;
    v9[4] = &v10;
    __getLPMetadataProviderClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = objc_alloc_init(v2);
  [v4 _setShouldDownloadMediaSubresources:*(a1 + 56)];
  [v4 _setShouldDownloadImageSubresources:*(a1 + 56)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2;
  v6[3] = &unk_27856B378;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v4 startFetchingMetadataForURL:v5 completionHandler:v6];
}

void __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) displayTitle];

    if (v7)
    {
      v8 = [*(a1 + 32) displayTitle];
      [v5 setTitle:v8];
    }

    v9 = [v5 dataRepresentation];
  }

  else
  {
    v10 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2_cold_1(a1);
    }

    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_loadPreviewForAppContentItem:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (SYIsDeviceLocked())
  {
    v7 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Device is locked, skipping icon preview for item: %@", buf, 0xCu);
    }

    v6[2](v6, 0);
  }

  else
  {
    v8 = [v5 sourceIdentifier];
    v9 = v8;
    if (v8 && ([v8 isEqualToString:@"com.apple.synapse.itemSourceID.web"] & 1) == 0)
    {
      v11 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v9];
      if (v11)
      {
        v12 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B1F8]];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke;
        v15[3] = &unk_27856B3A0;
        v16 = v5;
        v17 = v9;
        v18 = v6;
        [v11 getImageForImageDescriptor:v12 completion:v15];
      }

      else
      {
        v13 = os_log_create("com.apple.synapse", "ContentItemManager");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SYContentItemPreviewManager _loadPreviewForAppContentItem:v5 completion:?];
        }

        v6[2](v6, 0);
      }
    }

    else
    {
      v10 = os_log_create("com.apple.synapse", "ContentItemManager");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SYContentItemPreviewManager _loadPreviewForAppContentItem:v5 completion:?];
      }

      v6[2](v6, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 size], v5 > 0.0) && (objc_msgSend(v4, "size"), v6 > 0.0))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v7 = getLPLinkMetadataClass_softClass;
    v28 = getLPLinkMetadataClass_softClass;
    if (!getLPLinkMetadataClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getLPLinkMetadataClass_block_invoke;
      v23 = &unk_27856B3C8;
      v24 = &v25;
      __getLPLinkMetadataClass_block_invoke(&v20);
      v7 = v26[3];
    }

    v8 = v7;
    _Block_object_dispose(&v25, 8);
    v9 = objc_alloc_init(v7);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v10 = getUIImageClass_softClass;
    v28 = getUIImageClass_softClass;
    if (!getUIImageClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getUIImageClass_block_invoke;
      v23 = &unk_27856B3C8;
      v24 = &v25;
      __getUIImageClass_block_invoke(&v20);
      v10 = v26[3];
    }

    v11 = v10;
    _Block_object_dispose(&v25, 8);
    v12 = [v10 imageWithCGImage:{objc_msgSend(v4, "CGImage")}];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v13 = getLPImageClass_softClass;
    v28 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getLPImageClass_block_invoke;
      v23 = &unk_27856B3C8;
      v24 = &v25;
      __getLPImageClass_block_invoke(&v20);
      v13 = v26[3];
    }

    v14 = v13;
    _Block_object_dispose(&v25, 8);
    v15 = [[v13 alloc] initWithPlatformImage:v12];
    [v9 setIcon:v15];

    v16 = [*(a1 + 32) displayTitle];
    [v9 setTitle:v16];

    v17 = [*(a1 + 32) itemURL];
    [v9 setOriginalURL:v17];

    v18 = [*(a1 + 32) itemURL];
    [v9 setURL:v18];

    v19 = [v9 dataRepresentation];
  }

  else
  {
    v12 = os_log_create("com.apple.synapse", "ContentItemManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke_cold_1(a1, v12);
    }

    v19 = 0;
    v9 = v12;
  }

  (*(*(a1 + 48) + 16))();
}

void __97__SYContentItemPreviewManager_loadPreviewDataForItems_fullDetail_didFinishLoadingPreviewHandler___block_invoke_2_cold_1(uint64_t *a1, unsigned __int8 *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_225901000, log, OS_LOG_TYPE_DEBUG, "Finished loading preview for item: %@, fullDetail: %d", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_loadPreviewUsingLPForItem:(uint64_t)a1 fullDetail:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYContentItemPreviewManager.m" lineNumber:93 description:@"itemURL cannot be nil"];
}

void __80__SYContentItemPreviewManager__loadPreviewUsingLPForItem_fullDetail_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemIdentifier];
  v3 = [v2 UUIDString];
  v10 = [*(a1 + 32) sourceIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_loadPreviewForAppContentItem:(void *)a1 completion:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemIdentifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_loadPreviewForAppContentItem:(void *)a1 completion:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemIdentifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__SYContentItemPreviewManager__loadPreviewForAppContentItem_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) itemIdentifier];
  v5 = [v4 UUIDString];
  v6 = *(a1 + 40);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Error requesting icon image for item %@ (%@)", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end