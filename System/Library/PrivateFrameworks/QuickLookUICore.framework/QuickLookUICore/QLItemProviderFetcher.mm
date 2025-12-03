@interface QLItemProviderFetcher
- (QLItemProviderFetcher)initWithCoder:(id)coder;
- (QLItemProviderFetcher)initWithContentType:(id)type fileSize:(id)size;
- (id)fetchedContent;
- (id)newItemProvider;
- (void)_updateCompletionBlockWithAllowedOutputClasses:(id)classes URL:(id)l;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock;
- (void)getURLWithDownloadTracker:(id)tracker completionHandler:(id)handler;
- (void)updatedURLWithProgress:(double)progress;
@end

@implementation QLItemProviderFetcher

- (QLItemProviderFetcher)initWithContentType:(id)type fileSize:(id)size
{
  typeCopy = type;
  sizeCopy = size;
  v13.receiver = self;
  v13.super_class = QLItemProviderFetcher;
  v9 = [(QLItemFetcher *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentType, type);
    objc_storeStrong(&v10->_fileSize, size);
    v11 = v10;
  }

  return v10;
}

- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock
{
  classesCopy = classes;
  completionBlockCopy = completionBlock;
  queueCopy = queue;
  [(QLItemProviderFetcher *)self setUpdateBlock:block];
  [(QLItemProviderFetcher *)self setCompletionBlock:completionBlockCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__QLItemProviderFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
  v15[3] = &unk_279AE0ED8;
  v16 = classesCopy;
  v17 = completionBlockCopy;
  v15[4] = self;
  v13 = classesCopy;
  v14 = completionBlockCopy;
  [queueCopy addOperationWithBlock:v15];
}

void __98__QLItemProviderFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(id *a1)
{
  v2 = +[QLNetworkStateObserver sharedInstance];
  [v2 pushOperation];

  objc_initWeak(&location, a1[4]);
  v3 = a1[4];
  v4 = v3[3];
  if (v4)
  {
    v5 = v3[4];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __98__QLItemProviderFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_2;
    v17[3] = &unk_279AE0E88;
    v6 = &v20;
    objc_copyWeak(&v20, &location);
    v19 = a1[6];
    v18 = a1[5];
    [v4 loadItemForTypeIdentifier:v5 options:0 completionHandler:v17];
    v7 = &v19;
    v8 = v18;
  }

  else
  {
    v9 = v3[6];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__QLItemProviderFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_2;
    v13[3] = &unk_279AE0EB0;
    v6 = &v16;
    objc_copyWeak(&v16, &location);
    v10 = a1[6];
    v11 = a1[4];
    v12 = a1[5];
    v15 = v10;
    v13[4] = v11;
    v14 = v12;
    [v9 getURLWithDownloadTracker:v3 completionHandler:v13];
    v7 = &v15;
    v8 = v14;
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __98__QLItemProviderFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v10 = MEMORY[0x277D43EF8];
      v11 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Error while attempting to load item: %@ #PreviewItem", &v18, 0xCu);
      }

      v12 = *(*(a1 + 40) + 16);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v5;
        v9 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          v17 = MEMORY[0x277D43EF8];
          QLSInitLogging();
          v9 = *v17;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v8;
          _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_INFO, "Did obtain NSURL as contents for item backed by NSItemProvider: %@ #PreviewItem", &v18, 0xCu);
        }

        [WeakRetained _updateCompletionBlockWithAllowedOutputClasses:*(a1 + 32) URL:v8];

        goto LABEL_21;
      }

      v13 = MEMORY[0x277D43EF8];
      v14 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "QLItems backed by NSItemProvider can only provide NSURLs, NSData is not supported. #PreviewItem", &v18, 2u);
      }

      v12 = *(*(a1 + 40) + 16);
    }

    v12();
LABEL_21:
    v15 = +[QLNetworkStateObserver sharedInstance];
    [v15 popOperation];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateCompletionBlockWithAllowedOutputClasses:(id)classes URL:(id)l
{
  classesCopy = classes;
  lCopy = l;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__QLItemProviderFetcher__updateCompletionBlockWithAllowedOutputClasses_URL___block_invoke;
  v10[3] = &unk_279AE0E18;
  v10[4] = self;
  v11 = lCopy;
  v12 = classesCopy;
  v8 = classesCopy;
  v9 = lCopy;
  QLRunInMainThread(v10);
}

void __76__QLItemProviderFetcher__updateCompletionBlockWithAllowedOutputClasses_URL___block_invoke(id *a1)
{
  objc_storeStrong(a1[4] + 8, a1[5]);
  if ([a1[6] containsObject:objc_opt_class()])
  {
    [a1[4] setFetchingState:1];
    v2 = [a1[4] completionBlock];

    if (!v2)
    {
      return;
    }

    v12 = [a1[4] completionBlock];
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1[5]];
    v12[2](v12, v3, 0);
  }

  else
  {
    v4 = [a1[6] containsObject:objc_opt_class()];
    v5 = a1[4];
    if (v4)
    {
      [v5 setFetchingState:1];
      v6 = [a1[4] completionBlock];

      if (!v6)
      {
        return;
      }

      v7 = [a1[4] completionBlock];
      v8 = a1[5];
      v9 = *(v7 + 16);
      v12 = v7;
    }

    else
    {
      v10 = [v5 completionBlock];

      if (!v10)
      {
        return;
      }

      v11 = [a1[4] completionBlock];
      v9 = *(v11 + 16);
      v12 = v11;
    }

    v9();
  }
}

- (void)updatedURLWithProgress:(double)progress
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__QLItemProviderFetcher_updatedURLWithProgress___block_invoke;
  v3[3] = &unk_279AE0F00;
  v3[4] = self;
  *&v3[5] = progress;
  QLRunInMainThread(v3);
}

void __48__QLItemProviderFetcher_updatedURLWithProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateBlock];

  if (v2)
  {
    v4 = [*(a1 + 32) updateBlock];
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
    v4[2](v4, v3);
  }
}

- (void)getURLWithDownloadTracker:(id)tracker completionHandler:(id)handler
{
  trackerCopy = tracker;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v9 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__QLItemProviderFetcher_getURLWithDownloadTracker_completionHandler___block_invoke;
  v14[3] = &unk_279AE0F28;
  v15 = trackerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__QLItemProviderFetcher_getURLWithDownloadTracker_completionHandler___block_invoke_2;
  v12[3] = &unk_279AE0F50;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = trackerCopy;
  [(QLItemProviderFetcher *)self fetchContentWithAllowedOutputClasses:v8 inQueue:v9 updateBlock:v14 completionBlock:v12];
}

uint64_t __69__QLItemProviderFetcher_getURLWithDownloadTracker_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 updatedURLWithProgress:v4];
}

void __69__QLItemProviderFetcher_getURLWithDownloadTracker_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !v6) && (isKindOfClass & 1) != 0)
  {
    [v5 fileSystemRepresentation];
    v8 = sandbox_extension_issue_file();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v8 encoding:4];
      free(v9);
    }

    else
    {
      v10 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = MEMORY[0x277D43EF8];
    v12 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_ERROR, "Error while obtaining URL in getURLWithDownloadTracker: %@. Error: %@ #PreviewItem", &v14, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (self->_fileExtensionHandle)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = QLItemProviderFetcher;
  [(QLItemProviderFetcher *)&v3 dealloc];
}

- (id)fetchedContent
{
  fetchingState = [(QLItemFetcher *)self fetchingState];
  if (fetchingState)
  {
    fetchingState = self->_lastContent;
  }

  return fetchingState;
}

- (id)newItemProvider
{
  if (!self->_contentType)
  {
    return 0;
  }

  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  contentType = self->_contentType;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__QLItemProviderFetcher_newItemProvider__block_invoke;
  v6[3] = &unk_279AE0F78;
  objc_copyWeak(&v7, &location);
  [v3 registerFileRepresentationForTypeIdentifier:contentType fileOptions:0 visibility:0 loadHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v3;
}

uint64_t __40__QLItemProviderFetcher_newItemProvider__block_invoke(uint64_t a1, void (**a2)(void, void, void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained lastContent];
  (a2)[2](v4, v6, 1, 0);

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = QLItemProviderFetcher;
  coderCopy = coder;
  [(QLItemFetcher *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fileSize forKey:{@"fileSize", v5.receiver, v5.super_class}];
}

- (QLItemProviderFetcher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = QLItemProviderFetcher;
  v5 = [(QLItemFetcher *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    fileSize = v5->_fileSize;
    v5->_fileSize = v6;

    v8 = v5;
  }

  return v5;
}

@end