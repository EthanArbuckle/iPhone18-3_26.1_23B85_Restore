@interface QLItemThumbnailGenerator
- (id)fetcherClassesForPreviewItem:(id)a3;
- (void)_generateThumbnailForRequest:(id)a3 completionHandler:(id)a4;
- (void)_generateThumbnailWithData:(id)a3 contentType:(id)a4 size:(CGSize)a5 minimumDimension:(double)a6 scale:(double)a7 badgeType:(unint64_t)a8 completionHandler:(id)a9;
- (void)_generateThumbnailWithFPItem:(id)a3 size:(CGSize)a4 minimumDimension:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionHandler:(id)a8;
- (void)_generateThumbnailWithURL:(id)a3 size:(CGSize)a4 minimumDimension:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionHandler:(id)a8;
- (void)generateThumbnailForItem:(id)a3 ofSize:(CGSize)a4 minimumSize:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionBlock:(id)a8;
- (void)generateThumbnailRepresentationForItem:(id)a3 ofSize:(CGSize)a4 minimumSize:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionBlock:(id)a8;
@end

@implementation QLItemThumbnailGenerator

- (void)generateThumbnailForItem:(id)a3 ofSize:(CGSize)a4 minimumSize:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionBlock:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a8;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__QLItemThumbnailGenerator_generateThumbnailForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke;
  v17[3] = &unk_279AE1248;
  v18 = v15;
  v16 = v15;
  [(QLItemThumbnailGenerator *)self generateThumbnailRepresentationForItem:a3 ofSize:a7 minimumSize:v17 scale:width badgeType:height completionBlock:a5, a6];
}

void __104__QLItemThumbnailGenerator_generateThumbnailForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UIImage];
  (*(v2 + 16))(v2, v3);
}

- (void)generateThumbnailRepresentationForItem:(id)a3 ofSize:(CGSize)a4 minimumSize:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionBlock:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a8;
  if (v16)
  {
    v17 = [v15 fpItem];

    if (v17)
    {
      v18 = [v15 fpItem];
      [(QLItemThumbnailGenerator *)self _generateThumbnailWithFPItem:v18 size:a7 minimumDimension:v16 scale:width badgeType:height completionHandler:a5, a6];
LABEL_18:

      goto LABEL_19;
    }

    v18 = [v15 fetcher];
    if ([v18 fetchingState] == 1)
    {
      if (!v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v21 = [v18 isLongFetchOperation];
      if (!v18 || (v21 & 1) != 0)
      {
LABEL_14:
        v26 = [v18 urlForThumbnail];
        if (v26)
        {
          [(QLItemThumbnailGenerator *)self _generateThumbnailWithURL:v26 size:a7 minimumDimension:v16 scale:width badgeType:height completionHandler:0.0, a6];
        }

        else
        {
          v16[2](v16, 0);
        }

        goto LABEL_18;
      }
    }

    v22 = [v15 previewItemContentType];
    v23 = [(QLItemThumbnailGenerator *)self fetcherClassesForPreviewItem:v15];
    v24 = objc_opt_new();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __118__QLItemThumbnailGenerator_generateThumbnailRepresentationForItem_ofSize_minimumSize_scale_badgeType_completionBlock___block_invoke;
    v27[3] = &unk_279AE1270;
    v28 = v22;
    v29 = v16;
    v30 = width;
    v31 = height;
    v32 = a5;
    v33 = a6;
    v34 = a7;
    v27[4] = self;
    v25 = v22;
    [v18 fetchContentWithAllowedOutputClasses:v23 inQueue:v24 updateBlock:0 completionBlock:v27];

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

- (void)_generateThumbnailWithURL:(id)a3 size:(CGSize)a4 minimumDimension:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = MEMORY[0x277CDAAD8];
  v16 = a8;
  v17 = a3;
  v18 = [[v15 alloc] initWithFileAtURL:v17 size:-1 scale:width representationTypes:{height, a6}];

  [v18 setMinimumDimension:a5];
  [v18 setBadgeType:a7];
  [(QLItemThumbnailGenerator *)self _generateThumbnailForRequest:v18 completionHandler:v16];
}

- (void)_generateThumbnailWithFPItem:(id)a3 size:(CGSize)a4 minimumDimension:(double)a5 scale:(double)a6 badgeType:(unint64_t)a7 completionHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = MEMORY[0x277CDAAD8];
  v16 = a8;
  v17 = a3;
  v18 = [[v15 alloc] initWithFPItem:v17 size:-1 scale:width representationTypes:{height, a6}];

  [v18 setMinimumDimension:a5];
  [v18 setBadgeType:a7];
  [(QLItemThumbnailGenerator *)self _generateThumbnailForRequest:v18 completionHandler:v16];
}

- (void)_generateThumbnailWithData:(id)a3 contentType:(id)a4 size:(CGSize)a5 minimumDimension:(double)a6 scale:(double)a7 badgeType:(unint64_t)a8 completionHandler:(id)a9
{
  height = a5.height;
  width = a5.width;
  v17 = MEMORY[0x277CDAAD8];
  v18 = a9;
  v19 = a4;
  v20 = a3;
  v21 = [[v17 alloc] initWithData:v20 contentType:v19 size:-1 scale:width representationTypes:{height, a7}];

  [v21 setMinimumDimension:a6];
  [v21 setBadgeType:a8];
  [(QLItemThumbnailGenerator *)self _generateThumbnailForRequest:v21 completionHandler:v18];
}

- (void)_generateThumbnailForRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    [QLItemThumbnailGenerator _generateThumbnailForRequest:completionHandler:];
  }

  v7 = v6;
  v8 = [MEMORY[0x277CDAAE0] sharedGenerator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__QLItemThumbnailGenerator__generateThumbnailForRequest_completionHandler___block_invoke;
  v10[3] = &unk_279AE1298;
  v11 = v7;
  v9 = v7;
  [v8 generateBestRepresentationForRequest:v5 completionHandler:v10];
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

- (id)fetcherClassesForPreviewItem:(id)a3
{
  v3 = a3;
  if (fetcherClassesForPreviewItem__onceToken != -1)
  {
    [QLItemThumbnailGenerator fetcherClassesForPreviewItem:];
  }

  if ([v3 previewItemType] == 1)
  {
    v4 = [v3 UTIAnalyzer];
    v5 = [v4 isAudioOnly];
    v6 = &fetcherClassesForPreviewItem__fetcherAllowedClasses;
    if (!v5)
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