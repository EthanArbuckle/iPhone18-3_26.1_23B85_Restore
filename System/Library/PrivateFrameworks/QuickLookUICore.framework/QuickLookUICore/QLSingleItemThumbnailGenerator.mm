@interface QLSingleItemThumbnailGenerator
- (QLItem)item;
- (QLItemThumbnailGenerator)thumbnailGenerator;
- (QLSingleItemThumbnailGenerator)initWithCoder:(id)coder;
- (QLSingleItemThumbnailGenerator)initWithItem:(id)item;
- (id)genericIconWithSize:(CGSize)size;
- (void)_generateUncachedThumbnailWithSize:(CGSize)size contentMode:(unint64_t)mode thumbnailVersion:(id)version completionBlock:(id)block;
- (void)_handleThumbnailGenerationFinishedWithThumbnailRepresentation:(id)representation size:(CGSize)size version:(id)version clientCompletionBlock:(id)block;
- (void)_thumbnailVersionForItem:(id)item completionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)generateThumbnailWithSize:(CGSize)size contentMode:(unint64_t)mode completionBlock:(id)block;
@end

@implementation QLSingleItemThumbnailGenerator

- (QLSingleItemThumbnailGenerator)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = QLSingleItemThumbnailGenerator;
  v5 = [(QLSingleItemThumbnailGenerator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, itemCopy);
    v7 = v6;
  }

  return v6;
}

- (QLItemThumbnailGenerator)thumbnailGenerator
{
  thumbnailGenerator = self->_thumbnailGenerator;
  if (!thumbnailGenerator)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_thumbnailGenerator)
    {
      v5 = objc_opt_new();
      v6 = self->_thumbnailGenerator;
      self->_thumbnailGenerator = v5;
    }

    objc_sync_exit(selfCopy);

    thumbnailGenerator = self->_thumbnailGenerator;
  }

  v7 = thumbnailGenerator;

  return v7;
}

- (void)_thumbnailVersionForItem:(id)item completionBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  fpItem = [itemCopy fpItem];
  editedFileURL = [itemCopy editedFileURL];

  if (editedFileURL)
  {
    v10 = objc_alloc(MEMORY[0x277CDAB10]);
    editedFileURL2 = [itemCopy editedFileURL];
    fetcher = [v10 initWithFileURL:editedFileURL2 automaticallyGenerated:1];

LABEL_5:
    blockCopy[2](blockCopy, fetcher);
    goto LABEL_6;
  }

  if (fpItem)
  {
    fetcher = [objc_alloc(MEMORY[0x277CDAB10]) initWithFPItem:fpItem automaticallyGenerated:1];
    goto LABEL_5;
  }

  fetcher = [itemCopy fetcher];
  urlForThumbnail = [fetcher urlForThumbnail];
  if (urlForThumbnail)
  {
    v14 = [objc_alloc(MEMORY[0x277CDAB10]) initWithFileURL:urlForThumbnail automaticallyGenerated:1];
    blockCopy[2](blockCopy, v14);
  }

  else
  {
    thumbnailGenerator = [(QLSingleItemThumbnailGenerator *)self thumbnailGenerator];
    v16 = [thumbnailGenerator fetcherClassesForPreviewItem:itemCopy];
    v17 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__QLSingleItemThumbnailGenerator__thumbnailVersionForItem_completionBlock___block_invoke;
    v18[3] = &unk_279AE0F50;
    v19 = blockCopy;
    [fetcher fetchContentWithAllowedOutputClasses:v16 inQueue:v17 updateBlock:0 completionBlock:v18];
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

- (void)generateThumbnailWithSize:(CGSize)size contentMode:(unint64_t)mode completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  if (blockCopy)
  {
    v10 = self->_version;
    v11 = self->_thumbnailRepresentation;
    WeakRetained = objc_loadWeakRetained(&self->_item);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__QLSingleItemThumbnailGenerator_generateThumbnailWithSize_contentMode_completionBlock___block_invoke;
    v16[3] = &unk_279AE1698;
    v16[4] = selfCopy;
    v20 = width;
    v21 = height;
    v14 = v11;
    v17 = v14;
    v15 = v10;
    v18 = v15;
    v19 = blockCopy;
    modeCopy = mode;
    [(QLSingleItemThumbnailGenerator *)selfCopy _thumbnailVersionForItem:WeakRetained completionBlock:v16];

    objc_sync_exit(selfCopy);
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

- (void)_generateUncachedThumbnailWithSize:(CGSize)size contentMode:(unint64_t)mode thumbnailVersion:(id)version completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  versionCopy = version;
  blockCopy = block;
  if (width >= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  if (mode == 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  thumbnailGenerator = [(QLSingleItemThumbnailGenerator *)self thumbnailGenerator];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v19 = v18;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __114__QLSingleItemThumbnailGenerator__generateUncachedThumbnailWithSize_contentMode_thumbnailVersion_completionBlock___block_invoke;
  v22[3] = &unk_279AE16C0;
  v25 = width;
  v26 = height;
  v22[4] = self;
  v23 = versionCopy;
  v24 = blockCopy;
  v20 = blockCopy;
  v21 = versionCopy;
  [thumbnailGenerator generateThumbnailRepresentationForItem:WeakRetained ofSize:v22 minimumSize:width scale:height completionBlock:{v14, v19}];
}

- (id)genericIconWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  previewItemType = [WeakRetained previewItemType];

  if (previewItemType != 14)
  {
    v19 = objc_alloc(MEMORY[0x277D1B1A8]);
    v20 = objc_loadWeakRetained(&self->_item);
    previewItemContentType = [v20 previewItemContentType];
    v13 = [v19 initWithType:previewItemContentType];

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
    searchableItemApplicationBundleIdentifier = [v27 initWithSize:v29 scale:{v31, v32}];

    [searchableItemApplicationBundleIdentifier setShape:0];
    mainScreen = [v13 imageForDescriptor:searchableItemApplicationBundleIdentifier];
    if ([mainScreen placeholder])
    {
      v33 = [v13 prepareImageForDescriptor:searchableItemApplicationBundleIdentifier];

      mainScreen = v33;
    }

    v34 = MEMORY[0x277D755B8];
    cGImage = [mainScreen CGImage];
    [searchableItemApplicationBundleIdentifier scale];
    v36 = [v34 imageWithCGImage:cGImage scale:0 orientation:?];
LABEL_21:
    v11 = v36;

LABEL_22:
    goto LABEL_23;
  }

  if (width == QLCGSizeFromQLItemThumbnailSize(0) && height == v8)
  {
    v37 = MEMORY[0x277D755B8];
    v13 = objc_loadWeakRetained(&self->_item);
    searchableItemApplicationBundleIdentifier = [v13 searchableItemApplicationBundleIdentifier];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v16 = v37;
    v17 = searchableItemApplicationBundleIdentifier;
    v18 = 13;
    goto LABEL_20;
  }

  v11 = 0;
  if (width == QLCGSizeFromQLItemThumbnailSize(1) && height == v10)
  {
    v12 = MEMORY[0x277D755B8];
    v13 = objc_loadWeakRetained(&self->_item);
    searchableItemApplicationBundleIdentifier = [v13 searchableItemApplicationBundleIdentifier];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v16 = v12;
    v17 = searchableItemApplicationBundleIdentifier;
    v18 = 12;
LABEL_20:
    v36 = [v16 _applicationIconImageForBundleIdentifier:v17 format:v18 scale:?];
    goto LABEL_21;
  }

LABEL_23:

  return v11;
}

- (void)_handleThumbnailGenerationFinishedWithThumbnailRepresentation:(id)representation size:(CGSize)size version:(id)version clientCompletionBlock:(id)block
{
  height = size.height;
  width = size.width;
  representationCopy = representation;
  versionCopy = version;
  blockCopy = block;
  uIImage = [(QLThumbnailRepresentation *)representationCopy UIImage];
  v14 = [(QLThumbnailRepresentation *)representationCopy type]!= QLThumbnailRepresentationTypeIcon;
  if (!uIImage)
  {
    uIImage = [(QLSingleItemThumbnailGenerator *)self genericIconWithSize:width, height];
    v14 = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_thumbnailSize.width = width;
  selfCopy->_thumbnailSize.height = height;
  thumbnailRepresentation = selfCopy->_thumbnailRepresentation;
  selfCopy->_thumbnailRepresentation = representationCopy;
  v17 = representationCopy;

  version = selfCopy->_version;
  selfCopy->_version = versionCopy;

  selfCopy->_isRepresentative = v14;
  objc_sync_exit(selfCopy);

  if (blockCopy)
  {
    blockCopy[2](blockCopy, uIImage, v14);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_item);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_item);
    [coderCopy encodeObject:v5 forKey:@"generatorItem"];
  }
}

- (QLSingleItemThumbnailGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = QLSingleItemThumbnailGenerator;
  v5 = [(QLSingleItemThumbnailGenerator *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"generatorItem"];
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