@interface QLUbiquitousItemFetcher
- (BOOL)isLongFetchOperation;
- (QLUbiquitousItemFetcher)initWithCoder:(id)a3;
- (QLUbiquitousItemFetcher)initWithZippingPackageIfNeeded:(BOOL)a3;
- (id)_createURLForPackageIfNeeded;
- (id)fetchedContent;
- (id)itemSize;
- (id)newItemProvider;
- (void)_deleteTempraryZipPackageFileIfNeeded;
- (void)_removeUpdateBlockIfNeeded:(id)a3;
- (void)cancelFetch;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)subscribeToPreviewItemProgress;
@end

@implementation QLUbiquitousItemFetcher

- (QLUbiquitousItemFetcher)initWithZippingPackageIfNeeded:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = QLUbiquitousItemFetcher;
  v4 = [(QLItemFetcher *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_shouldZipPackageIfNeeded = a3;
    v6 = objc_opt_new();
    updateBlocks = v5->_updateBlocks;
    v5->_updateBlocks = v6;

    v8 = objc_opt_new();
    fileCoordinators = v5->_fileCoordinators;
    v5->_fileCoordinators = v8;

    v10 = v5;
  }

  return v5;
}

- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6
{
  v38[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = self->_updateBlocks;
    objc_sync_enter(v14);
    updateBlocks = self->_updateBlocks;
    v16 = MEMORY[0x266708AD0](v12);
    [(NSMutableArray *)updateBlocks addObject:v16];

    objc_sync_exit(v14);
  }

  v17 = [(FPSandboxingURLWrapper *)self->_sandboxingWrapper url];
  self->_isAccessingURL = [v17 startAccessingSecurityScopedResource];

  v18 = [(QLUbiquitousItemFetcher *)self fileURL];
  if (v18)
  {
    v19 = [MEMORY[0x277CCA9E0] readingIntentWithURL:v18 options:0];
    v20 = objc_opt_new();
    v21 = self->_fileCoordinators;
    objc_sync_enter(v21);
    [(NSMutableArray *)self->_fileCoordinators addObject:v20];
    objc_sync_exit(v21);

    v38[0] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __100__QLUbiquitousItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
    v30 = &unk_279AE1400;
    v31 = self;
    v35 = v12;
    v32 = v18;
    v36 = v13;
    v33 = v19;
    v34 = v10;
    v23 = v19;
    [v20 coordinateAccessWithIntents:v22 queue:v11 byAccessor:&v27];

    if (v12)
    {
      [(QLUbiquitousItemFetcher *)self subscribeToPreviewItemProgress:v27];
    }
  }

  else
  {
    v24 = MEMORY[0x277D43EF8];
    v25 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v25, OS_LOG_TYPE_FAULT, "URL cannot be nil when trying to fetch the contents of QLUbiquitousItemFetcher #PreviewItem", buf, 2u);
    }

    [(QLUbiquitousItemFetcher *)self _removeUpdateBlockIfNeeded:v12];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLUbiquitousItemFetcher" code:0 userInfo:0];
    (*(v13 + 2))(v13, 0, v20);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __100__QLUbiquitousItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _removeUpdateBlockIfNeeded:*(a1 + 64)];
  if ([v3 code] == 3072)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = *(a1 + 40);
    v17 = 0;
    v6 = [v4 evictUbiquitousItemAtURL:v5 error:&v17];
    v7 = v17;

    if ((v6 & 1) == 0)
    {
      v8 = MEMORY[0x277D43EF8];
      v9 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v3;
        _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_ERROR, "Failed to evict file for canceled download: %@ #Downloading", buf, 0xCu);
      }
    }

    v10 = *(*(a1 + 72) + 16);
    goto LABEL_17;
  }

  if (!v3)
  {
    v7 = [*(a1 + 48) URL];
    if ([*(a1 + 56) containsObject:objc_opt_class()])
    {
      v11 = *(a1 + 32);
      if (v11[72] == 1)
      {
        v12 = [v11 _createURLForPackageIfNeeded];

        v11 = *(a1 + 32);
        v7 = v12;
      }

      [v11 setFetchingState:1];
      v10 = *(*(a1 + 72) + 16);
    }

    else
    {
      if ([*(a1 + 56) containsObject:objc_opt_class()])
      {
        v13 = [*(a1 + 32) _createURLForPackageIfNeeded];

        [*(a1 + 32) setFetchingState:1];
        v14 = *(a1 + 72);
        v15 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v13];
        (*(v14 + 16))(v14, v15, 0);

        v7 = v13;
LABEL_18:

        goto LABEL_19;
      }

      v10 = *(*(a1 + 72) + 16);
    }

LABEL_17:
    v10();
    goto LABEL_18;
  }

  (*(*(a1 + 72) + 16))();
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToPreviewItemProgress
{
  if (!self->_progressSubscriber)
  {
    v3 = MEMORY[0x277CCAC48];
    v4 = [(QLUbiquitousItemFetcher *)self fileURL];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__QLUbiquitousItemFetcher_subscribeToPreviewItemProgress__block_invoke;
    v7[3] = &unk_279AE1428;
    v7[4] = self;
    v5 = [v3 _addSubscriberForFileURL:v4 withPublishingHandler:v7];
    progressSubscriber = self->_progressSubscriber;
    self->_progressSubscriber = v5;
  }
}

id __57__QLUbiquitousItemFetcher_subscribeToPreviewItemProgress__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "totalUnitCount")}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v7 = *(*(a1 + 32) + 40);
  objc_sync_enter(v7);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(*(a1 + 32) + 40);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = MEMORY[0x277CCABB0];
        [v3 fractionCompleted];
        v14 = [v13 numberWithDouble:?];
        (*(v12 + 16))(v12, v14);
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  [v3 addObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" options:1 context:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__QLUbiquitousItemFetcher_subscribeToPreviewItemProgress__block_invoke_2;
  v20[3] = &unk_279AE0E40;
  v15 = *(a1 + 32);
  v21 = v3;
  v22 = v15;
  v16 = v3;
  v17 = MEMORY[0x266708AD0](v20);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)cancelFetch
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_fileCoordinators;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_fileCoordinators;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_fileCoordinators removeAllObjects];
  objc_sync_exit(v3);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"fractionCompleted"])
  {
    [v11 fractionCompleted];
    v14 = v13;
    obj = self->_updateBlocks;
    objc_sync_enter(obj);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = self->_updateBlocks;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
    v18 = v14;
    if (v16)
    {
      v19 = *v31;
      do
      {
        v20 = 0;
        do
        {
          v21 = v11;
          v22 = v12;
          if (*v31 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v30 + 1) + 8 * v20);
          *&v17 = v18;
          v24 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
          (*(v23 + 16))(v23, v24);

          v12 = v22;
          v11 = v21;
          ++v20;
        }

        while (v16 != v20);
        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v16);
    }

    objc_sync_exit(obj);
    v25 = MEMORY[0x277D43EF8];
    v26 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v35 = v18;
      _os_log_impl(&dword_261653000, v26, OS_LOG_TYPE_DEBUG, "Updated progress for downloading file: %f #Downloading", buf, 0xCu);
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = QLUbiquitousItemFetcher;
    [(QLUbiquitousItemFetcher *)&v29 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [MEMORY[0x277CCAC48] _removeSubscriber:self->_progressSubscriber];
  [(QLUbiquitousItemFetcher *)self _deleteTempraryZipPackageFileIfNeeded];
  if (self->_isAccessingURL)
  {
    v3 = [(FPSandboxingURLWrapper *)self->_sandboxingWrapper url];
    [v3 stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = QLUbiquitousItemFetcher;
  [(QLUbiquitousItemFetcher *)&v4 dealloc];
}

- (BOOL)isLongFetchOperation
{
  v3 = [(QLUbiquitousItemFetcher *)self fileURL];
  v4 = [v3 startAccessingSecurityScopedResource];

  v5 = [(QLUbiquitousItemFetcher *)self fileURL];
  v6 = [v5 _QLDownloadingStatusIsNotCurrent];

  if (v4)
  {
    v7 = [(QLUbiquitousItemFetcher *)self fileURL];
    [v7 stopAccessingSecurityScopedResource];
  }

  return v6;
}

- (id)itemSize
{
  sizeTotalUnitCount = self->_sizeTotalUnitCount;
  if (sizeTotalUnitCount)
  {
    v3 = sizeTotalUnitCount;
  }

  else
  {
    v5 = [(QLUbiquitousItemFetcher *)self fileURL];
    v6 = [v5 startAccessingSecurityScopedResource];

    v7 = [(QLUbiquitousItemFetcher *)self fileURL];
    v3 = [v7 _QLUrlFileSize];

    if (v6)
    {
      v8 = [(QLUbiquitousItemFetcher *)self fileURL];
      [v8 stopAccessingSecurityScopedResource];
    }
  }

  return v3;
}

- (id)fetchedContent
{
  v3 = [(QLItemFetcher *)self fetchingState];
  if (v3)
  {
    v3 = [(QLUbiquitousItemFetcher *)self fileURL];
  }

  return v3;
}

- (id)newItemProvider
{
  v3 = objc_opt_new();
  v4 = [(QLUbiquitousItemFetcher *)self fileURL];
  v5 = [v4 copy];

  v6 = [MEMORY[0x277CDAB20] UTIForURL:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__QLUbiquitousItemFetcher_newItemProvider__block_invoke;
  v9[3] = &unk_279AE1450;
  v10 = v5;
  v7 = v5;
  [v3 registerFileRepresentationForTypeIdentifier:v6 fileOptions:0 visibility:0 loadHandler:v9];

  return v3;
}

- (void)_removeUpdateBlockIfNeeded:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = self->_updateBlocks;
    objc_sync_enter(v5);
    updateBlocks = self->_updateBlocks;
    v7 = MEMORY[0x266708AD0](v8);
    [(NSMutableArray *)updateBlocks removeObject:v7];

    objc_sync_exit(v5);
    v4 = v8;
  }
}

- (id)_createURLForPackageIfNeeded
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(QLUbiquitousItemFetcher *)self fileURL];
  v4 = [v3 _QLIsPackageURL];

  if ((v4 & 1) == 0)
  {
    v6 = [(QLUbiquitousItemFetcher *)self fileURL];
    goto LABEL_5;
  }

  zipPackageUrlHandler = self->_zipPackageUrlHandler;
  if (zipPackageUrlHandler)
  {
    v6 = [(QLURLHandler *)zipPackageUrlHandler fileURL];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];

  v12 = MEMORY[0x277CBEBC0];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSTemporaryDirectory();
  v15 = [v13 stringWithFormat:@"%@%@", v14, v11];
  v16 = [v12 fileURLWithPath:v15];

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  v18 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v39];
  v19 = v39;
  if (v19)
  {
    v18 = 0;
  }

  if (v18)
  {
    v20 = [(QLUbiquitousItemFetcher *)self fileURL];
    v21 = [v20 lastPathComponent];
    v22 = [v16 URLByAppendingPathComponent:v21];

    *&v44 = 0;
    *(&v44 + 1) = &v44;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy_;
    v47 = __Block_byref_object_dispose_;
    v48 = 0;
    v23 = objc_opt_new();
    v24 = [(QLUbiquitousItemFetcher *)self fileURL];
    v38 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__QLUbiquitousItemFetcher__createURLForPackageIfNeeded__block_invoke;
    v35[3] = &unk_279AE1478;
    v25 = v22;
    v36 = v25;
    v37 = &v44;
    [v23 coordinateReadingItemAtURL:v24 options:8 error:&v38 byAccessor:v35];
    v26 = v38;

    if (v26)
    {
      v27 = MEMORY[0x277D43EF8];
      v28 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v28 = *v27;
      }

      v29 = v28;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [(QLUbiquitousItemFetcher *)self fileURL];
        *buf = 138412546;
        v41 = v30;
        v42 = 2112;
        v43 = v26;
        _os_log_impl(&dword_261653000, v29, OS_LOG_TYPE_ERROR, "Could not do a coordinated read for directory at URL: %@ (%@). #PreviewItem", buf, 0x16u);
      }
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277CDAB18]);
      v34 = [v33 initWithURL:*(*(&v44 + 1) + 40) sandboxType:*MEMORY[0x277CDAB68]];
      v29 = self->_zipPackageUrlHandler;
      self->_zipPackageUrlHandler = v34;
    }

    v7 = [(QLURLHandler *)self->_zipPackageUrlHandler fileURL];

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v31 = MEMORY[0x277D43EF8];
    v32 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v32 = *v31;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v44) = 138412290;
      *(&v44 + 4) = v19;
      _os_log_impl(&dword_261653000, v32, OS_LOG_TYPE_ERROR, "Could not create temporary folder for data item with error: %@ #PreviewItem", &v44, 0xCu);
    }

    v7 = 0;
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __55__QLUbiquitousItemFetcher__createURLForPackageIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *(a1 + 32);
  v11 = 0;
  [v4 copyItemAtURL:v3 toURL:v5 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v13 = v3;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Could not copy zipped folder at URL (%@) to URL (%@). Error: %@ #PreviewItem", buf, 0x20u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_deleteTempraryZipPackageFileIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_zipPackageUrlHandler)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(QLURLHandler *)self->_zipPackageUrlHandler fileURL];
    v5 = [v4 path];
    v6 = [v3 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [(QLURLHandler *)self->_zipPackageUrlHandler fileURL];
      v14 = 0;
      v8 = [v3 removeItemAtURL:v7 error:&v14];
      v9 = v14;

      if ((v8 & 1) == 0)
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
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Could not delete temporary zip file for folder URL with error: %@ #PreviewItem", buf, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    zipPackageUrlHandler = self->_zipPackageUrlHandler;
    self->_zipPackageUrlHandler = 0;

LABEL_10:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = QLUbiquitousItemFetcher;
  v4 = a3;
  [(QLItemFetcher *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sandboxingWrapper forKey:{@"sandboxingWrapper", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_zipPackageUrlHandler forKey:@"zipPackageUrlHandler"];
  [v4 encodeBool:self->_shouldZipPackageIfNeeded forKey:@"shouldZipPackageIfNeeded"];
}

- (QLUbiquitousItemFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = QLUbiquitousItemFetcher;
  v5 = [(QLItemFetcher *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    updateBlocks = v5->_updateBlocks;
    v5->_updateBlocks = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxingWrapper"];
    sandboxingWrapper = v5->_sandboxingWrapper;
    v5->_sandboxingWrapper = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zipPackageUrlHandler"];
    zipPackageUrlHandler = v5->_zipPackageUrlHandler;
    v5->_zipPackageUrlHandler = v10;

    v5->_shouldZipPackageIfNeeded = [v4 decodeBoolForKey:@"shouldZipPackageIfNeeded"];
    v12 = v5;
  }

  return v5;
}

@end