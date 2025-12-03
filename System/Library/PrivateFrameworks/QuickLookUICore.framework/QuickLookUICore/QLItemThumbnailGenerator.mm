@interface QLItemThumbnailGenerator
- (id)fetcherClassesForPreviewItem:(id)item;
- (void)_generateThumbnailForRequest:(id)request completionHandler:(id)handler;
- (void)_generateThumbnailWithData:(id)data contentType:(id)type size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale badgeType:(unint64_t)badgeType completionHandler:(id)handler;
- (void)_generateThumbnailWithFPItem:(id)item size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale badgeType:(unint64_t)type completionHandler:(id)handler;
- (void)_generateThumbnailWithURL:(id)l size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale badgeType:(unint64_t)type completionHandler:(id)handler;
- (void)generateThumbnailForItem:(id)item ofSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale badgeType:(unint64_t)type completionBlock:(id)block;
- (void)generateThumbnailRepresentationForItem:(id)item ofSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale badgeType:(unint64_t)type completionBlock:(id)block;
@end

@implementation QLItemThumbnailGenerator

- (void)generateThumbnailForItem:(id)item ofSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale badgeType:(unint64_t)type completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__QLItemThumbnailGenerator_generateThumbnailForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke;
  v17[3] = &unk_279AE1248;
  v18 = blockCopy;
  v16 = blockCopy;
  [(QLItemThumbnailGenerator *)self generateThumbnailRepresentationForItem:item ofSize:type minimumSize:v17 scale:width badgeType:height completionBlock:minimumSize, scale];
}

void __104__QLItemThumbnailGenerator_generateThumbnailForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UIImage];
  (*(v2 + 16))(v2, v3);
}

- (void)generateThumbnailRepresentationForItem:(id)item ofSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale badgeType:(unint64_t)type completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  blockCopy = block;
  if (blockCopy)
  {
    fpItem = [itemCopy fpItem];

    if (fpItem)
    {
      fpItem2 = [itemCopy fpItem];
      [(QLItemThumbnailGenerator *)self _generateThumbnailWithFPItem:fpItem2 size:type minimumDimension:blockCopy scale:width badgeType:height completionHandler:minimumSize, scale];
LABEL_18:

      goto LABEL_19;
    }

    fpItem2 = [itemCopy fetcher];
    if ([fpItem2 fetchingState] == 1)
    {
      if (!fpItem2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      isLongFetchOperation = [fpItem2 isLongFetchOperation];
      if (!fpItem2 || (isLongFetchOperation & 1) != 0)
      {
LABEL_14:
        urlForThumbnail = [fpItem2 urlForThumbnail];
        if (urlForThumbnail)
        {
          [(QLItemThumbnailGenerator *)self _generateThumbnailWithURL:urlForThumbnail size:type minimumDimension:blockCopy scale:width badgeType:height completionHandler:0.0, scale];
        }

        else
        {
          blockCopy[2](blockCopy, 0);
        }

        goto LABEL_18;
      }
    }

    previewItemContentType = [itemCopy previewItemContentType];
    v23 = [(QLItemThumbnailGenerator *)self fetcherClassesForPreviewItem:itemCopy];
    v24 = objc_opt_new();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __118__QLItemThumbnailGenerator_generateThumbnailRepresentationForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke;
    v27[3] = &unk_279AE1270;
    v28 = previewItemContentType;
    v29 = blockCopy;
    v30 = width;
    v31 = height;
    minimumSizeCopy = minimumSize;
    scaleCopy = scale;
    typeCopy = type;
    v27[4] = self;
    v25 = previewItemContentType;
    [fpItem2 fetchContentWithAllowedOutputClasses:v23 inQueue:v24 updateBlock:0 completionBlock:v27];

    goto LABEL_18;
  }

  v19 = MEMORY[0x277D43EF8];
  v20 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v20 = *v19;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v20, OS_LOG_TYPE_ERROR, "Called generateThumbnailWithSize with nil completion block. generateThumbnailWithSize should be called with a completion block. #Thumbnail", buf, 2u);
  }

LABEL_19:
}

void __118__QLItemThumbnailGenerator_generateThumbnailRepresentationForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
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
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Could not generate thumbnail because an error occurred while fetching the contents of the item: %@. #Thumbnail", &v10, 0xCu);
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _generateThumbnailWithData:v5 contentType:*(a1 + 40) size:*(a1 + 88) minimumDimension:*(a1 + 48) scale:*(a1 + 56) badgeType:*(a1 + 64) completionHandler:{*(a1 + 72), *(a1 + 80)}];
      goto LABEL_12;
    }

LABEL_11:
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  [*(a1 + 32) _generateThumbnailWithURL:v5 size:*(a1 + 88) minimumDimension:*(a1 + 48) scale:*(a1 + 56) badgeType:*(a1 + 64) completionHandler:{*(a1 + 72), *(a1 + 80)}];
LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_generateThumbnailWithURL:(id)l size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale badgeType:(unint64_t)type completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v15 = MEMORY[0x277CDAAD8];
  handlerCopy = handler;
  lCopy = l;
  v18 = [[v15 alloc] initWithFileAtURL:lCopy size:-1 scale:width representationTypes:{height, scale}];

  [v18 setMinimumDimension:dimension];
  [v18 setBadgeType:type];
  [(QLItemThumbnailGenerator *)self _generateThumbnailForRequest:v18 completionHandler:handlerCopy];
}

- (void)_generateThumbnailWithFPItem:(id)item size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale badgeType:(unint64_t)type completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v15 = MEMORY[0x277CDAAD8];
  handlerCopy = handler;
  itemCopy = item;
  v18 = [[v15 alloc] initWithFPItem:itemCopy size:-1 scale:width representationTypes:{height, scale}];

  [v18 setMinimumDimension:dimension];
  [v18 setBadgeType:type];
  [(QLItemThumbnailGenerator *)self _generateThumbnailForRequest:v18 completionHandler:handlerCopy];
}

- (void)_generateThumbnailWithData:(id)data contentType:(id)type size:(CGSize)size minimumDimension:(double)dimension scale:(double)scale badgeType:(unint64_t)badgeType completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v17 = MEMORY[0x277CDAAD8];
  handlerCopy = handler;
  typeCopy = type;
  dataCopy = data;
  v21 = [[v17 alloc] initWithData:dataCopy contentType:typeCopy size:-1 scale:width representationTypes:{height, scale}];

  [v21 setMinimumDimension:dimension];
  [v21 setBadgeType:badgeType];
  [(QLItemThumbnailGenerator *)self _generateThumbnailForRequest:v21 completionHandler:handlerCopy];
}

- (void)_generateThumbnailForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [QLItemThumbnailGenerator _generateThumbnailForRequest:completionHandler:];
  }

  v7 = handlerCopy;
  mEMORY[0x277CDAAE0] = [MEMORY[0x277CDAAE0] sharedGenerator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__QLItemThumbnailGenerator__generateThumbnailForRequest_completionHandler___block_invoke;
  v10[3] = &unk_279AE1298;
  v11 = v7;
  v9 = v7;
  [mEMORY[0x277CDAAE0] generateBestRepresentationForRequest:requestCopy completionHandler:v10];
}

void __75__QLItemThumbnailGenerator__generateThumbnailForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
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
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Could not generate thumbnail because an error occurred while generating best representation for contents of the item: %@. #Thumbnail", &v10, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (id)fetcherClassesForPreviewItem:(id)item
{
  itemCopy = item;
  if (fetcherClassesForPreviewItem__onceToken != -1)
  {
    [QLItemThumbnailGenerator fetcherClassesForPreviewItem:];
  }

  if ([itemCopy previewItemType] == 1)
  {
    uTIAnalyzer = [itemCopy UTIAnalyzer];
    isAudioOnly = [uTIAnalyzer isAudioOnly];
    v6 = &fetcherClassesForPreviewItem__fetcherAllowedClasses;
    if (!isAudioOnly)
    {
      v6 = &fetcherClassesForPreviewItem__movieAllowedClasses;
    }

    v7 = *v6;
  }

  else
  {
    v7 = fetcherClassesForPreviewItem__fetcherAllowedClasses;
  }

  return v7;
}

uint64_t __57__QLItemThumbnailGenerator_fetcherClassesForPreviewItem___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = fetcherClassesForPreviewItem__fetcherAllowedClasses;
  fetcherClassesForPreviewItem__fetcherAllowedClasses = v3;

  fetcherClassesForPreviewItem__movieAllowedClasses = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end