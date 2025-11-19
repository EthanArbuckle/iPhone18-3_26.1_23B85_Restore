@interface QLTGeneratorThumbnailRequest
- (BOOL)cacheEnabled;
- (BOOL)hasHandledAllRequestedTypesOrMostRepresentativeType;
- (BOOL)needsLowQualityThumbnailGeneration;
- (QLTGeneratorThumbnailRequest)initWithRequest:(id)a3 generationHandler:(id)a4;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)_requestedTypesForRepresentationType:(int64_t)a3;
- (void)_adjustRequestInformationIfNeeded;
- (void)cancel;
- (void)computeUbiquitousnessWithCompletionHandler:(id)a3;
- (void)fetchFPItemWithCompletionHandler:(id)a3;
- (void)fetchURLWithCompletionHandler:(id)a3;
@end

@implementation QLTGeneratorThumbnailRequest

- (void)_adjustRequestInformationIfNeeded
{
  self->_badgeType = 0;
  if ([(QLThumbnailGenerationRequest *)self->_request badgeType]== 1)
  {
    v3 = [(QLThumbnailGenerationRequest *)self->_request contentType];
    if ([v3 conformsToType:*MEMORY[0x277CE1EA0]])
    {
    }

    else
    {
      v4 = [(QLThumbnailGenerationRequest *)self->_request contentType];
      v5 = [v4 conformsToType:*MEMORY[0x277CE1E60]];

      if (!v5)
      {
        return;
      }
    }

    v6 = +[QLThumbnailExtensionMonitor shared];
    v7 = [v6 bestExtensionFor:self->_request matching:3];
    v8 = [v7 supportsInteractiveThumbnailBadges];

    if (v8)
    {
      self->_badgeType = [(QLThumbnailGenerationRequest *)self->_request badgeType];
    }
  }
}

- (BOOL)cacheEnabled
{
  v3 = [(QLTGeneratorThumbnailRequest *)self diskStore];

  if (!v3)
  {
    return ([(QLThumbnailGenerationRequest *)self->_request isDataBased]& 1) == 0;
  }

  v4 = [(QLTGeneratorThumbnailRequest *)self request];
  if ([v4 isFileBased])
  {
    v5 = [(QLTGeneratorThumbnailRequest *)self diskStore];
    v6 = [v5 hasThumbnailCache];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasHandledAllRequestedTypesOrMostRepresentativeType
{
  v3 = [(QLThumbnailGenerationRequest *)self->_request representationTypes]& 6;
  handledRequestedTypes = self->_handledRequestedTypes;
  v6 = handledRequestedTypes >= v3 || v3 < 2 * handledRequestedTypes;
  v7 = [(QLTGeneratorThumbnailRequest *)self request];
  if ([v7 provideCachedResultsOnly])
  {
    v8 = [(QLTGeneratorThumbnailRequest *)self didCheckCache];

    v6 |= v8;
  }

  else
  {
  }

  return (handledRequestedTypes == v3) | v6 & 1;
}

- (BOOL)needsLowQualityThumbnailGeneration
{
  v3 = [(QLThumbnailGenerationRequest *)self->_request provideLowQualityThumbnail];
  if (v3)
  {
    LOBYTE(v3) = self->_handledRequestedTypes == *MEMORY[0x277CDAB60];
  }

  return v3;
}

- (QLTGeneratorThumbnailRequest)initWithRequest:(id)a3 generationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = QLTGeneratorThumbnailRequest;
  v9 = [(QLTGeneratorThumbnailRequest *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_generationHandler, a4);
    v10->_handledRequestedTypes = *MEMORY[0x277CDAB60];
    v11 = [v7 quicklookSandboxWrapper];
    v12 = [v11 url];

    if (v12)
    {
      v13 = [v12 startAccessingSecurityScopedResource];
      v14 = [QLDiskStore diskStoreForURL:v12];
      diskStore = v10->_diskStore;
      v10->_diskStore = v14;

      if (v13)
      {
        [v12 stopAccessingSecurityScopedResource];
      }
    }

    [(QLTGeneratorThumbnailRequest *)v10 _adjustRequestInformationIfNeeded];
  }

  return v10;
}

- (unint64_t)_requestedTypesForRepresentationType:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
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
  v3 = [(QLTGeneratorThumbnailRequest *)self generator];
  [v3 cancel];
}

- (int64_t)compare:(id)a3
{
  request = self->_request;
  v4 = [a3 request];
  v5 = [(QLThumbnailGenerationRequest *)request compare:v4];

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

  v11 = [(QLTGeneratorThumbnailRequest *)self clientApplicationIdentifier];
  v12 = [v3 initWithFormat:@"<%@: %@, url: %@, item: %@, ht:%lu bt:%lu %@ client:%@>", v4, request, taggedLogicalURL, item, handledRequestedTypes, badgeType, v10, v11];

  return v12;
}

- (void)fetchURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(QLTGeneratorThumbnailRequest *)self request];
  v6 = [v5 isDataBased];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [(QLTGeneratorThumbnailRequest *)self request];
  v8 = [v7 quicklookSandboxWrapper];

  v9 = [(QLTGeneratorThumbnailRequest *)self request];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 quicklookSandboxWrapper];
    v12 = [v11 url];
    [(QLTGeneratorThumbnailRequest *)self setTaggedLogicalURL:v12];

LABEL_4:
    v4[2](v4, 0);
    goto LABEL_5;
  }

  v13 = [v9 item];

  if (v13)
  {
    v14 = [MEMORY[0x277CC6408] defaultManager];
    v15 = [(QLTGeneratorThumbnailRequest *)self request];
    v16 = [v15 item];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__QLTGeneratorThumbnailRequest_fetchURLWithCompletionHandler___block_invoke;
    v23[3] = &unk_279ADD658;
    v23[4] = self;
    v24 = v4;
    [v14 fetchURLForItem:v16 completionHandler:v23];
  }

  else
  {
    v17 = _log_6();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(QLTGeneratorThumbnailRequest *)self fetchURLWithCompletionHandler:v17];
    }

    v18 = [(QLTGeneratorThumbnailRequest *)self request];
    if (([v18 isDataBased] & 1) == 0)
    {
      v19 = [(QLTGeneratorThumbnailRequest *)self request];
      v20 = [v19 quicklookSandboxWrapper];
      if (!v20)
      {
        v21 = [(QLTGeneratorThumbnailRequest *)self request];
        v22 = [v21 item];
        if (!v22)
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

- (void)computeUbiquitousnessWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(QLTGeneratorThumbnailRequest *)self request];
  v6 = [v5 item];

  v7 = [(QLTGeneratorThumbnailRequest *)self request];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 item];

    v10 = 1;
    [(QLTGeneratorThumbnailRequest *)self setIsUbiquitous:1];
    [(QLTGeneratorThumbnailRequest *)self setIsUbiquitousKnown:1];
    [(QLTGeneratorThumbnailRequest *)self setIsDownloadedKnown:1];
    if ([v9 isCloudItem])
    {
      v10 = [v9 isDownloaded];
    }

    [(QLTGeneratorThumbnailRequest *)self setIsDownloaded:v10];
    v11 = [v9 fileURL];

    if (v11)
    {
      v12 = [v9 fileURL];
      [(QLTGeneratorThumbnailRequest *)self setTaggedLogicalURL:v12];

      v13 = [(QLTGeneratorThumbnailRequest *)self taggedLogicalURL];
      v22 = 0;
      LODWORD(v12) = [v13 _QLIsThumbnailableWithError:&v22];
      v14 = v22;

      if (v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      (v4)[2](v4, v15);
    }

    else if ([(QLTGeneratorThumbnailRequest *)self isDownloaded])
    {
      v17 = [MEMORY[0x277CC6408] defaultManager];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke;
      v20[3] = &unk_279ADD658;
      v20[4] = self;
      v21 = v4;
      [v17 fetchURLForItem:v9 completionHandler:v20];
    }

    else
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v16 = [v7 isDataBased];

    if (v16)
    {
      [(QLTGeneratorThumbnailRequest *)self setIsDownloaded:1];
      [(QLTGeneratorThumbnailRequest *)self setIsDownloadedKnown:1];
      [(QLTGeneratorThumbnailRequest *)self setIsUbiquitous:0];
      [(QLTGeneratorThumbnailRequest *)self setIsUbiquitousKnown:0];
      v4[2](v4, 0);
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__QLTGeneratorThumbnailRequest_computeUbiquitousnessWithCompletionHandler___block_invoke_2;
      v18[3] = &unk_279ADD188;
      v18[4] = self;
      v19 = v4;
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

- (void)fetchFPItemWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(QLTGeneratorThumbnailRequest *)self item];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [(QLTGeneratorThumbnailRequest *)self request];
  v7 = [v6 item];

  v8 = [(QLTGeneratorThumbnailRequest *)self request];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 item];
    [(QLTGeneratorThumbnailRequest *)self setItem:v10];

LABEL_4:
    v4[2](v4, 0);
    goto LABEL_5;
  }

  if ([v8 isDataBased])
  {
    [QLTGeneratorThumbnailRequest fetchFPItemWithCompletionHandler:];
  }

  v11 = [(QLTGeneratorThumbnailRequest *)self taggedLogicalURL];

  if (!v11)
  {
    v12 = [(QLTGeneratorThumbnailRequest *)self request];
    v13 = [v12 quicklookSandboxWrapper];
    v14 = [v13 url];
    [(QLTGeneratorThumbnailRequest *)self setTaggedLogicalURL:v14];
  }

  v15 = [MEMORY[0x277CC6408] defaultManager];
  v16 = [(QLTGeneratorThumbnailRequest *)self taggedLogicalURL];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__QLTGeneratorThumbnailRequest_fetchFPItemWithCompletionHandler___block_invoke;
  v17[3] = &unk_279ADD680;
  v17[4] = self;
  v18 = v4;
  [v15 fetchItemForURL:v16 completionHandler:v17];

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