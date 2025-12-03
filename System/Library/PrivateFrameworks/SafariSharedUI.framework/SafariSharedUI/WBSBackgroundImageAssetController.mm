@interface WBSBackgroundImageAssetController
+ (id)mobileAssetBackgroundImageNamesOnDisk;
- (BOOL)_saveAssetAtURL:(id)l toURL:(id)rL;
- (NSArray)fileNames;
- (WBSBackgroundImageAssetController)init;
- (WBSBackgroundImageAssetController)initWithMobileAssetController:(id)controller;
- (WBSBackgroundImageAssetControllerDelegate)delegate;
- (int64_t)downloadStateForFileName:(id)name;
- (void)_removePlaceholderMobileAssetIfNeeded;
- (void)_sendBackgroundImageThumbnailAssetsToDelegateIfPossible;
- (void)_sendBackgroundImageThumbnailAssetsToDelegateIfPossible:(id)possible;
- (void)downloadMobileAssetBackgroundImage:(id)image completionHandler:(id)handler;
- (void)mobileAssetController:(id)controller didBecomeAvailable:(id)available withAttributes:(id)attributes;
- (void)mobileAssetController:(id)controller didFailCatalogDownload:(id)download;
- (void)mobileAssetController:(id)controller didFailDownload:(id)download;
- (void)mobileAssetController:(id)controller didFailRetrieve:(id)retrieve;
- (void)setDelegate:(id)delegate;
@end

@implementation WBSBackgroundImageAssetController

- (WBSBackgroundImageAssetController)init
{
  v3 = [WBSMobileAssetController alloc];
  mobileAssetType = [objc_opt_class() mobileAssetType];
  v5 = [(WBSMobileAssetController *)v3 initWithMobileAssetType:mobileAssetType updateInterval:604800.0 minimumDelay:180.0];

  if (v5)
  {
    self = [(WBSBackgroundImageAssetController *)self initWithMobileAssetController:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_removePlaceholderMobileAssetIfNeeded
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to remove Safari's placeholder mobile asset with error: %{public}@", v5);
}

+ (id)mobileAssetBackgroundImageNamesOnDisk
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  safari_startPageBackgroundImageMobileAssetFolderURL = [defaultManager safari_startPageBackgroundImageMobileAssetFolderURL];
  path = [safari_startPageBackgroundImageMobileAssetFolderURL path];
  v6 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v2 addObject:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v2 copy];

  return v10;
}

- (WBSBackgroundImageAssetController)initWithMobileAssetController:(id)controller
{
  v55[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v51.receiver = self;
  v51.super_class = WBSBackgroundImageAssetController;
  v5 = [(WBSBackgroundImageAssetController *)&v51 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.SafariSharedUI.WBSBackgroundImageAssetController.%@.%p._queue", objc_opt_class(), v5];
    v7 = v6;
    uTF8String = [v6 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v5->_queue;
    v5->_queue = v10;

    objc_storeStrong(&v5->_assetController, controller);
    [(WBSMobileAssetControllerProtocol *)v5->_assetController setDelegate:v5];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    assetURLToAttributes = v5->_assetURLToAttributes;
    v5->_assetURLToAttributes = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    imageNamesToDownloadStates = v5->_imageNamesToDownloadStates;
    v5->_imageNamesToDownloadStates = dictionary2;

    array = [MEMORY[0x1E695DF70] array];
    fileNames = v5->_fileNames;
    v5->_fileNames = array;

    if ([MEMORY[0x1E69C8880] isInternalInstall])
    {
      [(WBSBackgroundImageAssetController *)v5 _removePlaceholderMobileAssetIfNeeded];
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_startPageBackgroundImageThumbnailMobileAssetFolderURL = [defaultManager safari_startPageBackgroundImageThumbnailMobileAssetFolderURL];
    v20 = *MEMORY[0x1E695DAA0];
    v55[0] = *MEMORY[0x1E695DAA0];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    v22 = [defaultManager enumeratorAtURL:safari_startPageBackgroundImageThumbnailMobileAssetFolderURL includingPropertiesForKeys:v21 options:5 errorHandler:0];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v24)
    {
      v25 = *v48;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v47 + 1) + 8 * i);
          if ([defaultManager safari_imageExistsAtFileURL:v27])
          {
            v28 = v5->_fileNames;
            lastPathComponent = [v27 lastPathComponent];
            [(NSMutableArray *)v28 addObject:lastPathComponent];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v24);
    }

    safari_startPageBackgroundImageMobileAssetFolderURL = [defaultManager safari_startPageBackgroundImageMobileAssetFolderURL];
    v53 = v20;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v32 = [defaultManager enumeratorAtURL:safari_startPageBackgroundImageMobileAssetFolderURL includingPropertiesForKeys:v31 options:5 errorHandler:0];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v34)
    {
      v35 = *v44;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v43 + 1) + 8 * j);
          if ([defaultManager safari_imageExistsAtFileURL:v37])
          {
            v38 = v5->_imageNamesToDownloadStates;
            lastPathComponent2 = [v37 lastPathComponent];
            [(NSMutableDictionary *)v38 setObject:&unk_1F466C8E8 forKeyedSubscript:lastPathComponent2];
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v34);
    }

    v40 = v5;
  }

  return v5;
}

- (void)downloadMobileAssetBackgroundImage:(id)image completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  handlerCopy = handler;
  if ([imageCopy length])
  {
    [(NSMutableDictionary *)self->_imageNamesToDownloadStates setObject:&unk_1F466C900 forKeyedSubscript:imageCopy];
    assetController = self->_assetController;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__WBSBackgroundImageAssetController_downloadMobileAssetBackgroundImage_completionHandler___block_invoke;
    v13[3] = &unk_1E8282E50;
    v14 = imageCopy;
    selfCopy = self;
    v16 = handlerCopy;
    [(WBSMobileAssetControllerProtocol *)assetController downloadMobileAssetBackgroundImage:v14 completionHandler:v13];

    v9 = v14;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A588];
    v9 = _WBSLocalizedString();
    v18[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v10 errorWithDomain:@"com.apple.SafariSharedUI.BackgroundImageAsset.ErrorDomain" code:-1 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __90__WBSBackgroundImageAssetController_downloadMobileAssetBackgroundImage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 safari_startPageBackgroundImageMobileAssetFolderURL];
  v9 = [v8 URLByAppendingPathComponent:*(a1 + 32)];

  v10 = [v5 getLocalFileUrl];
  v11 = [v10 URLByAppendingPathComponent:*(a1 + 32)];

  v12 = [*(a1 + 40) _saveAssetAtURL:v11 toURL:v9];
  v13 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 48);
  if (v12)
  {
    [v14 setObject:&unk_1F466C8E8 forKeyedSubscript:v13];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = @"FileName";
    v20[0] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v15 postNotificationName:@"WBSBackgroundImageMobileAssetDidInstallBackgroundImage" object:v17 userInfo:v18];
  }

  else
  {
    [v14 setObject:&unk_1F466C918 forKeyedSubscript:v13];
  }

  (*(*(a1 + 48) + 16))();
}

- (int64_t)downloadStateForFileName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_imageNamesToDownloadStates objectForKeyedSubscript:name];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSArray)fileNames
{
  v2 = [(NSMutableArray *)self->_fileNames sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  reverseObjectEnumerator = [v2 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v5 = [allObjects copy];

  return v5;
}

- (WBSBackgroundImageAssetControllerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__WBSBackgroundImageAssetController_delegate__block_invoke;
  v5[3] = &unk_1E8282E78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__WBSBackgroundImageAssetController_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WBSBackgroundImageAssetController_setDelegate___block_invoke;
  v7[3] = &unk_1E8282EA0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

void __49__WBSBackgroundImageAssetController_setDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
    if (*(a1 + 40))
    {
      v4 = *(a1 + 32);

      [v4 _sendBackgroundImageThumbnailAssetsToDelegateIfPossible:?];
    }
  }
}

- (void)_sendBackgroundImageThumbnailAssetsToDelegateIfPossible:(id)possible
{
  if ([(NSMutableDictionary *)self->_assetURLToAttributes count])
  {
    assetURLToAttributes = self->_assetURLToAttributes;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __93__WBSBackgroundImageAssetController__sendBackgroundImageThumbnailAssetsToDelegateIfPossible___block_invoke;
    v5[3] = &unk_1E8282EC8;
    v5[4] = self;
    [(NSMutableDictionary *)assetURLToAttributes enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __93__WBSBackgroundImageAssetController__sendBackgroundImageThumbnailAssetsToDelegateIfPossible___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"FileName"];
  if ([v7 length])
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 safari_startPageBackgroundImageThumbnailMobileAssetFolderURL];
    v10 = [v9 URLByAppendingPathComponent:v7];

    v11 = [v5 URLByAppendingPathComponent:v7];
    if ([*(a1 + 32) _saveAssetAtURL:v11 toURL:v10])
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __93__WBSBackgroundImageAssetController__sendBackgroundImageThumbnailAssetsToDelegateIfPossible___block_invoke_2;
      v17 = &unk_1E8282EA0;
      v18 = *(a1 + 32);
      v12 = v10;
      v19 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], &v14);
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
      [WeakRetained backgroundImageAssetController:*(a1 + 32) didInstallBackgroundImageThumbnailAtURL:{v12, v14, v15, v16, v17, v18}];
    }
  }
}

void __93__WBSBackgroundImageAssetController__sendBackgroundImageThumbnailAssetsToDelegateIfPossible___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = [*(a1 + 40) lastPathComponent];
  [v1 addObject:?];
}

- (void)_sendBackgroundImageThumbnailAssetsToDelegateIfPossible
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [(WBSBackgroundImageAssetController *)self _sendBackgroundImageThumbnailAssetsToDelegateIfPossible:WeakRetained];
  }
}

- (BOOL)_saveAssetAtURL:(id)l toURL:(id)rL
{
  v13[6] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  MEMORY[0x1CCA512D0](v13, @"com.apple.Safari.SafariSharedUI.WBSBackgroundImageAssetController");
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v8 = [defaultManager safari_replaceItemAtURL:rLCopy withItemFromURL:lCopy error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXMobileAsset();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v9 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSBackgroundImageAssetController _saveAssetAtURL:toURL:];
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);
  return v8;
}

- (void)mobileAssetController:(id)controller didBecomeAvailable:(id)available withAttributes:(id)attributes
{
  availableCopy = available;
  attributesCopy = attributes;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__WBSBackgroundImageAssetController_mobileAssetController_didBecomeAvailable_withAttributes___block_invoke;
  block[3] = &unk_1E8282EF0;
  block[4] = self;
  v13 = availableCopy;
  v14 = attributesCopy;
  v10 = attributesCopy;
  v11 = availableCopy;
  dispatch_async(queue, block);
}

uint64_t __93__WBSBackgroundImageAssetController_mobileAssetController_didBecomeAvailable_withAttributes___block_invoke(void *a1)
{
  [*(a1[4] + 32) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = a1[4];

  return [v2 _sendBackgroundImageThumbnailAssetsToDelegateIfPossible];
}

- (void)mobileAssetController:(id)controller didFailCatalogDownload:(id)download
{
  downloadCopy = download;
  v6 = WBS_LOG_CHANNEL_PREFIXMobileAsset();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [downloadCopy safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [WBSBackgroundImageAssetController mobileAssetController:didFailCatalogDownload:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained backgroundImageAssetController:self didFailCatalogDownload:downloadCopy];
}

- (void)mobileAssetController:(id)controller didFailDownload:(id)download
{
  downloadCopy = download;
  v6 = WBS_LOG_CHANNEL_PREFIXMobileAsset();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [downloadCopy safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [WBSBackgroundImageAssetController mobileAssetController:didFailDownload:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained backgroundImageAssetController:self didFailDownload:downloadCopy];
}

- (void)mobileAssetController:(id)controller didFailRetrieve:(id)retrieve
{
  retrieveCopy = retrieve;
  v6 = WBS_LOG_CHANNEL_PREFIXMobileAsset();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [retrieveCopy safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [WBSBackgroundImageAssetController mobileAssetController:didFailRetrieve:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained backgroundImageAssetController:self didFailLoad:retrieveCopy];
}

- (void)_saveAssetAtURL:toURL:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "[StartPageBackground] FileManager could not save mobile asset. %{public}@", v5);
}

- (void)mobileAssetController:didFailCatalogDownload:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to download Safari's background image asset catalog: %{public}@", v5);
}

- (void)mobileAssetController:didFailDownload:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to download mobile asset: %{public}@", v5);
}

- (void)mobileAssetController:didFailRetrieve:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to load mobile asset: %{public}@", v5);
}

@end