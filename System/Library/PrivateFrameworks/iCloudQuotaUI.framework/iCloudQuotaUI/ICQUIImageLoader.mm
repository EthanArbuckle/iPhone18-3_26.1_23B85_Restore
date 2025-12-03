@interface ICQUIImageLoader
+ (BOOL)_hasURLForScale:(double)scale inImageURL:(id)l;
+ (id)_scaledImageURL:(id)l;
+ (id)fetchIconForAssetID:(id)d;
+ (id)fetchIconForBundleID:(id)d;
+ (void)fetchIconFromIconSpecification:(id)specification completion:(id)completion;
+ (void)fetchIconFromImageURL:(id)l completion:(id)completion;
+ (void)loadImageWithURL:(id)l completion:(id)completion;
@end

@implementation ICQUIImageLoader

+ (void)loadImageWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v7 = [self _scaledImageURL:l];
  v8 = [MEMORY[0x277CCAD20] requestWithURL:v7 cachePolicy:0 timeoutInterval:30.0];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  mEMORY[0x277CCACD8] = [MEMORY[0x277CCACD8] sharedURLCache];
  [defaultSessionConfiguration setURLCache:mEMORY[0x277CCACD8]];

  v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__ICQUIImageLoader_loadImageWithURL_completion___block_invoke;
  v16[3] = &unk_27A65AF30;
  v17 = v11;
  v18 = v8;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = v8;
  v14 = v11;
  v15 = [v14 dataTaskWithRequest:v13 completionHandler:v16];
  [v15 resume];
}

void __48__ICQUIImageLoader_loadImageWithURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _ICQGetLogSystem();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Successfully retrieved image for async image view", v15, 2u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCA8F0]) initWithResponse:v8 data:v7];
    v13 = [*(a1 + 32) configuration];
    v14 = [v13 URLCache];
    [v14 storeCachedResponse:v12 forRequest:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__ICQUIImageLoader_loadImageWithURL_completion___block_invoke_cold_1(v9, v11);
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)fetchIconFromIconSpecification:(id)specification completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  specificationCopy = specification;
  completionCopy = completion;
  imageURL = [specificationCopy imageURL];
  assetID = [specificationCopy assetID];
  bundleID = [specificationCopy bundleID];
  +[_ICQUIHelperFunctions highestScreenScale];
  v11 = [self _hasURLForScale:imageURL inImageURL:?];
  if (bundleID || assetID || v11)
  {
    assetID2 = [specificationCopy assetID];
    v13 = [self fetchIconForAssetID:assetID2];

    if (v13)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = assetID;
        _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Fetched icon from assets catalog for asset ID %@", &v17, 0xCu);
      }
    }

    else
    {
      v13 = [self fetchIconForBundleID:bundleID];
      v15 = _ICQGetLogSystem();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        if (v16)
        {
          v17 = 138412290;
          v18 = imageURL;
          _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Fetching remote icon asset from URL %@", &v17, 0xCu);
        }

        [self fetchIconFromImageURL:imageURL completion:completionCopy];
        goto LABEL_14;
      }

      if (v16)
      {
        v17 = 138412290;
        v18 = bundleID;
        _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Fetched icon from IconServices for bundleID %@", &v17, 0xCu);
      }
    }

    completionCopy[2](completionCopy, v13);
LABEL_14:

    goto LABEL_15;
  }

  completionCopy[2](completionCopy, 0);
LABEL_15:
}

+ (id)fetchIconForAssetID:(id)d
{
  if (d)
  {
    v4 = [MEMORY[0x277D755B8] icqBundleImageNamed:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fetchIconForBundleID:(id)d
{
  if (d)
  {
    v4 = [_ICQUIHelperFunctions appIconWithSize:120.0 forBundleID:120.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)fetchIconFromImageURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ICQUIImageLoader_fetchIconFromImageURL_completion___block_invoke;
  v7[3] = &unk_27A65AF80;
  v8 = completionCopy;
  v6 = completionCopy;
  [ICQUIImageLoader loadImageWithURL:l completion:v7];
}

void __53__ICQUIImageLoader_fetchIconFromImageURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ICQUIImageLoader_fetchIconFromImageURL_completion___block_invoke_2;
  v5[3] = &unk_27A65AF58;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __53__ICQUIImageLoader_fetchIconFromImageURL_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x277D755B8] imageWithData:?];
    (*(v1 + 16))(v1, v4);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }
}

+ (id)_scaledImageURL:(id)l
{
  lCopy = l;
  +[_ICQUIHelperFunctions highestScreenScale];
  if (v4 < 3)
  {
    if (v4 == 2)
    {
      [lCopy URL2x];
    }

    else
    {
      [lCopy URL1x];
    }
    uRL3x = ;
  }

  else
  {
    uRL3x = [lCopy URL3x];
  }

  v6 = uRL3x;

  return v6;
}

+ (BOOL)_hasURLForScale:(double)scale inImageURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (scale == 1.0)
  {
    uRL1x = [lCopy URL1x];
  }

  else if (scale == 2.0)
  {
    uRL1x = [lCopy URL2x];
  }

  else
  {
    if (scale != 3.0)
    {
      v8 = 0;
      goto LABEL_8;
    }

    uRL1x = [lCopy URL3x];
  }

  v8 = uRL1x != 0;

LABEL_8:
  return v8;
}

void __48__ICQUIImageLoader_loadImageWithURL_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Error retrieving image from url: %@", &v4, 0xCu);
}

@end