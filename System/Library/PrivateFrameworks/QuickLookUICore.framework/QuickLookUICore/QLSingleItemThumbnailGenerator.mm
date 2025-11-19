@interface QLSingleItemThumbnailGenerator
- (QLItem)item;
- (QLItemThumbnailGenerator)thumbnailGenerator;
- (QLSingleItemThumbnailGenerator)initWithCoder:(id)a3;
- (QLSingleItemThumbnailGenerator)initWithItem:(id)a3;
- (id)genericIconWithSize:(CGSize)a3;
- (void)_generateUncachedThumbnailWithSize:(CGSize)a3 contentMode:(unint64_t)a4 thumbnailVersion:(id)a5 completionBlock:(id)a6;
- (void)_handleThumbnailGenerationFinishedWithThumbnailRepresentation:(id)a3 size:(CGSize)a4 version:(id)a5 clientCompletionBlock:(id)a6;
- (void)_thumbnailVersionForItem:(id)a3 completionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)generateThumbnailWithSize:(CGSize)a3 contentMode:(unint64_t)a4 completionBlock:(id)a5;
@end

@implementation QLSingleItemThumbnailGenerator

- (QLSingleItemThumbnailGenerator)initWithItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLSingleItemThumbnailGenerator;
  v5 = [(QLSingleItemThumbnailGenerator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, v4);
    v7 = v6;
  }

  return v6;
}

- (QLItemThumbnailGenerator)thumbnailGenerator
{
  thumbnailGenerator = self->_thumbnailGenerator;
  if (!thumbnailGenerator)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_thumbnailGenerator)
    {
      v5 = objc_opt_new();
      v6 = self->_thumbnailGenerator;
      self->_thumbnailGenerator = v5;
    }

    objc_sync_exit(v4);

    thumbnailGenerator = self->_thumbnailGenerator;
  }

  v7 = thumbnailGenerator;

  return v7;
}

- (void)_thumbnailVersionForItem:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 fpItem];
  v9 = [v6 editedFileURL];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CDAB10]);
    v11 = [v6 editedFileURL];
    v12 = [v10 initWithFileURL:v11 automaticallyGenerated:1];

LABEL_5:
    v7[2](v7, v12);
    goto LABEL_6;
  }

  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x277CDAB10]) initWithFPItem:v8 automaticallyGenerated:1];
    goto LABEL_5;
  }

  v12 = [v6 fetcher];
  v13 = [v12 urlForThumbnail];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CDAB10]) initWithFileURL:v13 automaticallyGenerated:1];
    v7[2](v7, v14);
  }

  else
  {
    v15 = [(QLSingleItemThumbnailGenerator *)self thumbnailGenerator];
    v16 = [v15 fetcherClassesForPreviewItem:v6];
    v17 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__QLSingleItemThumbnailGenerator__thumbnailVersionForItem_completionBlock___block_invoke;
    v18[3] = &unk_279AE0F50;
    v19 = v7;
    [v12 fetchContentWithAllowedOutputClasses:v16 inQueue:v17 updateBlock:0 completionBlock:v18];
  }

LABEL_6:
}

void __75__QLSingleItemThumbnailGenerator__thumbnailVersionForItem_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v20 = 138412290;
    v21 = v7;
    v11 = "Could not generate thumbnail because an error occurred while fetching the contents of the item: %@. #Thumbnail";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 12;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v18 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v15 = *v18;
      }

      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      LOWORD(v20) = 0;
      v11 = "Could not get thumbnail version because no versions can be created for data and spotlight contents. #Thumbnail";
      v12 = v15;
      v13 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v16 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v19 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v16 = *v19;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      LOWORD(v20) = 0;
      v11 = "Could not get thumbnail version because content of the item is not supported. #Thumbnail";
      v12 = v16;
      v13 = OS_LOG_TYPE_ERROR;
    }

    v14 = 2;
LABEL_20:
    _os_log_impl(&dword_261653000, v12, v13, v11, &v20, v14);
LABEL_21:
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    goto LABEL_22;
  }

  v8 = [objc_alloc(MEMORY[0x277CDAB10]) initWithFileURL:v5 automaticallyGenerated:1];
  (*(*(a1 + 32) + 16))();

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)generateThumbnailWithSize:(CGSize)a3 contentMode:(unint64_t)a4 completionBlock:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  if (v9)
  {
    v10 = self->_version;
    v11 = self->_thumbnailRepresentation;
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v13 = self;
    objc_sync_enter(v13);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__QLSingleItemThumbnailGenerator_generateThumbnailWithSize_contentMode_completionBlock___block_invoke;
    v16[3] = &unk_279AE1698;
    v16[4] = v13;
    v20 = width;
    v21 = height;
    v14 = v11;
    v17 = v14;
    v15 = v10;
    v18 = v15;
    v19 = v9;
    v22 = a4;
    [(QLSingleItemThumbnailGenerator *)v13 _thumbnailVersionForItem:WeakRetained completionBlock:v16];

    objc_sync_exit(v13);
  }
}

void __88__QLSingleItemThumbnailGenerator_generateThumbnailWithSize_contentMode_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 24) == *(a1 + 64) && *(v5 + 32) == *(a1 + 72);
  v12 = v3;
  v7 = 1;
  if (v6 && v3 && *(a1 + 40))
  {
    v8 = [v3 isEqual:*(a1 + 48)];
    v4 = v12;
    v7 = v8 ^ 1;
  }

  v9 = *(a1 + 40);
  if (v9 && !((*(a1 + 48) == 0) | v7 & 1))
  {
    v10 = *(a1 + 56);
    v11 = [v9 UIImage];
    (*(v10 + 16))(v10, v11, *(*(a1 + 32) + 40));
  }

  else
  {
    [*(a1 + 32) _generateUncachedThumbnailWithSize:*(a1 + 80) contentMode:v4 thumbnailVersion:*(a1 + 56) completionBlock:{*(a1 + 64), *(a1 + 72)}];
  }
}

- (void)_generateUncachedThumbnailWithSize:(CGSize)a3 contentMode:(unint64_t)a4 thumbnailVersion:(id)a5 completionBlock:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = a6;
  if (width >= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  if (a4 == 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [(QLSingleItemThumbnailGenerator *)self thumbnailGenerator];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];
  v19 = v18;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __114__QLSingleItemThumbnailGenerator__generateUncachedThumbnailWithSize_contentMode_thumbnailVersion_completionBlock___block_invoke;
  v22[3] = &unk_279AE16C0;
  v25 = width;
  v26 = height;
  v22[4] = self;
  v23 = v11;
  v24 = v12;
  v20 = v12;
  v21 = v11;
  [v15 generateThumbnailRepresentationForItem:WeakRetained ofSize:v22 minimumSize:width scale:height completionBlock:{v14, v19}];
}

- (id)genericIconWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v7 = [WeakRetained previewItemType];

  if (v7 != 14)
  {
    v19 = objc_alloc(MEMORY[0x277D1B1A8]);
    v20 = objc_loadWeakRetained(&self->_item);
    v21 = [v20 previewItemContentType];
    v13 = [v19 initWithType:v21];

    if (width == QLCGSizeFromQLItemThumbnailSize(0) && height == v22)
    {
      v23 = MEMORY[0x277D1B218];
    }

    else
    {
      v11 = 0;
      if (width != QLCGSizeFromQLItemThumbnailSize(1) || height != v24)
      {
        goto LABEL_22;
      }

      v23 = MEMORY[0x277D1B210];
    }

    v25 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*v23];
    if (!v25)
    {
      v11 = 0;
      goto LABEL_22;
    }

    v26 = v25;
    v27 = objc_alloc(MEMORY[0x277D1B1C8]);
    [v26 size];
    v29 = v28;
    v31 = v30;
    [v26 scale];
    v14 = [v27 initWithSize:v29 scale:{v31, v32}];

    [v14 setShape:0];
    v15 = [v13 imageForDescriptor:v14];
    if ([v15 placeholder])
    {
      v33 = [v13 prepareImageForDescriptor:v14];

      v15 = v33;
    }

    v34 = MEMORY[0x277D755B8];
    v35 = [v15 CGImage];
    [v14 scale];
    v36 = [v34 imageWithCGImage:v35 scale:0 orientation:?];
LABEL_21:
    v11 = v36;

LABEL_22:
    goto LABEL_23;
  }

  if (width == QLCGSizeFromQLItemThumbnailSize(0) && height == v8)
  {
    v37 = MEMORY[0x277D755B8];
    v13 = objc_loadWeakRetained(&self->_item);
    v14 = [v13 searchableItemApplicationBundleIdentifier];
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    v16 = v37;
    v17 = v14;
    v18 = 13;
    goto LABEL_20;
  }

  v11 = 0;
  if (width == QLCGSizeFromQLItemThumbnailSize(1) && height == v10)
  {
    v12 = MEMORY[0x277D755B8];
    v13 = objc_loadWeakRetained(&self->_item);
    v14 = [v13 searchableItemApplicationBundleIdentifier];
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    v16 = v12;
    v17 = v14;
    v18 = 12;
LABEL_20:
    v36 = [v16 _applicationIconImageForBundleIdentifier:v17 format:v18 scale:?];
    goto LABEL_21;
  }

LABEL_23:

  return v11;
}

- (void)_handleThumbnailGenerationFinishedWithThumbnailRepresentation:(id)a3 size:(CGSize)a4 version:(id)a5 clientCompletionBlock:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  v19 = a6;
  v13 = [(QLThumbnailRepresentation *)v11 UIImage];
  v14 = [(QLThumbnailRepresentation *)v11 type]!= QLThumbnailRepresentationTypeIcon;
  if (!v13)
  {
    v13 = [(QLSingleItemThumbnailGenerator *)self genericIconWithSize:width, height];
    v14 = 0;
  }

  v15 = self;
  objc_sync_enter(v15);
  v15->_thumbnailSize.width = width;
  v15->_thumbnailSize.height = height;
  thumbnailRepresentation = v15->_thumbnailRepresentation;
  v15->_thumbnailRepresentation = v11;
  v17 = v11;

  version = v15->_version;
  v15->_version = v12;

  v15->_isRepresentative = v14;
  objc_sync_exit(v15);

  if (v19)
  {
    v19[2](v19, v13, v14);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_item);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_item);
    [v6 encodeObject:v5 forKey:@"generatorItem"];
  }
}

- (QLSingleItemThumbnailGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLSingleItemThumbnailGenerator;
  v5 = [(QLSingleItemThumbnailGenerator *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"generatorItem"];
    objc_storeWeak(&v5->_item, v6);

    v7 = v5;
  }

  return v5;
}

- (QLItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end