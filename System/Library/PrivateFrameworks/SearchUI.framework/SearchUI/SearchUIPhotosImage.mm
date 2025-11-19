@interface SearchUIPhotosImage
- (CGSize)pixelSize;
- (CGSize)size;
- (id)imageQueue;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUIPhotosImage

- (CGSize)size
{
  v12.receiver = self;
  v12.super_class = SearchUIPhotosImage;
  [(SearchUIImage *)&v12 size];
  v4 = v3;
  v6 = v5;
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == v3 && v7 == v6)
  {
    v9 = [(SearchUIPhotosImage *)self asset:*MEMORY[0x1E695F060]];
    if (!v9)
    {
      v9 = [(SearchUIPhotosImage *)self fetchAsset];
      [(SearchUIPhotosImage *)self setAsset:v9];
    }

    v4 = [v9 pixelWidth];
    v6 = [v9 pixelHeight];
    [(SearchUIPhotosImage *)self setPixelSize:v4, v6];
    [(SearchUIPhotosImage *)self setSize:v4, v6];
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)imageQueue
{
  if (imageQueue_onceToken != -1)
  {
    [SearchUIPhotosImage imageQueue];
  }

  v3 = imageQueue_queue;

  return v3;
}

void __33__SearchUIPhotosImage_imageQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.searchui.SearchUIPhotosImage", attr);
  v2 = imageQueue_queue;
  imageQueue_queue = v1;
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  [(SearchUIPhotosImage *)self size];
  v10 = v9;
  v12 = v11;
  [(SearchUIPhotosImage *)self pixelSize];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
  v16[3] = &unk_1E85B3E68;
  v18 = v13;
  v19 = v14;
  v20 = v10;
  v21 = v12;
  v22 = a3;
  v16[4] = self;
  v17 = v8;
  v23 = a4;
  v15 = v8;
  [(SearchUIPhotosImage *)self fetchAssetWithCompletionHandler:v16];
}

void __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v5 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = v5;
  block[2] = __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
  block[3] = &unk_1E85B3E40;
  v14 = *(a1 + 80);
  v9 = v3;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v15 = *(a1 + 88);
  v7 = v3;
  dispatch_async(v4, block);
}

void __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v5 = *(a1 + 88);
    v2 = *(a1 + 72) * v5;
    v3 = v5 * *(a1 + 80);
  }

  v6 = objc_opt_new();
  [v6 setNetworkAccessAllowed:1];
  v7 = *(a1 + 32);
  if (v7 && ([v7 isHidden] & 1) == 0)
  {
    v11 = [MEMORY[0x1E6978860] defaultManager];
    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3;
    v13[3] = &unk_1E85B3E18;
    v14 = v12;
    v15 = *(a1 + 48);
    [v11 requestImageForAsset:v14 targetSize:1 contentMode:v6 options:v13 resultHandler:{v2, v3}];
  }

  else
  {
    v8 = SearchUIGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2_cold_1(a1, (a1 + 32), v8);
    }

    if ([*(a1 + 32) isHidden])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v9 = [[SearchUISymbolImage alloc] initWithSymbolName:@"photo"];
      [(SearchUISymbolImage *)v9 setIsTemplate:1];
      [(SearchUISymbolImage *)v9 setPunchThroughBackground:1];
      [(SearchUISymbolImage *)v9 setSize:*(a1 + 72), *(a1 + 80)];
      v10 = [(SearchUISymbolImage *)v9 loadImageWithScale:*(a1 + 96) isDarkStyle:*(a1 + 88)];
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = MEMORY[0x1E6978E50];
  if (!v5)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
    v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v12 = SearchUIGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v19, "isHidden")}];
      v18 = [*(a1 + 32) photoLibrary];
      [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(a1 + 32), "syndicationState")}];
      *buf = 138413826;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      v25 = 2112;
      v26 = v18;
      v28 = v27 = 2112;
      v17 = v28;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      _os_log_error_impl(&dword_1DA169000, v12, OS_LOG_TYPE_ERROR, "SearchUIPhotosImage: missing image for asset: %@ isHidden: %@ photoLibrary: %@ syndicationState: %@ isImageDegraded: %@ isImageCancelled: %@ error: %@", buf, 0x48u);
    }
  }

  v13 = SearchUIGeneralLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) localIdentifier];
    *buf = 138412290;
    v22 = v14;
    _os_log_impl(&dword_1DA169000, v13, OS_LOG_TYPE_DEFAULT, "SearchUIPhotosImage: identifier : %@", buf, 0xCu);
  }

  v15 = *(a1 + 40);
  v16 = [v7 objectForKeyedSubscript:*v8];
  (*(v15 + 16))(v15, v5, [v16 BOOLValue] ^ 1);
}

- (CGSize)pixelSize
{
  objc_copyStruct(v4, &self->_pixelSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

void __72__SearchUIPhotosImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) sfImage];
  v6 = [v5 photoIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*a2, "isHidden")}];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_1DA169000, a3, OS_LOG_TYPE_ERROR, "SearchUIPhotosImage: missing asset: %@ isHidden: %@", &v8, 0x16u);
}

@end