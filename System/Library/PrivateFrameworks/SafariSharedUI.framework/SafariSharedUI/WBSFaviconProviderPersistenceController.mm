@interface WBSFaviconProviderPersistenceController
- (WBSFaviconProviderPersistenceController)initWithPersistenceBaseURL:(id)l databaseName:(id)name preferredIconSize:(CGSize)size isReadOnly:(BOOL)only;
- (id)_imageFromURL:(id)l;
- (int64_t)_faviconStatusFromWBSSQLStoreStatus:(int64_t)status;
- (void)_finishSetUpWithStatus:(int64_t)status;
- (void)_iconForIconUUID:(id)d completionHandler:(id)handler;
- (void)closeWithCompletionHandler:(id)handler;
- (void)firstIconForVariantsOfDomainString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)firstIconForVariantsOfPageURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)flushPrivateDataFromMemoryWithCompletionHandler:(id)handler;
- (void)iconForIconURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)iconForPageURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)iconInfoForIconURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)iconInfoForPageURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)linkPageURLString:(id)string toIconURLString:(id)lString isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)openAndCheckIntegrity:(BOOL)integrity createIfNeeded:(BOOL)needed fallBackToMemoryStoreIfError:(BOOL)error completionHandler:(id)handler;
- (void)pageURLStringsPrefixedWithVariantsOfDomainString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)rejectedResourceInfosForPageURLString:(id)string iconURLString:(id)lString includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)removeAllIconsWithCompletionHandler:(id)handler;
- (void)removeIconFilesNotReferencedInDatabaseWithCompletionHandler:(id)handler;
- (void)removeIconWithPageURLString:(id)string completionHandler:(id)handler;
- (void)removeIconsWithURLStringsNotFoundIn:(id)in completionHandler:(id)handler;
- (void)savePendingChangesBeforeTermination;
- (void)setIconData:(id)data forPageURLString:(id)string iconURLString:(id)lString iconSize:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)setIconIsRejectedResource:(BOOL)resource forPageURLString:(id)string iconURLString:(id)lString isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)sqliteStoreDidFailDatabaseIntegrityCheck:(id)check completionHandler:(id)handler;
- (void)sqliteStoreDidFallBackToInMemoryStore:(id)store;
@end

@implementation WBSFaviconProviderPersistenceController

- (WBSFaviconProviderPersistenceController)initWithPersistenceBaseURL:(id)l databaseName:(id)name preferredIconSize:(CGSize)size isReadOnly:(BOOL)only
{
  height = size.height;
  width = size.width;
  lCopy = l;
  nameCopy = name;
  v33.receiver = self;
  v33.super_class = WBSFaviconProviderPersistenceController;
  v13 = [(WBSFaviconProviderPersistenceController *)&v33 init];
  if (v13)
  {
    if (lCopy && nameCopy)
    {
      v14 = [nameCopy stringByAppendingPathExtension:@"db"];
      v15 = [lCopy URLByAppendingPathComponent:v14 isDirectory:0];
      databaseURL = v13->_databaseURL;
      v13->_databaseURL = v15;

      v17 = [lCopy URLByAppendingPathComponent:nameCopy isDirectory:1];
      diskCacheURL = v13->_diskCacheURL;
      v13->_diskCacheURL = v17;
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXFaviconPersistence();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [WBSFaviconProviderPersistenceController initWithPersistenceBaseURL:lCopy databaseName:nameCopy preferredIconSize:v19 isReadOnly:?];
      }
    }

    v13->_controllerState = 0;
    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 stringWithFormat:@"com.apple.Safari.%@.%p.internalQueue", v23, v13];
    v25 = dispatch_queue_create([v24 UTF8String], v20);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v25;

    v27 = objc_alloc_init(WBSFaviconProviderPrivateCache);
    privateCache = v13->_privateCache;
    v13->_privateCache = v27;

    v13->_preferredIconSize.width = width;
    v13->_preferredIconSize.height = height;
    v13->_isReadOnly = only;
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    inMemoryImageCache = v13->_inMemoryImageCache;
    v13->_inMemoryImageCache = strongToWeakObjectsMapTable;

    v31 = v13;
  }

  return v13;
}

- (void)openAndCheckIntegrity:(BOOL)integrity createIfNeeded:(BOOL)needed fallBackToMemoryStoreIfError:(BOOL)error completionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__WBSFaviconProviderPersistenceController_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_completionHandler___block_invoke;
  block[3] = &unk_1E8284808;
  block[4] = self;
  v14 = handlerCopy;
  integrityCopy = integrity;
  neededCopy = needed;
  errorCopy = error;
  v12 = handlerCopy;
  dispatch_async(internalQueue, block);
}

uint64_t __127__WBSFaviconProviderPersistenceController_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 1;
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 32);
  if (*(v5 + 104) && *(v5 + 96))
  {
    v6 = [[WBSOnDiskDataCache alloc] initWithCacheDirectoryURL:*(*(a1 + 32) + 104)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    [*(*(a1 + 32) + 8) setDataCacheDelegate:?];
    [*(*(a1 + 32) + 8) setIsInMemoryCacheEnabled:0];
    v9 = [(WBSSQLiteStore *)[WBSFaviconProviderDatabaseController alloc] initWithURL:*(*(a1 + 32) + 96)];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    *(v10 + 16) = v9;

    [*(*(a1 + 32) + 16) setDelegate:?];
    v12 = objc_alloc_init(WBSFaviconProviderRecordCache);
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;

    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v17 = *(a1 + 48);
    v18 = *(a1 + 49);
    v19 = *(a1 + 50);
    v20 = *(v15 + 88);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __127__WBSFaviconProviderPersistenceController_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_completionHandler___block_invoke_9;
    v23[3] = &unk_1E82847E0;
    v23[4] = v15;
    return [v16 openAndCheckIntegrity:v17 createIfNeeded:v18 fallBackToMemoryStoreIfError:v19 lockingPolicy:v20 ^ 1 completionHandler:v23];
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXFaviconPersistence();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __127__WBSFaviconProviderPersistenceController_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_completionHandler___block_invoke_cold_1(v22);
    }

    return [*(a1 + 32) _finishSetUpWithStatus:3];
  }
}

uint64_t __127__WBSFaviconProviderPersistenceController_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_completionHandler___block_invoke_9(uint64_t result, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
    if (!a2)
    {
      v5 = *(*(result + 32) + 8);

      return [v5 setUp];
    }
  }

  else
  {
    v3 = *(result + 32);
    v4 = [v3 _faviconStatusFromWBSSQLStoreStatus:a2];

    return [v3 _finishSetUpWithStatus:v4];
  }

  return result;
}

- (void)closeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8284830;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 3;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E8284830;
  v4[4] = v2;
  v5 = v1;
  [v3 closeWithCompletionHandler:v4];
}

void __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke_3;
  v2[3] = &unk_1E8284830;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 8) savePendingChangesBeforeTearDown];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_1E8284830;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

uint64_t __70__WBSFaviconProviderPersistenceController_closeWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  *(*(a1 + 32) + 64) = 0;
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

- (void)savePendingChangesBeforeTermination
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSFaviconProviderPersistenceController_savePendingChangesBeforeTermination__block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  [(WBSOnDiskDataCache *)self->_faviconDiskCache savePendingChangesBeforeTearDown];
  faviconDiskCache = self->_faviconDiskCache;
  self->_faviconDiskCache = 0;
}

void __78__WBSFaviconProviderPersistenceController_savePendingChangesBeforeTermination__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    *(v1 + 64) = 3;
    [*(*(a1 + 32) + 16) savePendingChangesBeforeTermination];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    *(*(a1 + 32) + 64) = 0;
  }
}

- (void)flushPrivateDataFromMemoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__WBSFaviconProviderPersistenceController_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8284830;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

- (void)_finishSetUpWithStatus:(int64_t)status
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__WBSFaviconProviderPersistenceController__finishSetUpWithStatus___block_invoke;
  v4[3] = &unk_1E8284858;
  v4[4] = self;
  v4[5] = status;
  dispatch_async(internalQueue, v4);
}

void __66__WBSFaviconProviderPersistenceController__finishSetUpWithStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;

    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;

    v6 = 0;
    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  *(v2 + 64) = v6;
  (*(*(*(a1 + 32) + 48) + 16))();
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;
}

- (int64_t)_faviconStatusFromWBSSQLStoreStatus:(int64_t)status
{
  if ((status - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (id)_imageFromURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [(NSMapTable *)self->_inMemoryImageCache objectForKey:lCopy];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
      v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v7];

      if (v8)
      {
        v9 = [WBSFaviconProviderUtilities imageWithURL:lCopy closetToPreferredSize:self->_preferredIconSize.width, self->_preferredIconSize.height];
        [(NSMapTable *)self->_inMemoryImageCache setObject:v9 forKey:lCopy];
        v6 = v9;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIconData:(id)data forPageURLString:(id)string iconURLString:(id)lString iconSize:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions isPrivate:(BOOL)private completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  stringCopy = string;
  lStringCopy = lString;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke;
  v26[3] = &unk_1E8284920;
  v29 = dataCopy;
  v30 = handlerCopy;
  v26[4] = self;
  v27 = stringCopy;
  privateCopy = private;
  v28 = lStringCopy;
  v31 = width;
  v32 = height;
  resolutionsCopy = resolutions;
  v22 = dataCopy;
  v23 = lStringCopy;
  v24 = stringCopy;
  v25 = handlerCopy;
  dispatch_async(internalQueue, v26);
}

void __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    v3 = [*(a1 + 48) safari_stringByFormattingForFaviconDatabase];
    v4 = v3;
    v5 = *(a1 + 32);
    if (*(a1 + 88) == 1)
    {
      [*(v5 + 32) setIsRejectedResource:0 forPageURLString:v2 iconURLString:v3];
      [*(*(a1 + 32) + 32) setImageData:*(a1 + 56) forPageURLString:v2 iconURLString:v4 iconSize:*(a1 + 89) hasGeneratedResolutions:{*(a1 + 72), *(a1 + 80)}];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v7 = *(v5 + 16);
      v8 = *(a1 + 89);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_2;
      v9[3] = &unk_1E82848F8;
      v9[4] = v5;
      v10 = v3;
      v11 = *(a1 + 56);
      v14 = *(a1 + 72);
      v13 = *(a1 + 64);
      v12 = v2;
      [v7 linkAndUpdateTimestampForIconWithPageURLString:v12 iconURLString:v10 iconSize:v8 iconHasGeneratedResolutions:v9 completionHandler:{*(a1 + 72), *(a1 + 80)}];
    }
  }

  else
  {
    v6 = *(*(a1 + 64) + 16);

    v6();
  }
}

void __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_3;
  block[3] = &unk_1E82848D0;
  v18 = v6;
  v19 = v8;
  v20 = v5;
  v10 = v7;
  v11 = *(a1 + 48);
  v23 = *(a1 + 72);
  v12 = *(a1 + 64);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = v12;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v21 = v14;
  v22 = v13;
  v15 = v5;
  v16 = v6;
  dispatch_async(v9, block);
}

void __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_3(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 24);
    v28[0] = *(a1 + 32);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v2 removeRecordForIconUUIDs:v3];

    v4 = *(*(a1 + 40) + 8);
    v27 = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [v4 removeEntriesForKeyStrings:v5 completionHandler:0];
  }

  v6 = *(*(a1 + 40) + 24);
  v7 = [*(a1 + 48) dateAdded];
  v8 = *(a1 + 56);
  v9 = [*(a1 + 48) UUIDString];
  v10 = *(a1 + 64);
  v11 = (a1 + 88);
  v12 = v10 == 0;
  if (v10)
  {
    v13 = (a1 + 96);
  }

  else
  {
    v13 = (MEMORY[0x1E695F060] + 8);
  }

  if (v12)
  {
    v11 = MEMORY[0x1E695F060];
  }

  [v6 setDateAdded:v7 forFaviconURLString:v8 iconUUID:v9 iconSize:objc_msgSend(*(a1 + 48) hasGeneratedResolutions:{"hasGeneratedResolutions"), *v11, *v13}];

  v14 = [*(a1 + 64) length];
  v15 = *(*(a1 + 40) + 8);
  if (v14)
  {
    v16 = *(a1 + 64);
    v17 = [*(a1 + 48) UUIDString];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_4;
    v22[3] = &unk_1E82848A8;
    v25 = *(a1 + 80);
    v18 = *(a1 + 72);
    v19 = *(a1 + 40);
    v23 = v18;
    v24 = v19;
    [v15 setEntry:v16 forKeyString:v17 completionHandler:v22];

    v20 = v25;
  }

  else
  {
    v20 = [*(a1 + 48) UUIDString];
    v26 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [v15 removeEntriesForKeyStrings:v21 completionHandler:*(a1 + 80)];
  }
}

void __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXFaviconPersistence();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_4_cold_1(v6);
    }

    v7 = WBS_LOG_CHANNEL_PREFIXFaviconPersistence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_4_cold_2(a1, v7);
    }

    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_16;
    v10[3] = &unk_1E8284880;
    v11 = *(a1 + 48);
    [v9 removePageURLString:v8 completionHandler:v10];
  }
}

- (void)setIconIsRejectedResource:(BOOL)resource forPageURLString:(id)string iconURLString:(id)lString isPrivate:(BOOL)private completionHandler:(id)handler
{
  stringCopy = string;
  lStringCopy = lString;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__WBSFaviconProviderPersistenceController_setIconIsRejectedResource_forPageURLString_iconURLString_isPrivate_completionHandler___block_invoke;
  block[3] = &unk_1E8284948;
  block[4] = self;
  v20 = stringCopy;
  v21 = lStringCopy;
  v22 = handlerCopy;
  privateCopy = private;
  resourceCopy = resource;
  v16 = lStringCopy;
  v17 = stringCopy;
  v18 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __128__WBSFaviconProviderPersistenceController_setIconIsRejectedResource_forPageURLString_iconURLString_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    v3 = [*(a1 + 48) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 64) == 1)
    {
      [*(*(a1 + 32) + 32) setIsRejectedResource:*(a1 + 65) forPageURLString:v2 iconURLString:v3];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v5 = *(*(a1 + 32) + 16);
      if (*(a1 + 65) == 1)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __128__WBSFaviconProviderPersistenceController_setIconIsRejectedResource_forPageURLString_iconURLString_isPrivate_completionHandler___block_invoke_2;
        v9[3] = &unk_1E8283998;
        v10 = *(a1 + 56);
        [v5 markRejectedIconAtPageURLString:v2 iconURLString:v3 completionHandler:v9];
        v6 = v10;
      }

      else
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __128__WBSFaviconProviderPersistenceController_setIconIsRejectedResource_forPageURLString_iconURLString_isPrivate_completionHandler___block_invoke_3;
        v7[3] = &unk_1E8283998;
        v8 = *(a1 + 56);
        [v5 markValidIconAtPageURLString:v2 iconURLString:v3 completionHandler:v7];
        v6 = v8;
      }
    }
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

- (void)rejectedResourceInfosForPageURLString:(id)string iconURLString:(id)lString includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  lStringCopy = lString;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__WBSFaviconProviderPersistenceController_rejectedResourceInfosForPageURLString_iconURLString_includingPrivateData_completionHandler___block_invoke;
  block[3] = &unk_1E8284970;
  block[4] = self;
  v18 = stringCopy;
  v19 = lStringCopy;
  v20 = handlerCopy;
  dataCopy = data;
  v14 = lStringCopy;
  v15 = stringCopy;
  v16 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __134__WBSFaviconProviderPersistenceController_rejectedResourceInfosForPageURLString_iconURLString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v5 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    v2 = [*(a1 + 48) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 64) == 1)
    {
      v3 = [*(*(a1 + 32) + 32) rejectedResourceInfosForPageURLString:v5 iconURLString:v2];
      if ([v3 count])
      {
        (*(*(a1 + 56) + 16))();

LABEL_10:

        return;
      }
    }

    [*(*(a1 + 32) + 16) rejectedResourceIconInfosForPageURLString:v5 iconURLString:v2 completionHandler:*(a1 + 56)];
    goto LABEL_10;
  }

  v4 = *(*(a1 + 56) + 16);

  v4();
}

- (void)linkPageURLString:(id)string toIconURLString:(id)lString isPrivate:(BOOL)private completionHandler:(id)handler
{
  stringCopy = string;
  lStringCopy = lString;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__WBSFaviconProviderPersistenceController_linkPageURLString_toIconURLString_isPrivate_completionHandler___block_invoke;
  block[3] = &unk_1E8284970;
  block[4] = self;
  v18 = stringCopy;
  v19 = lStringCopy;
  v20 = handlerCopy;
  privateCopy = private;
  v14 = lStringCopy;
  v15 = stringCopy;
  v16 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __105__WBSFaviconProviderPersistenceController_linkPageURLString_toIconURLString_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    v3 = [*(a1 + 48) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 56) + 16))(*(a1 + 56), [*(*(a1 + 32) + 32) linkPageURLString:v2 toIconURLString:v3]);
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __105__WBSFaviconProviderPersistenceController_linkPageURLString_toIconURLString_isPrivate_completionHandler___block_invoke_2;
      v7[3] = &unk_1E82849C0;
      v7[4] = v5;
      v8 = *(a1 + 56);
      [v6 linkPageURLString:v2 toExistingIconURLString:v3 completionHandler:v7];
    }
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void __105__WBSFaviconProviderPersistenceController_linkPageURLString_toIconURLString_isPrivate_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__WBSFaviconProviderPersistenceController_linkPageURLString_toIconURLString_isPrivate_completionHandler___block_invoke_3;
  v10[3] = &unk_1E8284998;
  v14 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v9 = v5;
  dispatch_async(v6, v10);
}

uint64_t __105__WBSFaviconProviderPersistenceController_linkPageURLString_toIconURLString_isPrivate_completionHandler___block_invoke_3(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    if (*(a1 + 32))
    {
      v2 = *(*(a1 + 40) + 24);
      v9[0] = *(a1 + 32);
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [v2 removeRecordForIconUUIDs:v3];

      v4 = *(*(a1 + 40) + 8);
      v8 = *(a1 + 32);
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
      [v4 removeEntriesForKeyStrings:v5 completionHandler:0];
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }
}

- (void)removeIconWithPageURLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WBSFaviconProviderPersistenceController_removeIconWithPageURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8284A10;
  v12 = stringCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = stringCopy;
  v10 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __89__WBSFaviconProviderPersistenceController_removeIconWithPageURLString_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    [*(*(a1 + 32) + 32) removeImageDataForPageURLString:v2];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__WBSFaviconProviderPersistenceController_removeIconWithPageURLString_completionHandler___block_invoke_2;
    v6[3] = &unk_1E82849E8;
    v6[4] = v3;
    v7 = *(a1 + 48);
    [v4 removePageURLString:v2 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __89__WBSFaviconProviderPersistenceController_removeIconWithPageURLString_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WBSFaviconProviderPersistenceController_removeIconWithPageURLString_completionHandler___block_invoke_3;
  block[3] = &unk_1E8283058;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __89__WBSFaviconProviderPersistenceController_removeIconWithPageURLString_completionHandler___block_invoke_3(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = *(a1[5] + 24);
    v8[0] = a1[4];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v2 removeRecordForIconUUIDs:v3];

    v4 = *(a1[5] + 8);
    v7 = a1[4];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [v4 removeEntriesForKeyStrings:v5 completionHandler:0];
  }

  return (*(a1[6] + 16))();
}

- (void)removeAllIconsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8284830;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 64) == 2)
  {
    v8 = v1;
    v9 = v2;
    v4 = *(v3 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_1E8284A38;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v4 removeAllImageDataWithCompletionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke_3;
  v4[3] = &unk_1E8284830;
  v4[4] = v2;
  v5 = v1;
  [v3 removeAllPageURLStringsWithCompletionHandler:v4];
}

void __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke_4;
  v4[3] = &unk_1E8284830;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t __79__WBSFaviconProviderPersistenceController_removeAllIconsWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllRecords];
  [*(*(a1 + 32) + 8) reset];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)removeIconsWithURLStringsNotFoundIn:(id)in completionHandler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke;
  block[3] = &unk_1E8284A10;
  v12 = inCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = inCopy;
  v10 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v17 + 1) + 8 * i) safari_stringByFormattingForFaviconDatabase];
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_2;
    v14[3] = &unk_1E8284AD8;
    v14[4] = v9;
    v11 = *(a1 + 48);
    v15 = v2;
    v16 = v11;
    v12 = v2;
    [v10 fetchAllKnownPageURLStringsWithCompletionHandler:v14];
  }

  else
  {
    v13 = *(*(a1 + 48) + 16);

    v13();
  }
}

void __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_3;
  v7[3] = &unk_1E8284AB0;
  v7[4] = v4;
  v10 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_4;
    v9[3] = &unk_1E8284A60;
    v2 = *(a1 + 40);
    v10 = *(a1 + 48);
    v3 = [v2 objectsPassingTest:v9];
    if ([v3 count])
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 16);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_5;
      v7[3] = &unk_1E8284A88;
      v7[4] = v4;
      v8 = *(a1 + 56);
      [v5 removePageURLStrings:v3 completionHandler:v7];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

void __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_6;
  block[3] = &unk_1E8283058;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 24);
    v4 = [v2 allObjects];
    [v3 removeRecordForIconUUIDs:v4];

    v5 = *(*(a1 + 40) + 8);
    v6 = [*(a1 + 32) allObjects];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__WBSFaviconProviderPersistenceController_removeIconsWithURLStringsNotFoundIn_completionHandler___block_invoke_7;
    v8[3] = &unk_1E8283C40;
    v9 = *(a1 + 48);
    [v5 removeEntriesForKeyStrings:v6 completionHandler:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

- (void)removeIconFilesNotReferencedInDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  faviconDatabase = self->_faviconDatabase;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__WBSFaviconProviderPersistenceController_removeIconFilesNotReferencedInDatabaseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8284A88;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSFaviconProviderDatabaseController *)faviconDatabase fetchAllIconUUIDsWithCompletionHandler:v7];
}

- (void)iconForPageURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke;
  v13[3] = &unk_1E8284B50;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  dataCopy = data;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 56) == 1)
    {
      v3 = [*(*(a1 + 32) + 32) imageDataForPageURLString:v2];
      if (v3)
      {
        v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
        if (v4)
        {
          v5 = v4;
          (*(*(a1 + 48) + 16))();

LABEL_11:
          return;
        }
      }
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8284B28;
    v9[4] = v7;
    v10 = *(a1 + 48);
    [v8 iconInfoForPageURLString:v2 completionHandler:v9];

    goto LABEL_11;
  }

  v6 = *(*(a1 + 48) + 16);

  v6();
}

void __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_3;
  block[3] = &unk_1E8284A10;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) UUIDString];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_4;
    v6[3] = &unk_1E8284B00;
    v3 = *(a1 + 32);
    v7 = v2;
    v8 = v3;
    v9 = *(a1 + 48);
    v4 = v2;
    [v3 _iconForIconUUID:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2 || (v2 = *(a1 + 32)) == 0)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) _imageFromURL:a2];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __103__WBSFaviconProviderPersistenceController_iconForPageURLString_includingPrivateData_completionHandler___block_invoke_5;
    v6[3] = &unk_1E8283C40;
    v7 = *(a1 + 48);
    [v3 removeAllDataForIconUUID:v2 completionHandler:v6];
  }
}

- (void)iconForIconURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke;
  v13[3] = &unk_1E8284B50;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  dataCopy = data;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 56) == 1)
    {
      v3 = [*(*(a1 + 32) + 32) imageDataForIconURLString:v2];
      if (v3)
      {
        v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
        if (v4)
        {
          v5 = v4;
          (*(*(a1 + 48) + 16))();

LABEL_11:
          return;
        }
      }
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8284B28;
    v9[4] = v7;
    v10 = *(a1 + 48);
    [v8 iconInfoForIconURLString:v2 completionHandler:v9];

    goto LABEL_11;
  }

  v6 = *(*(a1 + 48) + 16);

  v6();
}

void __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_3;
  block[3] = &unk_1E8284A10;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) UUIDString];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_4;
    v6[3] = &unk_1E8284B00;
    v3 = *(a1 + 32);
    v7 = v2;
    v8 = v3;
    v9 = *(a1 + 48);
    v4 = v2;
    [v3 _iconForIconUUID:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2 || (v2 = *(a1 + 32)) == 0)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) _imageFromURL:a2];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __103__WBSFaviconProviderPersistenceController_iconForIconURLString_includingPrivateData_completionHandler___block_invoke_5;
    v6[3] = &unk_1E8283C40;
    v7 = *(a1 + 48);
    [v3 removeAllDataForIconUUID:v2 completionHandler:v6];
  }
}

- (void)_iconForIconUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (d)
  {
    faviconDiskCache = self->_faviconDiskCache;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__WBSFaviconProviderPersistenceController__iconForIconUUID_completionHandler___block_invoke;
    v9[3] = &unk_1E8284BA0;
    v9[4] = self;
    v10 = handlerCopy;
    [(WBSOnDiskDataCache *)faviconDiskCache getEntryURLForKeyString:d completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __78__WBSFaviconProviderPersistenceController__iconForIconUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSFaviconProviderPersistenceController__iconForIconUUID_completionHandler___block_invoke_2;
  v7[3] = &unk_1E8284B78;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)iconInfoForPageURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__WBSFaviconProviderPersistenceController_iconInfoForPageURLString_includingPrivateData_completionHandler___block_invoke;
  v13[3] = &unk_1E8284B50;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  dataCopy = data;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __107__WBSFaviconProviderPersistenceController_iconInfoForPageURLString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 56) == 1 && ([*(*(a1 + 32) + 32) imageInfoForPageURLString:v2], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v3;
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __107__WBSFaviconProviderPersistenceController_iconInfoForPageURLString_includingPrivateData_completionHandler___block_invoke_2;
      v8[3] = &unk_1E8284B28;
      v8[4] = v6;
      v9 = *(a1 + 48);
      [v7 iconInfoForPageURLString:v2 completionHandler:v8];
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __107__WBSFaviconProviderPersistenceController_iconInfoForPageURLString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__WBSFaviconProviderPersistenceController_iconInfoForPageURLString_includingPrivateData_completionHandler___block_invoke_3;
  block[3] = &unk_1E8284A10;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __107__WBSFaviconProviderPersistenceController_iconInfoForPageURLString_includingPrivateData_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v9 = [*(a1 + 40) UUIDString];
    if (v9)
    {
      v2 = *(*(a1 + 32) + 24);
      v3 = [*(a1 + 40) dateAdded];
      v4 = [*(a1 + 40) iconURLString];
      v5 = [v4 safari_stringByFormattingForFaviconDatabase];
      [*(a1 + 40) size];
      [v2 setDateAdded:v3 forFaviconURLString:v5 iconUUID:v9 iconSize:objc_msgSend(*(a1 + 40) hasGeneratedResolutions:{"hasGeneratedResolutions"), v6, v7}];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

- (void)iconInfoForIconURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__WBSFaviconProviderPersistenceController_iconInfoForIconURLString_includingPrivateData_completionHandler___block_invoke;
  v13[3] = &unk_1E8284B50;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  dataCopy = data;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __107__WBSFaviconProviderPersistenceController_iconInfoForIconURLString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_stringByFormattingForFaviconDatabase];
    if (*(a1 + 56) == 1 && ([*(*(a1 + 32) + 32) imageInfoForIconURLString:v2], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(*(*(a1 + 32) + 24), "iconInfoForURLString:", v2), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v3;
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __107__WBSFaviconProviderPersistenceController_iconInfoForIconURLString_includingPrivateData_completionHandler___block_invoke_2;
      v8[3] = &unk_1E8284BC8;
      v8[4] = v6;
      v10 = *(a1 + 48);
      v9 = v2;
      [v7 iconInfoForIconURLString:v9 completionHandler:v8];
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __107__WBSFaviconProviderPersistenceController_iconInfoForIconURLString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__WBSFaviconProviderPersistenceController_iconInfoForIconURLString_includingPrivateData_completionHandler___block_invoke_3;
  v7[3] = &unk_1E8284AB0;
  v7[4] = v4;
  v10 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __107__WBSFaviconProviderPersistenceController_iconInfoForIconURLString_includingPrivateData_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v8 = [*(a1 + 40) UUIDString];
    if (v8)
    {
      v2 = *(*(a1 + 32) + 24);
      v3 = [*(a1 + 40) dateAdded];
      v4 = *(a1 + 48);
      [*(a1 + 40) size];
      [v2 setDateAdded:v3 forFaviconURLString:v4 iconUUID:v8 iconSize:objc_msgSend(*(a1 + 40) hasGeneratedResolutions:{"hasGeneratedResolutions"), v5, v6}];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

- (void)firstIconForVariantsOfPageURLString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke;
  v13[3] = &unk_1E8284B50;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  dataCopy = data;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2)
  {
    v2 = [*(a1 + 40) safari_urlStringVariantsForFaviconDatabase];
    if (*(a1 + 56) == 1)
    {
      v3 = *(*(a1 + 32) + 32);
      v13 = 0;
      v4 = [v3 firstImageDataMatchingPageURLStringIn:v2 matchedPageURLString:&v13];
      v5 = v13;
      if (v4)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v4];
        if (v6)
        {
          v7 = v6;
          (*(*(a1 + 48) + 16))();

LABEL_11:
          return;
        }
      }
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke_2;
    v11[3] = &unk_1E8284C18;
    v11[4] = v9;
    v12 = *(a1 + 48);
    [v10 firstIconUUIDMatchingPageURLStringIn:v2 completionHandler:v11];

    goto LABEL_11;
  }

  v8 = *(*(a1 + 48) + 16);

  v8();
}

void __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke_3;
  v12[3] = &unk_1E8284AB0;
  v12[4] = v8;
  v14 = v5;
  v15 = v7;
  v13 = v6;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 2)
  {
    v3 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke_4;
    v7[3] = &unk_1E8284BF0;
    v10 = *(a1 + 56);
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v8 = v4;
    v9 = v5;
    [v2 _iconForIconUUID:v3 completionHandler:v7];
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

void __118__WBSFaviconProviderPersistenceController_firstIconForVariantsOfPageURLString_includingPrivateData_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) _imageFromURL:a2];
  (*(v3 + 16))(v3, v2, v4);
}

- (void)firstIconForVariantsOfDomainString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke;
  block[3] = &unk_1E8284A10;
  v13 = stringCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = stringCopy;
  v11 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2 && [*(a1 + 40) length])
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = [*(a1 + 40) safari_domainFaviconURLStringVariantsForFaviconDatabase];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_2;
    v5[3] = &unk_1E8284B28;
    v5[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    [v2 firstIconInfoMatchingIconURLStringIn:v3 completionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_3;
  block[3] = &unk_1E8284A10;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 2)
  {
    v3 = [*(a1 + 40) UUIDString];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_4;
    v6[3] = &unk_1E8284C40;
    v4 = *(a1 + 48);
    v6[4] = *(a1 + 32);
    v7 = v4;
    [v2 _iconForIconUUID:v3 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __117__WBSFaviconProviderPersistenceController_firstIconForVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _imageFromURL:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)pageURLStringsPrefixedWithVariantsOfDomainString:(id)string includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __131__WBSFaviconProviderPersistenceController_pageURLStringsPrefixedWithVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke;
  v13[3] = &unk_1E8284B50;
  v14 = stringCopy;
  v15 = handlerCopy;
  v13[4] = self;
  dataCopy = data;
  v11 = stringCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __131__WBSFaviconProviderPersistenceController_pageURLStringsPrefixedWithVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 2 && [*(a1 + 40) length])
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = [*(a1 + 40) safari_domainURLStringPrefixVariantsForFaviconDatabase];
    if (*(a1 + 56) == 1)
    {
      v4 = [*(*(a1 + 32) + 32) pageURLStringsWithPrefixesIn:v3];
      [v2 addObjectsFromArray:v4];
    }

    v5 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __131__WBSFaviconProviderPersistenceController_pageURLStringsPrefixedWithVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_2;
    v8[3] = &unk_1E8284A38;
    v9 = v2;
    v10 = *(a1 + 48);
    v6 = v2;
    [v5 fetchPageURLStringsWithPrefixesIn:v3 completionHandler:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __131__WBSFaviconProviderPersistenceController_pageURLStringsPrefixedWithVariantsOfDomainString_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObjectsFromArray:a2];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) allObjects];
  (*(v3 + 16))(v3, v4);
}

- (void)sqliteStoreDidFailDatabaseIntegrityCheck:(id)check completionHandler:(id)handler
{
  handlerCopy = handler;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  databaseURL = self->_databaseURL;
  p_databaseURL = &self->_databaseURL;
  path = [(NSURL *)databaseURL path];
  v13 = 0;
  v10 = [defaultManager removeItemAtPath:path error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXFaviconPersistence();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderPersistenceController sqliteStoreDidFailDatabaseIntegrityCheck:v12 completionHandler:?];
    }
  }

  handlerCopy[2](handlerCopy);
}

- (void)sqliteStoreDidFallBackToInMemoryStore:(id)store
{
  v4 = WBS_LOG_CHANNEL_PREFIXFaviconPersistence();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(WBSFaviconProviderPersistenceController *)self sqliteStoreDidFallBackToInMemoryStore:v4];
  }
}

- (void)initWithPersistenceBaseURL:(os_log_t)log databaseName:preferredIconSize:isReadOnly:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Unexpected nil args for base url (%p) or name (%p)", &v3, 0x16u);
}

void __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_4_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v4, v5, "Failed to write icon data, error: %{public}@", v6, v7, v8, v9, 2u);
}

void __147__WBSFaviconProviderPersistenceController_setIconData_forPageURLString_iconURLString_iconSize_hasGeneratedResolutions_isPrivate_completionHandler___block_invoke_4_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  v6 = 138478083;
  v7 = v3;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_1C6968000, v2, OS_LOG_TYPE_DEBUG, "Failed to write icon data for page url %{private}@, error: %{public}@", &v6, 0x16u);
}

- (void)sqliteStoreDidFailDatabaseIntegrityCheck:(void *)a1 completionHandler:(void *)a2 .cold.1(void **a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to remove corrupted database at %{public}@, error: %{public}@", &v5, 0x16u);
}

- (void)sqliteStoreDidFallBackToInMemoryStore:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_3() path];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Using in-memory representation for database %{public}@", v7, v8, v9, v10, 2u);
}

@end