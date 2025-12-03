@interface SKUIDownloadsViewController
+ (int64_t)_sizeClassForSize:(CGSize)size;
- (SKUIDownloadsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewController:(id)controller artworkForDownload:(id)download;
- (void)_reloadBadge;
- (void)_reloadView;
- (void)_reloadViewControllerWithSize:(CGSize)size;
- (void)_setArtwork:(id)artwork forURLString:(id)string;
- (void)childViewController:(id)controller performActionForDownload:(id)download;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change;
- (void)downloadManagerDownloadsDidChange:(id)change;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation SKUIDownloadsViewController

- (SKUIDownloadsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v40[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDownloadsViewController initWithNibName:bundle:];
  }

  v38.receiver = self;
  v38.super_class = SKUIDownloadsViewController;
  v8 = [(SKUIDownloadsViewController *)&v38 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D69AC8]);
    iTunesDownloadKinds = [MEMORY[0x277D69AB8] ITunesDownloadKinds];
    [v9 setDownloadKinds:iTunesDownloadKinds];

    v11 = *MEMORY[0x277D69E80];
    v40[0] = *MEMORY[0x277D69E78];
    v40[1] = v11;
    v12 = *MEMORY[0x277D69E90];
    v40[2] = *MEMORY[0x277D69E88];
    v40[3] = v12;
    v40[4] = *MEMORY[0x277D69E98];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
    [v9 setPrefetchedDownloadExternalProperties:v13];

    v14 = *MEMORY[0x277D69FA0];
    v39[0] = *MEMORY[0x277D69F70];
    v39[1] = v14;
    v15 = *MEMORY[0x277D69FD8];
    v39[2] = *MEMORY[0x277D69FC8];
    v39[3] = v15;
    v16 = *MEMORY[0x277D6A0E0];
    v39[4] = *MEMORY[0x277D6A0D0];
    v39[5] = v16;
    v17 = *MEMORY[0x277D6A068];
    v39[6] = *MEMORY[0x277D69F90];
    v39[7] = v17;
    v18 = *MEMORY[0x277D6A0B8];
    v39[8] = *MEMORY[0x277D69FE8];
    v39[9] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:10];
    [v9 setPrefetchedDownloadProperties:v19];

    v20 = [objc_alloc(MEMORY[0x277D69AB8]) initWithManagerOptions:v9];
    downloadManager = v8->_downloadManager;
    v8->_downloadManager = v20;

    [(SSDownloadManager *)v8->_downloadManager addObserver:v8];
    [(SKUIDownloadsViewController *)v8 setAutomaticallyAdjustsScrollViewInsets:0];
    v22 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    consumer = v8->_consumer;
    v8->_consumer = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    imageOperations = v8->_imageOperations;
    v8->_imageOperations = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEA78]);
    images = v8->_images;
    v8->_images = v26;

    v28 = objc_alloc_init(MEMORY[0x277D755B8]);
    nullImage = v8->_nullImage;
    v8->_nullImage = v28;

    objc_initWeak(&location, v8);
    v30 = dispatch_time(0, 60000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SKUIDownloadsViewController_initWithNibName_bundle___block_invoke;
    block[3] = &unk_2781F8320;
    objc_copyWeak(&v36, &location);
    v31 = MEMORY[0x277D85CD0];
    dispatch_after(v30, MEMORY[0x277D85CD0], block);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__SKUIDownloadsViewController_initWithNibName_bundle___block_invoke_2;
    v33[3] = &unk_2781F80F0;
    v34 = v8;
    dispatch_async(v31, v33);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __54__SKUIDownloadsViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadManagerFromServer];
}

- (void)dealloc
{
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = SKUIDownloadsViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SKUIDownloadsViewController *)self setView:v3];
  [(SKUIDownloadsViewController *)self _reloadView];
}

- (void)viewDidLayoutSubviews
{
  view = [(SKUIDownloadsViewController *)self view];
  [view frame];
  [(SKUIDownloadsViewController *)self _reloadViewControllerWithSize:v4, v5];

  v6.receiver = self;
  v6.super_class = SKUIDownloadsViewController;
  [(SKUIDownloadsViewController *)&v6 viewDidLayoutSubviews];
}

- (void)childViewController:(id)controller performActionForDownload:(id)download
{
  downloadCopy = download;
  v4 = [downloadCopy valueForProperty:*MEMORY[0x277D69FC8]];
  v5 = [downloadCopy valueForProperty:*MEMORY[0x277D69FA0]];
  if ([v5 BOOLValue])
  {
    v6 = [v4 isEqual:*MEMORY[0x277D69F30]];
  }

  else
  {
    v6 = 0;
  }

  if (([v4 isEqualToString:*MEMORY[0x277D69F40]] & 1) == 0)
  {
    v7 = [v4 isEqualToString:*MEMORY[0x277D69F60]];
    if ((v6 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    [downloadCopy pause];
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_10:
  [downloadCopy resume];
LABEL_11:
}

- (id)childViewController:(id)controller artworkForDownload:(id)download
{
  controllerCopy = controller;
  downloadCopy = download;
  v8 = [downloadCopy valueForProperty:*MEMORY[0x277D6A0D0]];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [(NSCache *)self->_images objectForKey:v8];
  v10 = v9;
  if (v9 == self->_nullImage)
  {
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v11 = [(NSMutableDictionary *)self->_imageOperations objectForKey:v8];

  if (!v11)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    objc_initWeak(&location, self);
    v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v10];
    [v12 setDataConsumer:self->_consumer];
    [v12 setITunesStoreRequest:0];
    [v12 setRecordsMetrics:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SKUIDownloadsViewController_childViewController_artworkForDownload___block_invoke;
    v16[3] = &unk_2781FFE08;
    objc_copyWeak(&v18, &location);
    v13 = v8;
    v17 = v13;
    [v12 setOutputBlock:v16];
    [(NSMutableDictionary *)self->_imageOperations setObject:v12 forKey:v13];
    operationQueue = [(SKUIViewController *)self operationQueue];
    [operationQueue addOperation:v12];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
LABEL_6:
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

void __70__SKUIDownloadsViewController_childViewController_artworkForDownload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SKUIDownloadsViewController_childViewController_artworkForDownload___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __70__SKUIDownloadsViewController_childViewController_artworkForDownload___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setArtwork:*(a1 + 32) forURLString:*(a1 + 40)];
}

- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SKUIDownloadsViewController_downloadManager_downloadStatesDidChange___block_invoke;
  v7[3] = &unk_2781F80C8;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __71__SKUIDownloadsViewController_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 40) downloads];
        v10 = [v9 indexOfObject:v8];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v2 addIndex:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 1104) reloadDownloadsAtIndexes:v2];
  [*(*(a1 + 40) + 1096) reloadDownloadsAtIndexes:v2];
}

- (void)downloadManagerDownloadsDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SKUIDownloadsViewController_downloadManagerDownloadsDidChange___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__SKUIDownloadsViewController_downloadManagerDownloadsDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 view];
  [v4 frame];
  [v1 _reloadViewControllerWithSize:{v2, v3}];
}

- (void)_reloadViewControllerWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SKUIDownloadsViewController *)self _reloadBadge];
  v6 = [objc_opt_class() _sizeClassForSize:{width, height}];
  if (v6 == 2)
  {
    iphoneViewController = self->_iphoneViewController;
    if (iphoneViewController)
    {
      view = [(SKUIIPhoneDownloadsViewController *)iphoneViewController view];
      [view removeFromSuperview];

      [(SKUIIPhoneDownloadsViewController *)self->_iphoneViewController removeFromParentViewController];
      [(SKUIIPhoneDownloadsViewController *)self->_iphoneViewController setDelegate:0];
      v17 = self->_iphoneViewController;
      self->_iphoneViewController = 0;

      navigationItem = [(SKUIDownloadsViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItems:0];

      navigationItem2 = [(SKUIDownloadsViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItems:0];
    }

    p_ipadViewController = &self->_ipadViewController;
    ipadViewController = self->_ipadViewController;
    if (!ipadViewController)
    {
      v14 = off_2781F6388;
      goto LABEL_11;
    }
  }

  else
  {
    if (v6 == 1)
    {
      v7 = self->_ipadViewController;
      if (v7)
      {
        view2 = [(SKUIIPadDownloadsViewController *)v7 view];
        [view2 removeFromSuperview];

        [(SKUIIPadDownloadsViewController *)self->_ipadViewController removeFromParentViewController];
        [(SKUIIPadDownloadsViewController *)self->_ipadViewController setDelegate:0];
        v9 = self->_ipadViewController;
        self->_ipadViewController = 0;

        navigationItem3 = [(SKUIDownloadsViewController *)self navigationItem];
        [navigationItem3 setLeftBarButtonItems:0];

        navigationItem4 = [(SKUIDownloadsViewController *)self navigationItem];
        [navigationItem4 setRightBarButtonItems:0];
      }
    }

    p_ipadViewController = &self->_iphoneViewController;
    ipadViewController = self->_iphoneViewController;
    if (!ipadViewController)
    {
      v14 = off_2781F63A0;
LABEL_11:
      v20 = objc_alloc_init(*v14);
      v21 = *p_ipadViewController;
      *p_ipadViewController = v20;

      v22 = *p_ipadViewController;
      navigationItem5 = [(SKUIDownloadsViewController *)self navigationItem];
      [v22 _setExistingNavigationItem:navigationItem5];

      [*p_ipadViewController setDelegate:self];
      v24 = *p_ipadViewController;
      clientContext = [(SKUIViewController *)self clientContext];
      [v24 setClientContext:clientContext];

      [(SKUIDownloadsViewController *)self addChildViewController:*p_ipadViewController];
      ipadViewController = *p_ipadViewController;
    }
  }

  downloads = [(SKUIDownloadsViewController *)self downloads];
  [ipadViewController setDownloads:downloads];

  [(SKUIDownloadsViewController *)self _reloadView];
}

- (void)_reloadView
{
  if ([(SKUIDownloadsViewController *)self isViewLoaded])
  {
    view = [(SKUIDownloadsViewController *)self view];
    ipadViewController = self->_ipadViewController;
    if (!ipadViewController)
    {
      ipadViewController = self->_iphoneViewController;
    }

    view2 = [ipadViewController view];
    [view frame];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
  }
}

- (void)_reloadBadge
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SKUIDownloadsViewController__reloadBadge__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__SKUIDownloadsViewController__reloadBadge__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) downloads];
  [*(a1 + 32) setDownloads:v2];

  v3 = [*(a1 + 32) downloads];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v5 setNumberStyle:1];
    v6 = MEMORY[0x277CCABB0];
    v7 = [*(a1 + 32) downloads];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v9 = [v5 stringFromNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SKUIDownloadsViewController__reloadBadge__block_invoke_2;
  v11[3] = &unk_2781F80C8;
  v11[4] = *(a1 + 32);
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __43__SKUIDownloadsViewController__reloadBadge__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBarItem];
  [v2 setBadgeValue:*(a1 + 40)];
}

- (void)_setArtwork:(id)artwork forURLString:(id)string
{
  artworkCopy = artwork;
  stringCopy = string;
  [(NSMutableDictionary *)self->_imageOperations removeObjectForKey:stringCopy];
  nullImage = artworkCopy;
  if (!artworkCopy)
  {
    nullImage = self->_nullImage;
  }

  [(NSCache *)self->_images setObject:nullImage forKey:stringCopy];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  downloads = [(SKUIDownloadsViewController *)self downloads];
  v10 = [downloads count];

  if (v10)
  {
    v11 = 0;
    v12 = *MEMORY[0x277D6A0D0];
    do
    {
      downloads2 = [(SKUIDownloadsViewController *)self downloads];
      v14 = [downloads2 objectAtIndex:v11];
      v15 = [v14 valueForProperty:v12];

      if ([v15 isEqualToString:stringCopy])
      {
        [indexSet addIndex:v11];
      }

      ++v11;
      downloads3 = [(SKUIDownloadsViewController *)self downloads];
      v17 = [downloads3 count];
    }

    while (v11 < v17);
  }

  [(SKUIIPadDownloadsViewController *)self->_ipadViewController reloadDownloadsAtIndexes:indexSet];
  [(SKUIIPhoneDownloadsViewController *)self->_iphoneViewController reloadDownloadsAtIndexes:indexSet];
}

+ (int64_t)_sizeClassForSize:(CGSize)size
{
  if (size.width <= 600.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDownloadsViewController initWithNibName:bundle:]";
}

@end