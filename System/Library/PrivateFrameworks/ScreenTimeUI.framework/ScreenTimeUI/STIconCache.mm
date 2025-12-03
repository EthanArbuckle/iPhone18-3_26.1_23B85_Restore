@interface STIconCache
+ (STIconCache)sharedCache;
- (CNMonogrammer)monogrammer;
- (NSPersonNameComponentsFormatter)personNameComponentsFormatter;
- (STIconCache)init;
- (UIImage)imageForBlankApplicationIcon;
- (id)_newCircleImageWithFillColor:(id)color fillDiameter:(double)diameter outlineColor:(id)outlineColor outlineWidth:(double)width;
- (id)_personImageWithDSID:(id)d fullName:(id)name appleID:(id)iD forceFetch:(BOOL)fetch completionHandler:(id)handler;
- (id)blankSpaceImageWithSize:(CGSize)size;
- (id)circleImageWithFillColor:(id)color fillDiameter:(double)diameter outlineColor:(id)outlineColor outlineWidth:(double)width;
- (id)imageForBundleIdentifier:(id)identifier;
- (id)imageForCategoryIdentifier:(id)identifier;
- (id)monogramImageForInitial:(id)initial useDarkColors:(BOOL)colors;
- (id)monogramImageForNameComponents:(id)components;
- (id)roundedImageForImageWithName:(id)name;
- (void)_fetchFamilyPhotoWithDSID:(id)d fullName:(id)name appleID:(id)iD completionHandler:(id)handler;
- (void)_fetchImageForAppInfoIfNeeded:(id)needed;
- (void)_fetchImageForAppInfoIfNeeded:(id)needed completionHandler:(id)handler;
- (void)_handleiTunesResponseForAppInfo:(id)info response:(id)response data:(id)data error:(id)error;
- (void)_handleiTunesResponseForAppInfo:(id)info response:(id)response data:(id)data error:(id)error completionHandler:(id)handler;
- (void)_updateCacheWithImage:(id)image bundleIdentifier:(id)identifier;
- (void)_updateCacheWithImage:(id)image dsid:(id)dsid;
- (void)addObserver:(id)observer selector:(SEL)selector bundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)imageForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeObserver:(id)observer bundleIdentifier:(id)identifier;
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

    uTF8String = [@"com.apple.screentime.icon-cache" UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create(uTF8String, v9);
    lookupQueue = v2->_lookupQueue;
    v2->_lookupQueue = v10;

    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    mEMORY[0x277CCACD8] = [MEMORY[0x277CCACD8] sharedURLCache];
    [ephemeralSessionConfiguration setURLCache:mEMORY[0x277CCACD8]];

    [ephemeralSessionConfiguration setRequestCachePolicy:2];
    [ephemeralSessionConfiguration setHTTPShouldUsePipelining:1];
    v14 = objc_opt_new();
    [v14 setName:@"com.apple.screentime.icon-cache"];
    [v14 setUnderlyingQueue:v2->_lookupQueue];
    v15 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:v14];
    urlSession = v2->_urlSession;
    v2->_urlSession = v15;

    name = [v14 name];
    [(NSURLSession *)v2->_urlSession setSessionDescription:name];
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
  blankIcon = [(NSCache *)self->_iconByKeyCache objectForKey:@"blank-app-icon"];
  if (!blankIcon)
  {
    blankIcon = [MEMORY[0x277D755B8] blankIcon];
    [(NSCache *)self->_iconByKeyCache setObject:blankIcon forKey:@"blank-app-icon" cost:0];
  }

  return blankIcon;
}

- (void)imageForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", identifierCopy];
  v9 = [(NSCache *)self->_iconByKeyCache objectForKey:identifierCopy];
  if (!v9)
  {
    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    v12 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:identifierCopy];

    platform = [v12 platform];
    if ([identifierCopy isEqualToString:@"com.apple.compass"])
    {
LABEL_4:
      v14 = MEMORY[0x277D755B8];
      v15 = +[STScreenTimeUIBundle bundle];
      v16 = [v14 imageNamed:identifierCopy inBundle:v15];
      imageForBlankApplicationIcon = [v16 iconFromPrecomposedImage:0 platform:platform];

LABEL_5:
      [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon forKey:identifierCopy cost:10];
      handlerCopy[2](handlerCopy, imageForBlankApplicationIcon);
LABEL_6:

      goto LABEL_7;
    }

    if ([v12 source] == 2)
    {
      v17 = MEMORY[0x277D755B8];
      bundleIdentifier = [v12 bundleIdentifier];
      imageForBlankApplicationIcon = [v17 iconWithAppBundleID:bundleIdentifier];

      if (imageForBlankApplicationIcon)
      {
        goto LABEL_5;
      }

      appInfo = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(appInfo, OS_LOG_TYPE_ERROR))
      {
        [STIconCache imageForBundleIdentifier:completionHandler:];
      }

LABEL_12:

      imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
      goto LABEL_5;
    }

    if ([v12 source] == 1)
    {
      goto LABEL_4;
    }

    if ([v12 source] == 3)
    {
      artworkURL = [v12 artworkURL];

      if (!artworkURL)
      {
        appInfo = [MEMORY[0x277D4BA00] appInfo];
        if (os_log_type_enabled(appInfo, OS_LOG_TYPE_ERROR))
        {
          [STIconCache imageForBundleIdentifier:completionHandler:];
        }

        goto LABEL_12;
      }

      objc_initWeak(&location, self);
      lookupQueue = [(STIconCache *)self lookupQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__STIconCache_imageForBundleIdentifier_completionHandler___block_invoke;
      block[3] = &unk_278338CE8;
      objc_copyWeak(&v35, &location);
      v33 = v12;
      v34 = handlerCopy;
      dispatch_async(lookupQueue, block);

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
LABEL_23:
      imageForBlankApplicationIcon = 0;
      goto LABEL_6;
    }

    if ([v12 source] != 4)
    {
      goto LABEL_23;
    }

    artworkData = [v12 artworkData];
    if (artworkData)
    {
      v23 = [objc_alloc(MEMORY[0x277D755B8]) _initWithData:artworkData preserveScale:1];
      imageForBlankApplicationIcon = [v23 iconFromPrecomposedImage:0 platform:platform];

      if (imageForBlankApplicationIcon)
      {
LABEL_31:
        [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon forKey:identifierCopy cost:10];
        handlerCopy[2](handlerCopy, imageForBlankApplicationIcon);

        goto LABEL_6;
      }

      appInfo2 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(appInfo2, OS_LOG_TYPE_ERROR))
      {
        [STIconCache imageForBundleIdentifier:completionHandler:];
      }
    }

    else
    {
      artworkURL2 = [v12 artworkURL];

      if (artworkURL2)
      {
        objc_initWeak(&location, self);
        lookupQueue2 = [(STIconCache *)self lookupQueue];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __58__STIconCache_imageForBundleIdentifier_completionHandler___block_invoke_60;
        v28[3] = &unk_278338CE8;
        objc_copyWeak(&v31, &location);
        v29 = v12;
        v30 = handlerCopy;
        dispatch_async(lookupQueue2, v28);

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }

    appInfo3 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(appInfo3, OS_LOG_TYPE_ERROR))
    {
      [STIconCache imageForBundleIdentifier:completionHandler:];
    }

    imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
    goto LABEL_31;
  }

  imageForBlankApplicationIcon = v9;
  handlerCopy[2](handlerCopy, v9);
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

- (void)_fetchImageForAppInfoIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  lookupQueue = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  artworkURL = [neededCopy artworkURL];
  objc_initWeak(&location, self);
  urlSession = [(STIconCache *)self urlSession];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __63__STIconCache__fetchImageForAppInfoIfNeeded_completionHandler___block_invoke;
  v17 = &unk_278338D10;
  objc_copyWeak(&v20, &location);
  v11 = neededCopy;
  v18 = v11;
  v12 = handlerCopy;
  v19 = v12;
  v13 = [urlSession dataTaskWithURL:artworkURL completionHandler:&v14];

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

- (void)_handleiTunesResponseForAppInfo:(id)info response:(id)response data:(id)data error:(id)error completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dataCopy = data;
  errorCopy = error;
  handlerCopy = handler;
  lookupQueue = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  bundleIdentifier = [infoCopy bundleIdentifier];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", bundleIdentifier];
  if (!dataCopy || errorCopy)
  {
    appInfo = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(appInfo, OS_LOG_TYPE_ERROR))
    {
      [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
    }

    imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
    [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon forKey:v17 cost:10];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__STIconCache__handleiTunesResponseForAppInfo_response_data_error_completionHandler___block_invoke;
    block[3] = &unk_278338D38;
    v35 = handlerCopy;
    v23 = imageForBlankApplicationIcon;
    v34 = v23;
    v24 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:dataCopy];
    if (v18)
    {
      v19 = v18;
      imageForBlankApplicationIcon2 = [v18 iconFromPrecomposedImage:0 platform:{objc_msgSend(infoCopy, "platform")}];
    }

    else
    {
      appInfo2 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(appInfo2, OS_LOG_TYPE_ERROR))
      {
        [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
      }

      imageForBlankApplicationIcon2 = [(STIconCache *)self imageForBlankApplicationIcon];
    }

    [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon2 forKey:v17 cost:15];
    appInfo3 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(appInfo3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = bundleIdentifier;
      _os_log_impl(&dword_21DD93000, appInfo3, OS_LOG_TYPE_INFO, "Added an icon for %@ to the cache", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __85__STIconCache__handleiTunesResponseForAppInfo_response_data_error_completionHandler___block_invoke_62;
    v28[3] = &unk_278338D60;
    v31 = handlerCopy;
    v23 = imageForBlankApplicationIcon2;
    v29 = v23;
    v27 = handlerCopy;
    objc_copyWeak(&v32, buf);
    v30 = bundleIdentifier;
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

- (id)imageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", identifierCopy];
    imageForBlankApplicationIcon = [(NSCache *)self->_iconByKeyCache objectForKey:identifierCopy];
    if (imageForBlankApplicationIcon)
    {
LABEL_7:

      goto LABEL_9;
    }

    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    v8 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:identifierCopy];

    platform = [v8 platform];
    if ([identifierCopy isEqualToString:@"com.apple.compass"])
    {
      goto LABEL_4;
    }

    if ([v8 source] == 2)
    {
      v14 = MEMORY[0x277D755B8];
      bundleIdentifier = [v8 bundleIdentifier];
      imageForBlankApplicationIcon = [v14 iconWithAppBundleID:bundleIdentifier];

      if (!imageForBlankApplicationIcon)
      {
        appInfo = [MEMORY[0x277D4BA00] appInfo];
        if (os_log_type_enabled(appInfo, OS_LOG_TYPE_ERROR))
        {
          [STIconCache imageForBundleIdentifier:completionHandler:];
        }

        imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
      }

      goto LABEL_5;
    }

    if ([v8 source] == 1)
    {
LABEL_4:
      v10 = MEMORY[0x277D755B8];
      v11 = +[STScreenTimeUIBundle bundle];
      v12 = [v10 imageNamed:identifierCopy inBundle:v11];
      imageForBlankApplicationIcon = [v12 iconFromPrecomposedImage:0 platform:platform];

LABEL_5:
      [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon forKey:identifierCopy cost:10];
LABEL_6:

      goto LABEL_7;
    }

    if ([v8 source] == 3 || objc_msgSend(v8, "source") == 5)
    {
      artworkURL = [v8 artworkURL];

      if (!artworkURL)
      {
        appInfo2 = [MEMORY[0x277D4BA00] appInfo];
        if (os_log_type_enabled(appInfo2, OS_LOG_TYPE_ERROR))
        {
          [STIconCache imageForBundleIdentifier:completionHandler:];
        }

        imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
        goto LABEL_6;
      }

      objc_initWeak(&location, self);
      lookupQueue = [(STIconCache *)self lookupQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__STIconCache_imageForBundleIdentifier___block_invoke;
      block[3] = &unk_278338D88;
      objc_copyWeak(&v31, &location);
      v30 = v8;
      dispatch_async(lookupQueue, block);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
      goto LABEL_31;
    }

    if ([v8 source] != 4)
    {
LABEL_31:
      imageForBlankApplicationIcon = 0;
      goto LABEL_6;
    }

    artworkData = [v8 artworkData];
    if (artworkData)
    {
      v21 = [objc_alloc(MEMORY[0x277D755B8]) _initWithData:artworkData preserveScale:1];
      imageForBlankApplicationIcon = [v21 iconFromPrecomposedImage:0 platform:platform];

      if (imageForBlankApplicationIcon)
      {
LABEL_37:
        [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon forKey:identifierCopy cost:10];

        goto LABEL_6;
      }

      appInfo3 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(appInfo3, OS_LOG_TYPE_ERROR))
      {
        [STIconCache imageForBundleIdentifier:completionHandler:];
      }
    }

    else
    {
      artworkURL2 = [v8 artworkURL];

      if (artworkURL2)
      {
        objc_initWeak(&location, self);
        lookupQueue2 = [(STIconCache *)self lookupQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __40__STIconCache_imageForBundleIdentifier___block_invoke_63;
        v26[3] = &unk_278338D88;
        objc_copyWeak(&v28, &location);
        v27 = v8;
        dispatch_async(lookupQueue2, v26);

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }

    appInfo4 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(appInfo4, OS_LOG_TYPE_ERROR))
    {
      [STIconCache imageForBundleIdentifier:completionHandler:];
    }

    imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
    goto LABEL_37;
  }

  imageForBlankApplicationIcon = 0;
LABEL_9:

  return imageForBlankApplicationIcon;
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

- (void)_fetchImageForAppInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  lookupQueue = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  bundleIdentifier = [neededCopy bundleIdentifier];
  artworkURL = [neededCopy artworkURL];
  bundleIdentifiersWithPendingRequests = [(STIconCache *)self bundleIdentifiersWithPendingRequests];
  if (([bundleIdentifiersWithPendingRequests containsObject:bundleIdentifier] & 1) == 0 && artworkURL)
  {
    [bundleIdentifiersWithPendingRequests addObject:bundleIdentifier];
    objc_initWeak(&location, self);
    urlSession = [(STIconCache *)self urlSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__STIconCache__fetchImageForAppInfoIfNeeded___block_invoke;
    v11[3] = &unk_278338DB0;
    objc_copyWeak(&v13, &location);
    v12 = neededCopy;
    v10 = [urlSession dataTaskWithURL:artworkURL completionHandler:v11];

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

- (void)_handleiTunesResponseForAppInfo:(id)info response:(id)response data:(id)data error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dataCopy = data;
  errorCopy = error;
  lookupQueue = [(STIconCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  bundleIdentifier = [infoCopy bundleIdentifier];
  bundleIdentifiersWithPendingRequests = [(STIconCache *)self bundleIdentifiersWithPendingRequests];
  [bundleIdentifiersWithPendingRequests removeObject:bundleIdentifier];

  if (!dataCopy || errorCopy)
  {
    appInfo = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(appInfo, OS_LOG_TYPE_ERROR))
    {
      [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:dataCopy];
    appInfo = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", bundleIdentifier];
    if (v15)
    {
      imageForBlankApplicationIcon = [v15 iconFromPrecomposedImage:0 platform:{objc_msgSend(infoCopy, "platform")}];
    }

    else
    {
      appInfo2 = [MEMORY[0x277D4BA00] appInfo];
      if (os_log_type_enabled(appInfo2, OS_LOG_TYPE_ERROR))
      {
        [STIconCache _handleiTunesResponseForAppInfo:response:data:error:completionHandler:];
      }

      imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
    }

    [(NSCache *)self->_iconByKeyCache setObject:imageForBlankApplicationIcon forKey:appInfo cost:15];
    appInfo3 = [MEMORY[0x277D4BA00] appInfo];
    if (os_log_type_enabled(appInfo3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = bundleIdentifier;
      _os_log_impl(&dword_21DD93000, appInfo3, OS_LOG_TYPE_INFO, "Added an icon for %@ to the cache", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__STIconCache__handleiTunesResponseForAppInfo_response_data_error___block_invoke;
    block[3] = &unk_278338DD8;
    objc_copyWeak(&v24, buf);
    v22 = imageForBlankApplicationIcon;
    v23 = bundleIdentifier;
    v20 = imageForBlankApplicationIcon;
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

- (id)imageForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"category.%@", identifierCopy];
  v6 = [(NSCache *)self->_iconByKeyCache objectForKey:identifierCopy];
  if (!v6)
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277CF95D8]])
    {
      v7 = @"Games";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF9608]])
    {
      v7 = @"SocialNetworking";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95D0]])
    {
      v7 = @"Entertainment";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95C0]])
    {
      v7 = @"Creativity";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95F0]])
    {
      v7 = @"Productivity";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95C8]])
    {
      v7 = @"Education";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95F8]])
    {
      v7 = @"BooksNewsInformation";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95E0]])
    {
      v7 = @"HealthFitness";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF9630]])
    {
      v7 = @"Utilities";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF9600]])
    {
      v7 = @"ShoppingAndFood";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF9628]])
    {
      v7 = @"Travel";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CF95E8]])
    {
      v7 = @"Other";
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277D4BCC0]] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277D4BCD0]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277D4BCC8]))
    {
      v7 = @"AllApps";
    }

    else
    {
      if (![identifierCopy isEqualToString:*MEMORY[0x277D4BCD8]])
      {
        v6 = [(STIconCache *)self blankSpaceImageWithSize:29.0, 29.0];
        iconByKeyCache = self->_iconByKeyCache;
        v11 = v6;
        v12 = identifierCopy;
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
    v12 = identifierCopy;
    v13 = 10;
LABEL_31:
    [(NSCache *)iconByKeyCache setObject:v11 forKey:v12 cost:v13];
  }

  return v6;
}

- (void)addObserver:(id)observer selector:(SEL)selector bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v8 defaultCenter];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"IconCacheDidUpdateApplicationImage-%@", identifierCopy];
  [defaultCenter addObserver:observerCopy selector:selector name:identifierCopy object:self];
}

- (void)removeObserver:(id)observer bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v6 defaultCenter];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"IconCacheDidUpdateApplicationImage-%@", identifierCopy];
  [defaultCenter removeObserver:observerCopy name:identifierCopy object:self];
}

- (id)blankSpaceImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSize(size);
  v8 = [v6 stringWithFormat:@"blank-image.%@", v7];

  v9 = [(NSCache *)self->_iconByKeyCache objectForKey:v8];
  if (!v9)
  {
    v9 = [MEMORY[0x277D755B8] blankSpaceImageWithSize:{width, height}];
    [(NSCache *)self->_iconByKeyCache setObject:v9 forKey:v8 cost:0];
  }

  return v9;
}

- (void)_updateCacheWithImage:(id)image dsid:(id)dsid
{
  v13[2] = *MEMORY[0x277D85DE8];
  dsidCopy = dsid;
  imageCopy = image;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [STIconCache _updateCacheWithImage:dsid:];
  }

  dsidCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"person-icon.%@", dsidCopy];
  [(NSCache *)self->_iconByKeyCache setObject:imageCopy forKey:dsidCopy cost:15];
  v12[0] = @"STIconCacheUpdateDSIDKey";
  v12[1] = @"STIconCacheUpdateImageKey";
  v13[0] = dsidCopy;
  v13[1] = imageCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"STIconCacheDidUpdatePersonImageNotificationName" object:self userInfo:v9];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter2 postNotificationName:@"STIconCacheDidUpdateNotificationName" object:self userInfo:0];
}

- (void)_updateCacheWithImage:(id)image bundleIdentifier:(id)identifier
{
  v15[2] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  appInfo = [MEMORY[0x277D4BA00] appInfo];
  if (os_log_type_enabled(appInfo, OS_LOG_TYPE_DEBUG))
  {
    [STIconCache _updateCacheWithImage:bundleIdentifier:];
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"bundle-id.%@", identifierCopy];
  [(NSCache *)self->_iconByKeyCache setObject:imageCopy forKey:identifierCopy cost:15];
  v14[0] = @"STIconCacheUpdateBundleIdentifierKey";
  v14[1] = @"STIconCacheUpdateImageKey";
  v15[0] = identifierCopy;
  v15[1] = imageCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"IconCacheDidUpdateApplicationImage-%@", identifierCopy];
  [defaultCenter postNotificationName:identifierCopy2 object:self userInfo:v10];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"STIconCacheDidUpdateNotificationName" object:self userInfo:0];
}

- (id)circleImageWithFillColor:(id)color fillDiameter:(double)diameter outlineColor:(id)outlineColor outlineWidth:(double)width
{
  colorCopy = color;
  outlineColorCopy = outlineColor;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"circle-image.%@-%f-%@-%f", colorCopy, *&diameter, outlineColorCopy, *&width];
  v13 = [(NSCache *)self->_iconByKeyCache objectForKey:v12];
  if (!v13)
  {
    v13 = [(STIconCache *)self _newCircleImageWithFillColor:colorCopy fillDiameter:outlineColorCopy outlineColor:diameter outlineWidth:width];
    [(NSCache *)self->_iconByKeyCache setObject:v13 forKey:v12 cost:0];
  }

  return v13;
}

- (id)_newCircleImageWithFillColor:(id)color fillDiameter:(double)diameter outlineColor:(id)outlineColor outlineWidth:(double)width
{
  colorCopy = color;
  outlineColorCopy = outlineColor;
  v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{diameter + width * 2.0, diameter + width * 2.0}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__STIconCache__newCircleImageWithFillColor_fillDiameter_outlineColor_outlineWidth___block_invoke;
  v16[3] = &unk_278338E00;
  widthCopy = width;
  diameterCopy = diameter;
  v17 = colorCopy;
  v18 = outlineColorCopy;
  v21 = diameter + width * 2.0;
  v12 = outlineColorCopy;
  v13 = colorCopy;
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

- (id)roundedImageForImageWithName:(id)name
{
  v4 = MEMORY[0x277CCACA8];
  nameCopy = name;
  nameCopy = [v4 stringWithFormat:@"rounded-image.%@", nameCopy];
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:nameCopy inBundle:v8];

  v10 = [v9 iconFromPrecomposedImage:1 platform:2];
  [(NSCache *)self->_iconByKeyCache setObject:v10 forKey:nameCopy cost:10];

  return v10;
}

- (id)_personImageWithDSID:(id)d fullName:(id)name appleID:(id)iD forceFetch:(BOOL)fetch completionHandler:(id)handler
{
  fetchCopy = fetch;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  handlerCopy = handler;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"person-icon.%@", dCopy];
  v17 = [(NSCache *)self->_iconByKeyCache objectForKey:dCopy];
  if (!v17)
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"monogram-icon.%@", nameCopy];
    v18 = [(NSCache *)self->_iconByKeyCache objectForKey:nameCopy];
    if (!v18)
    {
      personNameComponentsFormatter = [(STIconCache *)self personNameComponentsFormatter];
      v21 = [personNameComponentsFormatter personNameComponentsFromString:nameCopy];

      v18 = [(STIconCache *)self monogramImageForNameComponents:v21];
      [(NSCache *)self->_iconByKeyCache setObject:v18 forKey:nameCopy cost:5];
    }

    goto LABEL_9;
  }

  v18 = v17;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v17);
  }

  if (fetchCopy)
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
    v26 = handlerCopy != 0;
    v25 = handlerCopy;
    v18 = v18;
    v24 = v18;
    [(STIconCache *)self _fetchFamilyPhotoWithDSID:dCopy fullName:nameCopy appleID:iDCopy completionHandler:v23];
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

- (void)_fetchFamilyPhotoWithDSID:(id)d fullName:(id)name appleID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = [objc_alloc(MEMORY[0x277D08290]) initWithFamilyMemberDSID:dCopy size:1 localFallback:1];
  [v10 setMonogramDiameter:40.0];
  [v10 setBackgroundType:1];
  [v10 setUseMonogramAsLastResort:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__STIconCache__fetchFamilyPhotoWithDSID_fullName_appleID_completionHandler___block_invoke;
  v13[3] = &unk_278338EA0;
  v14 = dCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = dCopy;
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

- (id)monogramImageForNameComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy)
  {
    personNameComponentsFormatter = [(STIconCache *)self personNameComponentsFormatter];
    v6 = [personNameComponentsFormatter stringFromPersonNameComponents:componentsCopy];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    monogrammer3 = [MEMORY[0x277CCACA8] stringWithFormat:@"monogram-icon.%@", v6];
    silhouetteMonogram2 = [(NSCache *)self->_iconByKeyCache objectForKey:monogrammer3];
    if (!silhouetteMonogram2)
    {
      monogrammer = [(STIconCache *)self monogrammer];
      givenName = [componentsCopy givenName];
      familyName = [componentsCopy familyName];
      v12 = [monogrammer monogramForPersonWithFirstName:givenName lastName:familyName];
      v13 = v12;
      if (v12)
      {
        silhouetteMonogram = v12;
      }

      else
      {
        monogrammer2 = [(STIconCache *)self monogrammer];
        silhouetteMonogram = [monogrammer2 silhouetteMonogram];
      }

      [(NSCache *)self->_iconByKeyCache setObject:silhouetteMonogram forKey:monogrammer3 cost:5];
      goto LABEL_12;
    }
  }

  else
  {
    monogrammer3 = [(STIconCache *)self monogrammer];
    silhouetteMonogram2 = [monogrammer3 silhouetteMonogram];
  }

  silhouetteMonogram = silhouetteMonogram2;
LABEL_12:

  return silhouetteMonogram;
}

- (id)monogramImageForInitial:(id)initial useDarkColors:(BOOL)colors
{
  colorsCopy = colors;
  initialCopy = initial;
  if ([initialCopy length])
  {
    v7 = @"light";
    if (colorsCopy)
    {
      v7 = @"dark";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"monogram-icon.%@.%@", initialCopy, v7];
    if (v8)
    {
      v9 = [(NSCache *)self->_iconByKeyCache objectForKey:v8];
      if (v9)
      {
        imageForBlankApplicationIcon = v9;
LABEL_12:

        goto LABEL_16;
      }
    }

    if (colorsCopy)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v12 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:v11 diameter:29.0];
    v13 = [v12 monogramForPersonWithFirstName:initialCopy lastName:&stru_282F1E250];
    if (v13)
    {
      imageForBlankApplicationIcon = v13;
      [(NSCache *)self->_iconByKeyCache setObject:v13 forKey:v8 cost:5];

      goto LABEL_12;
    }
  }

  imageForBlankApplicationIcon = [(STIconCache *)self imageForBlankApplicationIcon];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [STIconCache monogramImageForInitial:useDarkColors:];
  }

LABEL_16:

  return imageForBlankApplicationIcon;
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