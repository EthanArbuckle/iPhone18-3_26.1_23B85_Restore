@interface QLDataFetcher
- (QLDataFetcher)initWithCoder:(id)a3;
- (QLDataFetcher)initWithData:(id)a3 contentType:(id)a4 previewItemTitle:(id)a5;
- (QLDataFetcher)initWithItem:(id)a3 contentType:(id)a4;
- (id)_createTemporaryFileIfNeeded;
- (id)_temporaryFilename;
- (id)fetchedContent;
- (id)itemSize;
- (id)newItemProvider;
- (id)shareableItem;
- (void)_deleteTempraryFileIfNeeded;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6;
- (void)loadDataIfNeeded;
- (void)prepareShareableItem:(id)a3;
@end

@implementation QLDataFetcher

- (QLDataFetcher)initWithItem:(id)a3 contentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = QLDataFetcher;
  v8 = [(QLItemFetcher *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, v6);
    objc_storeStrong(&v9->_contentType, a4);
    WeakRetained = objc_loadWeakRetained(&v9->_item);
    v11 = [WeakRetained previewItemTitle];
    previewItemTitle = v9->_previewItemTitle;
    v9->_previewItemTitle = v11;

    v13 = v9;
  }

  return v9;
}

- (QLDataFetcher)initWithData:(id)a3 contentType:(id)a4 previewItemTitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = QLDataFetcher;
  v12 = [(QLItemFetcher *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    objc_storeStrong(&v13->_contentType, a4);
    objc_storeStrong(&v13->_previewItemTitle, a5);
    v14 = v13;
  }

  return v13;
}

- (void)dealloc
{
  [(QLDataFetcher *)self _deleteTempraryFileIfNeeded];
  v3.receiver = self;
  v3.super_class = QLDataFetcher;
  [(QLDataFetcher *)&v3 dealloc];
}

- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__QLDataFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
  v13[3] = &unk_279AE1000;
  v13[4] = self;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [a4 addOperationWithBlock:v13];
}

void __90__QLDataFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadDataIfNeeded];
  if ([*(a1 + 40) containsObject:objc_opt_class()])
  {
    [*(a1 + 32) setFetchingState:1];
    v2 = *(*(a1 + 32) + 24);
    v3 = *(*(a1 + 48) + 16);
LABEL_7:

    v3();
    return;
  }

  if (![*(a1 + 40) containsObject:objc_opt_class()])
  {
    v3 = *(*(a1 + 48) + 16);
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) _createTemporaryFileIfNeeded];
  if (v6)
  {
    [*(a1 + 32) setFetchingState:1];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.fetcher.data" code:1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (id)itemSize
{
  data = self->_data;
  if (data)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](data, "length")}];
  }

  else
  {
    v4 = &unk_2873F3180;
  }

  return v4;
}

- (id)_createTemporaryFileIfNeeded
{
  v33 = *MEMORY[0x277D85DE8];
  temporaryURL = self->_temporaryURL;
  if (temporaryURL)
  {
    v3 = temporaryURL;
  }

  else
  {
    [(QLDataFetcher *)self loadDataIfNeeded];
    v5 = MEMORY[0x277CBEBC0];
    v6 = MEMORY[0x277CCACA8];
    v7 = NSTemporaryDirectory();
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    v10 = [v6 stringWithFormat:@"%@%@", v7, v9];
    v11 = [v5 fileURLWithPath:v10];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = 0;
    LODWORD(v8) = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v30];
    v13 = v30;

    if (!v8 || v13)
    {
      v16 = MEMORY[0x277D43EF8];
      v17 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v13;
        _os_log_impl(&dword_261653000, v17, OS_LOG_TYPE_ERROR, "Could not create temporary folder for data item with error: %@ #PreviewItem", buf, 0xCu);
      }

      v3 = 0;
    }

    else
    {
      if (self->_contentType)
      {
        v14 = [MEMORY[0x277CE1CB8] typeWithIdentifier:?];
        v15 = [v14 preferredFilenameExtension];
      }

      else
      {
        v15 = 0;
      }

      v18 = [(QLDataFetcher *)self _temporaryFilename];
      v19 = [v11 URLByAppendingPathComponent:v18];
      v20 = v19;
      if (v15)
      {
        v21 = [v19 URLByAppendingPathExtension:v15];

        v20 = v21;
      }

      data = self->_data;
      v29 = 0;
      v23 = [(NSData *)data writeToURL:v20 options:1 error:&v29];
      v24 = v29;
      if (v23)
      {
        objc_storeStrong(&self->_temporaryURL, v20);
        v3 = self->_temporaryURL;
      }

      else
      {
        v25 = MEMORY[0x277D43EF8];
        v26 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v26 = *v25;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v24;
          _os_log_impl(&dword_261653000, v26, OS_LOG_TYPE_ERROR, "Writting data on disk failed with error: %@ #PreviewItem", buf, 0xCu);
        }

        v3 = 0;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_deleteTempraryFileIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_temporaryURL)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(NSURL *)self->_temporaryURL path];
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      temporaryURL = self->_temporaryURL;
      v13 = 0;
      v7 = [v3 removeItemAtURL:temporaryURL error:&v13];
      v8 = v13;
      if ((v7 & 1) == 0)
      {
        v9 = MEMORY[0x277D43EF8];
        v10 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v10 = *v9;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&dword_261653000, v10, OS_LOG_TYPE_ERROR, "Could not delete temporary folder for data item with error: %@ #PreviewItem", buf, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = self->_temporaryURL;
    self->_temporaryURL = 0;

LABEL_10:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_temporaryFilename
{
  previewItemTitle = self->_previewItemTitle;
  if (previewItemTitle && [(NSString *)previewItemTitle length])
  {
    v4 = self->_previewItemTitle;
  }

  else
  {
    v4 = QLLocalizedString(@"asset");
  }

  return v4;
}

- (id)shareableItem
{
  temporaryURL = self->_temporaryURL;
  if (!temporaryURL)
  {
    temporaryURL = self->_data;
  }

  v3 = temporaryURL;

  return v3;
}

- (void)prepareShareableItem:(id)a3
{
  v6 = a3;
  v4 = [(QLDataFetcher *)self _createTemporaryFileIfNeeded];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (id)fetchedContent
{
  v3 = [(QLItemFetcher *)self fetchingState];
  if (v3)
  {
    temporaryURL = self->_temporaryURL;
    if (!temporaryURL)
    {
      [(QLDataFetcher *)self loadDataIfNeeded];
      temporaryURL = self->_data;
    }

    v3 = temporaryURL;
  }

  return v3;
}

- (void)loadDataIfNeeded
{
  if (!self->_data)
  {
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v3 = [WeakRetained previewItemDataProvider];
    v4 = objc_loadWeakRetained(&self->_item);
    v5 = [v3 provideDataForItem:v4];
    data = self->_data;
    self->_data = v5;
  }
}

- (id)newItemProvider
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  v4 = [(QLDataFetcher *)self shareableItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentType = self->_contentType;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__QLDataFetcher_newItemProvider__block_invoke;
    v12[3] = &unk_279AE0F78;
    v6 = &v13;
    objc_copyWeak(&v13, &location);
    [v3 registerFileRepresentationForTypeIdentifier:contentType fileOptions:0 visibility:0 loadHandler:v12];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = self->_contentType;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__QLDataFetcher_newItemProvider__block_invoke_2;
    v10[3] = &unk_279AE1028;
    v6 = &v11;
    objc_copyWeak(&v11, &location);
    [v3 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:v10];
  }

  objc_destroyWeak(v6);
  v8 = v3;
LABEL_7:

  objc_destroyWeak(&location);
  return v8;
}

uint64_t __32__QLDataFetcher_newItemProvider__block_invoke(uint64_t a1, void (**a2)(void, void, void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained shareableItem];
  (a2)[2](v4, v6, 1, 0);

  return 0;
}

uint64_t __32__QLDataFetcher_newItemProvider__block_invoke_2(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained shareableItem];
  (a2)[2](v4, v6, 0);

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = QLDataFetcher;
  v4 = a3;
  [(QLItemFetcher *)&v5 encodeWithCoder:v4];
  [(QLDataFetcher *)self loadDataIfNeeded:v5.receiver];
  [v4 encodeObject:self->_data forKey:@"data"];
  [v4 encodeObject:self->_contentType forKey:@"contentType"];
  [v4 encodeObject:self->_previewItemTitle forKey:@"previewItemTitle"];
}

- (QLDataFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = QLDataFetcher;
  v5 = [(QLItemFetcher *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewItemTitle"];
    previewItemTitle = v5->_previewItemTitle;
    v5->_previewItemTitle = v10;

    v12 = v5;
  }

  return v5;
}

@end