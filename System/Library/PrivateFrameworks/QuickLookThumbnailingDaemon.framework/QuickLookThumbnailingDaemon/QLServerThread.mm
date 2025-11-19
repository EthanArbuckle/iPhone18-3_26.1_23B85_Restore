@interface QLServerThread
+ (id)sharedInstance;
+ (void)updateThumbnailRequestThumbnailVersionWithThirdPartyGeneratorInformationIfNeeded:(id)a3;
- (BOOL)_canUseAdditionToProvideThumbnail:(id)a3 forThumbnailRequest:(id)a4 taggedLogicalURL:(id)a5;
- (BOOL)_saveResultForThumbnailRequest:(id)a3 withImage:(id)a4 error:(id *)a5;
- (BOOL)downloadThumbnails:(id)a3 forProvider:(id)a4;
- (CGImage)_createUndecoratedAppIconForData:(id)a3 ofSize:(CGSize)a4 scale:(double)a5;
- (QLServerThread)init;
- (QLServerThread)initWithCacheSize:(int64_t)a3 location:(id)a4;
- (id)allKnownDataSeparatedVolumes;
- (id)cacheThreadForFileIdentifier:(id)a3 atURL:(id)a4;
- (id)cacheThreadForProviderDomainID:(id)a3;
- (id)cacheThreadForRequest:(id)a3;
- (id)cacheThreadForVolume:(id)a3;
- (id)failedDownloadErrorForRequest:(id)a3 underlyingError:(id)a4;
- (id)genStoreThumbnailForRequest:(id)a3 error:(id *)a4;
- (id)makeCacheThreadForPersonaString:(id)a3 containerURL:(id *)a4;
- (id)processedPNGAppIconDataForData:(id)a3 ofType:(id)a4 size:(CGSize)a5 scale:(double)a6;
- (id)uncachedCacheThreadForFileAtURL:(id)a3;
- (id)uncachedCacheThreadForProviderDomainID:(id)a3;
- (void)_addAllThumbnailsSizesToCacheForRequest:(id)a3 withImageSource:(CGImageSource *)a4 imageSize:(CGSize)a5 alreadyCachedSize:(CGSize)a6 completionHandler:(id)a7;
- (void)_addThumbnailRequestBatchToQueue:(id)a3 completionHandler:(id)a4;
- (void)_cacheThumbnailData:(id)a3 forRequest:(id)a4 imageSource:(CGImageSource *)a5 actualSize:(CGSize)a6 resultSize:(CGSize)a7 fromGenStore:(BOOL)a8 completionHandler:(id)a9;
- (void)_callCompletionHandler:(id)a3 ofThumbnailRequestBatch:(id)a4;
- (void)_completeHandledThumbnailRequest:(id)a3;
- (void)_downloadThumbnailForRequest:(id)a3 completionHandler:(id)a4;
- (void)_installRequestsFinishedWatchdog;
- (void)_removeRequestFromPendingRequests:(id)a3;
- (void)_saveLargeThumbnailToGenstoreWithData:(id)a3 url:(id)a4;
- (void)_updateInformationForProviderAndCallPendingBlocksForProviderDomainID:(id)a3 withConnection:(id)a4 inboxURL:(id)a5 thumbnailsURL:(id)a6;
- (void)addImageData:(id)a3 toCacheForRequest:(id)a4 withBitmapFormat:(id)a5 contentRect:(CGRect)a6 flavor:(int)a7 metadata:(id)a8;
- (void)cancelThumbnailRequests:(id)a3;
- (void)completeThumbnailRequest:(id)a3 thumbnailData:(id)a4 updatedMetadata:(id)a5;
- (void)didNotFindLowQualityEntryInCachedForThumbnailRequest:(id)a3 error:(id)a4;
- (void)downloadThumbnailForRequest:(id)a3 completionHandler:(id)a4;
- (void)drainDownloadsQueueIfNeeded;
- (void)failedToCompleteThumbnailRequest:(id)a3 error:(id)a4;
- (void)findThumbnailInAddition:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)findUncachedThumbnailInExternalThumbnailCacheForRequest:(id)a3 item:(id)a4 URL:(id)a5 completionHandler:(id)a6;
- (void)findUncachedThumbnailInGenStoreForRequest:(id)a3 completionHandler:(id)a4;
- (void)findUncachedThumbnailInGenStoreOrDownload:(id)a3 completionHandler:(id)a4;
- (void)forEachCacheThread:(id)a3;
- (void)generateSuccessiveThumbnailRepresentationsForGeneratorRequests:(id)a3 completionHandler:(id)a4;
- (void)generateSuccessiveThumbnailRepresentationsForRequests:(id)a3 generationHandler:(id)a4 completionHandler:(id)a5;
- (void)generateThumbnailForThumbnailRequest:(id)a3 shouldUpdateGenstore:(BOOL)a4 completionHandler:(id)a5;
- (void)getExternalThumbnailCacheConnectionForItem:(id)a3 atURL:(id)a4 completionHandler:(id)a5;
- (void)perform:(id)a3 afterDelay:(int64_t)a4;
- (void)queueThumbnailRequest:(id)a3 tryCache:(BOOL)a4 tryAdditionsFirst:(BOOL)a5;
- (void)receivedExternalCacheConnection:(id)a3 error:(id)a4 forProviderDomainID:(id)a5;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)reset;
- (void)sendResultForThumbnailRequest:(id)a3 images:(id)a4 metadata:(id)a5 contentRect:(CGRect)a6 iconFlavor:(int)a7 thumbnailRepresentation:(int64_t)a8 clientShouldTakeOwnership:(BOOL)a9 reenqueueRequest:(BOOL)a10 error:(id)a11;
- (void)storeImage:(CGImage *)a3 inExternalThumbnailCacheForItem:(id)a4 atURL:(id)a5;
- (void)thumbnailRequestWasCancelled:(id)a3;
@end

@implementation QLServerThread

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__QLServerThread_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = QLServerThreadInstance;

  return v2;
}

- (void)_installRequestsFinishedWatchdog
{
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    dispatch_source_cancel(watchdogTimer);
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v5 = self->_watchdogTimer;
  self->_watchdogTimer = v4;

  objc_initWeak(&location, self);
  v6 = self->_watchdogTimer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__QLServerThread__installRequestsFinishedWatchdog__block_invoke;
  v9[3] = &unk_279ADD410;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v6, v9);
  v7 = self->_watchdogTimer;
  v8 = dispatch_time(0, 600000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x45D964B800uLL);
  dispatch_activate(self->_watchdogTimer);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)findUncachedThumbnailInExternalThumbnailCacheForRequest:(id)a3 item:(id)a4 URL:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = _log_3();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [QLServerThread(ExternalCache) findUncachedThumbnailInExternalThumbnailCacheForRequest:item:URL:completionHandler:];
  }

  v15 = [v10 request];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke;
  v20[3] = &unk_279ADD1D8;
  v24 = self;
  v25 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  [(QLServerThread *)self getExternalThumbnailCacheConnectionForItem:v17 atURL:v13 completionHandler:v20];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2;
    v18[3] = &unk_279ADD188;
    v20 = *(a1 + 64);
    v19 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v5 = _log_3();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_cold_1(a1, v5);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2;
    v14[3] = &unk_279ADD1B0;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v17 = *(a1 + 64);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = *(a1 + 56);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v15 = v9;
    v16 = v8;
    [v4 getThumbnailURLForItem:v6 completion:v14];
  }

  else
  {
    v10 = *(a1 + 64);
    v11 = MEMORY[0x277CDAAE0];
    v13 = [*(a1 + 32) request];
    v12 = [v11 errorWithCode:0 request:v13 additionalUserInfo:0];
    (*(v10 + 16))(v10, v12);
  }
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_1();
  }

  v5 = MEMORY[0x277CDAAE0];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) request];
  v11 = *MEMORY[0x277CCA7E8];
  v12[0] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithCode:0 request:v7 additionalUserInfo:v8];
  (*(v6 + 16))(v6, v9);

  v10 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_1(v5, a1);
    }

    v8 = CGImageSourceCreateWithURL(v5, 0);
    if (v8)
    {
      v9 = v8;
      QLThumbnailingImageIOGetSizeFromImageSourceAtIndex();
      if (v11 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not decode an image from thumbnail data at %@ for %@: image size is zero", v5, *(a1 + 40)];
        v30 = _log_3();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_4();
        }

        v31 = *(a1 + 64);
        v32 = MEMORY[0x277CDAAE0];
        v33 = [*(a1 + 40) request];
        v45 = *MEMORY[0x277CCA068];
        v46 = v29;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v35 = [v32 errorWithCode:0 request:v33 additionalUserInfo:v34];
        (*(v31 + 16))(v31, v35);

        CFRelease(v9);
      }

      else
      {
        [*(a1 + 48) size];
        [*(a1 + 48) minimumDimension];
        [*(a1 + 48) scale];
        [*(a1 + 48) interpolationQuality];
        v13 = QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSource();
        v14 = _log_3();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_2(a1);
          }

          v16 = *(a1 + 56);
          v17 = [MEMORY[0x277CDAAB8] imageWithCGImage:v13];
          [v16 addImage:v17 contentRect:0 hasIconModeApplied:0 flavor:0 extensionBadge:0 metadata:*(a1 + 40) toCacheAndCompleteRequest:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

          CGImageRelease(v13);
          (*(*(a1 + 64) + 16))();
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_3(v5, a1);
          }

          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not decode an image from thumbnail data at %@ for %@", v5, *(a1 + 40)];
          v37 = *(a1 + 64);
          v38 = MEMORY[0x277CDAAE0];
          v39 = [*(a1 + 40) request];
          v43 = *MEMORY[0x277CCA068];
          v44 = v36;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v41 = [v38 errorWithCode:0 request:v39 additionalUserInfo:v40];
          (*(v37 + 16))(v37, v41);
        }

        CFRelease(v9);
      }
    }

    else
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not decode an image from thumbnail data at %@ for %@", v5, *(a1 + 40)];
      v23 = _log_3();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_5();
      }

      v24 = *(a1 + 64);
      v25 = MEMORY[0x277CDAAE0];
      v26 = [*(a1 + 40) request];
      v47 = *MEMORY[0x277CCA068];
      v48[0] = v22;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v28 = [v25 errorWithCode:0 request:v26 additionalUserInfo:v27];
      (*(v24 + 16))(v24, v28);
    }
  }

  else
  {
    v18 = *(a1 + 64);
    v19 = MEMORY[0x277CDAAE0];
    v20 = [*(a1 + 40) request];
    v21 = [v19 errorWithCode:0 request:v20 additionalUserInfo:0];
    (*(v18 + 16))(v18, v21);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)receivedExternalCacheConnection:(id)a3 error:(id)a4 forProviderDomainID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873F6FA0];
    [v8 setRemoteObjectInterface:v11];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke;
    v24[3] = &unk_279ADD200;
    v12 = v10;
    v25 = v12;
    v26 = self;
    [v8 setInvalidationHandler:v24];
    [v8 resume];
    v13 = [v8 remoteObjectProxy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke_20;
    v21[3] = &unk_279ADD228;
    v21[4] = self;
    v22 = v12;
    v23 = v8;
    v14 = v12;
    [v13 getThumbnailCacheURLWrappersWithCompletion:v21];

    v15 = v25;
  }

  else
  {
    v16 = _log_3();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [QLServerThread(ExternalCache) receivedExternalCacheConnection:error:forProviderDomainID:];
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke_22;
    block[3] = &unk_279ADD200;
    block[4] = self;
    v20 = v10;
    v18 = v10;
    dispatch_sync(queue, block);
    [(QLServerThread *)self _updateInformationForProviderAndCallPendingBlocksForProviderDomainID:v18 withConnection:0 inboxURL:0 thumbnailsURL:0];
    v15 = v20;
  }
}

uint64_t __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 40) _updateInformationForProviderAndCallPendingBlocksForProviderDomainID:*(a1 + 32) withConnection:0 inboxURL:0 thumbnailsURL:0];
}

void __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 url];
  v6 = [v5 url];

  [v6 startAccessingSecurityScopedResource];
  [*(a1 + 32) _updateInformationForProviderAndCallPendingBlocksForProviderDomainID:*(a1 + 40) withConnection:*(a1 + 48) inboxURL:v7 thumbnailsURL:v6];
}

void __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke_22(uint64_t a1)
{
  v2 = [*(a1 + 32) knownDomainsWithoutExternalThumbnailCaches];
  [v2 addObject:*(a1 + 40)];
}

- (void)_updateInformationForProviderAndCallPendingBlocksForProviderDomainID:(id)a3 withConnection:(id)a4 inboxURL:(id)a5 thumbnailsURL:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  v14 = [(QLServerThread *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __140__QLServerThread_ExternalCache___updateInformationForProviderAndCallPendingBlocksForProviderDomainID_withConnection_inboxURL_thumbnailsURL___block_invoke;
  block[3] = &unk_279ADD250;
  block[4] = self;
  v15 = v10;
  v29 = v15;
  v16 = v11;
  v30 = v16;
  v17 = v12;
  v31 = v17;
  v18 = v13;
  v32 = v18;
  v33 = &v34;
  dispatch_sync(v14, block);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v35[5];
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v20)
  {
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v19);
        }

        (*(*(*(&v24 + 1) + 8 * v22) + 16))(*(*(&v24 + 1) + 8 * v22));
        ++v22;
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v20);
  }

  _Block_object_dispose(&v34, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void __140__QLServerThread_ExternalCache___updateInformationForProviderAndCallPendingBlocksForProviderDomainID_withConnection_inboxURL_thumbnailsURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) externalThumbnailCaches];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) externalThumbnailCacheInboxURLs];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) externalThumbnailCacheThumbnailURLs];
  [v7 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  v8 = [*(a1 + 32) externalThumbnailCacheAvailablePendingBlocks];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];
  v10 = [v9 copy];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(a1 + 32) externalThumbnailCacheAvailablePendingBlocks];
  [v13 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (void)getExternalThumbnailCacheConnectionForItem:(id)a3 atURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__0;
  v52 = __Block_byref_object_dispose__0;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v11 = [v8 providerDomainID];
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [v12 BOOLForKey:@"QLEnableExternalThumbnailCache"];

  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke;
    block[3] = &unk_279ADD278;
    block[4] = self;
    v15 = v11;
    v34 = v15;
    v37 = &v44;
    v16 = v10;
    v36 = v16;
    v38 = &v40;
    v39 = &v48;
    v17 = v8;
    v35 = v17;
    dispatch_sync(queue, block);
    if ((v41[3] & 1) == 0)
    {
      if (*(v45 + 24) == 1)
      {
        (*(v16 + 2))(v16, 0, 0);
      }

      else
      {
        v18 = v49[5];
        if (v18)
        {
          v19 = [(QLServerThread *)self externalThumbnailCacheInboxURLs];
          v20 = [v17 providerDomainID];
          v21 = [v19 objectForKeyedSubscript:v20];
          (*(v16 + 2))(v16, v18, v21);
        }

        else
        {
          v22 = MEMORY[0x277CBEB18];
          v23 = _Block_copy(v16);
          v24 = [v22 arrayWithObject:v23];

          v25 = self->_queue;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke_2;
          v30[3] = &unk_279ADD2A0;
          v30[4] = self;
          v26 = v15;
          v31 = v26;
          v19 = v24;
          v32 = v19;
          dispatch_sync(v25, v30);
          v27 = [MEMORY[0x277CCAA00] defaultManager];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke_3;
          v28[3] = &unk_279ADD2F0;
          v28[4] = self;
          v29 = v26;
          [v27 getFileProviderServicesForItemAtURL:v9 completionHandler:v28];
        }
      }
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

void __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) knownDomainsWithoutExternalThumbnailCaches];
  v3 = [v2 member:*(a1 + 40)];

  if (v3)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) externalThumbnailCacheAvailablePendingBlocks];
    v10 = [v4 objectForKeyedSubscript:*(a1 + 40)];

    if (v10)
    {
      v5 = _Block_copy(*(a1 + 56));
      [v10 addObject:v5];

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      v10 = [*(a1 + 32) externalThumbnailCaches];
      v6 = [*(a1 + 48) providerDomainID];
      v7 = [v10 objectForKeyedSubscript:v6];
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

void __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) externalThumbnailCacheAvailablePendingBlocks];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"com.apple.filesystems.LiveItemThumbnails"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"com.apple.filesystems.LiveItemThumbnails"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __100__QLServerThread_ExternalCache__getExternalThumbnailCacheConnectionForItem_atURL_completionHandler___block_invoke_4;
    v10[3] = &unk_279ADD2C8;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 getFileProviderConnectionWithCompletionHandler:v10];
  }

  else
  {
    [*(a1 + 32) receivedExternalCacheConnection:0 error:v6 forProviderDomainID:*(a1 + 40)];
  }
}

- (void)storeImage:(CGImage *)a3 inExternalThumbnailCacheForItem:(id)a4 atURL:(id)a5
{
  v8 = a4;
  v9 = a5;
  CGImageRetain(a3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke;
  v11[3] = &unk_279ADD368;
  v12 = v8;
  v13 = a3;
  v11[4] = self;
  v10 = v8;
  [(QLServerThread *)self getExternalThumbnailCacheConnectionForItem:v10 atURL:v9 completionHandler:v11];
}

void __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) externalThumbnailCacheQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke_2;
    v8[3] = &unk_279ADD340;
    v12 = *(a1 + 48);
    v9 = v6;
    v10 = v5;
    v11 = *(a1 + 40);
    dispatch_async(v7, v8);
  }

  else
  {
    CGImageRelease(*(a1 + 48));
  }
}

void __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CDAAA0] writeThumbnailImage:*(a1 + 56) inInboxAtURL:*(a1 + 32)];
  CGImageRelease(*(a1 + 56));
  v3 = [*(a1 + 40) remoteObjectProxy];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke_3;
  v5[3] = &unk_279ADD318;
  v6 = v4;
  [v3 storeThumbnailAtURL:v2 forItem:v6 completion:v5];
}

void __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _log_3();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke_3_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "Store thumbnail for %@ in external thumbnail cache", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (QLServerThread)init
{
  v3 = +[_QLCacheThread defaultCacheSize];
  v4 = +[QLDiskCache defaultLocation];
  v5 = [(QLServerThread *)self initWithCacheSize:v3 location:v4];

  return v5;
}

- (QLServerThread)initWithCacheSize:(int64_t)a3 location:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v63.receiver = self;
  v63.super_class = QLServerThread;
  v7 = [(QLServerThread *)&v63 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.quicklook.server", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.quicklook.servercompletionblocks", v11);
    completionBlocksQueue = v7->_completionBlocksQueue;
    v7->_completionBlocksQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.quicklook.genstorecaching", v14);
    genstoreCachingQueue = v7->_genstoreCachingQueue;
    v7->_genstoreCachingQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v17;

    v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
    downloadsOperationQueue = v7->_downloadsOperationQueue;
    v7->_downloadsOperationQueue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.quicklook.fpthumbnailspending", v21);
    pendingDownloadsQueue = v7->_pendingDownloadsQueue;
    v7->_pendingDownloadsQueue = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("com.apple.quicklook.fpthumbnailsresponse", v24);
    downloadResponseProcessingQueue = v7->_downloadResponseProcessingQueue;
    v7->_downloadResponseProcessingQueue = v25;

    v7->_drainScheduled = 0;
    atomic_store(0, &v7->_thumbnailDownloadsInFlight);
    [(NSOperationQueue *)v7->_downloadsOperationQueue setQualityOfService:17];
    v27 = objc_alloc_init(MEMORY[0x277CCABD8]);
    uncachedThumbnailRetrievalQueue = v7->_uncachedThumbnailRetrievalQueue;
    v7->_uncachedThumbnailRetrievalQueue = v27;

    [(NSOperationQueue *)v7->_uncachedThumbnailRetrievalQueue setMaxConcurrentOperationCount:4];
    v29 = objc_alloc_init(MEMORY[0x277CCABD8]);
    downscaledThumbnailGenerationQueue = v7->_downscaledThumbnailGenerationQueue;
    v7->_downscaledThumbnailGenerationQueue = v29;

    [(NSOperationQueue *)v7->_downscaledThumbnailGenerationQueue setQualityOfService:9];
    [(NSOperationQueue *)v7->_downscaledThumbnailGenerationQueue setMaxConcurrentOperationCount:1];
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("com.apple.quicklook.previewthumbnailgeneration", v31);
    previewThumbnailGeneratorQueue = v7->_previewThumbnailGeneratorQueue;
    v7->_previewThumbnailGeneratorQueue = v32;

    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_attr_make_with_qos_class(v34, QOS_CLASS_BACKGROUND, 0);
    v36 = dispatch_queue_create("com.apple.quicklook.externalcache", v35);
    externalThumbnailCacheQueue = v7->_externalThumbnailCacheQueue;
    v7->_externalThumbnailCacheQueue = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    volumesToCaches = v7->_volumesToCaches;
    v7->_volumesToCaches = v38;

    watchdogTimer = v7->_watchdogTimer;
    v7->_watchdogTimer = 0;

    v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
    knownDomainsWithoutExternalThumbnailCaches = v7->_knownDomainsWithoutExternalThumbnailCaches;
    v7->_knownDomainsWithoutExternalThumbnailCaches = v41;

    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    domainsToCaches = v7->_domainsToCaches;
    v7->_domainsToCaches = v43;

    v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
    externalThumbnailCacheAvailablePendingBlocks = v7->_externalThumbnailCacheAvailablePendingBlocks;
    v7->_externalThumbnailCacheAvailablePendingBlocks = v45;

    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queuedDownloadRequests = v7->_queuedDownloadRequests;
    v7->_queuedDownloadRequests = v47;

    v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
    externalThumbnailCaches = v7->_externalThumbnailCaches;
    v7->_externalThumbnailCaches = v49;

    v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
    externalThumbnailCacheInboxURLs = v7->_externalThumbnailCacheInboxURLs;
    v7->_externalThumbnailCacheInboxURLs = v51;

    v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
    externalThumbnailCacheThumbnailURLs = v7->_externalThumbnailCacheThumbnailURLs;
    v7->_externalThumbnailCacheThumbnailURLs = v53;

    v7->_fsidCacheLock._os_unfair_lock_opaque = 0;
    *&v7->_domainCacheLock._os_unfair_lock_opaque = 0;
    v55 = [[_QLCacheThread alloc] initWithServerThread:v7 cacheSize:a3 location:v6];
    cacheThread = v7->_cacheThread;
    v7->_cacheThread = v55;

    v57 = v7->_cacheThread;
    if (v57)
    {
      [(_QLCacheThread *)v57 openCache];
    }

    else
    {
      v58 = _log_3();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [QLServerThread initWithCacheSize:v58 location:?];
      }
    }

    v59 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/"];
    [(NSMutableDictionary *)v7->_volumesToCaches setObject:v7->_cacheThread forKeyedSubscript:v59];
    memset(&v64, 0, 512);
    if (!statfs("/", &v64))
    {
      v60 = [MEMORY[0x277CCAE60] valueWithBytes:&v64.f_fsid objCType:"{fsid=[2i]}"];
      [(NSMutableDictionary *)v7->_fsidsToCaches setObject:v7->_cacheThread forKeyedSubscript:v60];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
  return v7;
}

void __32__QLServerThread_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(*(a1 + 32));
  v4 = QLServerThreadInstance;
  QLServerThreadInstance = v3;

  v5 = [QLServerThreadInstance cacheThread];
  v6 = QLCacheThreadInstance;
  QLCacheThreadInstance = v5;

  objc_autoreleasePoolPop(v2);
}

- (void)perform:(id)a3 afterDelay:(int64_t)a4
{
  block = a3;
  v6 = dispatch_time(0, a4);
  dispatch_after(v6, self->_queue, block);
}

- (id)makeCacheThreadForPersonaString:(id)a3 containerURL:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(QLServerThread *)self overrideBasePersonaVolumesURLForTesting];

  if (v8)
  {
    v9 = [(QLServerThread *)self overrideBasePersonaVolumesURLForTesting];
    v10 = [v9 URLByAppendingPathComponent:v7];

LABEL_23:
    v24 = [v10 URLByAppendingPathComponent:*MEMORY[0x277CDAB70]];
    v25 = [v24 path];

    if (a4)
    {
      v26 = v10;
      *a4 = v10;
    }

    [QLDiskCache setupCacheAtLocationIfNecessary:v25];
    v4 = [[_QLCacheThread alloc] initWithServerThread:self cacheSize:+[_QLCacheThread location:"defaultCacheSize"], v25];

    goto LABEL_26;
  }

  v11 = [MEMORY[0x277D77BF8] sharedManager];
  v12 = [v11 currentPersona];

  v31 = 0;
  v13 = [v12 userPersonaUniqueString];
  v14 = v13;
  if (v13 == v7 || ([v13 isEqualToString:v7] & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    v19 = 0;
  }

  else
  {
    v30 = 0;
    v15 = [v12 copyCurrentPersonaContextWithError:&v30];
    v16 = v30;
    v17 = v31;
    v31 = v15;

    if (v16)
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [QLServerThread makeCacheThreadForPersonaString:containerURL:];
      }
    }

    v19 = [v12 generateAndRestorePersonaContextWithPersonaUniqueString:v7];

    if (v19)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [QLServerThread makeCacheThreadForPersonaString:containerURL:];
      }
    }
  }

  v29 = 0;
  v21 = container_create_or_lookup_path_for_current_user();
  if (v21)
  {
    v22 = _log_3();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = v7;
      v34 = 2080;
      v35 = v21;
      _os_log_impl(&dword_2615D3000, v22, OS_LOG_TYPE_INFO, "Creating cache for persona %@ in container %s", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v21 isDirectory:1 relativeToURL:0];
    free(v21);
  }

  else
  {
    v23 = _log_3();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [QLServerThread makeCacheThreadForPersonaString:? containerURL:?];
    }

    v4 = self->_cacheThread;
    v10 = 0;
  }

  _FPRestorePersona();
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)uncachedCacheThreadForProviderDomainID:(id)a3
{
  v4 = a3;
  v19 = 0;
  v5 = [MEMORY[0x277CC6420] providerDomainWithID:v4 cachePolicy:1 error:&v19];
  v6 = v19;
  if (!v5)
  {
    v15 = _log_3();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLServerThread uncachedCacheThreadForProviderDomainID:];
    }

    goto LABEL_11;
  }

  v7 = [v5 personaIdentifier];

  if (!v7)
  {
LABEL_11:
    v12 = self->_cacheThread;
    goto LABEL_14;
  }

  v8 = MEMORY[0x277D77C10];
  v9 = [v5 personaIdentifier];
  v10 = [v8 personaAttributesForIdentifier:v9];

  if (v10 && ([v10 isDataSeparatedPersona] & 1) != 0)
  {
    v11 = [v5 personaIdentifier];
    v18 = 0;
    v12 = [(QLServerThread *)self makeCacheThreadForPersonaString:v11 containerURL:&v18];
    v13 = v18;

    v17 = 0;
    if ([v13 getResourceValue:&v17 forKey:*MEMORY[0x277CBEA58] error:0])
    {
      v14 = v17;
      os_unfair_lock_lock(&self->_volumeCacheLock);
      [(NSMutableDictionary *)self->_volumesToCaches setObject:v12 forKeyedSubscript:v14];

      os_unfair_lock_unlock(&self->_volumeCacheLock);
    }

    [(_QLCacheThread *)v12 openCache];
  }

  else
  {
    v12 = self->_cacheThread;
  }

LABEL_14:

  return v12;
}

- (id)uncachedCacheThreadForFileAtURL:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v42 = a3;
  [v42 getFileSystemRepresentation:&v60 maxLength:1024];
  if (v60 != 0x657461766972702FLL || *v61 != 0x7265502F7261762FLL || *&v61[8] != 0x756C6F56616E6F73 || *&v61[11] != 0x73656D756C6F5661)
  {
    v7 = v60 == 0x7265502F7261762FLL && *v61 == 0x756C6F56616E6F73;
    if (!v7 || *&v61[3] != 0x73656D756C6F5661)
    {
      v9 = self->_cacheThread;
      goto LABEL_56;
    }
  }

  v10 = [v42 startAccessingSecurityScopedResource];
  v52 = 0;
  v11 = *MEMORY[0x277CBEA58];
  v12 = [v42 getResourceValue:&v52 forKey:*MEMORY[0x277CBEA58] error:0];
  v13 = v52;
  if (!v12)
  {
    goto LABEL_25;
  }

  os_unfair_lock_lock(&self->_volumeCacheLock);
  v14 = [(NSMutableDictionary *)self->_volumesToCaches objectForKeyedSubscript:v13];

  if (!v14)
  {
    os_unfair_lock_unlock(&self->_volumeCacheLock);
LABEL_25:
    v40 = self;
    v15 = [MEMORY[0x277D77BF8] sharedManager];
    v51 = 0;
    v16 = [v15 listAllPersonaAttributesWithError:&v51];
    v17 = v51;

    if (v17)
    {
      v18 = _log_3();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [QLServerThread uncachedCacheThreadForFileAtURL:];
      }
    }

    v39 = v11;
    v41 = v13;
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v38 = v10;
      v23 = *v48;
LABEL_31:
      v24 = 0;
      while (1)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v47 + 1) + 8 * v24);
        v26 = [v25 personaLayoutPathURL];

        if (v26)
        {
          v46 = 0;
          v27 = [v25 personaLayoutPathURL];
          v45 = v17;
          v28 = [v19 getRelationship:&v46 ofDirectoryAtURL:v27 toItemAtURL:v42 error:&v45];
          v29 = v45;

          if (v28)
          {
            if (!v46)
            {
              v32 = [v25 userPersonaUniqueString];

              if (!v32)
              {
                goto LABEL_51;
              }

              v44 = 0;
              v9 = [(QLServerThread *)v40 makeCacheThreadForPersonaString:v32 containerURL:&v44];
              v33 = v44;
              v43 = 0;
              v34 = [v33 getResourceValue:&v43 forKey:v39 error:0];
              v13 = v43;

              if (v34)
              {
                os_unfair_lock_lock(&v40->_volumeCacheLock);
                [(NSMutableDictionary *)v40->_volumesToCaches setObject:v9 forKeyedSubscript:v13];
                os_unfair_lock_unlock(&v40->_volumeCacheLock);
              }

              if (v38)
              {
                [v42 stopAccessingSecurityScopedResource];
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = _log_3();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = [v25 personaLayoutPathURL];
              *buf = 138412802;
              v54 = v31;
              v55 = 2112;
              v56 = v42;
              v57 = 2112;
              v58 = v29;
              _os_log_error_impl(&dword_2615D3000, v30, OS_LOG_TYPE_ERROR, "Could not get relationship between %@ and %@, error: %@", buf, 0x20u);
            }
          }

          v17 = v29;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v22)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    v29 = v17;
LABEL_51:
    v13 = v41;
    v35 = _log_3();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [QLServerThread uncachedCacheThreadForFileAtURL:];
    }

    v9 = v40->_cacheThread;
LABEL_54:

    goto LABEL_55;
  }

  if (v10)
  {
    [v42 stopAccessingSecurityScopedResource];
  }

  v9 = [(NSMutableDictionary *)self->_volumesToCaches objectForKeyedSubscript:v13];
  os_unfair_lock_unlock(&self->_volumeCacheLock);
LABEL_55:

LABEL_56:
  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)cacheThreadForProviderDomainID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_domainCacheLock);
  v5 = [(NSMutableDictionary *)self->_domainsToCaches objectForKey:v4];
  if (!v5)
  {
    v5 = [(QLServerThread *)self uncachedCacheThreadForProviderDomainID:v4];
    [(NSMutableDictionary *)self->_domainsToCaches setObject:v5 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_domainCacheLock);

  return v5;
}

- (id)cacheThreadForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 providerDomainID];
    v8 = [(QLServerThread *)self cacheThreadForProviderDomainID:v7];
  }

  else
  {
    v7 = [v4 fileIdentifier];
    v9 = [v7 fileIdentifier];
    v10 = [v4 quicklookSandboxWrapper];
    v11 = [v10 url];
    v8 = [(QLServerThread *)self cacheThreadForFileIdentifier:v9 atURL:v11];
  }

  return v8;
}

- (void)generateSuccessiveThumbnailRepresentationsForRequests:(id)a3 generationHandler:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [QLTGeneratorThumbnailRequest alloc];
        v19 = [(QLTGeneratorThumbnailRequest *)v18 initWithRequest:v17 generationHandler:v9, v21];
        [v11 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(QLServerThread *)self generateSuccessiveThumbnailRepresentationsForGeneratorRequests:v11 completionHandler:v10];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)generateSuccessiveThumbnailRepresentationsForGeneratorRequests:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _log_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [QLServerThread generateSuccessiveThumbnailRepresentationsForGeneratorRequests:completionHandler:];
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v33 + 1) + 8 * i) request];
        v16 = [(QLServerThread *)self cacheThreadForRequest:v15];

        if (v16 != self->_cacheThread)
        {
          if (!v12)
          {
            v12 = [MEMORY[0x277CBEB58] set];
          }

          [v12 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  [(_QLCacheThread *)self->_cacheThread serverIsWorking];
  if (v12)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v29 + 1) + 8 * j) serverIsWorking];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v19);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__QLServerThread_generateSuccessiveThumbnailRepresentationsForGeneratorRequests_completionHandler___block_invoke;
  block[3] = &unk_279ADD6C8;
  block[4] = self;
  v27 = v9;
  v28 = v7;
  v23 = v7;
  v24 = v9;
  dispatch_sync(queue, block);

  v25 = *MEMORY[0x277D85DE8];
}

void __50__QLServerThread__installRequestsFinishedWatchdog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[16] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];
    WeakRetained = v2;
  }
}

void __50__QLServerThread__installRequestsFinishedWatchdog__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 beginDate];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  if (v7 < -600.0)
  {
    v8 = _log_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__QLServerThread__installRequestsFinishedWatchdog__block_invoke_2_cold_1();
    }
  }
}

- (void)_addThumbnailRequestBatchToQueue:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = dispatch_group_create();
  [(QLServerThread *)self _installRequestsFinishedWatchdog];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 request];
        dispatch_group_enter(v7);
        kdebug_trace();
        [v11 setBatchDispatchGroup:v7];
        v13 = _os_activity_create(&dword_2615D3000, "Thumbnail Request Enqueued", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        os_activity_scope_enter(v13, &state);
        [v11 setTopActivity:v13];
        v14 = [(QLServerThread *)self pendingRequests];
        v15 = [v12 uuid];
        [v14 setObject:v11 forKeyedSubscript:v15];

        v16 = [v12 forceGeneration];
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = [v11 cacheEnabled];
        }

        [(QLServerThread *)self queueThumbnailRequest:v11 tryCache:v17 tryAdditionsFirst:v16 ^ 1u];
        os_activity_scope_leave(&state);
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  completionBlocksQueue = self->_completionBlocksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__QLServerThread__addThumbnailRequestBatchToQueue_completionHandler___block_invoke;
  block[3] = &unk_279ADD710;
  block[4] = self;
  v27 = v23;
  v19 = obj;
  v26 = v19;
  v20 = v23;
  dispatch_group_notify(v7, completionBlocksQueue, block);
  v21 = _log_3();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [QLServerThread _addThumbnailRequestBatchToQueue:completionHandler:];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_callCompletionHandler:(id)a3 ofThumbnailRequestBatch:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = _log_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "%@%@", &v12, 0x16u);
  }

  dispatch_assert_queue_V2(self->_completionBlocksQueue);
  v8[2](v8);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelThumbnailRequests:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__QLServerThread_cancelThumbnailRequests___block_invoke;
  v7[3] = &unk_279ADD200;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __42__QLServerThread_cancelThumbnailRequests___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412290;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 40) pendingRequests];
        v10 = [v8 uuid];
        v11 = [v9 objectForKeyedSubscript:v10];

        v12 = _log_3();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v13)
          {
            *buf = v15;
            v21 = v11;
            _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "Cancelling request that is part of the pending requests: %@", buf, 0xCu);
          }

          [v11 cancel];
        }

        else
        {
          if (v13)
          {
            *buf = v15;
            v21 = v8;
            _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "Can't cancel thumbnail request because it was not found in the pending requests: %@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)queueThumbnailRequest:(id)a3 tryCache:(BOOL)a4 tryAdditionsFirst:(BOOL)a5
{
  v5 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 request];
  v9 = _log_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.opaque[0]) = 138412290;
    *(buf.opaque + 4) = v7;
    _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "Enqueuing thumbnail request: %@", &buf, 0xCu);
  }

  if ([v7 hasHandledAllRequestedTypesOrMostRepresentativeType])
  {
    [(QLServerThread *)self _completeHandledThumbnailRequest:v7];
  }

  else
  {
    if (![v7 cancelled])
    {
      if (([v8 isValid] & 1) == 0)
      {
        v17 = dispatch_get_global_queue(0, 0);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_26;
        v30[3] = &unk_279ADD200;
        v31 = v7;
        v32 = self;
        dispatch_async(v17, v30);

        goto LABEL_18;
      }

      if (v5)
      {
        v11 = [v7 topActivity];
        v12 = _os_activity_create(&dword_2615D3000, "Cache Lookup", v11, OS_ACTIVITY_FLAG_DEFAULT);

        buf.opaque[0] = 0;
        buf.opaque[1] = 0;
        os_activity_scope_enter(v12, &buf);
        [v7 setActivity:v12];
        v13 = [v8 fileIdentifier];
        v14 = [v13 version];
        v15 = [v14 isDefaultVersion];

        if (v15)
        {
          [objc_opt_class() updateThumbnailRequestThumbnailVersionWithThirdPartyGeneratorInformationIfNeeded:v8];
        }

        v16 = [(QLServerThread *)self cacheThreadForRequest:v8];
        if ([v16 addThumbnailRequest:v7])
        {

          os_activity_scope_leave(&buf);
          goto LABEL_18;
        }

        v18 = _log_3();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [QLServerThread queueThumbnailRequest:tryCache:tryAdditionsFirst:];
        }

        [v7 setActivity:0];
        os_activity_scope_leave(&buf);
      }

      v19 = [v7 topActivity];
      v20 = _os_activity_create(&dword_2615D3000, "Thumbnail Generation", v19, OS_ACTIVITY_FLAG_DEFAULT);

      buf.opaque[0] = 0;
      buf.opaque[1] = 0;
      os_activity_scope_enter(v20, &buf);
      [v7 setActivity:v20];
      v21 = MEMORY[0x277CCA8C8];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_28;
      v27 = &unk_279ADD200;
      v28 = v7;
      v29 = self;
      v22 = [v21 blockOperationWithBlock:&v24];
      [(NSOperationQueue *)self->_uncachedThumbnailRetrievalQueue addOperation:v22, v24, v25, v26, v27];

      os_activity_scope_leave(&buf);
      goto LABEL_18;
    }

    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke;
    block[3] = &unk_279ADD200;
    v34 = v7;
    v35 = self;
    dispatch_async(v10, block);
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_cold_1(a1);
  }

  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = cancelledError(v3);
  [v4 failedToCompleteThumbnailRequest:v3 error:v6];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_26(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_26_cold_1(a1);
  }

  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = MEMORY[0x277CDAAE0];
  v7 = [v3 request];
  v8 = [v6 errorWithCode:4 request:v7 additionalUserInfo:0];

  [v4 failedToCompleteThumbnailRequest:v3 error:v8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_28(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) activity];
  os_activity_scope_enter(v3, &state);

  if ([*v2 cancelled])
  {
    v4 = _log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_28_cold_1(v2);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = cancelledError(v6);
    [v5 failedToCompleteThumbnailRequest:v6 error:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_29;
    v11[3] = &unk_279ADD438;
    v9 = v8;
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    [v9 computeUbiquitousnessWithCompletionHandler:v11];
    v7 = v12;
  }

  os_activity_scope_leave(&state);
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_29(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_29_cold_1(a1);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = generationFailedErrorWithUnderlyingError(v6, v3, 0);
    [v5 failedToCompleteThumbnailRequest:v6 error:v7];
  }

  else
  {
    v8 = (a1 + 32);
    v9 = [*(a1 + 32) isDownloaded];
    v10 = _log_3();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = *v8;
        *buf = 138412290;
        v32 = v12;
        _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "%@ is downloaded. Trying to generate a thumbnail locally", buf, 0xCu);
      }

      if ([*v8 cancelled])
      {
        v13 = _log_3();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *v8;
          *buf = 138412290;
          v32 = v14;
          _os_log_impl(&dword_2615D3000, v13, OS_LOG_TYPE_INFO, "Before generateThumbnailForThumbnailRequest: thumbnail request %@ cancelled", buf, 0xCu);
        }

        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = cancelledError(v16);
        [v15 failedToCompleteThumbnailRequest:v16 error:v17];
      }

      else
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_30;
        v28[3] = &unk_279ADD438;
        v23 = v21;
        v24 = *(a1 + 40);
        v29 = v23;
        v30 = v24;
        [v22 generateThumbnailForThumbnailRequest:v23 shouldUpdateGenstore:0 completionHandler:v28];
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_29_cold_2((a1 + 32));
      }

      v18 = (a1 + 32);
      objc_initWeak(buf, *(a1 + 32));
      v19 = *(a1 + 40);
      v20 = *v18;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_33;
      v26[3] = &unk_279ADD738;
      v26[4] = v19;
      objc_copyWeak(&v27, buf);
      [v19 findUncachedThumbnailInGenStoreOrDownload:v20 completionHandler:v26];
      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) cancelled];
    v5 = _log_3();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_30_cold_2((a1 + 32));
      }

      v9 = a1 + 32;
      v7 = *(a1 + 32);
      v8 = *(v9 + 8);
      v10 = cancelledError(v7);
      [v8 failedToCompleteThumbnailRequest:v7 error:v10];
    }

    else
    {
      if (v6)
      {
        __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_30_cold_1(v3, (a1 + 32));
      }

      objc_initWeak(&location, *(a1 + 32));
      v13 = a1 + 32;
      v11 = *(a1 + 32);
      v12 = *(v13 + 8);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_31;
      v14[3] = &unk_279ADD738;
      v14[4] = v12;
      objc_copyWeak(&v15, &location);
      [v12 findUncachedThumbnailInGenStoreOrDownload:v11 completionHandler:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_31(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v3 failedToCompleteThumbnailRequest:WeakRetained error:v4];
  }
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_33(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v3 failedToCompleteThumbnailRequest:WeakRetained error:v4];
  }
}

- (void)findUncachedThumbnailInGenStoreOrDownload:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__QLServerThread_findUncachedThumbnailInGenStoreOrDownload_completionHandler___block_invoke;
  aBlock[3] = &unk_279ADD760;
  v8 = v7;
  v19 = v8;
  v9 = v6;
  v17 = v9;
  v18 = self;
  v10 = _Block_copy(aBlock);
  v11 = [v9 taggedLogicalURL];

  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__QLServerThread_findUncachedThumbnailInGenStoreOrDownload_completionHandler___block_invoke_35;
    v14[3] = &unk_279ADD788;
    v15 = v10;
    [(QLServerThread *)self findUncachedThumbnailInGenStoreForRequest:v9 completionHandler:v14];
    v12 = v15;
  }

  else
  {
    v13 = _log_3();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [QLServerThread findUncachedThumbnailInGenStoreOrDownload:completionHandler:];
    }

    v12 = generationFailedErrorWithUnderlyingError(v9, 0, @"Unmaterialized file cannot have thumbnails stored on disk");
    (*(v10 + 2))(v10, 0, v12);
  }
}

void __78__QLServerThread_findUncachedThumbnailInGenStoreOrDownload_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_3:
    v6();
    goto LABEL_10;
  }

  if (![*(a1 + 32) cancelled])
  {
    if ([*(a1 + 32) isUbiquitous])
    {
      [*(a1 + 40) downloadThumbnailForRequest:*(a1 + 32) completionHandler:*(a1 + 48)];
      goto LABEL_10;
    }

    v6 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  v7 = _log_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __78__QLServerThread_findUncachedThumbnailInGenStoreOrDownload_completionHandler___block_invoke_cold_1((a1 + 32));
  }

  v8 = *(a1 + 48);
  v9 = cancelledError(*(a1 + 32));
  (*(v8 + 16))(v8, v9);

LABEL_10:
}

- (void)findUncachedThumbnailInGenStoreForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v10 = 0;
  v7 = a4;
  v8 = [(QLServerThread *)self genStoreThumbnailForRequest:v6 error:&v10];
  v9 = v10;
  if (v8)
  {
    [(QLServerThread *)self findThumbnailInAddition:v8 request:v6 completionHandler:v7];
  }

  else
  {
    v7[2](v7, v9);
  }
}

- (id)genStoreThumbnailForRequest:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 taggedLogicalURL];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 startAccessingSecurityScopedResource];
    v10 = _CFURLPromiseCopyPhysicalURL();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;

    v14 = _log_3();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2615D3000, v14, OS_LOG_TYPE_INFO, "Trying GenStore for file at URL: %@ (physical: %@).", buf, 0x16u);
    }

    v22 = 0;
    v15 = [objc_alloc(MEMORY[0x277CDAAC0]) initWithAdditionsPresentOnURL:v13 error:&v22];
    v16 = v22;
    if (v16)
    {
      v17 = _log_3();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_2615D3000, v17, OS_LOG_TYPE_INFO, "Did not retrieve thumbnail from GenStore with error: %@", buf, 0xCu);
      }
    }

    if (v9)
    {
      [v8 stopAccessingSecurityScopedResource];
    }

    if (v15)
    {
      if ([(QLServerThread *)self _canUseAdditionToProvideThumbnail:v15 forThumbnailRequest:v6 taggedLogicalURL:v8])
      {
        v15 = v15;
        v18 = v15;
        goto LABEL_24;
      }

      if (a4)
      {
        v19 = generationFailedErrorWithUnderlyingError(v6, 0, @"Stored thumbnail version in Generational Storage is invalid for this version of the file");
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (!a4)
    {
LABEL_23:
      v18 = 0;
      goto LABEL_24;
    }

LABEL_19:
    v19 = generationFailedErrorWithUnderlyingError(v6, v16, 0);
    v15 = 0;
LABEL_22:
    v18 = 0;
    *a4 = v19;
    goto LABEL_24;
  }

  v16 = 0;
  v15 = 0;
  v18 = 0;
  if (a4)
  {
    goto LABEL_19;
  }

LABEL_24:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __117__QLServerThread_processLargeThumbnailData_withContentType_isAppContainer_forRequest_fromGenStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 96);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __117__QLServerThread_processLargeThumbnailData_withContentType_isAppContainer_forRequest_fromGenStore_completionHandler___block_invoke_2;
  v10 = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11 = v4;
  return [v2 _cacheThumbnailData:v1 forRequest:v3 imageSource:*(a1 + 64) actualSize:*(a1 + 72) resultSize:*(a1 + 80) fromGenStore:*(a1 + 88) completionHandler:?];
}

- (void)_cacheThumbnailData:(id)a3 forRequest:(id)a4 imageSource:(CGImageSource *)a5 actualSize:(CGSize)a6 resultSize:(CGSize)a7 fromGenStore:(BOOL)a8 completionHandler:(id)a9
{
  height = a7.height;
  width = a7.width;
  v13 = a6.height;
  v14 = a6.width;
  v18 = a3;
  v19 = a4;
  v20 = a9;
  v21 = [v19 taggedLogicalURL];
  v22 = [v19 request];
  v23 = v22;
  if (v21)
  {
    if (!a8)
    {
      [(QLServerThread *)self _saveLargeThumbnailToGenstoreWithData:v18 url:v21];
    }

    v20[2](v20, 0);
  }

  else
  {
    if ([v22 isUbiquitous])
    {
      v24 = [MEMORY[0x277CC6408] defaultManager];
      v25 = [v23 item];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __114__QLServerThread__cacheThumbnailData_forRequest_imageSource_actualSize_resultSize_fromGenStore_completionHandler___block_invoke;
      v29[3] = &unk_279ADD7F8;
      v30 = v23;
      v40 = a8;
      v34 = v20;
      v31 = self;
      v32 = v18;
      v33 = v19;
      v35 = a5;
      v36 = v14;
      v37 = v13;
      v38 = width;
      v39 = height;
      [v24 fetchURLForItem:v25 creatingPlaceholderIfMissing:0 completionHandler:v29];

      v26 = v30;
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __114__QLServerThread__cacheThumbnailData_forRequest_imageSource_actualSize_resultSize_fromGenStore_completionHandler___block_invoke_2;
      v27[3] = &unk_279ADD038;
      v28 = v20;
      [(QLServerThread *)self _addAllThumbnailsSizesToCacheForRequest:v19 withImageSource:a5 imageSize:v27 alreadyCachedSize:v14 completionHandler:v13, width, height];
      v26 = v28;
    }
  }
}

void __114__QLServerThread__cacheThumbnailData_forRequest_imageSource_actualSize_resultSize_fromGenStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) item];
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_2615D3000, v7, OS_LOG_TYPE_ERROR, "Error fetching URL for item %@ (got %@): %@", buf, 0x20u);
    }
  }

  else
  {
    if (!v5)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 72);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __114__QLServerThread__cacheThumbnailData_forRequest_imageSource_actualSize_resultSize_fromGenStore_completionHandler___block_invoke_57;
      v13[3] = &unk_279ADD038;
      v11 = *(a1 + 56);
      v14 = *(a1 + 64);
      [v9 _addAllThumbnailsSizesToCacheForRequest:v11 withImageSource:v10 imageSize:v13 alreadyCachedSize:*(a1 + 80) completionHandler:{*(a1 + 88), *(a1 + 96), *(a1 + 104)}];

      goto LABEL_6;
    }

    if ((*(a1 + 112) & 1) == 0)
    {
      [*(a1 + 40) _saveLargeThumbnailToGenstoreWithData:*(a1 + 48) url:v5];
    }
  }

  (*(*(a1 + 64) + 16))();
LABEL_6:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveLargeThumbnailToGenstoreWithData:(id)a3 url:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v26 = 0;
  v6 = MEMORY[0x277CBEBC0];
  v7 = a3;
  v8 = [v6 _QLTemporaryURLWithExtension:@"jpg" openingFileHandle:&v26 inDirectoryAtURL:0];
  v9 = objc_alloc(MEMORY[0x277CCA9F8]);
  v10 = [v9 initWithFileDescriptor:v26 closeOnDealloc:1];
  v25 = 0;
  v11 = [v10 writeData:v7 error:&v25];

  v12 = v25;
  if (v11)
  {
    v24 = 0;
    v13 = [v10 closeAndReturnError:&v24];
    v14 = v24;

    if (v13)
    {
      v15 = [v5 startAccessingSecurityScopedResource];
      v16 = _CFURLPromiseCopyPhysicalURL();
      v17 = MEMORY[0x277CDAAC0];
      v27 = *MEMORY[0x277CBE788];
      v28[0] = v8;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23 = v14;
      v19 = [v17 associateThumbnailImagesDictionary:v18 serializedQuickLookMetadata:0 withDocumentAtURL:v16 error:&v23];
      v12 = v23;

      if ((v19 & 1) == 0)
      {
        v20 = _log_3();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [QLServerThread _saveLargeThumbnailToGenstoreWithData:url:];
        }
      }

      if (v15)
      {
        [v5 stopAccessingSecurityScopedResource];
      }

      goto LABEL_13;
    }

    v12 = v14;
  }

  v21 = _log_3();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [QLServerThread _saveLargeThumbnailToGenstoreWithData:url:];
  }

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  [v16 removeItemAtURL:v8 error:0];
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addAllThumbnailsSizesToCacheForRequest:(id)a3 withImageSource:(CGImageSource *)a4 imageSize:(CGSize)a5 alreadyCachedSize:(CGSize)a6 completionHandler:(id)a7
{
  height = a6.height;
  width = a6.width;
  v10 = a5.height;
  v11 = a5.width;
  v14 = a3;
  v15 = a7;
  if (a4)
  {
    CFRetain(a4);
  }

  v16 = [v14 request];
  v17 = [(QLServerThread *)self cacheThreadForRequest:v16];

  downscaledThumbnailGenerationQueue = self->_downscaledThumbnailGenerationQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __120__QLServerThread__addAllThumbnailsSizesToCacheForRequest_withImageSource_imageSize_alreadyCachedSize_completionHandler___block_invoke;
  v22[3] = &unk_279ADD848;
  v26 = v11;
  v27 = v10;
  v28 = width;
  v29 = height;
  v30 = a4;
  v23 = v14;
  v24 = v17;
  v25 = v15;
  v19 = v15;
  v20 = v17;
  v21 = v14;
  [(NSOperationQueue *)downscaledThumbnailGenerationQueue addOperationWithBlock:v22];
}

void __120__QLServerThread__addAllThumbnailsSizesToCacheForRequest_withImageSource_imageSize_alreadyCachedSize_completionHandler___block_invoke(uint64_t a1)
{
  v2 = 0;
  v36 = *MEMORY[0x277D85DE8];
  v34[0] = xmmword_261630540;
  v34[1] = xmmword_261630550;
  v35 = 0x4061800000000000;
  v31[0] = 0;
  v31[1] = 0;
  v32 = xmmword_261630560;
  v33 = 0x4050400000000000;
  do
  {
    v3 = *(v34 + v2 * 8);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    QLAdaptSizeInSize();
    if (v7 != *(a1 + 72) || v6 != *(a1 + 80))
    {
      v9 = v31[v2];
      v10 = [*(a1 + 32) request];
      v11 = *(a1 + 88);
      [v10 scale];
      [v10 interpolationQuality];
      v12 = QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSource();
      if (v12)
      {
        v13 = v12;
        v14 = [*(a1 + 32) request];
        Width = CGImageGetWidth(v13);
        v16 = [v14 copyWithSize:{Width, CGImageGetHeight(v13)}];

        v17 = [MEMORY[0x277CDAAB8] imageWithCGImage:v13];
        CGImageRelease(v13);
        v18 = *(a1 + 40);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __120__QLServerThread__addAllThumbnailsSizesToCacheForRequest_withImageSource_imageSize_alreadyCachedSize_completionHandler___block_invoke_2;
        v25[3] = &unk_279ADD820;
        v19 = v18;
        v26 = v19;
        v27 = v16;
        v28 = v17;
        v29 = *(a1 + 32);
        v30 = v10;
        v20 = v17;
        v21 = v16;
        [v19 enqueueWriting:v25];
      }
    }

    ++v2;
  }

  while (v2 != 5);
  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))();
  }

  v23 = *(a1 + 88);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __120__QLServerThread__addAllThumbnailsSizesToCacheForRequest_withImageSource_imageSize_alreadyCachedSize_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) format];
  v5 = [*(a1 + 48) data];
  v6 = [*(a1 + 56) badgeType];
  v7 = [*(a1 + 64) externalThumbnailGeneratorDataHash];
  v8 = [v2 addThumbnailIntoCache:v3 bitmapFormat:v4 bitmapData:v5 metadata:0 flavor:0 contentRect:v6 badgeType:*MEMORY[0x277CBF3A0] externalGeneratorDataHash:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v7];

  return v8;
}

- (void)generateThumbnailForThumbnailRequest:(id)a3 shouldUpdateGenstore:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v31 = a5;
  v9 = [v8 request];
  v10 = [v9 copy];

  if (v6)
  {
    [v10 scale];
    v12 = 1024.0 / v11;
    [v10 scale];
    [v10 setSize:{v12, 1024.0 / v13}];
  }

  v14 = [v8 taggedLogicalURL];
  v15 = [v10 isDataBased];
  v16 = _log_3();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v17)
    {
      *buf = 138412290;
      v46 = v8;
      _os_log_impl(&dword_2615D3000, v16, OS_LOG_TYPE_INFO, "About to generate a thumbnail locally for data request: %@", buf, 0xCu);
    }

    v18 = objc_alloc(MEMORY[0x277CDAAE8]);
    v19 = [v10 data];
    v20 = [v10 contentType];
    v21 = [v18 initWithData:v19 contentType:v20];
    goto LABEL_14;
  }

  if (v17)
  {
    *buf = 138412290;
    v46 = v14;
    _os_log_impl(&dword_2615D3000, v16, OS_LOG_TYPE_INFO, "About to generate a thumbnail locally from URL: %@", buf, 0xCu);
  }

  if ([v10 isFileBased])
  {
    v22 = [v10 genericSandboxWrapper];
LABEL_13:
    v19 = v22;
    v23 = objc_alloc(MEMORY[0x277CDAAE8]);
    v20 = [v10 parentDirectorySandboxWrapper];
    v24 = [v10 contentType];
    v21 = [v23 initWithURLWrapper:v19 parentDirectoryWrapper:v20 contentType:v24];

LABEL_14:
    if ([v10 provideLowQualityThumbnail])
    {
      v25 = [v8 needsLowQualityThumbnailGeneration];
    }

    else
    {
      v25 = 0;
    }

    v26 = [[QLPreviewThumbnailGenerator alloc] initWithGeneratorRequest:v8 lowQuality:v25 thumbnailItem:v21];
    [(QLPreviewThumbnailGenerator *)v26 setGenerationQueue:self->_previewThumbnailGeneratorQueue];
    objc_initWeak(buf, v26);
    v27 = [v8 request];
    kdebug_trace();

    [v8 setGenerator:v26];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __94__QLServerThread_generateThumbnailForThumbnailRequest_shouldUpdateGenstore_completionHandler___block_invoke;
    v43[3] = &unk_279ADD870;
    v44 = v8;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __94__QLServerThread_generateThumbnailForThumbnailRequest_shouldUpdateGenstore_completionHandler___block_invoke_2;
    v32[3] = &unk_279ADD898;
    v33 = v44;
    objc_copyWeak(&v39, buf);
    v40 = v25;
    v28 = v26;
    v34 = v28;
    v35 = v14;
    v38 = v31;
    v41 = v15;
    v36 = v10;
    v37 = self;
    v42 = v6;
    [(QLPreviewThumbnailGenerator *)v28 generateWithWillStartBlock:v43 completionBlock:v32];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);

    goto LABEL_18;
  }

  if (v14)
  {
    v22 = [MEMORY[0x277CC6438] wrapperWithURL:v14 readonly:1 error:0];
    goto LABEL_13;
  }

  v30 = _log_3();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    [QLServerThread generateThumbnailForThumbnailRequest:shouldUpdateGenstore:completionHandler:];
  }

  v21 = generationFailedErrorWithUnderlyingError(v8, 0, @"Item does not have a file URL, cannot generate thumbnail locally");
  (*(v31 + 2))(v31, v21);
LABEL_18:

  v29 = *MEMORY[0x277D85DE8];
}

void __94__QLServerThread_generateThumbnailForThumbnailRequest_shouldUpdateGenstore_completionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) generationHandler];
  v2 = [*(a1 + 32) request];
  v3 = [v2 uuid];
  [v4 didUpdateStatus:0 ofThumbnailGenerationWithUUID:v3];
}

void __94__QLServerThread_generateThumbnailForThumbnailRequest_shouldUpdateGenstore_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) request];
  kdebug_trace();

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [*(a1 + 32) setGenerationError:v3];
  v7 = [WeakRetained thumbnailImages];
  if (*(a1 + 88))
  {
    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 40) resultIsLowQuality];
  }

  v9 = [v7 firstObject];
  v10 = [v9 CGImage];

  v11 = _log_3();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!v10)
  {
    if (v12)
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 48);
      *buf = 138412546;
      v79 = v17;
      v80 = 2112;
      v81 = v18;
      _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Failed to generate a thumbnail from a local file with QLPreviewThumbnailGenerator for request: %@ URL: %@.", buf, 0x16u);
    }

    v15 = *(a1 + 72);
    v16 = generationFailedErrorWithUnderlyingError(*(a1 + 32), v3, 0);
    goto LABEL_12;
  }

  if (v8)
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      *buf = 138412546;
      v79 = v13;
      v80 = 2112;
      v81 = v14;
      _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Did generate a low quality thumbnail from a local file with QLPreviewThumbnailGenerator for request, but was expecting a full representation thumbnail: %@ URL: %@.", buf, 0x16u);
    }

    v15 = *(a1 + 72);
    v16 = generationFailedError(*(a1 + 32));
LABEL_12:
    v19 = v16;
    (*(v15 + 16))(v15, v16);
    goto LABEL_49;
  }

  if (v12)
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    *buf = 138412546;
    v79 = v20;
    v80 = 2112;
    v81 = v21;
    _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Did generate a thumbnail from a local file with QLPreviewThumbnailGenerator for request: %@ URL: %@.", buf, 0x16u);
  }

  if (([*(a1 + 40) resultIsLowQuality] & 1) != 0 || !objc_msgSend(*v4, "cacheEnabled"))
  {
    v22 = 1;
  }

  else
  {
    v22 = *(a1 + 89);
  }

  [*(a1 + 40) contentRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v69 = WeakRetained;
  if ([*(a1 + 56) iconMode] && (objc_msgSend(*(a1 + 40), "resultHasIconModeApplied") & 1) == 0)
  {
    [*(a1 + 56) size];
    v38 = v37;
    v40 = v39;
    [*(a1 + 56) scale];
    v31 = +[QLIconModeRenderer renderIconWithImages:size:scale:flavor:variant:](QLIconModeRenderer, "renderIconWithImages:size:scale:flavor:variant:", v7, [*(a1 + 40) flavor], objc_msgSend(*(a1 + 56), "iconVariant"), v38, v40, v41);
    v42 = [v31 image];
    v77 = v42;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];

    [v31 contentRect];
    v24 = v43;
    v26 = v44;
    v28 = v45;
    v30 = v46;
  }

  else
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v31 = v7;
    v32 = [v31 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v32)
    {
      v33 = v32;
      v68 = v22;
      v70 = v3;
      v34 = *v73;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v73 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [MEMORY[0x277CDAAB8] imageWithCGImage:{objc_msgSend(*(*(&v72 + 1) + 8 * i), "CGImage")}];
          [v19 addObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v72 objects:v76 count:16];
      }

      while (v33);
      WeakRetained = v69;
      v3 = v70;
      v22 = v68;
    }
  }

  if (v22)
  {
    v47 = [v19 firstObject];
    if ([*(a1 + 56) wantsBaseline])
    {
      v48 = [*(a1 + 40) generatedProperties];
      v49 = [v48 baseline];

      if (v49 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v47)
        {
          v50 = [v47 format];
          [v50 width];
          [v50 height];
          [v50 bitsPerComponent];
          [v50 bitsPerPixel];
          [v50 bytesPerRow];
          [v50 bitmapInfo];
          v51 = [v47 data];
          [v51 bytes];
          v52 = _QLThumbnailComputeBaselineFromData();

          v53 = [*(a1 + 40) generatedProperties];
          [v53 setBaseline:v52];
        }
      }
    }

    v54 = [*(a1 + 40) generatedProperties];

    if (v54)
    {
      v55 = MEMORY[0x277CCAAB0];
      v56 = [*(a1 + 40) generatedProperties];
      v54 = [v55 archivedDataWithRootObject:v56 requiringSecureCoding:1 error:0];
    }

    if ([*(a1 + 40) resultIsLowQuality])
    {
      v57 = 1;
    }

    else
    {
      v57 = 2;
    }

    v58 = _log_3();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = *v4;
      *buf = 138412290;
      v79 = v59;
      _os_log_impl(&dword_2615D3000, v58, OS_LOG_TYPE_INFO, "completing thumbnail request %@ after generation without caching", buf, 0xCu);
    }

    [*(a1 + 64) completeThumbnailRequest:*(a1 + 32) images:v19 metadata:v54 contentRect:v57 thumbnailRepresentation:objc_msgSend(*(a1 + 40) iconFlavor:"flavor") clientShouldTakeOwnership:{1, v24, v26, v28, v30}];
    v60 = v47;
  }

  else
  {
    v61 = _log_3();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      __94__QLServerThread_generateThumbnailForThumbnailRequest_shouldUpdateGenstore_completionHandler___block_invoke_2_cold_1((a1 + 32));
    }

    v71 = [v7 firstObject];
    v62 = *(a1 + 64);
    v63 = [v19 firstObject];
    v64 = [*(a1 + 40) flavor];
    v65 = [*(a1 + 40) extensionBadge];
    v66 = [*(a1 + 40) generatedProperties];
    [v62 addImage:v63 contentRect:1 hasIconModeApplied:v64 flavor:v65 extensionBadge:v66 metadata:*(a1 + 32) toCacheAndCompleteRequest:{v24, v26, v28, v30}];

    if (*(a1 + 90) == 1)
    {
      v60 = v71;
      [*(a1 + 64) _saveLargeThumbnailForDocumentAtURL:*(a1 + 48) toGenstoreWithImage:objc_msgSend(v71 automaticallyGenerated:{"CGImage"), 1}];
      WeakRetained = v69;
    }

    else
    {
      WeakRetained = v69;
      v60 = v71;
    }
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), 0);
LABEL_49:

  [*v4 setGenerator:0];
  v67 = *MEMORY[0x277D85DE8];
}

- (void)findThumbnailInAddition:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277CBE788];
  v11 = a3;
  v12 = [v11 thumbnailDataForKey:v10];
  v13 = [v11 thumbnailURLForKey:v10];

  v20 = 0;
  v14 = *MEMORY[0x277CBE918];
  v19 = 0;
  v15 = [v13 getResourceValue:&v20 forKey:v14 error:&v19];
  v16 = v20;
  v17 = v19;
  if ((v15 & 1) == 0)
  {
    v18 = _log_3();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [QLServerThread findThumbnailInAddition:request:completionHandler:];
    }
  }

  [(QLServerThread *)self processLargeThumbnailData:v12 withContentType:v16 isAppContainer:0 forRequest:v8 fromGenStore:1 completionHandler:v9];
}

- (void)addImageData:(id)a3 toCacheForRequest:(id)a4 withBitmapFormat:(id)a5 contentRect:(CGRect)a6 flavor:(int)a7 metadata:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v41 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = [v18 request];
  v22 = [v21 forceGeneration];

  if ((v22 & 1) == 0)
  {
    v23 = _log_3();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v18;
      _os_log_impl(&dword_2615D3000, v23, OS_LOG_TYPE_INFO, "Will add image to cache for request: %@.", buf, 0xCu);
    }

    v24 = [v18 request];
    v25 = [(QLServerThread *)self cacheThreadForRequest:v24];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __94__QLServerThread_addImageData_toCacheForRequest_withBitmapFormat_contentRect_flavor_metadata___block_invoke;
    v28[3] = &unk_279ADD8C0;
    v29 = v18;
    v30 = v19;
    v31 = v17;
    v32 = v25;
    v33 = v20;
    v38 = a7;
    v34 = x;
    v35 = y;
    v36 = width;
    v37 = height;
    v26 = v25;
    [v26 enqueueWriting:v28];
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __94__QLServerThread_addImageData_toCacheForRequest_withBitmapFormat_contentRect_flavor_metadata___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_2615D3000, v2, OS_LOG_TYPE_INFO, "Adding image to cache for request: %@.", buf, 0xCu);
  }

  v4 = [*(a1 + 40) bytesPerRow];
  v5 = [*(a1 + 40) height] * v4;
  v6 = *(a1 + 48);
  if (v5 < [*(a1 + 48) length])
  {
    v7 = (v5 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
    if (v7 == [*(a1 + 48) length])
    {
      v8 = [*(a1 + 48) subdataWithRange:{0, v5}];

      v6 = v8;
    }
  }

  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) request];
  v11 = *(a1 + 64);
  v12 = *(a1 + 104);
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) badgeType];
  v15 = [*(a1 + 32) request];
  v16 = [v9 addThumbnailIntoCache:v10 bitmapFormat:v13 bitmapData:v6 metadata:v11 flavor:v12 contentRect:v14 badgeType:*(a1 + 72) externalGeneratorDataHash:*(a1 + 80), *(a1 + 88), *(a1 + 96), objc_msgSend(v15, "externalThumbnailGeneratorDataHash")];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)completeThumbnailRequest:(id)a3 thumbnailData:(id)a4 updatedMetadata:(id)a5
{
  v25 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 request];
  if ([QLDiskCacheEnumerator cachedThumbnailDataIsLowQuality:v25 forThumbnailRequest:v10])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = [v25 bitmapData];
  v13 = v8;
  if (!v8)
  {
    v13 = [v25 metadata];
  }

  [v25 contentRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v25 flavor];
  v23 = [v25 bitmapFormat];
  LOBYTE(v24) = 0;
  [(QLServerThread *)self completeThumbnailRequest:v9 bitmapData:v12 metadata:v13 contentRect:v11 thumbnailRepresentation:v22 iconFlavor:v23 format:v15 clientShouldTakeOwnership:v17, v19, v21, v24];

  if (!v8)
  {
  }
}

- (void)thumbnailRequestWasCancelled:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "thumbnailRequestWasCancelled %@", &v8, 0xCu);
  }

  v6 = cancelledError(v4);
  [(QLServerThread *)self failedToCompleteThumbnailRequest:v4 error:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didNotFindLowQualityEntryInCachedForThumbnailRequest:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  queue = self->_queue;
  v8 = a4;
  dispatch_assert_queue_V2(queue);
  v9 = _log_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "didNotFindLowQualityEntryInCachedForThumbnailRequest -> sendResultForThumbnailRequest %@", buf, 0xCu);
  }

  LOBYTE(v11) = 0;
  [(QLServerThread *)self sendResultForThumbnailRequest:v6 images:0 metadata:0 contentRect:0 iconFlavor:1 thumbnailRepresentation:0 clientShouldTakeOwnership:*MEMORY[0x277CBF3A0] reenqueueRequest:*(MEMORY[0x277CBF3A0] + 8) error:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v11, v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)failedToCompleteThumbnailRequest:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  [v6 setGenerationError:v7];
  v8 = _log_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [QLServerThread failedToCompleteThumbnailRequest:error:];
  }

  v9 = [v6 request];
  v10 = [v9 requestedMostRepresentativeType];
  LOBYTE(v11) = 1;
  [(QLServerThread *)self sendResultForThumbnailRequest:v6 images:0 metadata:0 contentRect:0 iconFlavor:v10 thumbnailRepresentation:0 clientShouldTakeOwnership:*MEMORY[0x277CBF3A0] reenqueueRequest:*(MEMORY[0x277CBF3A0] + 8) error:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v11, v7];
}

- (void)sendResultForThumbnailRequest:(id)a3 images:(id)a4 metadata:(id)a5 contentRect:(CGRect)a6 iconFlavor:(int)a7 thumbnailRepresentation:(int64_t)a8 clientShouldTakeOwnership:(BOOL)a9 reenqueueRequest:(BOOL)a10 error:(id)a11
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a11;
  queue = self->_queue;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __160__QLServerThread_sendResultForThumbnailRequest_images_metadata_contentRect_iconFlavor_thumbnailRepresentation_clientShouldTakeOwnership_reenqueueRequest_error___block_invoke;
  v30[3] = &unk_279ADD8E8;
  v31 = v21;
  v32 = v22;
  v33 = v24;
  v34 = self;
  v35 = v23;
  v36 = a8;
  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  v41 = a7;
  v42 = a9;
  v43 = a10;
  v26 = v23;
  v27 = v24;
  v28 = v22;
  v29 = v21;
  dispatch_async(queue, v30);
}

void __160__QLServerThread_sendResultForThumbnailRequest_images_metadata_contentRect_iconFlavor_thumbnailRepresentation_clientShouldTakeOwnership_reenqueueRequest_error___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) topActivity];
  v4 = _os_activity_create(&dword_2615D3000, "Completion", v3, OS_ACTIVITY_FLAG_DEFAULT);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  [*v2 addTypeToHandledTypes:*(v2 + 40)];
  if ([*(a1 + 40) count])
  {
    [*(a1 + 32) addTypeToSuccessfullyHandledTypes:*(a1 + 72)];
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) firstObject];
  v7 = [*v2 request];
  v8 = [v7 resultShouldBeSavedToDisk];
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != 1)
  {

    goto LABEL_11;
  }

  v10 = [*v2 hasHandledAllRequestedTypesOrMostRepresentativeType];

  if (!v10)
  {
LABEL_11:
    v15 = _log_3();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __160__QLServerThread_sendResultForThumbnailRequest_images_metadata_contentRect_iconFlavor_thumbnailRepresentation_clientShouldTakeOwnership_reenqueueRequest_error___block_invoke_cold_2(v2);
    }

    [*(a1 + 56) _notifyGenerationHandlerOfThumbnailGenerationForRequest:*(a1 + 32) images:*(a1 + 40) metadata:*(a1 + 64) contentRect:*(a1 + 112) iconFlavor:*(a1 + 72) thumbnailRepresentation:*(a1 + 116) clientShouldTakeOwnership:*(a1 + 80) error:{*(a1 + 88), *(a1 + 96), *(a1 + 104), v5}];
    goto LABEL_14;
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v21 = 0;
  v13 = [v11 _saveResultForThumbnailRequest:v12 withImage:v6 error:&v21];
  v14 = v21;

  if (v13)
  {
    v5 = v14;
    goto LABEL_11;
  }

  v16 = _log_3();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __160__QLServerThread_sendResultForThumbnailRequest_images_metadata_contentRect_iconFlavor_thumbnailRepresentation_clientShouldTakeOwnership_reenqueueRequest_error___block_invoke_cold_1(v2);
  }

  v17 = *(a1 + 56);
  v18 = *(a1 + 32);
  v19 = [v18 request];
  v20 = [v19 requestedMostRepresentativeType];
  [v17 _notifyGenerationHandlerOfThumbnailGenerationForRequest:v18 images:0 metadata:0 contentRect:0 iconFlavor:v20 thumbnailRepresentation:0 clientShouldTakeOwnership:*MEMORY[0x277CBF3A0] error:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v14}];

  v5 = v14;
LABEL_14:
  if (*(a1 + 117) == 1)
  {
    [*(a1 + 56) queueThumbnailRequest:*(a1 + 32) tryCache:0 tryAdditionsFirst:0];
  }

  os_activity_scope_leave(&state);
}

- (BOOL)_saveResultForThumbnailRequest:(id)a3 withImage:(id)a4 error:(id *)a5
{
  v74[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  queue = self->_queue;
  v10 = a4;
  dispatch_assert_queue_V2(queue);
  v11 = [v8 request];
  v12 = [v11 saveURL];
  v13 = [v11 saveURLContentType];
  v14 = [v13 identifier];

  v15 = QLImageCreateForDefaultThumbnailGenerationFromData();
  if (v15)
  {
    if (v12)
    {
      v55 = [v12 startAccessingSecurityScopedResource];
      v58 = 0;
      v16 = [MEMORY[0x277CBEBC0] _QLCreateTemporaryReplacementURLForOriginalFileAtURL:v12 withExtension:0 temporaryDirectoryURL:&v58];
      v54 = v58;
      if (!v16)
      {
        v32 = _log_3();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [QLServerThread _saveResultForThumbnailRequest:withImage:error:];
        }

        v18 = 0;
        v16 = 0;
LABEL_23:
        v33 = _log_3();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [QLServerThread _saveResultForThumbnailRequest:withImage:error:];
        }

        if (a5)
        {
          [MEMORY[0x277CDAAE0] errorWithCode:1 request:v11 additionalUserInfo:0];
          *a5 = v21 = 0;
          if (!v10)
          {
LABEL_28:
            if (v54)
            {
              [MEMORY[0x277CCAA00] _QLTRemoveTemporaryDirectoryAtURL:v54];
            }

            if (v55)
            {
              [v12 stopAccessingSecurityScopedResource];
            }

            goto LABEL_33;
          }
        }

        else
        {
          v21 = 0;
          if (!v10)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        CFRelease(v15);
        goto LABEL_28;
      }

      v17 = CGImageDestinationCreateWithURL(v16, v14, 1uLL, 0);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v17 = CGImageDestinationCreateWithData(v18, v14, 1uLL, 0);
      v55 = 0;
      v54 = 0;
      v16 = 0;
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    v53 = v14;
    v71 = *MEMORY[0x277CD2D60];
    v72 = MEMORY[0x277CBEC38];
    CGImageDestinationAddImage(v17, v15, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1]);
    v22 = CGImageDestinationFinalize(v17);
    CFRelease(v17);
    if (!v22)
    {
      v29 = _log_3();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [QLServerThread _saveResultForThumbnailRequest:withImage:error:];
      }

      if (a5)
      {
        v51 = MEMORY[0x277CDAAE0];
        v69 = *MEMORY[0x277CCA068];
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to save thumbnail for %@ to %@", v11, v12];
        v70 = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        *a5 = [v51 errorWithCode:1 request:v11 additionalUserInfo:v31];

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v14 = v53;
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (!v18)
    {
      v36 = [MEMORY[0x277CCAA00] defaultManager];
      v56 = 0;
      v21 = [v36 replaceItemAtURL:v12 withItemAtURL:v16 backupItemName:0 options:0 resultingItemURL:0 error:&v56];
      v37 = v56;

      v14 = v53;
      if ((v21 & 1) == 0)
      {
        v52 = v37;
        v38 = _log_3();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [QLServerThread _saveResultForThumbnailRequest:withImage:error:];
        }

        v37 = v52;
        if (a5)
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to save thumbnail for %@ to %@", v8, v12];
          v40 = *MEMORY[0x277CCA068];
          v49 = v39;
          if (v52)
          {
            v41 = *MEMORY[0x277CCA7E8];
            v61[0] = *MEMORY[0x277CCA068];
            v61[1] = v41;
            v62[0] = v39;
            v62[1] = v52;
            v42 = MEMORY[0x277CBEAC0];
            v43 = v62;
            v44 = v61;
            v45 = 2;
          }

          else
          {
            v59 = *MEMORY[0x277CCA068];
            v60 = v39;
            v42 = MEMORY[0x277CBEAC0];
            v43 = &v60;
            v44 = &v59;
            v45 = 1;
          }

          v48 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
          *a5 = [MEMORY[0x277CDAAE0] errorWithCode:1 request:v11 additionalUserInfo:v48];
          v37 = v52;
          v46 = v52;
          *a5 = v52;
        }
      }

      v18 = 0;
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v23 = [v11 saveFileHandle];
    v57 = 0;
    v24 = [v23 writeData:v18 error:&v57];
    v50 = v57;

    v25 = _log_3();
    v26 = v25;
    if (v24)
    {
      v14 = v53;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_48;
      }

      v27 = [(__CFData *)v18 length];
      v28 = [v11 saveFileHandle];
      *buf = 134218498;
      v64 = v27;
      v65 = 2112;
      v66 = v28;
      v67 = 2112;
      v68 = v8;
      _os_log_debug_impl(&dword_2615D3000, v26, OS_LOG_TYPE_DEBUG, "Successfully wrote data of length %llu to file handle %@ for request %@", buf, 0x20u);
    }

    else
    {
      v14 = v53;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v47 = [(__CFData *)v18 length];
      v28 = [v11 saveFileHandle];
      *buf = 134218498;
      v64 = v47;
      v65 = 2112;
      v66 = v28;
      v67 = 2112;
      v68 = v50;
      _os_log_error_impl(&dword_2615D3000, v26, OS_LOG_TYPE_ERROR, "Could not write saved thumbnail (length: %llu) to file handle %@: %@", buf, 0x20u);
    }

    v14 = v53;
LABEL_48:

    v21 = 1;
    if (!v10)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v19 = _log_3();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [QLServerThread _saveResultForThumbnailRequest:withImage:error:];
  }

  if (!a5)
  {
    v21 = 0;
    goto LABEL_34;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decode thumbnail data to save for %@", v11];
  v20 = MEMORY[0x277CDAAE0];
  v73 = *MEMORY[0x277CCA068];
  v74[0] = v18;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
  [v20 errorWithCode:1 request:v11 additionalUserInfo:v16];
  *a5 = v21 = 0;
LABEL_33:

LABEL_34:
  v34 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_completeHandledThumbnailRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "All requested thumbnail types for request %@ have been handled.", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCACC8] callStackReturnAddresses];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__QLServerThread__completeHandledThumbnailRequest___block_invoke;
  block[3] = &unk_279ADD2A0;
  block[4] = self;
  v12 = v4;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__QLServerThread__completeHandledThumbnailRequest___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 128);
  v4 = [*(a1 + 40) request];
  v5 = [v4 uuid];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = _log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __51__QLServerThread__completeHandledThumbnailRequest___block_invoke_cold_1(v2);
    }
  }

  [*(a1 + 32) _removeRequestFromPendingRequests:*(a1 + 40)];
  v8 = _log_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *v2;
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_2615D3000, v8, OS_LOG_TYPE_INFO, "Leaving group for request %@", &v12, 0xCu);
  }

  v10 = [*v2 batchDispatchGroup];
  dispatch_group_leave(v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_removeRequestFromPendingRequests:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  pendingRequests = self->_pendingRequests;
  v7 = [v5 request];

  v8 = [v7 uuid];
  [(NSMutableDictionary *)pendingRequests setObject:0 forKeyedSubscript:v8];

  if (![(NSMutableDictionary *)self->_pendingRequests count])
  {
    os_unfair_lock_lock(&self->_domainCacheLock);
    [(NSMutableDictionary *)self->_domainsToCaches enumerateKeysAndObjectsUsingBlock:&__block_literal_global_85];
    os_unfair_lock_unlock(&self->_domainCacheLock);
    cacheThread = self->_cacheThread;

    [(_QLCacheThread *)cacheThread serverIsIdle];
  }
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  v7 = objc_opt_new();
  os_unfair_lock_lock(&self->_domainCacheLock);
  domainsToCaches = self->_domainsToCaches;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __123__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers_completionHandler___block_invoke;
  v31[3] = &unk_279ADD930;
  v9 = v7;
  v32 = v9;
  [(NSMutableDictionary *)domainsToCaches enumerateKeysAndObjectsUsingBlock:v31];
  os_unfair_lock_unlock(&self->_domainCacheLock);
  v20 = self;
  [v9 addObject:self->_cacheThread];
  v10 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        dispatch_group_enter(v10);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __123__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers_completionHandler___block_invoke_2;
        v24[3] = &unk_279ADD958;
        v24[4] = v16;
        v25 = v6;
        v26 = v10;
        [v16 enqueueWriting:v24];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  completionBlocksQueue = v20->_completionBlocksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers_completionHandler___block_invoke_3;
  block[3] = &unk_279ADD038;
  v23 = v21;
  v18 = v21;
  dispatch_group_notify(v10, completionBlocksQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __123__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) locked_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:*(a1 + 40)];
  dispatch_group_leave(*(a1 + 48));
  return v2;
}

uint64_t __123__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  v7 = objc_opt_new();
  os_unfair_lock_lock(&self->_domainCacheLock);
  domainsToCaches = self->_domainsToCaches;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __102__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers_completionHandler___block_invoke;
  v31[3] = &unk_279ADD930;
  v9 = v7;
  v32 = v9;
  [(NSMutableDictionary *)domainsToCaches enumerateKeysAndObjectsUsingBlock:v31];
  os_unfair_lock_unlock(&self->_domainCacheLock);
  v20 = self;
  [v9 addObject:self->_cacheThread];
  v10 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        dispatch_group_enter(v10);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __102__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers_completionHandler___block_invoke_2;
        v24[3] = &unk_279ADD958;
        v24[4] = v16;
        v25 = v6;
        v26 = v10;
        [v16 enqueueWriting:v24];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  completionBlocksQueue = v20->_completionBlocksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers_completionHandler___block_invoke_3;
  block[3] = &unk_279ADD038;
  v23 = v21;
  v18 = v21;
  dispatch_group_notify(v10, completionBlocksQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __102__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) locked_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:*(a1 + 40)];
  dispatch_group_leave(*(a1 + 48));
  return v2;
}

uint64_t __102__QLServerThread_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_canUseAdditionToProvideThumbnail:(id)a3 forThumbnailRequest:(id)a4 taggedLogicalURL:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if (a3)
  {
    v7 = MEMORY[0x277CDAB10];
    v8 = a3;
    v9 = [[v7 alloc] initWithFileURL:v6 automaticallyGenerated:1];
    v10 = [v8 shouldBeInvalidatedByThumbnailVersion:v9];

    v11 = _log_3();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "not trusting thumbnail in GenStore for %@ because it is not for the right version", &v18, 0xCu);
      }

      if (!v6 || ([MEMORY[0x277CDAB20] contentTypeForURL:v6], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[QLPreviewThumbnailGenerator canGenerateThumbnailForContentType:atSize:](QLPreviewThumbnailGenerator, "canGenerateThumbnailForContentType:atSize:", v13, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)), v13, v14))
      {
        v15 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v12 = _log_3();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [QLServerThread _canUseAdditionToProvideThumbnail:v12 forThumbnailRequest:? taggedLogicalURL:?];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [QLServerThread _canUseAdditionToProvideThumbnail:forThumbnailRequest:taggedLogicalURL:];
    }

    v15 = 1;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (void)updateThumbnailRequestThumbnailVersionWithThirdPartyGeneratorInformationIfNeeded:(id)a3
{
  v12 = a3;
  v3 = [v12 contentType];

  if (v3)
  {
    v4 = +[QLThumbnailExtensionMonitor shared];
    v5 = [v4 bestExtensionFor:v12 matching:3];

    if (v5)
    {
      v6 = [v5 generatorIdentifier];
      v7 = [v5 generatorVersion];
      if (v6)
      {
        v8 = [v12 fileIdentifier];
        v9 = [v8 version];
        [v9 setGeneratorID:v6];

        v10 = [v12 fileIdentifier];
        v11 = [v10 version];
        [v11 setGeneratorVersion:v7];
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }
}

- (void)reset
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __23__QLServerThread_reset__block_invoke;
  v2[3] = &unk_279ADD0F8;
  v2[4] = self;
  [(QLServerThread *)self perform:v2];
}

- (void)forEachCacheThread:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  os_unfair_lock_lock(&self->_domainCacheLock);
  domainsToCaches = self->_domainsToCaches;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__QLServerThread_forEachCacheThread___block_invoke;
  v19[3] = &unk_279ADD980;
  v7 = v4;
  v22 = v7;
  v8 = v5;
  v20 = v8;
  v21 = self;
  [(NSMutableDictionary *)domainsToCaches enumerateKeysAndObjectsUsingBlock:v19];
  os_unfair_lock_unlock(&self->_domainCacheLock);
  os_unfair_lock_lock(&self->_volumeCacheLock);
  volumesToCaches = self->_volumesToCaches;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __37__QLServerThread_forEachCacheThread___block_invoke_2;
  v15 = &unk_279ADD9A8;
  v10 = v8;
  v16 = v10;
  v11 = v7;
  v17 = self;
  v18 = v11;
  [(NSMutableDictionary *)volumesToCaches enumerateKeysAndObjectsUsingBlock:&v12];
  os_unfair_lock_unlock(&self->_volumeCacheLock);
  if ([v10 containsObject:{self->_cacheThread, v12, v13, v14, v15}])
  {
    (*(v11 + 2))(v11, self->_cacheThread);
  }
}

uint64_t __37__QLServerThread_forEachCacheThread___block_invoke(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = *(a1[5] + 184);

  return [v2 addObject:v3];
}

void __37__QLServerThread_forEachCacheThread___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) addObject:*(*(a1 + 40) + 184)];
  }
}

- (id)cacheThreadForVolume:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_volumeCacheLock);
  v5 = [(NSMutableDictionary *)self->_volumesToCaches objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_volumeCacheLock);

  return v5;
}

- (id)cacheThreadForFileIdentifier:(id)a3 atURL:(id)a4
{
  v6 = a4;
  v10 = [a3 fsid];
  v7 = [MEMORY[0x277CCAE60] valueWithBytes:&v10 objCType:"{fsid=[2i]}"];
  os_unfair_lock_lock(&self->_fsidCacheLock);
  v8 = [(NSMutableDictionary *)self->_fsidsToCaches objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(QLServerThread *)self uncachedCacheThreadForFileAtURL:v6];
    [(NSMutableDictionary *)self->_fsidsToCaches setObject:v8 forKeyedSubscript:v7];
  }

  os_unfair_lock_unlock(&self->_fsidCacheLock);

  return v8;
}

- (id)allKnownDataSeparatedVolumes
{
  os_unfair_lock_lock(&self->_volumeCacheLock);
  v3 = [(NSMutableDictionary *)self->_volumesToCaches allKeys];
  os_unfair_lock_unlock(&self->_volumeCacheLock);

  return v3;
}

- (id)failedDownloadErrorForRequest:(id)a3 underlyingError:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 item];
  if ([v7 isDownloaded])
  {
    v8 = @"Could not generate thumbnail for %@, and could not download a thumbnail either";
  }

  else
  {
    v8 = @"Could not download a thumbnail for cloud item %@";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v7];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = *MEMORY[0x277CCA068];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA068]];
  if (v6)
  {
    [v10 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v12 = MEMORY[0x277CDAAE0];
  v13 = [v5 request];
  v18 = v11;
  v19[0] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v15 = [v12 errorWithCode:3 request:v13 additionalUserInfo:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_downloadThumbnailForRequest:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 item];
  v9 = [v8 providerDomainID];
  if ((([v9 hasPrefix:@"com.apple.filesystems.UserFS.FileProvider"] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"com.apple.FileProvider.LocalStorage") & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"com.apple.SMBClientProvider.FileProvider")) && (objc_msgSend(v8, "fp_isContainer") & 1) == 0)
  {
    v16 = _log_9();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_2615D3000, v16, OS_LOG_TYPE_INFO, "Item provider doesn't support fetching thumbnails for %@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    v13 = self;
    v14 = v6;
    v15 = v11;
    goto LABEL_12;
  }

  v10 = [v8 providerDomainID];
  v11 = [(QLServerThread *)self cacheThreadForProviderDomainID:v10];

  if ([v11 itemIsMissingRemoteThumbnail:v8])
  {
    v12 = _log_9();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "We cached there is no thumbnail on the server for %@, failing", buf, 0xCu);
    }

    v13 = self;
    v14 = v6;
    v15 = 0;
LABEL_12:
    v17 = [(QLServerThread *)v13 failedDownloadErrorForRequest:v14 underlyingError:v15];
    v7[2](v7, v17);
    goto LABEL_16;
  }

  [v6 setDownloadCompletionHandler:v7];
  v18 = _log_9();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [QLServerThread(UbiquitousRequests) _downloadThumbnailForRequest:v6 completionHandler:self];
  }

  v19 = [v6 generationHandler];
  v20 = [v6 request];
  v21 = [v20 uuid];
  [v19 didUpdateStatus:1 ofThumbnailGenerationWithUUID:v21];

  pendingDownloadsQueue = self->_pendingDownloadsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke;
  block[3] = &unk_279ADD2A0;
  v25 = v6;
  v26 = self;
  v27 = v8;
  dispatch_async(pendingDownloadsQueue, block);

  v17 = v25;
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

void __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] request];
  v3 = _log_9();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v2;
    _os_log_impl(&dword_2615D3000, v3, OS_LOG_TYPE_INFO, "Adding thumbnail-download to queue for request: %@", buf, 0xCu);
  }

  v4 = [a1[5] queuedDownloadRequests];
  v5 = [a1[6] providerDomainID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [a1[6] providerDomainID];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [a1[6] itemIdentifier];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_opt_new();
    v11 = [a1[6] itemIdentifier];
    [v6 setObject:v10 forKeyedSubscript:v11];
  }

  v12 = [a1[6] itemIdentifier];
  v13 = [v6 objectForKeyedSubscript:v12];
  [v13 addObject:a1[4]];

  if ([v6 count] > 9)
  {
    v17 = _log_9();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke_cold_1();
    }

    [a1[5] drainDownloadsQueueIfNeeded];
  }

  else if ((*(a1[5] + 24) & 1) == 0)
  {
    v14 = dispatch_time(0, 100000000);
    v15 = a1[5];
    v16 = *(v15 + 2);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke_18;
    v19[3] = &unk_279ADD200;
    v19[4] = v15;
    v20 = v2;
    dispatch_after(v14, v16, v19);
    *(a1[5] + 24) = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke_18(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = _log_9();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke_18_cold_1(a1);
  }

  return [*(a1 + 32) drainDownloadsQueueIfNeeded];
}

- (void)downloadThumbnailForRequest:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 request];
  v9 = [v8 isDownloadingAllowed];

  if (v9)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__QLServerThread_UbiquitousRequests__downloadThumbnailForRequest_completionHandler___block_invoke;
    v19[3] = &unk_279ADDFA0;
    v20 = v6;
    v21 = self;
    v22 = v7;
    [v20 fetchFPItemWithCompletionHandler:v19];

    v10 = v20;
  }

  else
  {
    v11 = _log_9();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Will not add thumbnail-download to queue because downloading is not allowed for request: %@.", buf, 0xCu);
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [v6 request];
    v10 = [v12 stringWithFormat:@"Failed to generate a thumbnail for request %@ and thumbnail downloading is not allowed for this request", v13];

    v14 = MEMORY[0x277CDAAE0];
    v15 = [v6 request];
    v23 = *MEMORY[0x277CCA068];
    v24 = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = [v14 errorWithCode:0 request:v15 additionalUserInfo:v16];
    (*(v7 + 2))(v7, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __84__QLServerThread_UbiquitousRequests__downloadThumbnailForRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) item];

  if (v4)
  {
    [*(a1 + 40) _downloadThumbnailForRequest:*(a1 + 32) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = _log_9();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__QLServerThread_UbiquitousRequests__downloadThumbnailForRequest_completionHandler___block_invoke_cold_1((a1 + 32));
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 32) request];
    v8 = [v6 stringWithFormat:@"Failed to generate a thumbnail for request %@ and could not download thumbnail: no backing ubiquitous item found (%@)", v7, v3];

    v9 = MEMORY[0x277CBEB38];
    v17 = *MEMORY[0x277CCA068];
    v18[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v9 dictionaryWithDictionary:v10];

    if (v3)
    {
      [v11 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }

    v12 = *(a1 + 48);
    v13 = MEMORY[0x277CDAAE0];
    v14 = [*(a1 + 32) request];
    v15 = [v13 errorWithCode:0 request:v14 additionalUserInfo:v11];
    (*(v12 + 16))(v12, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)downloadThumbnails:(id)a3 forProvider:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_pendingDownloadsQueue);
  if ([v6 count])
  {
    v30 = v7;
    v31 = [(QLServerThread *)self cacheThreadForProviderDomainID:v7];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = [v6 allValues];
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v10)
    {
      v11 = *v47;
      do
      {
        v12 = 0;
        do
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v46 + 1) + 8 * v12) anyObject];
          v14 = [v13 item];
          [v8 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v10);
    }

    v15 = _log_9();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(QLServerThread(UbiquitousRequests) *)v6 downloadThumbnails:v15 forProvider:?];
    }

    v16 = _log_9();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];
    }

    atomic_fetch_add(&self->_thumbnailDownloadsInFlight, [v8 count]);
    v18 = [MEMORY[0x277CC6408] defaultManager];
    v19 = [v18 thumbnailsFetchOperationForItems:v8 withSize:1024.0 scale:{1024.0, 2.0}];

    objc_initWeak(&location, self);
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_30;
    v39[3] = &unk_279ADE010;
    objc_copyWeak(&v44, &location);
    v22 = v6;
    v40 = v22;
    v41 = self;
    v23 = v20;
    v42 = v23;
    v24 = v21;
    v43 = v24;
    [v19 setPerThumbnailCompletionBlock:v39];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_33;
    v32[3] = &unk_279ADE088;
    objc_copyWeak(&v38, &location);
    v33 = v22;
    v34 = self;
    v25 = v31;
    v35 = v25;
    v26 = v23;
    v36 = v26;
    v27 = v24;
    v37 = v27;
    [v19 setThumbnailsFetchCompletionBlock:v32];
    [(NSOperationQueue *)self->_downloadsOperationQueue addOperation:v19];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v44);

    objc_destroyWeak(&location);
    v7 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _log_9();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_cold_1(v4);
  }
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_30(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    atomic_fetch_add(WeakRetained + 7, 0xFFFFFFFF);
    v15 = *(WeakRetained + 4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2;
    block[3] = &unk_279ADDFE8;
    v20 = v10;
    v21 = v11;
    objc_copyWeak(&v28, (a1 + 64));
    v22 = *(a1 + 32);
    v23 = v9;
    v16 = v12;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = *(a1 + 56);
    dispatch_async(v15, block);

    objc_destroyWeak(&v28);
  }
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v55 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    v51 = (a1 + 56);
    v53 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
    v3 = [v53 anyObject];
    v52 = [v3 item];

    v4 = _log_9();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_cold_1(v51);
    }

    if (v53)
    {
      if (v2)
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v5 = [v53 allObjects];
        v6 = [v5 countByEnumeratingWithState:&v69 objects:v83 count:16];
        if (v6)
        {
          v7 = *v70;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v70 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v69 + 1) + 8 * i);
              *&state[8] = 0;
              *state = 0;
              v10 = [v9 activity];
              os_activity_scope_enter(v10, state);

              v11 = _log_9();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf.opaque[0]) = 138412290;
                *(buf.opaque + 4) = v9;
                _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Downloaded thumbnail for %@; adding to cache", &buf, 0xCu);
              }

              os_activity_scope_leave(state);
            }

            v6 = [v5 countByEnumeratingWithState:&v69 objects:v83 count:16];
          }

          while (v6);
        }

        v12 = [v52 isContainer];
        [*(a1 + 88) addObject:v52];
        if (([v55 isEqualToString:*MEMORY[0x277CC62D8]] & 1) != 0 || objc_msgSend(v55, "isEqualToString:", *MEMORY[0x277CC62E0]))
        {
          v13 = [v53 anyObject];
          v14 = [v13 request];

          [v14 size];
          v16 = v15;
          v18 = v17;
          [v14 scale];
          v20 = [WeakRetained processedPNGAppIconDataForData:v2 ofType:v55 size:v16 scale:{v18, v19}];

          v21 = [*MEMORY[0x277CE1E10] identifier];

          v55 = v21;
          v2 = v20;
        }

        if (v2)
        {
          v67 = 0uLL;
          v68 = 0uLL;
          v65 = 0uLL;
          v66 = 0uLL;
          v22 = [v53 allObjects];
          v23 = [v22 countByEnumeratingWithState:&v65 objects:v82 count:16];
          if (v23)
          {
            v24 = *v66;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v66 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v65 + 1) + 8 * j);
                v60 = MEMORY[0x277D85DD0];
                v61 = 3221225472;
                v62 = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_31;
                v63 = &unk_279ADD318;
                v64 = v26;
                [WeakRetained processLargeThumbnailData:v2 withContentType:v55 isAppContainer:v12 forRequest:? fromGenStore:? completionHandler:?];
              }

              v23 = [v22 countByEnumeratingWithState:&v65 objects:v82 count:16];
            }

            while (v23);
          }
        }

        else
        {
          v58 = 0uLL;
          v59 = 0uLL;
          v56 = 0uLL;
          v57 = 0uLL;
          v22 = [v53 allObjects];
          v2 = [v22 countByEnumeratingWithState:&v56 objects:v81 count:16];
          if (v2)
          {
            v36 = *v57;
            do
            {
              for (k = 0; k != v2; k = k + 1)
              {
                if (*v57 != v36)
                {
                  objc_enumerationMutation(v22);
                }

                v38 = *(*(&v56 + 1) + 8 * k);
                *&state[8] = 0;
                *state = 0;
                v39 = [v38 activity];
                os_activity_scope_enter(v39, state);

                v40 = _log_9();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.opaque[0]) = 138412290;
                  *(buf.opaque + 4) = v38;
                  _os_log_error_impl(&dword_2615D3000, v40, OS_LOG_TYPE_ERROR, "Unable to process icon data for %@", &buf, 0xCu);
                }

                v41 = [v38 downloadCompletionHandler];
                v41[2](v41, *(a1 + 64));

                os_activity_scope_leave(state);
              }

              v2 = [v22 countByEnumeratingWithState:&v56 objects:v81 count:16];
            }

            while (v2);
          }
        }
      }

      else if (*(a1 + 64))
      {
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v22 = [v53 allObjects];
        v2 = [v22 countByEnumeratingWithState:&v77 objects:v87 count:16];
        if (v2)
        {
          v28 = *v78;
          do
          {
            for (m = 0; m != v2; m = m + 1)
            {
              if (*v78 != v28)
              {
                objc_enumerationMutation(v22);
              }

              v30 = *(*(&v77 + 1) + 8 * m);
              buf.opaque[1] = 0;
              buf.opaque[0] = 0;
              v31 = [v30 activity];
              os_activity_scope_enter(v31, &buf);

              v32 = _log_9();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = *(a1 + 64);
                *state = 138412546;
                *&state[4] = v30;
                *&state[12] = 2112;
                *&state[14] = v33;
                _os_log_impl(&dword_2615D3000, v32, OS_LOG_TYPE_INFO, "No thumbnail for %@: thumbnail download failed [%@]", state, 0x16u);
              }

              v34 = [v30 downloadCompletionHandler];
              v35 = [*(a1 + 72) failedDownloadErrorForRequest:v30 underlyingError:*(a1 + 64)];
              (v34)[2](v34, v35);

              os_activity_scope_leave(&buf);
            }

            v2 = [v22 countByEnumeratingWithState:&v77 objects:v87 count:16];
          }

          while (v2);
        }
      }

      else
      {
        [*(a1 + 80) addObject:v52];
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v22 = [v53 allObjects];
        v2 = [v22 countByEnumeratingWithState:&v73 objects:v84 count:16];
        if (v2)
        {
          v42 = *v74;
          do
          {
            for (n = 0; n != v2; n = n + 1)
            {
              if (*v74 != v42)
              {
                objc_enumerationMutation(v22);
              }

              v44 = *(*(&v73 + 1) + 8 * n);
              *&state[8] = 0;
              *state = 0;
              v45 = [v44 activity];
              os_activity_scope_enter(v45, state);

              v46 = _log_9();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf.opaque[0]) = 138412290;
                *(buf.opaque + 4) = v44;
                _os_log_impl(&dword_2615D3000, v46, OS_LOG_TYPE_INFO, "No thumbnail in the cloud for %@", &buf, 0xCu);
              }

              v47 = [*(a1 + 72) failedDownloadErrorForRequest:v44 underlyingError:0];
              v48 = [v44 downloadCompletionHandler];
              (v48)[2](v48, v47);

              os_activity_scope_leave(state);
            }

            v2 = [v22 countByEnumeratingWithState:&v73 objects:v84 count:16];
          }

          while (v2);
        }
      }

      v49 = _log_9();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_cold_2(v53, v51);
      }

      [*(a1 + 48) setObject:0 forKeyedSubscript:*(a1 + 56)];
    }

    else
    {
      v27 = _log_9();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_cold_3(v51);
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _log_9();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_31_cold_1(a1);
    }
  }

  v5 = [*(a1 + 32) downloadCompletionHandler];
  (v5)[2](v5, v3);
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_34;
    block[3] = &unk_279ADE060;
    block[4] = WeakRetained;
    *&v5 = *(a1 + 32);
    *(&v5 + 1) = *(a1 + 40);
    v9 = v5;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v11 = v9;
    v12 = v8;
    v13 = *(a1 + 64);
    dispatch_async(v4, block);
  }
}

uint64_t __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_3;
  block[3] = &unk_279ADD0F8;
  block[4] = v2;
  dispatch_async(v3, block);
  atomic_fetch_add((*(a1 + 32) + 28), -[*(a1 + 40) count]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_35;
  v6[3] = &unk_279ADE038;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 48);
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  [*(a1 + 40) removeAllObjects];
  [*(a1 + 56) noteRemoteThumbnailMissingForItems:*(a1 + 64)];
  return [*(a1 + 56) noteRemoteThumbnailPresentForItems:*(a1 + 72)];
}

uint64_t __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_3(uint64_t a1)
{
  v2 = _log_9();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_3_cold_1();
  }

  return [*(a1 + 32) drainDownloadsQueueIfNeeded];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v5 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 allObjects];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v11 = [v10 activity];
        os_activity_scope_enter(v11, &state);

        v12 = _log_9();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_error_impl(&dword_2615D3000, v12, OS_LOG_TYPE_ERROR, "Failing %@, which did not get a per-thumbnail download completion block", buf, 0xCu);
        }

        v13 = [*(a1 + 32) failedDownloadErrorForRequest:v10 underlyingError:0];
        v14 = [v10 downloadCompletionHandler];
        (v14)[2](v14, v13);

        os_activity_scope_leave(&state);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)drainDownloadsQueueIfNeeded
{
  dispatch_assert_queue_V2(self->_pendingDownloadsQueue);
  queuedDownloadRequests = self->_queuedDownloadRequests;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__QLServerThread_UbiquitousRequests__drainDownloadsQueueIfNeeded__block_invoke;
  v4[3] = &unk_279ADE0B0;
  v4[4] = self;
  [(NSMutableDictionary *)queuedDownloadRequests enumerateKeysAndObjectsUsingBlock:v4];
}

void __65__QLServerThread_UbiquitousRequests__drainDownloadsQueueIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = [v7 mutableCopy];
  LODWORD(a1) = [*(a1 + 32) downloadThumbnails:v6 forProvider:v5];

  if (a1)
  {
    [v7 removeAllObjects];
  }
}

- (id)processedPNGAppIconDataForData:(id)a3 ofType:(id)a4 size:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = _log_9();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [QLServerThread(UbiquitousRequests) processedPNGAppIconDataForData:ofType:size:scale:];
  }

  v14 = [v12 isEqualToString:*MEMORY[0x277CC62D8]];
  if (v14)
  {
    v15 = [(QLServerThread *)self _createUndecoratedAppIconForData:v11 ofSize:width scale:height, a6];
  }

  else
  {
    v15 = LICreateIconFromCachedBitmap();
  }

  v16 = v15;
  if (v15)
  {
    v17 = QLCGImageRefPNGRepresentation();

    CFRelease(v16);
  }

  else
  {
    v18 = _log_9();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [QLServerThread(UbiquitousRequests) processedPNGAppIconDataForData:ofType:size:scale:];
    }

    v17 = 0;
  }

  return v17;
}

- (CGImage)_createUndecoratedAppIconForData:(id)a3 ofSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = *MEMORY[0x277CD3648];
  v24[0] = MEMORY[0x277CBEC38];
  v8 = MEMORY[0x277CBEAC0];
  v9 = a3;
  v10 = [v8 dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v11 = CGImageSourceCreateWithData(v9, v10);

  if (!v11)
  {
    goto LABEL_6;
  }

  if (!CGImageSourceGetCount(v11))
  {
    CFRelease(v11);
    goto LABEL_6;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, v10);
  CFRelease(v11);
  if (!ImageAtIndex)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  v13 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:ImageAtIndex scale:1.0];
  v14 = objc_alloc_init(MEMORY[0x277D1B1C8]);
  [v14 setSize:{width, height}];
  [v14 setScale:a5];
  v15 = objc_alloc(MEMORY[0x277D1B1A8]);
  v22 = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v17 = [v15 initWithImages:v16];

  v18 = [v17 prepareImageForDescriptor:v14];
  v19 = [v18 CGImage];
  CGImageRetain(v19);
  CFRelease(ImageAtIndex);

LABEL_7:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2615D3000, a2, OS_LOG_TYPE_DEBUG, "Got external cache for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Error while fetching thumbnail from external cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_3(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Received thumbnail data which ImageIO is unable to read (%@): image size is zero.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__QLServerThread_ExternalCache__findUncachedThumbnailInExternalThumbnailCacheForRequest_item_URL_completionHandler___block_invoke_2_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Received thumbnail data which ImageIO is unable to read (%@).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__QLServerThread_ExternalCache__receivedExternalCacheConnection_error_forProviderDomainID___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, a2, a3, "Connection to external thumbnail cache was invalidated for: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __82__QLServerThread_ExternalCache__storeImage_inExternalThumbnailCacheForItem_atURL___block_invoke_3_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeCacheThreadForPersonaString:containerURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "[ERROR] won't restore persona: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeCacheThreadForPersonaString:containerURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "[ERROR] Can't adopt persona %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makeCacheThreadForPersonaString:(uint64_t *)a1 containerURL:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v1, v2, "failed creating container with error %llu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)uncachedCacheThreadForProviderDomainID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Failed to fetch domain for domain ID %@ (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)uncachedCacheThreadForFileAtURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Could not list persona, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uncachedCacheThreadForFileAtURL:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Could not retrieve container for %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateSuccessiveThumbnailRepresentationsForGeneratorRequests:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "generateSuccessiveThumbnailRepresentationsForRequests: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__QLServerThread__installRequestsFinishedWatchdog__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Request %@ has been pending for more than 10 minutes", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addThumbnailRequestBatchToQueue:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "thumbnail requests queued (%@), relinquishing server thread", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)queueThumbnailRequest:tryCache:tryAdditionsFirst:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "failed to queue %@ for cache; falling back", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v2, v3, "Queuing thumbnail request %@: request is cancelled", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_26_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v2, v3, "%@ is not ubiquitous, but does not reference a valid file either", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_28_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "Beginning uncached retrieval: thumbnail request %@ cancelled", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_29_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v2, v3, "Could not determine if %@ is for an ubiquitous file", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_29_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "File for %@ is not downloaded, trying genstore / download of the thumbnail", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_30_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __67__QLServerThread_queueThumbnailRequest_tryCache_tryAdditionsFirst___block_invoke_30_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)findUncachedThumbnailInGenStoreOrDownload:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "Skipping GenStore because %@ may not be materialized yet", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__QLServerThread_findUncachedThumbnailInGenStoreOrDownload_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "findUncachedThumbnailInGenStoreForRequest: thumbnail request %@ cancelled", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)processLargeThumbnailData:withContentType:isAppContainer:forRequest:fromGenStore:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "processLargeThumbnailData: adding image data to cache and completing request %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processLargeThumbnailData:withContentType:isAppContainer:forRequest:fromGenStore:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Failed to create thumbnail from image source for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processLargeThumbnailData:withContentType:isAppContainer:forRequest:fromGenStore:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Thumbnail size could not be determined from thumbnail data for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processLargeThumbnailData:withContentType:isAppContainer:forRequest:fromGenStore:completionHandler:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not generate thumbnail for %@ because received nil data (content type: %@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveLargeThumbnailToGenstoreWithData:url:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not save thumbnail data for %@ to genstore: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveLargeThumbnailToGenstoreWithData:url:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not associate large thumbnail to GS file at URL: %@ (%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveLargeThumbnailForDocumentAtURL:toGenstoreWithImage:automaticallyGenerated:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not associate existing thumbnail image with the document at URL %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)generateThumbnailForThumbnailRequest:shouldUpdateGenstore:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_2615D3000, v0, OS_LOG_TYPE_FAULT, "No URL to generate thumbnail for %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __94__QLServerThread_generateThumbnailForThumbnailRequest_shouldUpdateGenstore_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "after generation: adding image data to cache and completing request %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)findThumbnailInAddition:request:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Got error %@ trying to find content type for %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)failedToCompleteThumbnailRequest:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __160__QLServerThread_sendResultForThumbnailRequest_images_metadata_contentRect_iconFlavor_thumbnailRepresentation_clientShouldTakeOwnership_reenqueueRequest_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "Sending nil thumbnail data to the host for request %@ from pending requests and removing it because saving best representation failed", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __160__QLServerThread_sendResultForThumbnailRequest_images_metadata_contentRect_iconFlavor_thumbnailRepresentation_clientShouldTakeOwnership_reenqueueRequest_error___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "Sending thumbnail data to the host for request %@ from pending requests and removing it", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyGenerationHandlerOfThumbnailGenerationForRequest:images:metadata:contentRect:iconFlavor:thumbnailRepresentation:clientShouldTakeOwnership:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Missing error during thumbnail request %@, using a generic error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveResultForThumbnailRequest:withImage:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not save thumbnail at URL %@ for request %@: could not create CGImageDestinationRef because could not obtain temporary URL");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveResultForThumbnailRequest:withImage:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "CGImageDestinationFinalize failed to add image to URL: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveResultForThumbnailRequest:withImage:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not save thumbnail at URL: %@. Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveResultForThumbnailRequest:withImage:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_2615D3000, v0, v1, "Could not save thumbnail at URL %@ for request %@: could not create CGImageDestinationRef");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveResultForThumbnailRequest:withImage:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Failed to create thumbnail image to save at URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__QLServerThread__completeHandledThumbnailRequest___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_canUseAdditionToProvideThumbnail:forThumbnailRequest:taggedLogicalURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "addition from GenStore is valid for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__QLServerThread_UbiquitousRequests___downloadThumbnailForRequest_completionHandler___block_invoke_18_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(&dword_2615D3000, v2, OS_LOG_TYPE_DEBUG, "Draining the downloads queue because 100ms have elapsed since %@ was enqueued", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __84__QLServerThread_UbiquitousRequests__downloadThumbnailForRequest_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(&dword_2615D3000, v2, OS_LOG_TYPE_ERROR, "Could not fetch FPItem for request: %@ (error: %@)", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_8(&dword_2615D3000, v1, v2, "download: %@ (%@)", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_8(&dword_2615D3000, v2, v3, "perThumbnailCompletionBlock for %@, associated with requests %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_cold_2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8(&dword_2615D3000, v3, v4, "clearing generatorRequests %@ for %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_2_cold_3(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(&dword_2615D3000, v2, OS_LOG_TYPE_FAULT, "perThumbnailCompletionBlock was called for %@, but this identifier wasn't in the requests or already received its perThumbnailCompletionBlock", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __69__QLServerThread_UbiquitousRequests__downloadThumbnails_forProvider___block_invoke_31_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(&dword_2615D3000, v2, OS_LOG_TYPE_ERROR, "Unable to process thumbnail data for %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end