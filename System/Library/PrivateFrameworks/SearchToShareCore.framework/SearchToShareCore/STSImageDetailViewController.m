@interface STSImageDetailViewController
- (void)setContentURL:(id)a3;
@end

@implementation STSImageDetailViewController

- (void)setContentURL:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = STSImageDetailViewController;
  v5 = [(STSResultDetailViewController *)&v30 contentURL];

  if (v5 != v4)
  {
    v29.receiver = self;
    v29.super_class = STSImageDetailViewController;
    [(STSResultDetailViewController *)&v29 setContentURL:v4];
    objc_initWeak(&location, self);
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__0;
    v26[4] = __Block_byref_object_dispose__0;
    v27 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v24.receiver = self;
    v24.super_class = STSImageDetailViewController;
    v6 = [(STSResultDetailViewController *)&v24 contentURL];
    v23.receiver = self;
    v23.super_class = STSImageDetailViewController;
    v7 = [(STSResultDetailViewController *)&v23 queryString];
    v8 = +[STSImageCache sharedCache];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__STSImageDetailViewController_setContentURL___block_invoke;
    v17[3] = &unk_279B8ADD8;
    v18 = v6;
    v21 = v26;
    v9 = v7;
    v19 = v9;
    v20 = self;
    v22 = v25;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__STSImageDetailViewController_setContentURL___block_invoke_8;
    v11[3] = &unk_279B8AE28;
    v14 = v25;
    v10 = v18;
    v12 = v10;
    v15 = v26;
    objc_copyWeak(&v16, &location);
    v13 = self;
    [v8 fetchImageWithURL:v10 priority:4 isSource:1 begin:v17 progress:0 completion:v11];

    objc_destroyWeak(&v16);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v26, 8);

    objc_destroyWeak(&location);
  }
}

void __46__STSImageDetailViewController_setContentURL___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v10 = 138412290;
    v11 = v2;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Begin fetching image at URL: %@", &v10, 0xCu);
  }

  v3 = +[STSFeedbackReporter sharedInstance];
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = &stru_2876AE098;
  }

  v5 = [v3 didStartNetworkRequest:*(a1 + 32) query:v4 queryId:{objc_msgSend(*(a1 + 48), "queryId")}];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x277CCAC38] processInfo];
  [v8 systemUptime];
  *(*(*(a1 + 64) + 8) + 24) = v9;
}

void __46__STSImageDetailViewController_setContentURL___block_invoke_8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x277CCAC38] processInfo];
  [v11 systemUptime];
  v13 = v12;
  v14 = *(*(*(a1 + 48) + 8) + 24);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 objectForKeyedSubscript:@"STSImageDownloadOperationStatusCode"];
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:(v13 - v14) * 1000.0];
    *buf = 138412802;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Detail view source image downloaded status_code %@ %@ (duration %@)", buf, 0x20u);
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v18 = +[STSFeedbackReporter sharedInstance];
    [v18 didEndNetworkRequest:*(*(*(a1 + 56) + 8) + 40) infoDict:v10];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__STSImageDetailViewController_setContentURL___block_invoke_10;
  v23[3] = &unk_279B8AE00;
  v24 = WeakRetained;
  v25 = v8;
  v26 = *(a1 + 40);
  v27 = v9;
  v20 = v9;
  v21 = v8;
  v22 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v23);
}

void __46__STSImageDetailViewController_setContentURL___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) contentSize];
  if (*MEMORY[0x277CBF3A8] == v3 && *(MEMORY[0x277CBF3A8] + 8) == v2)
  {
    v5 = [*(a1 + 32) view];
    [*(a1 + 40) size];
    [v5 setContentSize:?];
  }

  if (*(*(a1 + 48) + 1080))
  {
    obj = 0;
    v6 = *(a1 + 56);
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v6 = *(a1 + 40);
    obj = v6;
  }

  v8 = v6;
  v9 = *(a1 + 32);
  if (v9 && (objc_storeStrong((v9 + 1072), obj), (v10 = *(a1 + 32)) != 0))
  {
    objc_storeStrong((v10 + 1080), v7);
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [v11 updateWithThumbnail:obj orThumbnailInfo:v7];
}

@end