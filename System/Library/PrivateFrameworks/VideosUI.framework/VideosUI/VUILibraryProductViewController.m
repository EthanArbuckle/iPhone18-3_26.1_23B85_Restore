@interface VUILibraryProductViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (VUILibraryProductViewController)initWithMediaItem:(id)a3;
- (id)_productInfoViewWithMediaItem:(id)a3;
- (id)_productLockupViewWithMediaItem:(id)a3;
- (id)_productSectionForHeader:(id)a3 data:(id)a4 group:(id)a5 maxItemCount:(unint64_t)a6;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_updateAfterContentWasManuallyDeleted:(BOOL)a3;
- (void)configureWithCollectionView:(id)a3;
- (void)contentDescriptionExpanded;
- (void)didSelectButton:(id)a3;
- (void)loadView;
- (void)setDownloadButton:(id)a3;
- (void)start;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation VUILibraryProductViewController

- (VUILibraryProductViewController)initWithMediaItem:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = VUILibraryProductViewController;
  v6 = [(VUILibraryStackViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaItem, a3);
    v8 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v7->_contentPresenter;
    v7->_contentPresenter = v8;

    [(VUIViewControllerContentPresenter *)v7->_contentPresenter setLogName:@"VUILibraryProductViewController"];
    objc_initWeak(&location, v7);
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__VUILibraryProductViewController_initWithMediaItem___block_invoke;
    v13[3] = &unk_1E872E760;
    objc_copyWeak(&v14, &location);
    v11 = [(VUILibraryProductViewController *)v7 registerForTraitChanges:v10 withHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__VUILibraryProductViewController_initWithMediaItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v2 userInterfaceIdiom];

    WeakRetained = v5;
    if (!v3)
    {
      v4 = [v5[129] title];
      [v5 setTitle:v4];

      WeakRetained = v5;
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUILibraryProductViewController;
  [(VUILibraryStackViewController *)&v5 viewDidLoad];
  [(VUILibraryProductViewController *)self start];
  v3 = [(VUILibraryProductViewController *)self navigationItem];
  [v3 _setSupportsTwoLineLargeTitles:1];
  v4 = [(VUIMediaEntity *)self->_mediaItem title];
  [(VUILibraryProductViewController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUILibraryProductViewController;
  [(VUILibraryStackViewController *)&v4 viewDidAppear:a3];
  [(VUILibraryProductViewController *)self reportMetricsPageEvent];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = VUILibraryProductViewController;
  [(VUILibraryProductViewController *)&v4 loadView];
  v3 = [(VUILibraryProductViewController *)self contentPresenter];
  [v3 setRootViewForViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUILibraryProductViewController;
  [(VUILibraryProductViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(VUILibraryProductViewController *)self contentPresenter];
  v4 = [(VUILibraryProductViewController *)self view];
  [v4 bounds];
  [v3 configureCurrentViewFrameForBounds:?];
}

- (void)configureWithCollectionView:(id)a3
{
  v4 = a3;
  [v4 setDataSource:self];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUICollectionViewWrapperCellReuseIdentifier"];
}

- (void)start
{
  v3 = [(VUILibraryStackViewController *)self stackView];
  v4 = [(VUILibraryProductViewController *)self contentPresenter];
  [v4 setContentView:v3];

  v5 = [(VUILibraryProductViewController *)self contentPresenter];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"LIBRARY_GENERIC_FETCH_ERROR_TITLE"];
  [v5 setNoContentErrorTitle:v7];

  v8 = [(VUILibraryProductViewController *)self _productLockupViewWithMediaItem:self->_mediaItem];
  productLockupView = self->_productLockupView;
  self->_productLockupView = v8;

  if (self->_mediaItem)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    mediaItem = self->_mediaItem;
    if (isKindOfClass)
    {
      v12 = [(VUIMediaItem *)mediaItem mediaItem];
      v13 = [v12 vui_isHomeSharingMediaItem];

      if (v13)
      {
        v14 = 0;
        goto LABEL_14;
      }

      mediaItem = self->_mediaItem;
    }
  }

  else
  {
    mediaItem = 0;
  }

  v15 = [(VUIMediaEntity *)mediaItem assetController];
  v16 = v15;
  if (v15 && [v15 supportsStartingDownload])
  {
    v14 = [[VUIDownloadButton alloc] initWithMediaEntity:self->_mediaItem type:9];
  }

  else
  {
    v14 = 0;
  }

  [(VUIDownloadButton *)v14 setUsesDefaultConfiguration:1];
  v17 = [MEMORY[0x1E69DC938] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    [(VUIDownloadButton *)v14 setShowsTextInDownloadedState:1];
  }

  [(VUIDownloadButton *)v14 setPresentingViewController:self];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__VUILibraryProductViewController_start__block_invoke;
  v23[3] = &unk_1E87318B0;
  objc_copyWeak(&v25, &location);
  v19 = v16;
  v24 = v19;
  [(VUIDownloadButton *)v14 setDownloadStateChangeHandler:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

LABEL_14:
  [(VUILibraryProductViewController *)self setDownloadButton:v14];
  v20 = [(VUILibraryProductViewController *)self _productInfoViewWithMediaItem:self->_mediaItem];
  productInfoView = self->_productInfoView;
  self->_productInfoView = v20;

  v22 = [(VUILibraryProductViewController *)self contentPresenter];
  [v22 setCurrentContentViewType:3];
}

void __40__VUILibraryProductViewController_start__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a3)
  {
    [WeakRetained _updateAfterContentWasManuallyDeleted:{objc_msgSend(*(a1 + 32), "supportsStartingDownload")}];
    WeakRetained = v6;
  }

  if (WeakRetained)
  {
    [v6[130] setNeedsLayout];
    WeakRetained = v6;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"VUICollectionViewWrapperCellReuseIdentifier" forIndexPath:v6];
  v8 = [v6 section];

  v9 = &OBJC_IVAR___VUILibraryProductViewController__productInfoView;
  if (!v8)
  {
    v9 = &OBJC_IVAR___VUILibraryProductViewController__productLockupView;
  }

  [v7 setChildView:*(&self->super.super.super.super.isa + *v9)];

  return v7;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [VUIViewSpacer spacerB:a3];
  v7 = v6;
  v8 = [(VUILibraryProductViewController *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:v8 forTraitCollection:v7];
  v10 = v9;

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = v10;
  result.right = v13;
  result.bottom = v14;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a5;
  [a3 bounds];
  Width = CGRectGetWidth(v22);
  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    v9 = [(VUILibraryProductViewController *)self vuiIsRTL];
    v10 = [(VUILibraryProductViewController *)self view];
    [v10 safeAreaInsets];
    v12 = v11;
    v14 = v13;

    if (v9)
    {
      Width = Width - v14;
    }

    else
    {
      Width = Width - v12;
    }
  }

  v15 = [v7 section];
  v16 = &OBJC_IVAR___VUILibraryProductViewController__productInfoView;
  if (!v15)
  {
    v16 = &OBJC_IVAR___VUILibraryProductViewController__productLockupView;
  }

  [*(&self->super.super.super.super.isa + *v16) sizeThatFits:{Width, 1.79769313e308}];
  v18 = v17;

  v19 = Width;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)contentDescriptionExpanded
{
  v3 = [(VUILibraryStackViewController *)self stackCollectionView];
  v2 = [v3 collectionViewLayout];
  [v2 invalidateLayout];
}

- (void)didSelectButton:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = self->_mediaItem;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(VUIMediaItem *)v3 videosPlayable];
      v5 = [VUIMediaInfo alloc];
      v13[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v7 = [(VUIMediaInfo *)v5 initWithPlaybackContext:3 videosPlayables:v6 imageProxies:0 storeDictionary:0];

      v8 = [MEMORY[0x1E695DF00] date];
      [v7 setUserPlaybackInitiationDate:v8 openURLCompletionDate:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_10:
        v7 = VUIDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [VUIDownloadShowTableViewController tableView:v3 didSelectRowAtIndexPath:v7];
        }

        goto LABEL_12;
      }

      v9 = [VUIMediaInfo alloc];
      v12 = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      v7 = [(VUIMediaInfo *)v9 initWithPlaybackContext:3 vuiMediaItems:v4];
    }

    if (v7)
    {
      [v7 setIntent:1];
      [v7 setAutomaticPlaybackStart:0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__VUILibraryProductViewController_didSelectButton___block_invoke;
      v10[3] = &unk_1E872D768;
      v11 = v3;
      [VUIActionPlay playMediaInfo:v7 watchType:0 isRentAndWatchNow:0 completion:v10];

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke_cold_2(v7);
  }

LABEL_12:
}

- (void)setDownloadButton:(id)a3
{
  v5 = a3;
  downloadButton = self->_downloadButton;
  v9 = v5;
  if (downloadButton != v5)
  {
    if (downloadButton)
    {
      [(VUIDownloadButton *)downloadButton removeFromSuperview];
    }

    objc_storeStrong(&self->_downloadButton, a3);
    if (self->_downloadButton)
    {
      v7 = [(VUILibraryProductViewController *)self view];
      v8 = [v7 effectiveUserInterfaceLayoutDirection] == 1;

      [(VUIButton *)self->_downloadButton setImageTrailsTextContent:v8];
      [(VUIProductLockupView *)self->_productLockupView setDownloadView:self->_downloadButton];
    }
  }
}

- (id)_productLockupViewWithMediaItem:(id)a3
{
  v4 = [VUIProductLockupView productLockupViewWithMedia:self->_mediaItem];
  [v4 setDelegate:self];
  v5 = [v4 leftButton];
  [v5 setDelegate:self];

  return v4;
}

- (id)_productInfoViewWithMediaItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 credits];
  v7 = [v6 cast];
  v8 = [v7 count];

  if (v8)
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"PRODUCT_INFO_CAST_HEADER"];
    v11 = [v4 credits];
    v12 = [v11 cast];
    v13 = [(VUILibraryProductViewController *)self _productSectionForHeader:v10 data:v12 group:0 maxItemCount:10];

    [v5 addObject:v13];
  }

  v14 = [v4 credits];
  v15 = [v14 directors];
  v16 = [v15 count];

  if (v16)
  {
    v17 = +[VUILocalizationManager sharedInstance];
    v18 = [v17 localizedStringForKey:@"PRODUCT_INFO_DIRECTORS_HEADER"];
    v19 = [v4 credits];
    v20 = [v19 directors];
    v21 = [(VUILibraryProductViewController *)self _productSectionForHeader:v18 data:v20 group:@"InfoAllOthersGroup" maxItemCount:5];

    [v5 addObject:v21];
  }

  v22 = [v4 credits];
  v23 = [v22 producers];
  v24 = [v23 count];

  if (v24)
  {
    v25 = +[VUILocalizationManager sharedInstance];
    v26 = [v25 localizedStringForKey:@"PRODUCT_INFO_PRODUCERS_HEADER"];
    v27 = [v4 credits];
    v28 = [v27 producers];
    v29 = [(VUILibraryProductViewController *)self _productSectionForHeader:v26 data:v28 group:@"InfoAllOthersGroup" maxItemCount:5];

    [v5 addObject:v29];
  }

  v30 = [v4 credits];
  v31 = [v30 screenwriters];
  v32 = [v31 count];

  if (v32)
  {
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"PRODUCT_INFO_SCREENWRITERS_HEADER"];
    v35 = [v4 credits];
    v36 = [v35 screenwriters];
    v37 = [(VUILibraryProductViewController *)self _productSectionForHeader:v34 data:v36 group:@"InfoAllOthersGroup" maxItemCount:5];

    [v5 addObject:v37];
  }

  if ([v5 count])
  {
    v38 = [VUILibraryProductInfoView alloc];
    v39 = [(VUILibraryProductInfoView *)v38 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(VUILibraryProductInfoView *)v39 setInfos:v5];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)_productSectionForHeader:(id)a3 data:(id)a4 group:(id)a5 maxItemCount:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(VUILibraryProductInfoSection);
  v13 = objc_opt_new();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __84__VUILibraryProductViewController__productSectionForHeader_data_group_maxItemCount___block_invoke;
  v21 = &unk_1E87318D8;
  v22 = v13;
  v23 = a6;
  v14 = v13;
  [v10 enumerateObjectsUsingBlock:&v18];

  v15 = [v14 copy];
  [(VUILibraryProductInfoSection *)v12 setDataViews:v15];

  v16 = [VUILibraryProductInfoSection headerViewWithString:v11];

  [(VUILibraryProductInfoSection *)v12 setHeaderContentView:v16];
  [(VUILibraryProductInfoSection *)v12 setGroupName:v9];

  return v12;
}

void __84__VUILibraryProductViewController__productSectionForHeader_data_group_maxItemCount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [VUILibraryProductInfoSection dataViewWithString:a2];
  [*(a1 + 32) addObject:?];
  if (a3 + 1 == *(a1 + 40))
  {
    *a4 = 1;
  }
}

- (void)_updateAfterContentWasManuallyDeleted:(BOOL)a3
{
  if (!a3)
  {
    v5 = [(VUILibraryProductViewController *)self navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

@end