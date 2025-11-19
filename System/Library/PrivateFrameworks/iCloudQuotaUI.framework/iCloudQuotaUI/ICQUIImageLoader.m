@interface ICQUIImageLoader
+ (BOOL)_hasURLForScale:(double)a3 inImageURL:(id)a4;
+ (id)_scaledImageURL:(id)a3;
+ (id)fetchIconForAssetID:(id)a3;
+ (id)fetchIconForBundleID:(id)a3;
+ (void)fetchIconFromIconSpecification:(id)a3 completion:(id)a4;
+ (void)fetchIconFromImageURL:(id)a3 completion:(id)a4;
+ (void)loadImageWithURL:(id)a3 completion:(id)a4;
@end

@implementation ICQUIImageLoader

+ (void)loadImageWithURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _scaledImageURL:a3];
  v8 = [MEMORY[0x277CCAD20] requestWithURL:v7 cachePolicy:0 timeoutInterval:30.0];
  v9 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v10 = [MEMORY[0x277CCACD8] sharedURLCache];
  [v9 setURLCache:v10];

  v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__ICQUIImageLoader_loadImageWithURL_completion___block_invoke;
  v16[3] = &unk_27A65AF30;
  v17 = v11;
  v18 = v8;
  v19 = v6;
  v12 = v6;
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

+ (void)fetchIconFromIconSpecification:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 imageURL];
  v9 = [v6 assetID];
  v10 = [v6 bundleID];
  +[_ICQUIHelperFunctions highestScreenScale];
  v11 = [a1 _hasURLForScale:v8 inImageURL:?];
  if (v10 || v9 || v11)
  {
    v12 = [v6 assetID];
    v13 = [a1 fetchIconForAssetID:v12];

    if (v13)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Fetched icon from assets catalog for asset ID %@", &v17, 0xCu);
      }
    }

    else
    {
      v13 = [a1 fetchIconForBundleID:v10];
      v15 = _ICQGetLogSystem();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        if (v16)
        {
          v17 = 138412290;
          v18 = v8;
          _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Fetching remote icon asset from URL %@", &v17, 0xCu);
        }

        [a1 fetchIconFromImageURL:v8 completion:v7];
        goto LABEL_14;
      }

      if (v16)
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Fetched icon from IconServices for bundleID %@", &v17, 0xCu);
      }
    }

    v7[2](v7, v13);
LABEL_14:

    goto LABEL_15;
  }

  v7[2](v7, 0);
LABEL_15:
}

+ (id)fetchIconForAssetID:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D755B8] icqBundleImageNamed:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fetchIconForBundleID:(id)a3
{
  if (a3)
  {
    v4 = [_ICQUIHelperFunctions appIconWithSize:120.0 forBundleID:120.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)fetchIconFromImageURL:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ICQUIImageLoader_fetchIconFromImageURL_completion___block_invoke;
  v7[3] = &unk_27A65AF80;
  v8 = v5;
  v6 = v5;
  [ICQUIImageLoader loadImageWithURL:a3 completion:v7];
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

+ (id)_scaledImageURL:(id)a3
{
  v3 = a3;
  +[_ICQUIHelperFunctions highestScreenScale];
  if (v4 < 3)
  {
    if (v4 == 2)
    {
      [v3 URL2x];
    }

    else
    {
      [v3 URL1x];
    }
    v5 = ;
  }

  else
  {
    v5 = [v3 URL3x];
  }

  v6 = v5;

  return v6;
}

+ (BOOL)_hasURLForScale:(double)a3 inImageURL:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1.0)
  {
    v7 = [v5 URL1x];
  }

  else if (a3 == 2.0)
  {
    v7 = [v5 URL2x];
  }

  else
  {
    if (a3 != 3.0)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [v5 URL3x];
  }

  v8 = v7 != 0;

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