@interface STIconCache
+ (STIconCache)sharedCache;
- (CNMonogrammer)monogrammer;
- (NSPersonNameComponentsFormatter)personNameComponentsFormatter;
- (STIconCache)init;
- (UIImage)imageForBlankApplicationIcon;
- (id)_newCircleImageWithFillColor:(id)a3 fillDiameter:(double)a4 outlineColor:(id)a5 outlineWidth:(double)a6;
- (id)_personImageWithDSID:(id)a3 fullName:(id)a4 appleID:(id)a5 forceFetch:(BOOL)a6 completionHandler:(id)a7;
- (id)blankSpaceImageWithSize:(CGSize)a3;
- (id)circleImageWithFillColor:(id)a3 fillDiameter:(double)a4 outlineColor:(id)a5 outlineWidth:(double)a6;
- (id)imageForBundleIdentifier:(id)a3;
- (id)imageForCategoryIdentifier:(id)a3;
- (id)monogramImageForInitial:(id)a3 useDarkColors:(BOOL)a4;
- (id)monogramImageForNameComponents:(id)a3;
- (id)roundedImageForImageWithName:(id)a3;
- (void)_fetchFamilyPhotoWithDSID:(id)a3 fullName:(id)a4 appleID:(id)a5 completionHandler:(id)a6;
- (void)_fetchImageForAppInfoIfNeeded:(id)a3;
- (void)_fetchImageForAppInfoIfNeeded:(id)a3 completionHandler:(id)a4;
- (void)_handleiTunesResponseForAppInfo:(id)a3 response:(id)a4 data:(id)a5 error:(id)a6;
- (void)_handleiTunesResponseForAppInfo:(id)a3 response:(id)a4 data:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)_updateCacheWithImage:(id)a3 bundleIdentifier:(id)a4;
- (void)_updateCacheWithImage:(id)a3 dsid:(id)a4;
- (void)addObserver:(id)a3 selector:(SEL)a4 bundleIdentifier:(id)a5;
- (void)dealloc;
- (void)imageForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeObserver:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation STIconCache

+ (STIconCache)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[STIconCache sharedCache];
  }

  v3 = sharedCache_sharedCache;

  return v3;
}

uint64_t __26__STIconCache_sharedCache__block_invoke()
{
  sharedCache_sharedCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (STIconCache)init
{
  v19.receiver = self;
  v19.super_class = STIconCache;
  v2 = [(STIconCache *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    iconByKeyCache = v2->_iconByKeyCache;
    v2->_iconByKeyCache = v3;

    [(NSCache *)v2->_iconByKeyCache setName:@"com.apple.screentime.icon-cache"];
    v5 = objc_opt_new();
    bundleIdentifiersWithPendingRequests = v2->_bundleIdentifiersWithPendingRequests;
    v2->_bundleIdentifiersWithPendingRequests = v5;

    v7 = [@"com.apple.screentime.icon-cache" UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create(v7, v9);
    lookupQueue = v2->_lookupQueue;
    v2->_lookupQueue = v10;

    v12 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v13 = [MEMORY[0x277CCACD8] sharedURLCache];
    [v12 setURLCache:v13];

    [v12 setRequestCachePolicy:2];
    [v12 setHTTPShouldUsePipelining:1];
    v14 = objc_opt_new();
    [v14 setName:@"com.apple.screentime.icon-cache"];
    [v14 setUnderlyingQueue:v2->_lookupQueue];
    v15 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v12 delegate:0 delegateQueue:v14];
    urlSession = v2->_urlSession;
    v2->_urlSession = v15;

    v17 = [v14 name];
    [(NSURLSession *)v2->_urlSession setSessionDescription:v17];
  }

  return v2;
}

- (void)dealloc
{
  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  v3.receiver = self;
  v3.super_class = STIconCache;
  [(STIconCache *)&v3 dealloc];
}

- (UIImage)imageForBlankApplicationIcon
{
  v3 = [(NSCache *)self->_iconByKeyCache objectForKey:@"blank-app-icon"];
  if (!v3)
  {
    v3 = [MEMORY[0x277D755B8] blankIcon];
    [(NSCache *)self->_iconByKeyCache setObject:v3 forKey:@"blank-app-icon" cost:0];
  }

  return v3;
}

- (void)imageForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", v6];
  v9 = [(NSCache *)self->_iconByKeyCache objectForKey:v8];
  if (!v9)
  {
    v11 = [MEMORY[0x277D4B8C0] sharedCache];
    v12 = [v11 appInfoForBundleIdentifier:v6];

    v13 = [v12 platform];
    if ([v6 isEqualToString:@"com.apple.compass"])
    {
LABEL_4:
      v14 = MEMORY[0x277D755B8];
      v15 = +[STScreenTimeUIBundle bundle];
      v16 = [v14 imageNamed:v6 inBundle:v15];
      v10 = [v16 iconFromPrecomposedImage:0 platform:v13];

LABEL_5:
      [(NSCache *)self->_iconByKeyCache setObject:v10 forKey:v8 cost:10];
      v7[2](v7, v10);
LABEL_6:

      goto LABEL_7;
    }

    if ([v12 source] == 2)
    {
      v17 = MEMORY[0x277D755B8];
      v18 = [v12 bundleIdentifier];
      v10 = [v17 iconWithAppBundleID:v18];

      if (v10)
      {
        goto LABEL_5;
      }

      v19 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [STIconCache imageForBundleIdentifier:completionHandler:];
      }

LABEL_12:

      v10 = [(STIconCache *)self imageForBlankApplicationIcon];
      goto LABEL_5;
    }

    if ([v12 source] == 1)
    {
      goto LABEL_4;
    }

    if ([v12 source] == 3)
    {
      v20 = [v12 artworkURL];

      if (!v20)
      {
        v19 = [MEMORY[0x277D4BA00] appInfo];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [STIconCache imageForBundleIdentifier:completionHandler:];
        }

        goto LABEL_12;
      }

      objc_initWeak(&location, self);
      v21 = [(STIconCache *)self lookupQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__STIconCache_imageForBundleIdentifier_completionHandler___block_invoke;
      block[3] = &unk_278338CE8;
      objc_copyWeak(&v35, &location);
      v33 = v12;
      v34 = v7;
      dispatch_async(v21, block);

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
LABEL_23:
      v10 = 0;
      goto LABEL_6;
    }

    if ([v12 source] != 4)
    {
      goto LABEL_23;
    }

    v22 = [v12 artworkData];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D755B8]) _initWithData:v22 preserveScale:1];
      v10 = [v23 iconFromPrecomposedImage:0 platform:v13];

      if (v10)
      {
LABEL_31:
        [(NSCache *)self->_iconByKeyCache setObject:v10 forKey:v8 cost:10];
        v7[2](v7, v10);

        goto LABEL_6;
      }

      v24 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [STIconCache imageForBundleIdentifier:completionHandler:];
      }
    }

    else
    {
      v25 = [v12 artworkURL];

      if (v25)
      {
        objc_initWeak(&location, self);
        v26 = [(STIconCache *)self lookupQueue];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __58__STIconCache_imageForBundleIdentifier_completionHandler___block_invoke_60;
        v28[3] = &unk_278338CE8;
        objc_copyWeak(&v31, &location);
        v29 = v12;
        v30 = v7;
        dispatch_async(v26, v28);

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }

    v27 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [STIconCache imageForBundleIdentifier:completionHandler:];
    }

    v10 = [(STIconCache *)self imageForBlankApplicationIcon];
    goto LABEL_31;
  }

  v10 = v9;
  v7[2](v7, v9);
LABEL_7:
}

void __58__STIconCache_imageForBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _fetchImageForAppInfoIfNeeded:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void __58__STIconCache_imageForBundleIdentifier_completionHandler___block_invoke_60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _fetchImageForAppInfoIfNeeded:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)_fetchImageForAppInfoIfNeeded:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 artworkURL];
  objc_initWeak(&location, self);
  v10 = [(STIconCache *)self urlSession];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __63__STIconCache__fetchImageForAppInfoIfNeeded_completionHandler___block_invoke;
  v17 = &unk_278338D10;
  objc_copyWeak(&v20, &location);
  v11 = v6;
  v18 = v11;
  v12 = v7;
  v19 = v12;
  v13 = [v10 dataTaskWithURL:v9 completionHandler:&v14];

  [v13 resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __63__STIconCache__fetchImageForAppInfoIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleiTunesResponseForAppInfo:*(a1 + 32) response:v8 data:v9 error:v7 completionHandler:*(a1 + 40)];
}

- (void)_handleiTunesResponseForAppInfo:(id)a3 response:(id)a4 data:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [v11 bundleIdentifier];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", v16];
  if (!v12 || v13)
  {
    v21 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
    }

    v22 = [(STIconCache *)self imageForBlankApplicationIcon];
    [(NSCache *)self->_iconByKeyCache setObject:v22 forKey:v17 cost:10];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__STIconCache__handleiTunesResponseForAppInfo_response_data_error_completionHandler___block_invoke;
    block[3] = &unk_278338D38;
    v35 = v14;
    v23 = v22;
    v34 = v23;
    v24 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v12];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 iconFromPrecomposedImage:0 platform:{objc_msgSend(v11, "platform")}];
    }

    else
    {
      v25 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
      }

      v20 = [(STIconCache *)self imageForBlankApplicationIcon];
    }

    [(NSCache *)self->_iconByKeyCache setObject:v20 forKey:v17 cost:15];
    v26 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v16;
      _os_log_impl(&dword_21DD93000, v26, OS_LOG_TYPE_INFO, "Added an icon for %@ to the cache", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __85__STIconCache__handleiTunesResponseForAppInfo_response_data_error_completionHandler___block_invoke_62;
    v28[3] = &unk_278338D60;
    v31 = v14;
    v23 = v20;
    v29 = v23;
    v27 = v14;
    objc_copyWeak(&v32, buf);
    v30 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v28);

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }
}

void __85__STIconCache__handleiTunesResponseForAppInfo_response_data_error_completionHandler___block_invoke_62(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateCacheWithImage:*(a1 + 32) bundleIdentifier:*(a1 + 40)];
}

- (id)imageForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", v4];
    v6 = [(NSCache *)self->_iconByKeyCache objectForKey:v5];
    if (v6)
    {
LABEL_7:

      goto LABEL_9;
    }

    v7 = [MEMORY[0x277D4B8C0] sharedCache];
    v8 = [v7 appInfoForBundleIdentifier:v4];

    v9 = [v8 platform];
    if ([v4 isEqualToString:@"com.apple.compass"])
    {
      goto LABEL_4;
    }

    if ([v8 source] == 2)
    {
      v14 = MEMORY[0x277D755B8];
      v15 = [v8 bundleIdentifier];
      v6 = [v14 iconWithAppBundleID:v15];

      if (!v6)
      {
        v16 = [MEMORY[0x277D4BA00] appInfo];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [STIconCache imageForBundleIdentifier:completionHandler:];
        }

        v6 = [(STIconCache *)self imageForBlankApplicationIcon];
      }

      goto LABEL_5;
    }

    if ([v8 source] == 1)
    {
LABEL_4:
      v10 = MEMORY[0x277D755B8];
      v11 = +[STScreenTimeUIBundle bundle];
      v12 = [v10 imageNamed:v4 inBundle:v11];
      v6 = [v12 iconFromPrecomposedImage:0 platform:v9];

LABEL_5:
      [(NSCache *)self->_iconByKeyCache setObject:v6 forKey:v5 cost:10];
LABEL_6:

      goto LABEL_7;
    }

    if ([v8 source] == 3 || objc_msgSend(v8, "source") == 5)
    {
      v17 = [v8 artworkURL];

      if (!v17)
      {
        v19 = [MEMORY[0x277D4BA00] appInfo];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [STIconCache imageForBundleIdentifier:completionHandler:];
        }

        v6 = [(STIconCache *)self imageForBlankApplicationIcon];
        goto LABEL_6;
      }

      objc_initWeak(&location, self);
      v18 = [(STIconCache *)self lookupQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__STIconCache_imageForBundleIdentifier___block_invoke;
      block[3] = &unk_278338D88;
      objc_copyWeak(&v31, &location);
      v30 = v8;
      dispatch_async(v18, block);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
      goto LABEL_31;
    }

    if ([v8 source] != 4)
    {
LABEL_31:
      v6 = 0;
      goto LABEL_6;
    }

    v20 = [v8 artworkData];
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x277D755B8]) _initWithData:v20 preserveScale:1];
      v6 = [v21 iconFromPrecomposedImage:0 platform:v9];

      if (v6)
      {
LABEL_37:
        [(NSCache *)self->_iconByKeyCache setObject:v6 forKey:v5 cost:10];

        goto LABEL_6;
      }

      v22 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [STIconCache imageForBundleIdentifier:completionHandler:];
      }
    }

    else
    {
      v23 = [v8 artworkURL];

      if (v23)
      {
        objc_initWeak(&location, self);
        v24 = [(STIconCache *)self lookupQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __40__STIconCache_imageForBundleIdentifier___block_invoke_63;
        v26[3] = &unk_278338D88;
        objc_copyWeak(&v28, &location);
        v27 = v8;
        dispatch_async(v24, v26);

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }

    v25 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [STIconCache imageForBundleIdentifier:completionHandler:];
    }

    v6 = [(STIconCache *)self imageForBlankApplicationIcon];
    goto LABEL_37;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

void __40__STIconCache_imageForBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchImageForAppInfoIfNeeded:*(a1 + 32)];
}

void __40__STIconCache_imageForBundleIdentifier___block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchImageForAppInfoIfNeeded:*(a1 + 32)];
}

- (void)_fetchImageForAppInfoIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 bundleIdentifier];
  v7 = [v4 artworkURL];
  v8 = [(STIconCache *)self bundleIdentifiersWithPendingRequests];
  if (([v8 containsObject:v6] & 1) == 0 && v7)
  {
    [v8 addObject:v6];
    objc_initWeak(&location, self);
    v9 = [(STIconCache *)self urlSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__STIconCache__fetchImageForAppInfoIfNeeded___block_invoke;
    v11[3] = &unk_278338DB0;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    v10 = [v9 dataTaskWithURL:v7 completionHandler:v11];

    [v10 resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __45__STIconCache__fetchImageForAppInfoIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleiTunesResponseForAppInfo:*(a1 + 32) response:v8 data:v9 error:v7];
}

- (void)_handleiTunesResponseForAppInfo:(id)a3 response:(id)a4 data:(id)a5 error:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [v9 bundleIdentifier];
  v14 = [(STIconCache *)self bundleIdentifiersWithPendingRequests];
  [v14 removeObject:v13];

  if (!v10 || v11)
  {
    v16 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v10];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", v13];
    if (v15)
    {
      v17 = [v15 iconFromPrecomposedImage:0 platform:{objc_msgSend(v9, "platform")}];
    }

    else
    {
      v18 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
      }

      v17 = [(STIconCache *)self imageForBlankApplicationIcon];
    }

    [(NSCache *)self->_iconByKeyCache setObject:v17 forKey:v16 cost:15];
    v19 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_21DD93000, v19, OS_LOG_TYPE_INFO, "Added an icon for %@ to the cache", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__STIconCache__handleiTunesResponseForAppInfo_response_data_error___block_invoke;
    block[3] = &unk_278338DD8;
    objc_copyWeak(&v24, buf);
    v22 = v17;
    v23 = v13;
    v20 = v17;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

void __67__STIconCache__handleiTunesResponseForAppInfo_response_data_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateCacheWithImage:*(a1 + 32) bundleIdentifier:*(a1 + 40)];
}

- (id)imageForCategoryIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"category.%@", v4];
  v6 = [(NSCache *)self->_iconByKeyCache objectForKey:v5];
  if (!v6)
  {
    if ([v4 isEqualToString:*MEMORY[0x277CF95D8]])
    {
      v7 = @"Games";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF9608]])
    {
      v7 = @"SocialNetworking";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95D0]])
    {
      v7 = @"Entertainment";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95C0]])
    {
      v7 = @"Creativity";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95F0]])
    {
      v7 = @"Productivity";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95C8]])
    {
      v7 = @"Education";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95F8]])
    {
      v7 = @"BooksNewsInformation";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95E0]])
    {
      v7 = @"HealthFitness";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF9630]])
    {
      v7 = @"Utilities";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF9600]])
    {
      v7 = @"ShoppingAndFood";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF9628]])
    {
      v7 = @"Travel";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CF95E8]])
    {
      v7 = @"Other";
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D4BCC0]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D4BCD0]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D4BCC8]))
    {
      v7 = @"AllApps";
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x277D4BCD8]])
      {
        v6 = [(STIconCache *)self blankSpaceImageWithSize:29.0, 29.0];
        iconByKeyCache = self->_iconByKeyCache;
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_31;
      }

      v7 = @"Websites";
    }

    v8 = MEMORY[0x277D755B8];
    v9 = +[STScreenTimeUIBundle bundle];
    v6 = [v8 imageNamed:v7 inBundle:v9];

    iconByKeyCache = self->_iconByKeyCache;
    v11 = v6;
    v12 = v5;
    v13 = 10;
LABEL_31:
    [(NSCache *)iconByKeyCache setObject:v11 forKey:v12 cost:v13];
  }

  return v6;
}

- (void)addObserver:(id)a3 selector:(SEL)a4 bundleIdentifier:(id)a5
{
  v12 = a5;
  v8 = MEMORY[0x277CCAB98];
  v9 = a3;
  v10 = [v8 defaultCenter];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"IconCacheDidUpdateApplicationImage-%@", v12];
  [v10 addObserver:v9 selector:a4 name:v11 object:self];
}

- (void)removeObserver:(id)a3 bundleIdentifier:(id)a4
{
  v10 = a4;
  v6 = MEMORY[0x277CCAB98];
  v7 = a3;
  v8 = [v6 defaultCenter];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"IconCacheDidUpdateApplicationImage-%@", v10];
  [v8 removeObserver:v7 name:v9 object:self];
}

- (id)blankSpaceImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSize(a3);
  v8 = [v6 stringWithFormat:@"blank-image.%@", v7];

  v9 = [(NSCache *)self->_iconByKeyCache objectForKey:v8];
  if (!v9)
  {
    v9 = [MEMORY[0x277D755B8] blankSpaceImageWithSize:{width, height}];
    [(NSCache *)self->_iconByKeyCache setObject:v9 forKey:v8 cost:0];
  }

  return v9;
}

- (void)_updateCacheWithImage:(id)a3 dsid:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [STIconCache _updateCacheWithImage:dsid:];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"person-icon.%@", v6];
  [(NSCache *)self->_iconByKeyCache setObject:v7 forKey:v8 cost:15];
  v12[0] = @"STIconCacheUpdateDSIDKey";
  v12[1] = @"STIconCacheUpdateImageKey";
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"STIconCacheDidUpdatePersonImageNotificationName" object:self userInfo:v9];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];

  [v11 postNotificationName:@"STIconCacheDidUpdateNotificationName" object:self userInfo:0];
}

- (void)_updateCacheWithImage:(id)a3 bundleIdentifier:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [MEMORY[0x277D4BA00] appInfo];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [STIconCache _updateCacheWithImage:bundleIdentifier:];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", v7];
  [(NSCache *)self->_iconByKeyCache setObject:v6 forKey:v9 cost:15];
  v14[0] = @"STIconCacheUpdateBundleIdentifierKey";
  v14[1] = @"STIconCacheUpdateImageKey";
  v15[0] = v7;
  v15[1] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"IconCacheDidUpdateApplicationImage-%@", v7];
  [v11 postNotificationName:v12 object:self userInfo:v10];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"STIconCacheDidUpdateNotificationName" object:self userInfo:0];
}

- (id)circleImageWithFillColor:(id)a3 fillDiameter:(double)a4 outlineColor:(id)a5 outlineWidth:(double)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"circle-image.%@-%f-%@-%f", v10, *&a4, v11, *&a6];
  v13 = [(NSCache *)self->_iconByKeyCache objectForKey:v12];
  if (!v13)
  {
    v13 = [(STIconCache *)self _newCircleImageWithFillColor:v10 fillDiameter:v11 outlineColor:a4 outlineWidth:a6];
    [(NSCache *)self->_iconByKeyCache setObject:v13 forKey:v12 cost:0];
  }

  return v13;
}

- (id)_newCircleImageWithFillColor:(id)a3 fillDiameter:(double)a4 outlineColor:(id)a5 outlineWidth:(double)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a4 + a6 * 2.0, a4 + a6 * 2.0}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__STIconCache__newCircleImageWithFillColor_fillDiameter_outlineColor_outlineWidth___block_invoke;
  v16[3] = &unk_278338E00;
  v19 = a6;
  v20 = a4;
  v17 = v9;
  v18 = v10;
  v21 = a4 + a6 * 2.0;
  v12 = v10;
  v13 = v9;
  v14 = [v11 imageWithActions:v16];

  return v14;
}

void __83__STIconCache__newCircleImageWithFillColor_fillDiameter_outlineColor_outlineWidth___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetFillColorWithColor(v3, [*(a1 + 32) CGColor]);
  v10.origin.x = *(a1 + 48);
  v10.size.width = *(a1 + 56);
  v10.origin.y = v10.origin.x;
  v10.size.height = v10.size.width;
  CGContextFillEllipseInRect(v3, v10);
  v4 = *(a1 + 40);
  if (v4)
  {
    CGContextSetStrokeColorWithColor(v3, [v4 CGColor]);
    CGContextSetLineWidth(v3, *(a1 + 48));
    v5 = *(a1 + 48) * 0.5;
    v6 = *(a1 + 64);
    v7 = 0;
    v8 = v6;

    CGContextStrokeEllipseInRect(v3, *&v5);
  }
}

- (id)roundedImageForImageWithName:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"rounded-image.%@", v5];
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:v5 inBundle:v8];

  v10 = [v9 iconFromPrecomposedImage:1 platform:2];
  [(NSCache *)self->_iconByKeyCache setObject:v10 forKey:v6 cost:10];

  return v10;
}

- (id)_personImageWithDSID:(id)a3 fullName:(id)a4 appleID:(id)a5 forceFetch:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"person-icon.%@", v12];
  v17 = [(NSCache *)self->_iconByKeyCache objectForKey:v16];
  if (!v17)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"monogram-icon.%@", v13];
    v18 = [(NSCache *)self->_iconByKeyCache objectForKey:v19];
    if (!v18)
    {
      v20 = [(STIconCache *)self personNameComponentsFormatter];
      v21 = [v20 personNameComponentsFromString:v13];

      v18 = [(STIconCache *)self monogramImageForNameComponents:v21];
      [(NSCache *)self->_iconByKeyCache setObject:v18 forKey:v19 cost:5];
    }

    goto LABEL_9;
  }

  v18 = v17;
  if (v15)
  {
    v15[2](v15, v17);
  }

  if (v8)
  {
LABEL_9:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [STIconCache _personImageWithDSID:fullName:appleID:forceFetch:completionHandler:];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__STIconCache__personImageWithDSID_fullName_appleID_forceFetch_completionHandler___block_invoke;
    v23[3] = &unk_278338E28;
    v26 = v15 != 0;
    v25 = v15;
    v18 = v18;
    v24 = v18;
    [(STIconCache *)self _fetchFamilyPhotoWithDSID:v12 fullName:v13 appleID:v14 completionHandler:v23];
  }

  return v18;
}

uint64_t __82__STIconCache__personImageWithDSID_fullName_appleID_forceFetch_completionHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 48) == 1)
  {
    v2 = result;
    v3 = *(result + 40);
    if (!a2)
    {
      a2 = *(v2 + 32);
    }

    return (*(v3 + 16))(v3, a2);
  }

  return result;
}

- (void)_fetchFamilyPhotoWithDSID:(id)a3 fullName:(id)a4 appleID:(id)a5 completionHandler:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = [objc_alloc(MEMORY[0x277D08290]) initWithFamilyMemberDSID:v8 size:1 localFallback:1];
  [v10 setMonogramDiameter:40.0];
  [v10 setBackgroundType:1];
  [v10 setUseMonogramAsLastResort:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__STIconCache__fetchFamilyPhotoWithDSID_fullName_appleID_completionHandler___block_invoke;
  v13[3] = &unk_278338EA0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [v10 startRequestWithCompletionHandler:v13];
}

void __76__STIconCache__fetchFamilyPhotoWithDSID_fullName_appleID_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138478083;
      v31 = v8;
      v32 = 2112;
      v33 = v7;
      v9 = MEMORY[0x277D86220];
      v10 = "failed to retrieve image for %{private}@: %@";
      v11 = 22;
LABEL_16:
      _os_log_impl(&dword_21DD93000, v9, OS_LOG_TYPE_INFO, v10, buf, v11);
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v18 = *(a1 + 32);
    *buf = 138477827;
    v31 = v18;
    v9 = MEMORY[0x277D86220];
    v10 = "there was no image for %{private}@";
LABEL_15:
    v11 = 12;
    goto LABEL_16;
  }

  v12 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v6];
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 32);
    *buf = 138477827;
    v31 = v19;
    v9 = MEMORY[0x277D86220];
    v10 = "unable to deserialize the image for %{private}@";
    goto LABEL_15;
  }

  v13 = v12;
  [v12 size];
  if (v15 != 40.0 || v14 != 40.0)
  {
    v17 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{40.0, 40.0}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__STIconCache__fetchFamilyPhotoWithDSID_fullName_appleID_completionHandler___block_invoke_131;
    v28[3] = &unk_278338E50;
    v29 = v13;
    v13 = [v17 imageWithActions:v28];
  }

LABEL_18:
  v20 = [MEMORY[0x277CCABD8] mainQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__STIconCache__fetchFamilyPhotoWithDSID_fullName_appleID_completionHandler___block_invoke_2;
  v24[3] = &unk_278338E78;
  v25 = v13;
  v23 = *(a1 + 32);
  v21 = v23.i64[0];
  v26 = vextq_s8(v23, v23, 8uLL);
  v27 = *(a1 + 48);
  v22 = v13;
  [v20 addOperationWithBlock:v24];
}

uint64_t __76__STIconCache__fetchFamilyPhotoWithDSID_fullName_appleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _updateCacheWithImage:v2 dsid:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (CNMonogrammer)monogrammer
{
  monogrammer = self->_monogrammer;
  if (!monogrammer)
  {
    v4 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:40.0];
    v5 = self->_monogrammer;
    self->_monogrammer = v4;

    monogrammer = self->_monogrammer;
  }

  v6 = monogrammer;

  return v6;
}

- (NSPersonNameComponentsFormatter)personNameComponentsFormatter
{
  personNameComponentsFormatter = self->_personNameComponentsFormatter;
  if (!personNameComponentsFormatter)
  {
    v4 = objc_opt_new();
    v5 = self->_personNameComponentsFormatter;
    self->_personNameComponentsFormatter = v4;

    [(NSPersonNameComponentsFormatter *)self->_personNameComponentsFormatter set_ignoresFallbacks:1];
    [(NSPersonNameComponentsFormatter *)self->_personNameComponentsFormatter setStyle:4];
    personNameComponentsFormatter = self->_personNameComponentsFormatter;
  }

  v6 = personNameComponentsFormatter;

  return v6;
}

- (id)monogramImageForNameComponents:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(STIconCache *)self personNameComponentsFormatter];
    v6 = [v5 stringFromPersonNameComponents:v4];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"monogram-icon.%@", v6];
    v8 = [(NSCache *)self->_iconByKeyCache objectForKey:v7];
    if (!v8)
    {
      v9 = [(STIconCache *)self monogrammer];
      v10 = [v4 givenName];
      v11 = [v4 familyName];
      v12 = [v9 monogramForPersonWithFirstName:v10 lastName:v11];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v15 = [(STIconCache *)self monogrammer];
        v14 = [v15 silhouetteMonogram];
      }

      [(NSCache *)self->_iconByKeyCache setObject:v14 forKey:v7 cost:5];
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [(STIconCache *)self monogrammer];
    v8 = [v7 silhouetteMonogram];
  }

  v14 = v8;
LABEL_12:

  return v14;
}

- (id)monogramImageForInitial:(id)a3 useDarkColors:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = @"light";
    if (v4)
    {
      v7 = @"dark";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"monogram-icon.%@.%@", v6, v7];
    if (v8)
    {
      v9 = [(NSCache *)self->_iconByKeyCache objectForKey:v8];
      if (v9)
      {
        v10 = v9;
LABEL_12:

        goto LABEL_16;
      }
    }

    if (v4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v12 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:v11 diameter:29.0];
    v13 = [v12 monogramForPersonWithFirstName:v6 lastName:&stru_282F1E250];
    if (v13)
    {
      v10 = v13;
      [(NSCache *)self->_iconByKeyCache setObject:v13 forKey:v8 cost:5];

      goto LABEL_12;
    }
  }

  v10 = [(STIconCache *)self imageForBlankApplicationIcon];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [STIconCache monogramImageForInitial:useDarkColors:];
  }

LABEL_16:

  return v10;
}

- (void)_updateCacheWithImage:dsid:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "successfully retrieved image for %{private}@", v0, 0xCu);
}

- (void)_updateCacheWithImage:bundleIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_21DD93000, v0, OS_LOG_TYPE_DEBUG, "successfully retrieved image for %{public}@", v1, 0xCu);
}

- (void)_personImageWithDSID:fullName:appleID:forceFetch:completionHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v2 = 2113;
  v3 = v0;
  _os_log_debug_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "no entry for %{private}@ (%{private}@), queueing one up", v1, 0x16u);
}

@end