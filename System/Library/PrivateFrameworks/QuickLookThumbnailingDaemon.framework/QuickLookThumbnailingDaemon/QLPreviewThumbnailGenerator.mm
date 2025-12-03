@interface QLPreviewThumbnailGenerator
+ (BOOL)canGenerateThumbnailForContentType:(id)type atSize:(CGSize)size;
- (CGContext)_beginContext;
- (CGContext)_beginContextWithSize:(CGSize)size;
- (CGRect)contentRect;
- (QLPlatformImage)thumbnailImage;
- (QLPreviewThumbnailGenerator)initWithGeneratorRequest:(id)request lowQuality:(BOOL)quality thumbnailItem:(id)item;
- (double)_minimumDimensionForPDFPageRect:(CGRect)rect requestThumbnailSize:(CGSize)size scale:(double)scale;
- (void)_createThumbnailForPDF:(id)f;
- (void)_drawRemotePDFPage:(id)page atIndex:(int64_t)index completionHandler:(id)handler;
- (void)_generateThumbnailFromExtensionAndReplyWith:(id)with;
- (void)_generateThumbnailWithWillStartBlock:(id)block completionHandler:(id)handler;
- (void)_replyWithImages:(id)images error:(id)error completionHandler:(id)handler;
- (void)cancel;
- (void)generateThumbnailWithCompletionHandler:(id)handler;
- (void)generateWithCompletionBlock:(id)block;
- (void)generateWithWillStartBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation QLPreviewThumbnailGenerator

- (QLPreviewThumbnailGenerator)initWithGeneratorRequest:(id)request lowQuality:(BOOL)quality thumbnailItem:(id)item
{
  requestCopy = request;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = QLPreviewThumbnailGenerator;
  v11 = [(QLPreviewThumbnailGenerator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, request);
    v12->_wantsLowQuality = quality;
    objc_storeStrong(&v12->_item, item);
  }

  return v12;
}

+ (BOOL)canGenerateThumbnailForContentType:(id)type atSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  v7 = +[QLThumbnailExtensionMonitor shared];
  v8 = [v7 canGenerateThumbnailWith:typeCopy at:{width, height}];

  return v8;
}

- (void)_generateThumbnailWithWillStartBlock:(id)block completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  request = self->_request;
  handlerCopy = handler;
  request = [(QLTGeneratorThumbnailRequest *)request request];
  v8 = [handlerCopy copy];

  if (self->_status == 3)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:5 userInfo:0];
    (v8)[2](v8, v9);

    goto LABEL_7;
  }

  contentType = [(QLThumbnailItem *)self->_item contentType];
  if ([contentType conformsToType:*MEMORY[0x277CE1E08]])
  {

LABEL_6:
    [(QLPreviewThumbnailGenerator *)self _createThumbnailForPDF:v8];
    goto LABEL_7;
  }

  contentType2 = [(QLThumbnailItem *)self->_item contentType];
  v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.localized-pdf-bundle"];
  v13 = [contentType2 conformsToType:v12];

  if (v13)
  {
    goto LABEL_6;
  }

  v15 = +[QLThumbnailExtensionMonitor shared];
  v16 = [v15 bestExtensionFor:request matching:3];

  if (v16)
  {
    [(QLPreviewThumbnailGenerator *)self _generateThumbnailFromExtensionAndReplyWith:v8];
  }

  else
  {
    v17 = MEMORY[0x277CDAAE0];
    v23 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    contentType3 = [(QLThumbnailItem *)self->_item contentType];
    v20 = [v18 stringWithFormat:@"No extension found for %@", contentType3];
    v24[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v22 = [v17 errorWithCode:4 request:request additionalUserInfo:v21];

    self->_status = 2;
    (v8)[2](v8, v22);
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)generateWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__QLPreviewThumbnailGenerator_generateWithCompletionBlock___block_invoke;
  v6[3] = &unk_279ADD788;
  v7 = blockCopy;
  v5 = blockCopy;
  [(QLPreviewThumbnailGenerator *)self generateWithWillStartBlock:0 completionBlock:v6];
}

uint64_t __59__QLPreviewThumbnailGenerator_generateWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateThumbnailWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__QLPreviewThumbnailGenerator_generateThumbnailWithCompletionHandler___block_invoke;
  v6[3] = &unk_279ADD188;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(QLPreviewThumbnailGenerator *)self generateWithWillStartBlock:0 completionBlock:v6];
}

void __70__QLPreviewThumbnailGenerator_generateThumbnailWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 thumbnailImages];
  v5 = [v6 firstObject];
  (*(v2 + 16))(v2, v5, v4);
}

- (void)generateWithWillStartBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if ((self->_status - 1) >= 2)
  {
    self->_status = 1;
    generationQueue = self->_generationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__QLPreviewThumbnailGenerator_generateWithWillStartBlock_completionBlock___block_invoke;
    block[3] = &unk_279ADD9D0;
    block[4] = self;
    v10 = blockCopy;
    v11 = completionBlockCopy;
    dispatch_async(generationQueue, block);
  }
}

void __74__QLPreviewThumbnailGenerator_generateWithWillStartBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _generateThumbnailWithWillStartBlock:*(a1 + 40) completionHandler:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)cancel
{
  [(QLPreviewThumbnailGenerator *)self setStatus:3];
  extensionGenerator = self->_extensionGenerator;
  if (extensionGenerator)
  {

    [(QLThumbnailExtensionGenerator *)extensionGenerator cancel];
  }
}

- (void)_replyWithImages:(id)images error:(id)error completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  errorCopy = error;
  handlerCopy = handler;
  item = [(QLPreviewThumbnailGenerator *)self item];
  v12 = _log_2();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (imagesCopy)
  {
    if (v13)
    {
      v14 = [imagesCopy count];
      firstObject = [imagesCopy firstObject];
      *buf = 134218498;
      v31 = v14;
      v32 = 2112;
      v33 = firstObject;
      v34 = 2112;
      v35 = item;
      _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "QLPreviewThumbnailGenerator did generate %lu images: %@ for item: %@.", buf, 0x20u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__QLPreviewThumbnailGenerator__replyWithImages_error_completionHandler___block_invoke_11;
    block[3] = &unk_279ADDA20;
    block[4] = self;
    v26 = handlerCopy;
    v23 = imagesCopy;
    v24 = errorCopy;
    v25 = item;
    v16 = errorCopy;
    v17 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v18 = v23;
  }

  else
  {
    if (v13)
    {
      *buf = 138412546;
      v31 = item;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "QLPreviewThumbnailGenerator did not generate an image for item: %@. Error: %@", buf, 0x16u);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__QLPreviewThumbnailGenerator__replyWithImages_error_completionHandler___block_invoke;
    v27[3] = &unk_279ADD9F8;
    v28 = errorCopy;
    v29 = handlerCopy;
    v19 = errorCopy;
    v20 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v27);

    v18 = v29;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __72__QLPreviewThumbnailGenerator__replyWithImages_error_completionHandler___block_invoke_11(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) status] == 3)
  {
    v2 = _log_2();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 56);
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_2615D3000, v2, OS_LOG_TYPE_INFO, "Cancelled during generation for %@", &v10, 0xCu);
    }

    v4 = *(a1 + 64);
    v5 = [MEMORY[0x277CDAAE0] errorWithCode:5 request:0 additionalUserInfo:0];
    (*(v4 + 16))(v4, v5);

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [*(a1 + 32) setThumbnailImages:*(a1 + 40)];
    [*(a1 + 32) setStatus:2];
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 64) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

- (CGContext)_beginContext
{
  request = [(QLTGeneratorThumbnailRequest *)self->_request request];
  [request size];
  v4 = [(QLPreviewThumbnailGenerator *)self _beginContextWithSize:?];

  return v4;
}

- (CGContext)_beginContextWithSize:(CGSize)size
{
  request = [(QLTGeneratorThumbnailRequest *)self->_request request];
  [request scale];
  v4 = QLTCreateCGContext();

  return v4;
}

- (void)_createThumbnailForPDF:(id)f
{
  fCopy = f;
  request = [(QLTGeneratorThumbnailRequest *)self->_request request];
  contentType = [request contentType];
  preferredFilenameExtension = [contentType preferredFilenameExtension];
  uppercaseString = [preferredFilenameExtension uppercaseString];

  p_item = &self->_item;
  data = [(QLThumbnailItem *)self->_item data];
  if (data)
  {
    v11 = data;
    v12 = 0;
    urlWrapper = 0;
LABEL_3:
    mEMORY[0x277CBF3B0] = [MEMORY[0x277CBF3B0] sharedInstance];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke;
    v27[3] = &unk_279ADDAE8;
    urlWrapper = urlWrapper;
    v28 = urlWrapper;
    selfCopy = self;
    v32 = fCopy;
    v30 = request;
    v31 = uppercaseString;
    [mEMORY[0x277CBF3B0] newRemotePDFDocumentWithData:v11 completion:v27];

    v15 = v28;
    goto LABEL_20;
  }

  urlWrapper = [(QLThumbnailItem *)*p_item urlWrapper];

  if (urlWrapper)
  {
    v16 = MEMORY[0x277CCA8D8];
    fileURL = [(QLThumbnailItem *)*p_item fileURL];
    v18 = [v16 bundleWithURL:fileURL];

    fileURL2 = [(QLThumbnailItem *)*p_item fileURL];
    v20 = fileURL2;
    if (v18)
    {
      lastPathComponent = [fileURL2 lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      v23 = [v18 URLForResource:stringByDeletingPathExtension withExtension:@"pdf"];
      v24 = v23;
      if (v23)
      {
        v20 = CFRetain(v23);
      }

      else
      {
        v20 = 0;
      }
    }

    if ([v20 startAccessingSecurityScopedResource])
    {
      urlWrapper = v20;
    }

    else
    {
      urlWrapper = 0;
    }

    v33 = 0;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v20 options:1 error:&v33];
    v12 = v33;

    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
  }

  v25 = _log_2();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [(QLPreviewThumbnailGenerator *)&self->_item _createThumbnailForPDF:v12, v25];
  }

  v26 = objc_opt_new();
  v11 = v26;
  if (v12)
  {
    [v26 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:0 userInfo:v11];
  [(QLPreviewThumbnailGenerator *)self _replyWithImages:0 error:v15 completionHandler:fCopy];
LABEL_20:
}

void __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopAccessingSecurityScopedResource];
  if (v5)
  {
    [*(a1 + 48) size];
    v8 = v7;
    v10 = v9;
    [*(a1 + 48) scale];
    v12 = v11;
    v13 = [v5 pageCount];
    [*(a1 + 48) iconMode];
    if (v13 <= 1)
    {
      v14 = 257;
    }

    else
    {
      v14 = 258;
    }

    *(*(a1 + 40) + 44) = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_19;
    aBlock[3] = &unk_279ADDA48;
    v15 = v5;
    v37 = v15;
    v40 = v8;
    v41 = v10;
    v42 = v12;
    v30 = *(a1 + 40);
    v16 = *(&v30 + 1);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v38 = v30;
    v39 = v19;
    v20 = _Block_copy(aBlock);
    v21 = v20;
    v22 = *(a1 + 40);
    if (v13 < 2)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_3;
      v31[3] = &unk_279ADDAC0;
      v23 = &v32;
      v32 = v20;
      v29 = v20;
      [v22 _drawRemotePDFPage:v15 atIndex:0 completionHandler:v31];
    }

    else
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_23;
      v33[3] = &unk_279ADDA98;
      v23 = &v35;
      v24 = *(a1 + 40);
      v35 = v20;
      v33[4] = v24;
      v34 = v15;
      v25 = v21;
      [v22 _drawRemotePDFPage:v34 atIndex:0 completionHandler:v33];
    }

    v28 = v37;
  }

  else
  {
    v26 = _log_2();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_cold_1();
    }

    v27 = *(a1 + 40);
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:0 userInfo:0];
    [v27 _replyWithImages:0 error:v28 completionHandler:*(a1 + 64)];
  }
}

void __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_19(uint64_t a1, CGImage *a2, CGImage *a3, void *a4, void *a5)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a2)
  {
    v11 = MEMORY[0x277D43EA8];
    [*(a1 + 48) scale];
    v12 = [v11 imageWithCGImage:a2 scale:1 orientation:?];
    if (a3)
    {
      v13 = MEMORY[0x277D43EA8];
      [*(a1 + 48) scale];
      v14 = [v13 imageWithCGImage:a3 scale:1 orientation:?];
    }

    else
    {
      v14 = 0;
    }

    CGImageRelease(a2);
    CGImageRelease(a3);
    [*(a1 + 40) setGeneratedProperties:v9];
    if (v14)
    {
      v38[0] = v12;
      v38[1] = v14;
      v21 = MEMORY[0x277CBEA60];
      v22 = v38;
      v23 = 2;
    }

    else
    {
      v37 = v12;
      v21 = MEMORY[0x277CBEA60];
      v22 = &v37;
      v23 = 1;
    }

    v24 = [v21 arrayWithObjects:v22 count:v23];
    [*(a1 + 40) _replyWithImages:v24 error:0 completionHandler:*(a1 + 64)];
  }

  else
  {
    if ([*(a1 + 32) isUnlocked])
    {
      v15 = _log_2();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_19_cold_1();
      }

      v16 = *(a1 + 40);
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:0 userInfo:0];
      v17 = *(a1 + 64);
      v18 = v16;
      v19 = 0;
      v20 = v12;
    }

    else
    {
      if (*(a1 + 72) >= *(a1 + 80))
      {
        v25 = *(a1 + 72);
      }

      else
      {
        v25 = *(a1 + 80);
      }

      QLAdaptSizeInSize();
      v26 = *MEMORY[0x277CBF348];
      v27 = *(MEMORY[0x277CBF348] + 8);
      v28 = *(a1 + 88);
      v30 = [*(a1 + 40) _beginContextWithSize:v29 scale:?];
      v31 = *(a1 + 88);
      QLDrawLockIcon();
      Image = CGBitmapContextCreateImage(v30);
      CGContextRelease(v30);
      if (Image)
      {
        v33 = MEMORY[0x277D43EA8];
        [*(a1 + 48) scale];
        v34 = [v33 imageWithCGImage:Image scale:1 orientation:?];
        v39[0] = v34;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

        CGImageRelease(Image);
      }

      else
      {
        v12 = 0;
      }

      *(*(a1 + 40) + 42) = 0;
      objc_storeStrong((*(a1 + 40) + 64), *(a1 + 56));
      if ([*(a1 + 48) iconMode])
      {
        v35 = 257;
      }

      else
      {
        v35 = 0;
      }

      *(*(a1 + 40) + 44) = v35;
      v18 = *(a1 + 40);
      v17 = *(a1 + 64);
      v19 = v12;
      v20 = 0;
    }

    [v18 _replyWithImages:v19 error:v20 completionHandler:v17];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_23(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (a2)
  {
    v5 = a4.n128_u64[0];
    v6 = a3.n128_u64[0];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_2;
    v11[3] = &unk_279ADDA70;
    v12 = *(a1 + 48);
    v13 = a2;
    v14 = v6;
    v15 = v5;
    [v8 _drawRemotePDFPage:v9 atIndex:1 completionHandler:v11];
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);
    a3.n128_u64[0] = *MEMORY[0x277CBF3A8];
    a4.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);

    v10(a3, a4);
  }
}

void __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = objc_opt_new();
  [v6 setInlinePreviewMode:3];
  v5 = *(a1 + 40);
  (*(*(a1 + 32) + 16))(*(a1 + 48), *(a1 + 56));
}

uint64_t __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    v3 = *MEMORY[0x277CBF3A8];
    v4 = *(MEMORY[0x277CBF3A8] + 8);
  }

  return (*(v2 + 16))();
}

- (double)_minimumDimensionForPDFPageRect:(CGRect)rect requestThumbnailSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  QLGetDrawRectFromPageRectWithMinimumDimension();
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v8 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v10 / v11 < 5.0)
  {
    return 0.0;
  }

  if (width >= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  return ceil(v13 * 0.5 * scale);
}

- (void)_drawRemotePDFPage:(id)page atIndex:(int64_t)index completionHandler:(id)handler
{
  v57[6] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  request = self->_request;
  pageCopy = page;
  request = [(QLTGeneratorThumbnailRequest *)request request];
  v12 = [pageCopy sync_pageAtIndex:index];

  if (v12)
  {
    [request size];
    [request scale];
    [request size];
    [request scale];
    [request minimumDimension];
    v14 = v13;
    [request scale];
    v16 = v14 * v15;
    QLGetCGPDFPageProxyRect();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (v16 == 0.0)
    {
      [request size];
      v26 = v25;
      v28 = v27;
      [request scale];
      [(QLPreviewThumbnailGenerator *)self _minimumDimensionForPDFPageRect:v18 requestThumbnailSize:v20 scale:v22, v24, v26, v28, v29];
      v16 = v30;
    }

    QLGetDrawRectFromPageRectWithMinimumDimension();
    v52 = v31;
    v33 = v32;
    QLGetCGPDFPageProxyRect();
    v35 = v34;
    v37 = v36;
    QLGetDrawRectFromPageRectWithMinimumDimension();
    QLAdaptSizeToRectWithRounding2();
    v38 = MEMORY[0x277CBEC38];
    v39 = *MEMORY[0x277CBF4E8];
    v56[0] = *MEMORY[0x277CBF4F0];
    v56[1] = v39;
    v57[0] = MEMORY[0x277CBEC38];
    v57[1] = MEMORY[0x277CBEC38];
    v40 = *MEMORY[0x277CBF4E0];
    v57[2] = MEMORY[0x277CBEC38];
    v41 = *MEMORY[0x277CBF500];
    v56[2] = v40;
    v56[3] = v41;
    v55[0] = v42;
    *&v55[1] = v35 + v37 - v43;
    v55[2] = v44;
    *&v55[3] = v43;
    v45 = [MEMORY[0x277CCAE60] valueWithBytes:v55 objCType:{"{CGRect={CGPoint=dd}{CGSize=dd}}", *&v16}];
    v46 = *MEMORY[0x277CBF508];
    v57[3] = v45;
    v57[4] = v38;
    v47 = *MEMORY[0x277CBF4F8];
    v56[4] = v46;
    v56[5] = v47;
    v57[5] = MEMORY[0x277CBEC28];
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:6];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __76__QLPreviewThumbnailGenerator__drawRemotePDFPage_atIndex_completionHandler___block_invoke;
    v53[3] = &unk_279ADDB10;
    v54 = handlerCopy;
    [v12 drawWithBox:1 size:0 colorSpace:v48 options:v53 completion:{v52, v33}];

    v49 = v54;
  }

  else
  {
    v50 = _log_2();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewThumbnailGenerator _drawRemotePDFPage:atIndex:completionHandler:];
    }

    v49 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v49, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __76__QLPreviewThumbnailGenerator__drawRemotePDFPage_atIndex_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = *(a1 + 32);
  v13 = v5;
  if (a3)
  {
    v9 = [v5 createImageWithData:a3];
    v10 = [v13 width];
    v11.n128_f64[0] = [v13 height];
    v12.n128_f64[0] = v10;
    (*(v8 + 16))(v8, v9, 0, v12, v11);
  }

  else
  {
    v6.n128_u64[0] = *MEMORY[0x277CBF3A8];
    v7.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
    (*(v8 + 16))(v8, 0, 0, v6, v7);
  }
}

- (void)_generateThumbnailFromExtensionAndReplyWith:(id)with
{
  v33 = *MEMORY[0x277D85DE8];
  withCopy = with;
  request = [(QLTGeneratorThumbnailRequest *)self->_request request];
  v6 = _log_2();
  v7 = os_signpost_id_generate(v6);

  v8 = _log_2();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    fileURL = [request fileURL];
    uuid = [request uuid];
    *buf = 138412546;
    v30 = fileURL;
    v31 = 2112;
    v32 = uuid;
    _os_signpost_emit_with_name_impl(&dword_2615D3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "quicklook.thumbnail.extensionGeneration", "fileURL : %@ UUID: %@", buf, 0x16u);
  }

  v12 = self->_item;
  if ([request iconMode])
  {
    contentType = [(QLThumbnailItem *)self->_item contentType];
    identifier = [contentType identifier];
    v15 = QLIconFlavorDefaultFlavorForType();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_new();
  extensionGenerator = self->_extensionGenerator;
  self->_extensionGenerator = v16;

  v18 = self->_extensionGenerator;
  request = self->_request;
  item = self->_item;
  wantsLowQuality = self->_wantsLowQuality;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__QLPreviewThumbnailGenerator__generateThumbnailFromExtensionAndReplyWith___block_invoke;
  v25[3] = &unk_279ADDB38;
  v25[4] = self;
  v26 = v12;
  v27 = withCopy;
  v28 = v7;
  v22 = v12;
  v23 = withCopy;
  [(QLThumbnailExtensionGenerator *)v18 generateThumbnailWithThumbnailRequest:request item:item flavor:v15 wantsLowQuality:wantsLowQuality generationData:0 completionHandler:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __75__QLPreviewThumbnailGenerator__generateThumbnailFromExtensionAndReplyWith___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    [*(a1 + 32) setResultIsLowQuality:{objc_msgSend(v6, "isLowQuality")}];
    if ([v6 iconFlavor] == 0x7FFFFFFF)
    {
      v7 = [*(a1 + 40) contentType];
      v8 = [v7 identifier];
      [*(a1 + 32) setFlavor:QLIconFlavorDefaultFlavorForType()];
    }

    else
    {
      [*(a1 + 32) setFlavor:{objc_msgSend(v6, "iconFlavor")}];
    }

    v11 = [v6 extensionBadge];
    [*(a1 + 32) setExtensionBadge:v11];

    [*(a1 + 32) setGeneratedProperties:v6];
    [*(a1 + 32) _replyWithImages:v5 error:0 completionHandler:*(a1 + 48)];
    v12 = _log_2();
    v13 = v12;
    v14 = *(a1 + 56);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_2615D3000, v13, OS_SIGNPOST_INTERVAL_END, v14, "quicklook.thumbnail.extensionGeneration", "", v15, 2u);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:0 userInfo:0];
    [v9 _replyWithImages:0 error:v10 completionHandler:*(a1 + 48)];
  }
}

- (QLPlatformImage)thumbnailImage
{
  thumbnailImages = [(QLPreviewThumbnailGenerator *)self thumbnailImages];
  firstObject = [thumbnailImages firstObject];

  return firstObject;
}

- (CGRect)contentRect
{
  objc_copyStruct(v6, &self->_contentRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_createThumbnailForPDF:(NSObject *)a3 .cold.1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 urlWrapper];
  OUTLINED_FUNCTION_3();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2615D3000, a3, OS_LOG_TYPE_ERROR, "_createThumbnailForPDF failed : cannot load data from %@, error: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "_createThumbnailForPDF failed : could not create PDF document proxy, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__QLPreviewThumbnailGenerator__createThumbnailForPDF___block_invoke_19_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "_createThumbnailForPDF failed : could not draw PDF page (error: %@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_drawRemotePDFPage:atIndex:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "_createThumbnailForPDF failed : could not get page at index %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end