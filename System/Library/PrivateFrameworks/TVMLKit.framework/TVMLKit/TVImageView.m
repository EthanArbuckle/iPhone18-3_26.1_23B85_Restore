@interface TVImageView
@end

@implementation TVImageView

void __26___TVImageView__loadImage__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7)
  {
    [v7 setEnableCache:1];
    v10 = [v7 uiImage];
  }

  else
  {
    if (a4)
    {
      v11 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
      {
        __26___TVImageView__loadImage__block_invoke_cold_1(WeakRetained, v8, v11);
      }
    }

    v10 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26___TVImageView__loadImage__block_invoke_17;
  v16[3] = &unk_279D6F4E8;
  objc_copyWeak(&v20, (a1 + 40));
  v12 = WeakRetained;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v21 = a4;
  v14 = v8;
  v19 = v14;
  v15 = MEMORY[0x26D6AFBB0](v16);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v15[2](v15);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }

  objc_destroyWeak(&v20);
}

void __26___TVImageView__loadImage__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained imageProxy];
    v4 = [v3 isEqual:*(a1 + 32)];

    WeakRetained = v8;
    if (v4)
    {
      if (*(a1 + 40) && *(a1 + 64) == 1)
      {
        [v8 _setImage:?];
        v5 = [MEMORY[0x277CCAB98] defaultCenter];
        [v5 postNotificationName:@"TVMLImageViewImageDidLoadNotification" object:v8];
      }

      [v8 setImageLoaded:*(a1 + 64)];
      v6 = [v8 completion];

      WeakRetained = v8;
      if (v6)
      {
        v7 = [v8 completion];
        v7[2](v7, *(a1 + 40), *(a1 + 48), *(a1 + 64));

        WeakRetained = v8;
        if (*(a1 + 64) == 1)
        {
          [v8 setCompletion:0];
          WeakRetained = v8;
        }
      }
    }
  }
}

void __26___TVImageView__loadImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[70] == v2)
  {
    v3 = [WeakRetained completion];
    v3[2](v3, 0, 0, 1);

    [WeakRetained setCompletion:0];
    [WeakRetained setImageLoaded:0];
  }
}

void __26___TVImageView__loadImage__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_26CD9A000, log, OS_LOG_TYPE_ERROR, "%@ was unable to load image: %@", &v3, 0x16u);
}

@end