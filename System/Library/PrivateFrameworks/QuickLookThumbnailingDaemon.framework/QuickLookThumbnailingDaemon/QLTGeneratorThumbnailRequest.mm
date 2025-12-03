@interface QLTGeneratorThumbnailRequest
- (BOOL)cacheEnabled;
- (BOOL)hasHandledAllRequestedTypesOrMostRepresentativeType;
- (BOOL)needsLowQualityThumbnailGeneration;
- (QLTGeneratorThumbnailRequest)initWithRequest:(id)request generationHandler:(id)handler;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)_requestedTypesForRepresentationType:(int64_t)type;
- (void)_adjustRequestInformationIfNeeded;
- (void)cancel;
- (void)computeUbiquitousnessWithCompletionHandler:(id)handler;
- (void)fetchFPItemWithCompletionHandler:(id)handler;
- (void)fetchURLWithCompletionHandler:(id)handler;
@end

@implementation QLTGeneratorThumbnailRequest

- (void)_adjustRequestInformationIfNeeded
{
  self->_badgeType = 0;
  if ([(QLThumbnailGenerationRequest *)self->_request badgeType]== 1)
  {
    contentType = [(QLThumbnailGenerationRequest *)self->_request contentType];
    if ([contentType conformsToType:*MEMORY[0x277CE1EA0]])
    {
    }

    else
    {
      contentType2 = [(QLThumbnailGenerationRequest *)self->_request contentType];
      v5 = [contentType2 conformsToType:*MEMORY[0x277CE1E60]];

      if (!v5)
      {
        return;
      }
    }

    v6 = +[QLThumbnailExtensionMonitor shared];
    v7 = [v6 bestExtensionFor:self->_request matching:3];
    supportsInteractiveThumbnailBadges = [v7 supportsInteractiveThumbnailBadges];

    if (supportsInteractiveThumbnailBadges)
    {
      self->_badgeType = [(QLThumbnailGenerationRequest *)self->_request badgeType];
    }
  }
}

- (BOOL)cacheEnabled
{
  diskStore = [(QLTGeneratorThumbnailRequest *)self diskStore];

  if (!diskStore)
  {
    return ([(QLThumbnailGenerationRequest *)self->_request isDataBased]& 1) == 0;
  }

  request = [(QLTGeneratorThumbnailRequest *)self request];
  if ([request isFileBased])
  {
    diskStore2 = [(QLTGeneratorThumbnailRequest *)self diskStore];
    hasThumbnailCache = [diskStore2 hasThumbnailCache];
  }

  else
  {
    hasThumbnailCache = 0;
  }

  return hasThumbnailCache;
}

- (BOOL)hasHandledAllRequestedTypesOrMostRepresentativeType
{
  v3 = [(QLThumbnailGenerationRequest *)self->_request representationTypes]& 6;
  handledRequestedTypes = self->_handledRequestedTypes;
  v6 = handledRequestedTypes >= v3 || v3 < 2 * handledRequestedTypes;
  request = [(QLTGeneratorThumbnailRequest *)self request];
  if ([request provideCachedResultsOnly])
  {
    didCheckCache = [(QLTGeneratorThumbnailRequest *)self didCheckCache];

    v6 |= didCheckCache;
  }

  else
  {
  }

  return (handledRequestedTypes == v3) | v6 & 1;
}

- (BOOL)needsLowQualityThumbnailGeneration
{
  provideLowQualityThumbnail = [(QLThumbnailGenerationRequest *)self->_request provideLowQualityThumbnail];
  if (provideLowQualityThumbnail)
  {
    LOBYTE(provideLowQualityThumbnail) = self->_handledRequestedTypes == *MEMORY[0x277CDAB60];
  }

  return provideLowQualityThumbnail;
}

- (QLTGeneratorThumbnailRequest)initWithRequest:(id)request generationHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = QLTGeneratorThumbnailRequest;
  v9 = [(QLTGeneratorThumbnailRequest *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_generationHandler, handler);
    v10->_handledRequestedTypes = *MEMORY[0x277CDAB60];
    quicklookSandboxWrapper = [requestCopy quicklookSandboxWrapper];
    v12 = [quicklookSandboxWrapper url];

    if (v12)
    {
      startAccessingSecurityScopedResource = [v12 startAccessingSecurityScopedResource];
      v14 = [QLDiskStore diskStoreForURL:v12];
      diskStore = v10->_diskStore;
      v10->_diskStore = v14;

      if (startAccessingSecurityScopedResource)
      {
        [v12 stopAccessingSecurityScopedResource];
      }
    }

    [(QLTGeneratorThumbnailRequest *)v10 _adjustRequestInformationIfNeeded];
  }

  return v10;
}

- (unint64_t)_requestedTypesForRepresentationType:(int64_t)type
{
  v3 = 1;
  if (type == 1)
  {
    v3 = 2;
  }

  if (type == 2)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

- (void)cancel
{
  [(QLTGeneratorThumbnailRequest *)self setCancelled:1];
  [(QLThumbnailGenerationRequest *)self->_request cancel];
  generator = [(QLTGeneratorThumbnailRequest *)self generator];
  [generator cancel];
}

- (int64_t)compare:(id)compare
{
  request = self->_request;
  request = [compare request];
  v5 = [(QLThumbnailGenerationRequest *)request compare:request];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  request = self->_request;
  taggedLogicalURL = self->_taggedLogicalURL;
  item = self->_item;
  handledRequestedTypes = self->_handledRequestedTypes;
  badgeType = self->_badgeType;
  if ([(QLTGeneratorThumbnailRequest *)self needsLowQualityThumbnailGeneration])
  {
    v10 = @"(low quality)";
  }

  else
  {
    v10 = &stru_2873E31F0;
  }

  clientApplicationIdentifier = [(QLTGeneratorThumbnailRequest *)self clientApplicationIdentifier];
  v12 = [v3 initWithFormat:@"<%@: %@, url: %@, item: %@, ht:%lu bt:%lu %@ client:%@>", v4, request, taggedLogicalURL, item, handledRequestedTypes, badgeType, v10, clientApplicationIdentifier];

  return v12;
}

- (void)fetchURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [(QLTGeneratorThumbnailRequest *)self request];
  isDataBased = [request isDataBased];

  if (isDataBased)
  {
    goto LABEL_4;
  }

  request2 = [(QLTGeneratorThumbnailRequest *)self request];
  quicklookSandboxWrapper = [request2 quicklookSandboxWrapper];

  request3 = [(QLTGeneratorThumbnailRequest *)self request];
  v10 = request3;
  if (quicklookSandboxWrapper)
  {
    quicklookSandboxWrapper2 = [request3 quicklookSandboxWrapper];
    v12 = [quicklookSandboxWrapper2 url];
    [(QLTGeneratorThumbnailRequest *)self setTaggedLogicalURL:v12];

LABEL_4:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_5;
  }

  item = [request3 item];

  if (item)
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    request4 = [(QLTGeneratorThumbnailRequest *)self request];
    item2 = [request4 item];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__QLTGeneratorThumbnailRequest_fetchURLWithCompletionHandler___block_invoke;
    v23[3] = &unk_279ADD658;
    v23[4] = self;
    v24 = handlerCopy;
    [defaultManager fetchURLForItem:item2 completionHandler:v23];
  }

  else
  {
    v17 = _log_6();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(QLTGeneratorThumbnailRequest *)self fetchURLWithCompletionHandler:v17];
    }

    request5 = [(QLTGeneratorThumbnailRequest *)self request];
    if (([request5 isDataBased] & 1) == 0)
    {
      request6 = [(QLTGeneratorThumbnailRequest *)self request];
      quicklookSandboxWrapper3 = [request6 quicklookSandboxWrapper];
      if (!quicklookSandboxWrapper3)
      {
        request7 = [(QLTGeneratorThumbnailRequest *)self request];
        item3 = [request7 item];
        if (!item3)
        {
          [QLTGeneratorThumbnailRequest fetchURLWithCompletionHandler:];
        }
      }
    }
  }

LABEL_5:
}

void __62__QLTGeneratorThumbnailRequest_fetchURLWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setTaggedLogicalURL:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)computeUbiquitousnessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [(QLTGeneratorThumbnailRequest *)self request];
  item = [request item];

  request2 = [(QLTGeneratorThumbnailRequest *)self request];
  v8 = request2;
  if (item)
  {
    item2 = [request2 item];

    isDownloaded = 1;
    [(QLTGeneratorThumbnailRequest *)self setIsUbiquitous:1];
    [(QLTGeneratorThumbnailRequest *)self setIsUbiquitousKnown:1];
    [(QLTGeneratorThumbnailRequest *)self setIsDownloadedKnown:1];
    if ([item2 isCloudItem])
    {
      isDownloaded = [item2 isDownloaded];
    }

    [(QLTGeneratorThumbnailRequest *)self setIsDownloaded:isDownloaded];
    fileURL = [item2 fileURL];

    if (fileURL)
    {
      fileURL2 = [item2 fileURL];
      [(QLTGeneratorThumbnailRequest *)self setTaggedLogicalURL:fileURL2];

      taggedLogicalURL = [(QLTGeneratorThumbnailRequest *)self taggedLogicalURL];
      v22 = 0;
      LODWORD(fileURL2) = [taggedLogicalURL _QLIsThumbnailableWithError:&v22];
      v14 = v22;

      if (fileURL2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      (handlerCopy)[2](handlerCopy, v15);
    }

    else if ([(QLTGeneratorThumbnailRequest *)self isDownloaded])
    {
      defaultManager = [MEMORY[0x277CC6408] defaultManager];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke;
      v20[3] = &unk_279ADD658;
      v20[4] = self;
      v21 = handlerCopy;
      [defaultManager fetchURLForItem:item2 completionHandler:v20];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    isDataBased = [request2 isDataBased];

    if (isDataBased)
    {
      [(QLTGeneratorThumbnailRequest *)self setIsDownloaded:1];
      [(QLTGeneratorThumbnailRequest *)self setIsDownloadedKnown:1];
      [(QLTGeneratorThumbnailRequest *)self setIsUbiquitous:0];
      [(QLTGeneratorThumbnailRequest *)self setIsUbiquitousKnown:0];
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke_2;
      v18[3] = &unk_279ADD188;
      v18[4] = self;
      v19 = handlerCopy;
      [(QLTGeneratorThumbnailRequest *)self fetchURLWithCompletionHandler:v18];
    }
  }
}

void __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setTaggedLogicalURL:v5];
  if (v5)
  {
    v8 = 0;
    [v5 _QLIsThumbnailableWithError:&v8];
    v7 = v8;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x277D85DE8];
LABEL_5:

    v4();
    return;
  }

  v6 = (a1 + 32);
  v7 = [*(a1 + 32) taggedLogicalURL];
  v8 = [v7 _QLIsDataLess];

  v9 = *v6;
  if (v8)
  {
    [v9 setIsDownloaded:0];
    [*(a1 + 32) setIsDownloadedKnown:1];
    [*(a1 + 32) setIsUbiquitous:1];
    [*(a1 + 32) setIsUbiquitousKnown:1];
    v4 = *(*(a1 + 40) + 16);
    v10 = *MEMORY[0x277D85DE8];
    goto LABEL_5;
  }

  [v9 setIsDownloaded:1];
  [*v6 setIsDownloadedKnown:1];
  v11 = [*v6 taggedLogicalURL];
  v26 = 0;
  v12 = [v11 _QLIsThumbnailableWithError:&v26];
  v13 = v26;

  if (v12)
  {
    v14 = [*v6 taggedLogicalURL];
    v15 = *MEMORY[0x277CBE948];
    v16 = *MEMORY[0x277CBE8B8];
    v27[0] = *MEMORY[0x277CBE948];
    v27[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v25 = 0;
    v18 = [v14 promisedItemResourceValuesForKeys:v17 error:&v25];
    v19 = v25;

    if (v18)
    {
      v20 = [v18 objectForKeyedSubscript:v15];
      v21 = [v18 objectForKeyedSubscript:v16];
      [*v6 setIsUbiquitous:{objc_msgSend(v21, "BOOLValue")}];
      [*v6 setIsUbiquitousKnown:1];
      v22 = ![v21 BOOLValue] || v20 && (objc_msgSend(v20, "isEqualToString:", *MEMORY[0x277CBE950]) & 1) == 0;
      [*(a1 + 32) setIsDownloadedKnown:1];
      [*(a1 + 32) setIsDownloaded:v22];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v23 = _log_6();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke_2_cold_1((a1 + 32), v19, v23);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)fetchFPItemWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  item = [(QLTGeneratorThumbnailRequest *)self item];

  if (item)
  {
    goto LABEL_4;
  }

  request = [(QLTGeneratorThumbnailRequest *)self request];
  item2 = [request item];

  request2 = [(QLTGeneratorThumbnailRequest *)self request];
  v9 = request2;
  if (item2)
  {
    item3 = [request2 item];
    [(QLTGeneratorThumbnailRequest *)self setItem:item3];

LABEL_4:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_5;
  }

  if ([request2 isDataBased])
  {
    [QLTGeneratorThumbnailRequest fetchFPItemWithCompletionHandler:];
  }

  taggedLogicalURL = [(QLTGeneratorThumbnailRequest *)self taggedLogicalURL];

  if (!taggedLogicalURL)
  {
    request3 = [(QLTGeneratorThumbnailRequest *)self request];
    quicklookSandboxWrapper = [request3 quicklookSandboxWrapper];
    v14 = [quicklookSandboxWrapper url];
    [(QLTGeneratorThumbnailRequest *)self setTaggedLogicalURL:v14];
  }

  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  taggedLogicalURL2 = [(QLTGeneratorThumbnailRequest *)self taggedLogicalURL];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__QLTGeneratorThumbnailRequest_fetchFPItemWithCompletionHandler___block_invoke;
  v17[3] = &unk_279ADD680;
  v17[4] = self;
  v18 = handlerCopy;
  [defaultManager fetchItemForURL:taggedLogicalURL2 completionHandler:v17];

LABEL_5:
}

void __65__QLTGeneratorThumbnailRequest_fetchFPItemWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _log_6();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__QLTGeneratorThumbnailRequest_fetchFPItemWithCompletionHandler___block_invoke_cold_1(a1, v6, v7);
    }
  }

  [*(a1 + 32) setItem:v5];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchURLWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "No URL or FPItem for request %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke_2_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 taggedLogicalURL];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2615D3000, a3, OS_LOG_TYPE_ERROR, "Could not retrieve the downloading status of %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __65__QLTGeneratorThumbnailRequest_fetchFPItemWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_2615D3000, log, OS_LOG_TYPE_ERROR, "Could not fetch FPItem for %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end