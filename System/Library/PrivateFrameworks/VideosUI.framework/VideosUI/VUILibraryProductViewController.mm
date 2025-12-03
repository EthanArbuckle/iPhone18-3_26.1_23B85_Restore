@interface VUILibraryProductViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (VUILibraryProductViewController)initWithMediaItem:(id)item;
- (id)_productInfoViewWithMediaItem:(id)item;
- (id)_productLockupViewWithMediaItem:(id)item;
- (id)_productSectionForHeader:(id)header data:(id)data group:(id)group maxItemCount:(unint64_t)count;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_updateAfterContentWasManuallyDeleted:(BOOL)deleted;
- (void)configureWithCollectionView:(id)view;
- (void)contentDescriptionExpanded;
- (void)didSelectButton:(id)button;
- (void)loadView;
- (void)setDownloadButton:(id)button;
- (void)start;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation VUILibraryProductViewController

- (VUILibraryProductViewController)initWithMediaItem:(id)item
{
  v17[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = VUILibraryProductViewController;
  v6 = [(VUILibraryStackViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaItem, item);
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
  navigationItem = [(VUILibraryProductViewController *)self navigationItem];
  [navigationItem _setSupportsTwoLineLargeTitles:1];
  title = [(VUIMediaEntity *)self->_mediaItem title];
  [(VUILibraryProductViewController *)self setTitle:title];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VUILibraryProductViewController;
  [(VUILibraryStackViewController *)&v4 viewDidAppear:appear];
  [(VUILibraryProductViewController *)self reportMetricsPageEvent];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = VUILibraryProductViewController;
  [(VUILibraryProductViewController *)&v4 loadView];
  contentPresenter = [(VUILibraryProductViewController *)self contentPresenter];
  [contentPresenter setRootViewForViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUILibraryProductViewController;
  [(VUILibraryProductViewController *)&v5 viewWillLayoutSubviews];
  contentPresenter = [(VUILibraryProductViewController *)self contentPresenter];
  view = [(VUILibraryProductViewController *)self view];
  [view bounds];
  [contentPresenter configureCurrentViewFrameForBounds:?];
}

- (void)configureWithCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy setDataSource:self];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUICollectionViewWrapperCellReuseIdentifier"];
}

- (void)start
{
  stackView = [(VUILibraryStackViewController *)self stackView];
  contentPresenter = [(VUILibraryProductViewController *)self contentPresenter];
  [contentPresenter setContentView:stackView];

  contentPresenter2 = [(VUILibraryProductViewController *)self contentPresenter];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"LIBRARY_GENERIC_FETCH_ERROR_TITLE"];
  [contentPresenter2 setNoContentErrorTitle:v7];

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
      mediaItem = [(VUIMediaItem *)mediaItem mediaItem];
      vui_isHomeSharingMediaItem = [mediaItem vui_isHomeSharingMediaItem];

      if (vui_isHomeSharingMediaItem)
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

  assetController = [(VUIMediaEntity *)mediaItem assetController];
  v16 = assetController;
  if (assetController && [assetController supportsStartingDownload])
  {
    v14 = [[VUIDownloadButton alloc] initWithMediaEntity:self->_mediaItem type:9];
  }

  else
  {
    v14 = 0;
  }

  [(VUIDownloadButton *)v14 setUsesDefaultConfiguration:1];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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

  contentPresenter3 = [(VUILibraryProductViewController *)self contentPresenter];
  [contentPresenter3 setCurrentContentViewType:3];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"VUICollectionViewWrapperCellReuseIdentifier" forIndexPath:pathCopy];
  section = [pathCopy section];

  v9 = &OBJC_IVAR___VUILibraryProductViewController__productInfoView;
  if (!section)
  {
    v9 = &OBJC_IVAR___VUILibraryProductViewController__productLockupView;
  }

  [v7 setChildView:*(&self->super.super.super.super.isa + *v9)];

  return v7;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [VUIViewSpacer spacerB:view];
  v7 = v6;
  traitCollection = [(VUILibraryProductViewController *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:v7];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view bounds];
  Width = CGRectGetWidth(v22);
  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    vuiIsRTL = [(VUILibraryProductViewController *)self vuiIsRTL];
    view = [(VUILibraryProductViewController *)self view];
    [view safeAreaInsets];
    v12 = v11;
    v14 = v13;

    if (vuiIsRTL)
    {
      Width = Width - v14;
    }

    else
    {
      Width = Width - v12;
    }
  }

  section = [pathCopy section];
  v16 = &OBJC_IVAR___VUILibraryProductViewController__productInfoView;
  if (!section)
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
  stackCollectionView = [(VUILibraryStackViewController *)self stackCollectionView];
  collectionViewLayout = [stackCollectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)didSelectButton:(id)button
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = self->_mediaItem;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      videosPlayable = [(VUIMediaItem *)v3 videosPlayable];
      v5 = [VUIMediaInfo alloc];
      v13[0] = videosPlayable;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v7 = [(VUIMediaInfo *)v5 initWithPlaybackContext:3 videosPlayables:v6 imageProxies:0 storeDictionary:0];

      date = [MEMORY[0x1E695DF00] date];
      [v7 setUserPlaybackInitiationDate:date openURLCompletionDate:0];
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
      videosPlayable = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      v7 = [(VUIMediaInfo *)v9 initWithPlaybackContext:3 vuiMediaItems:videosPlayable];
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

- (void)setDownloadButton:(id)button
{
  buttonCopy = button;
  downloadButton = self->_downloadButton;
  v9 = buttonCopy;
  if (downloadButton != buttonCopy)
  {
    if (downloadButton)
    {
      [(VUIDownloadButton *)downloadButton removeFromSuperview];
    }

    objc_storeStrong(&self->_downloadButton, button);
    if (self->_downloadButton)
    {
      view = [(VUILibraryProductViewController *)self view];
      v8 = [view effectiveUserInterfaceLayoutDirection] == 1;

      [(VUIButton *)self->_downloadButton setImageTrailsTextContent:v8];
      [(VUIProductLockupView *)self->_productLockupView setDownloadView:self->_downloadButton];
    }
  }
}

- (id)_productLockupViewWithMediaItem:(id)item
{
  v4 = [VUIProductLockupView productLockupViewWithMedia:self->_mediaItem];
  [v4 setDelegate:self];
  leftButton = [v4 leftButton];
  [leftButton setDelegate:self];

  return v4;
}

- (id)_productInfoViewWithMediaItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  credits = [itemCopy credits];
  cast = [credits cast];
  v8 = [cast count];

  if (v8)
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"PRODUCT_INFO_CAST_HEADER"];
    credits2 = [itemCopy credits];
    cast2 = [credits2 cast];
    v13 = [(VUILibraryProductViewController *)self _productSectionForHeader:v10 data:cast2 group:0 maxItemCount:10];

    [v5 addObject:v13];
  }

  credits3 = [itemCopy credits];
  directors = [credits3 directors];
  v16 = [directors count];

  if (v16)
  {
    v17 = +[VUILocalizationManager sharedInstance];
    v18 = [v17 localizedStringForKey:@"PRODUCT_INFO_DIRECTORS_HEADER"];
    credits4 = [itemCopy credits];
    directors2 = [credits4 directors];
    v21 = [(VUILibraryProductViewController *)self _productSectionForHeader:v18 data:directors2 group:@"InfoAllOthersGroup" maxItemCount:5];

    [v5 addObject:v21];
  }

  credits5 = [itemCopy credits];
  producers = [credits5 producers];
  v24 = [producers count];

  if (v24)
  {
    v25 = +[VUILocalizationManager sharedInstance];
    v26 = [v25 localizedStringForKey:@"PRODUCT_INFO_PRODUCERS_HEADER"];
    credits6 = [itemCopy credits];
    producers2 = [credits6 producers];
    v29 = [(VUILibraryProductViewController *)self _productSectionForHeader:v26 data:producers2 group:@"InfoAllOthersGroup" maxItemCount:5];

    [v5 addObject:v29];
  }

  credits7 = [itemCopy credits];
  screenwriters = [credits7 screenwriters];
  v32 = [screenwriters count];

  if (v32)
  {
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"PRODUCT_INFO_SCREENWRITERS_HEADER"];
    credits8 = [itemCopy credits];
    screenwriters2 = [credits8 screenwriters];
    v37 = [(VUILibraryProductViewController *)self _productSectionForHeader:v34 data:screenwriters2 group:@"InfoAllOthersGroup" maxItemCount:5];

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

- (id)_productSectionForHeader:(id)header data:(id)data group:(id)group maxItemCount:(unint64_t)count
{
  groupCopy = group;
  dataCopy = data;
  headerCopy = header;
  v12 = objc_alloc_init(VUILibraryProductInfoSection);
  v13 = objc_opt_new();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __84__VUILibraryProductViewController__productSectionForHeader_data_group_maxItemCount___block_invoke;
  v21 = &unk_1E87318D8;
  v22 = v13;
  countCopy = count;
  v14 = v13;
  [dataCopy enumerateObjectsUsingBlock:&v18];

  v15 = [v14 copy];
  [(VUILibraryProductInfoSection *)v12 setDataViews:v15];

  v16 = [VUILibraryProductInfoSection headerViewWithString:headerCopy];

  [(VUILibraryProductInfoSection *)v12 setHeaderContentView:v16];
  [(VUILibraryProductInfoSection *)v12 setGroupName:groupCopy];

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

- (void)_updateAfterContentWasManuallyDeleted:(BOOL)deleted
{
  if (!deleted)
  {
    navigationController = [(VUILibraryProductViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

@end