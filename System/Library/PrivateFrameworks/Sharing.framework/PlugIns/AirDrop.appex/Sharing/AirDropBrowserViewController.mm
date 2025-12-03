@interface AirDropBrowserViewController
+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)classes;
- (AirDropBrowserViewController)initWithCoder:(id)coder;
- (AirDropBrowserViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AirDropBrowserViewControllerDelegate)airDropDelegate;
- (BOOL)addImage:(id)image withAttachmentName:(id)name description:(id)description previewImage:(id)previewImage itemIndex:(int)index;
- (BOOL)addItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image;
- (BOOL)addURL:(id)l withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)createURLPayloadForData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index completion:(id)completion;
- (BOOL)isValidPayload:(id)payload toPerson:(id)person invalidMessage:(id *)message;
- (CGSize)suggestedThumbnailSize;
- (id)airDropCollectionViewLayout;
- (id)cellForPerson:(id)person;
- (void)_collectTelemetryForPeople:(id)people;
- (void)_emitTelemetryForPerson:(id)person;
- (void)_startTelemetry;
- (void)_stopTelemetry;
- (void)browserDidUpdateMePeople:(id)people knownPeople:(id)knownPeople unknownPeople:(id)unknownPeople;
- (void)cancelTransferForCell:(id)cell;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path cellInitiator:(BOOL)initiator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)donePressed;
- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)d;
- (void)handleLivePhotoItemProvider:(id)provider withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (void)handleOtherItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image;
- (void)magicHeadViewControllerDidFinishTransferForNode:(id)node;
- (void)magicHeadViewControllerDidStartTransferForNode:(id)node;
- (void)magicHeadViewControllerDidTerminateTransferForNode:(id)node;
- (void)magicHeadViewControllerToggleSelectionForNode:(id)node;
- (void)noContentViewActionTriggered:(id)triggered;
- (void)personCollectionViewCellDidFinishTransfer:(id)transfer;
- (void)personCollectionViewCellDidStartTransfer:(id)transfer;
- (void)personCollectionViewCellDidTerminateTransfer:(id)transfer;
- (void)requestingSharedItemsWithOptions:(id)options completionHandler:(id)handler;
- (void)scrollViewDidScroll:(id)scroll;
- (void)startBrowsing;
- (void)startTransferForPeople:(id)people;
- (void)stopBrowsing;
- (void)subscribeToProgresses;
- (void)subscribedProgress:(id)progress forPersonWithRealName:(id)name;
- (void)unpublishedProgressForPersonWithRealName:(id)name;
- (void)unsubscribeToProgresses;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)wirelessSettingsDidChange:(id)change;
@end

@implementation AirDropBrowserViewController

- (AirDropBrowserViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = AirDropBrowserViewController;
  return [(AirDropBrowserViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (AirDropBrowserViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AirDropBrowserViewController;
  return [(AirDropBrowserViewController *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  [(AirDropBrowserViewController *)self stopBrowsing];
  v3.receiver = self;
  v3.super_class = AirDropBrowserViewController;
  [(AirDropBrowserViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v150.receiver = self;
  v150.super_class = AirDropBrowserViewController;
  [(AirDropBrowserViewController *)&v150 viewDidLoad];
  v3 = +[NSMutableSet set];
  selectedNodes = self->_selectedNodes;
  self->_selectedNodes = v3;

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"AIRDROP_NAVIGATION_TITLE" value:&stru_10002D8A8 table:0];
  [(AirDropBrowserViewController *)self setTitle:v6];

  view = [(AirDropBrowserViewController *)self view];
  [view setBackgroundColor:0];

  v8 = +[NSMutableArray array];
  activeSecurityContexts = self->_activeSecurityContexts;
  self->_activeSecurityContexts = v8;

  self->_attachmentCount = 0;
  v10 = +[NSMutableDictionary dictionary];
  personToProgress = self->_personToProgress;
  self->_personToProgress = v10;

  v12 = +[NSMutableDictionary dictionary];
  personToStoredTransferFinalState = self->_personToStoredTransferFinalState;
  self->_personToStoredTransferFinalState = v12;

  v14 = +[NSMutableDictionary dictionary];
  personToSharedItemsRequestID = self->_personToSharedItemsRequestID;
  self->_personToSharedItemsRequestID = v14;

  v16 = +[NSMutableDictionary dictionary];
  sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
  self->_sharedItemsRequestIDToPreviewPhoto = v16;

  v18 = objc_alloc_init(NSMutableOrderedSet);
  cachedSharedItems = self->_cachedSharedItems;
  self->_cachedSharedItems = v18;

  v20 = objc_alloc_init(NSOperationQueue);
  operationQueue = self->_operationQueue;
  self->_operationQueue = v20;

  [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
  self->_sharedItemsCount = 0;
  v22 = +[NSMutableDictionary dictionary];
  sharedItemsMap = self->_sharedItemsMap;
  self->_sharedItemsMap = v22;

  v24 = +[NSUUID UUID];
  uUIDString = [v24 UUIDString];
  v26 = [uUIDString substringWithRange:{24, 12}];
  sessionID = self->_sessionID;
  self->_sessionID = v26;

  self->_browserPaused = 1;
  self->_canShowNoContentView = [(AirDropBrowserViewController *)self showNoContentView];
  [(AirDropBrowserViewController *)self startBrowsing];
  v28 = [UIBlurEffect effectWithStyle:9];
  v144 = [[UIVisualEffectView alloc] initWithEffect:v28];
  [(AirDropBrowserViewController *)self setBackgroundView:?];
  backgroundView = [(AirDropBrowserViewController *)self backgroundView];
  [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(AirDropBrowserViewController *)self view];
  backgroundView2 = [(AirDropBrowserViewController *)self backgroundView];
  [view2 addSubview:backgroundView2];

  v32 = objc_alloc_init(AirDropNoContentView);
  [(AirDropBrowserViewController *)self setAirDropNoContentView:v32];

  airDropNoContentView = [(AirDropBrowserViewController *)self airDropNoContentView];
  [airDropNoContentView setDelegate:self];

  airDropNoContentView2 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [airDropNoContentView2 setAlpha:0.0];

  airDropNoContentView3 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [airDropNoContentView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(AirDropBrowserViewController *)self view];
  airDropNoContentView4 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [view3 addSubview:airDropNoContentView4];

  if (IsAppleInternalBuild())
  {
    v38 = CFPreferencesGetAppBooleanValue(@"ShowMagicHead", @"com.apple.Sharing", 0) != 0;
  }

  else
  {
    v38 = 0;
  }

  v39 = magic_head_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D794(v38, v39);
  }

  if (v38)
  {
    v40 = objc_opt_new();
    [(AirDropBrowserViewController *)self setRealNamesWithTransfersStartedFromMagicHead:v40];

    v41 = objc_opt_new();
    [(AirDropBrowserViewController *)self setMagicHeadUUID:v41];

    v42 = [[SFAirDropMagicHeadViewController alloc] initWithNibName:0 bundle:0];
    [(AirDropBrowserViewController *)self setMagicHeadVC:v42];

    magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
    [magicHeadVC setNumberOfDots:25];

    magicHeadVC2 = [(AirDropBrowserViewController *)self magicHeadVC];
    [magicHeadVC2 setDotsRadius:2.0];

    magicHeadVC3 = [(AirDropBrowserViewController *)self magicHeadVC];
    [magicHeadVC3 setDelegate:self];
  }

  v46 = [UICollectionView alloc];
  view4 = [(AirDropBrowserViewController *)self view];
  [view4 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  airDropCollectionViewLayout = [(AirDropBrowserViewController *)self airDropCollectionViewLayout];
  v57 = [v46 initWithFrame:airDropCollectionViewLayout collectionViewLayout:{v49, v51, v53, v55}];
  [(AirDropBrowserViewController *)self setCollectionView:v57];

  collectionView = [(AirDropBrowserViewController *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView3 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView3 setBackgroundColor:0];

  collectionView4 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"OtherCellID"];

  collectionView5 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PersonCellID"];

  collectionView6 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView6 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderID"];

  collectionView7 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView7 setAlwaysBounceVertical:1];

  collectionView8 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView8 setAllowsMultipleSelection:1];

  collectionView9 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView9 setShowsHorizontalScrollIndicator:0];

  collectionView10 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView10 setShowsVerticalScrollIndicator:0];

  collectionView11 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView11 setRemembersLastFocusedIndexPath:1];

  view5 = [(AirDropBrowserViewController *)self view];
  collectionView12 = [(AirDropBrowserViewController *)self collectionView];
  [view5 addSubview:collectionView12];

  v71 = objc_opt_new();
  backgroundView3 = [(AirDropBrowserViewController *)self backgroundView];

  if (backgroundView3)
  {
    backgroundView4 = [(AirDropBrowserViewController *)self backgroundView];
    leadingAnchor = [backgroundView4 leadingAnchor];
    view6 = [(AirDropBrowserViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v77 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v71 addObject:v77];

    backgroundView5 = [(AirDropBrowserViewController *)self backgroundView];
    trailingAnchor = [backgroundView5 trailingAnchor];
    view7 = [(AirDropBrowserViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v71 addObject:v82];

    backgroundView6 = [(AirDropBrowserViewController *)self backgroundView];
    topAnchor = [backgroundView6 topAnchor];
    view8 = [(AirDropBrowserViewController *)self view];
    topAnchor2 = [view8 topAnchor];
    v87 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v71 addObject:v87];

    backgroundView7 = [(AirDropBrowserViewController *)self backgroundView];
    bottomAnchor = [backgroundView7 bottomAnchor];
    view9 = [(AirDropBrowserViewController *)self view];
    bottomAnchor2 = [view9 bottomAnchor];
    v92 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v71 addObject:v92];
  }

  collectionView13 = [(AirDropBrowserViewController *)self collectionView];
  leftAnchor = [collectionView13 leftAnchor];
  view10 = [(AirDropBrowserViewController *)self view];
  leftAnchor2 = [view10 leftAnchor];
  v97 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v71 addObject:v97];

  collectionView14 = [(AirDropBrowserViewController *)self collectionView];
  rightAnchor = [collectionView14 rightAnchor];
  view11 = [(AirDropBrowserViewController *)self view];
  rightAnchor2 = [view11 rightAnchor];
  v102 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v71 addObject:v102];

  collectionView15 = [(AirDropBrowserViewController *)self collectionView];
  bottomAnchor3 = [collectionView15 bottomAnchor];
  view12 = [(AirDropBrowserViewController *)self view];
  bottomAnchor4 = [view12 bottomAnchor];
  v107 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v71 addObject:v107];

  collectionViewTopConstraint = [(AirDropBrowserViewController *)self collectionViewTopConstraint];

  if (!collectionViewTopConstraint)
  {
    collectionView16 = [(AirDropBrowserViewController *)self collectionView];
    topAnchor3 = [collectionView16 topAnchor];
    view13 = [(AirDropBrowserViewController *)self view];
    topAnchor4 = [view13 topAnchor];
    v113 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [(AirDropBrowserViewController *)self setCollectionViewTopConstraint:v113];
  }

  airDropNoContentView5 = [(AirDropBrowserViewController *)self airDropNoContentView];
  leadingAnchor3 = [airDropNoContentView5 leadingAnchor];
  view14 = [(AirDropBrowserViewController *)self view];
  leadingAnchor4 = [view14 leadingAnchor];
  v118 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:24.0];
  [v71 addObject:v118];

  airDropNoContentView6 = [(AirDropBrowserViewController *)self airDropNoContentView];
  trailingAnchor3 = [airDropNoContentView6 trailingAnchor];
  view15 = [(AirDropBrowserViewController *)self view];
  trailingAnchor4 = [view15 trailingAnchor];
  v123 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-24.0];
  [v71 addObject:v123];

  airDropNoContentView7 = [(AirDropBrowserViewController *)self airDropNoContentView];
  view16 = [(AirDropBrowserViewController *)self view];
  v126 = [NSLayoutConstraint constraintWithItem:airDropNoContentView7 attribute:10 relatedBy:0 toItem:view16 attribute:10 multiplier:0.95 constant:0.0];
  [v71 addObject:v126];

  [NSLayoutConstraint activateConstraints:v71];
  collectionViewTopConstraint2 = [(AirDropBrowserViewController *)self collectionViewTopConstraint];
  [collectionViewTopConstraint2 setActive:1];

  objc_initWeak(&location, self);
  v128 = [UICollectionViewDiffableDataSource alloc];
  collectionView17 = [(AirDropBrowserViewController *)self collectionView];
  v147[0] = _NSConcreteStackBlock;
  v147[1] = 3221225472;
  v147[2] = sub_100002FE0;
  v147[3] = &unk_10002CF78;
  objc_copyWeak(&v148, &location);
  v130 = [v128 initWithCollectionView:collectionView17 cellProvider:v147];

  v145[0] = _NSConcreteStackBlock;
  v145[1] = 3221225472;
  v145[2] = sub_1000032A4;
  v145[3] = &unk_10002CFA0;
  objc_copyWeak(&v146, &location);
  [v130 setSupplementaryViewProvider:v145];
  [(AirDropBrowserViewController *)self setDataSource:v130];
  view17 = [(AirDropBrowserViewController *)self view];
  [view17 setClipsToBounds:1];

  v132 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v132 userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v134 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"donePressed"];
    navigationItem = [(AirDropBrowserViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v134];
  }

  else
  {
    v134 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"donePressed"];
    navigationItem = [(AirDropBrowserViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v134];
  }

  navigationItem2 = [(AirDropBrowserViewController *)self navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  v137 = objc_alloc_init(UINavigationBarAppearance);
  [v137 configureWithTransparentBackground];
  v138 = +[UIColor separatorColor];
  [v137 setShadowColor:v138];

  navigationItem3 = [(AirDropBrowserViewController *)self navigationItem];
  [navigationItem3 setScrollEdgeAppearance:v137];

  v140 = objc_alloc_init(UINavigationBarAppearance);
  [v140 configureWithDefaultBackground];
  v141 = +[UIColor separatorColor];
  [v140 setShadowColor:v141];

  navigationItem4 = [(AirDropBrowserViewController *)self navigationItem];
  [navigationItem4 setStandardAppearance:v140];

  navigationItem5 = [(AirDropBrowserViewController *)self navigationItem];
  [navigationItem5 _setManualScrollEdgeAppearanceProgress:1.0];

  objc_destroyWeak(&v146);
  objc_destroyWeak(&v148);
  objc_destroyWeak(&location);
}

- (id)airDropCollectionViewLayout
{
  objc_initWeak(&location, self);
  v2 = [UICollectionViewCompositionalLayout alloc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003534;
  v5[3] = &unk_10002CFC8;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  currentSnapshot = [(AirDropBrowserViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  section = [pathCopy section];

  v11 = [sectionIdentifiers objectAtIndexedSubscript:section];

  if ([v11 isEqualToString:@"OtherSection"])
  {
    magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
    v13 = magicHeadVC;
    if (magicHeadVC)
    {
      view = [magicHeadVC view];
      contentView = [cellCopy contentView];
      [contentView bounds];
      [view setFrame:?];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      subviews = [contentView subviews];
      [subviews makeObjectsPerformSelector:"removeFromSuperview"];

      [v13 willMoveToParentViewController:self];
      [(AirDropBrowserViewController *)self addChildViewController:v13];
      [contentView addSubview:view];
      [v13 didMoveToParentViewController:self];
      v17 = objc_opt_new();
      leftAnchor = [view leftAnchor];
      leftAnchor2 = [contentView leftAnchor];
      v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [v17 addObject:v20];

      rightAnchor = [view rightAnchor];
      rightAnchor2 = [contentView rightAnchor];
      v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [v17 addObject:v23];

      topAnchor = [view topAnchor];
      topAnchor2 = [contentView topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:22.0];
      [v17 addObject:v26];

      bottomAnchor = [view bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v17 addObject:v29];

      [NSLayoutConstraint activateConstraints:v17];
    }
  }
}

- (void)viewLayoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = AirDropBrowserViewController;
  [(AirDropBrowserViewController *)&v5 viewLayoutMarginsDidChange];
  collectionView = [(AirDropBrowserViewController *)self collectionView];
  airDropCollectionViewLayout = [(AirDropBrowserViewController *)self airDropCollectionViewLayout];
  [collectionView setCollectionViewLayout:airDropCollectionViewLayout];
}

- (void)startBrowsing
{
  if (self->_browserPaused)
  {
    v12 = v2;
    self->_browserPaused = 0;
    if (self->_browser)
    {
      [(AirDropBrowserViewController *)self stopBrowsing];
    }

    [(AirDropBrowserViewController *)self _startTelemetry:v3];
    v7 = objc_alloc_init(SFAirDropBrowser);
    browser = self->_browser;
    self->_browser = v7;

    [(SFAirDropBrowser *)self->_browser setSessionID:self->_sessionID];
    [(SFAirDropBrowser *)self->_browser setDiffableDelegate:self];
    [(SFAirDropBrowser *)self->_browser start];
    v9 = objc_alloc_init(SFWirelessSettingsController);
    wirelessSettingsController = self->_wirelessSettingsController;
    self->_wirelessSettingsController = v9;

    v11 = self->_wirelessSettingsController;

    [(SFWirelessSettingsController *)v11 setDelegate:self];
  }
}

- (void)stopBrowsing
{
  if (!self->_browserPaused)
  {
    self->_browserPaused = 1;
    [(AirDropBrowserViewController *)self unsubscribeToProgresses];
    [(SFAirDropBrowser *)self->_browser stop];
    [(SFAirDropBrowser *)self->_browser setDiffableDelegate:0];
    browser = self->_browser;
    self->_browser = 0;

    magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
    [magicHeadVC setEnabled:0];
  }
}

- (void)donePressed
{
  airDropDelegate = [(AirDropBrowserViewController *)self airDropDelegate];
  [airDropDelegate airDropViewServiceDidRequestDismissal];

  [(AirDropBrowserViewController *)self stopBrowsing];
}

- (void)noContentViewActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  airDropNoContentView = [(AirDropBrowserViewController *)self airDropNoContentView];

  if (airDropNoContentView == triggeredCopy)
  {
    [(AirDropBrowserViewController *)self setCanShowNoContentView:0];
    [(SFWirelessSettingsController *)self->_wirelessSettingsController setWifiEnabled:1];
    [(SFWirelessSettingsController *)self->_wirelessSettingsController setBluetoothEnabled:1];
    [(SFWirelessSettingsController *)self->_wirelessSettingsController setWirelessAccessPointEnabled:0];
    objc_initWeak(&location, self);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10000440C;
    v9 = &unk_10002CFF0;
    objc_copyWeak(&v10, &location);
    [UIView animateWithDuration:&v6 animations:0.25];
    [(AirDropBrowserViewController *)self performSelector:"allowContentViewToShow" withObject:0 afterDelay:2.0, v6, v7, v8, v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)wirelessSettingsDidChange:(id)change
{
  changeCopy = change;
  isWifiEnabled = [changeCopy isWifiEnabled];
  isBluetoothEnabled = [changeCopy isBluetoothEnabled];
  isWirelessAccessPointEnabled = [changeCopy isWirelessAccessPointEnabled];
  deviceSupportsWAPI = [changeCopy deviceSupportsWAPI];
  ultraWideBandStatus = [changeCopy ultraWideBandStatus];
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "no";
    if (ultraWideBandStatus != 1)
    {
      v11 = "yes";
    }

    *buf = 136315138;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UWB Status in AirDrop is %s", buf, 0xCu);
  }

  v12 = ultraWideBandStatus != 1;

  currentSnapshot = [(AirDropBrowserViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  v15 = [sectionIdentifiers containsObject:@"OtherSection"];

  if ((v15 & v12 & 1) == 0)
  {
    [(AirDropBrowserViewController *)self layoutAirDropCollectionViewAnimated:1];
  }

  if (isWirelessAccessPointEnabled)
  {
    airDropNoContentView = [(AirDropBrowserViewController *)self airDropNoContentView];
    [airDropNoContentView setViewType:7];
  }

  else
  {
    airDropNoContentView2 = [(AirDropBrowserViewController *)self airDropNoContentView];
    airDropNoContentView = airDropNoContentView2;
    if ((isWifiEnabled | isBluetoothEnabled))
    {
      if (isWifiEnabled)
      {
        if (isBluetoothEnabled)
        {
          [airDropNoContentView2 setViewType:0];
        }

        else
        {
          [airDropNoContentView2 setViewType:3];
        }
      }

      else if (deviceSupportsWAPI)
      {
        [airDropNoContentView2 setViewType:2];
      }

      else
      {
        [airDropNoContentView2 setViewType:1];
      }
    }

    else if (deviceSupportsWAPI)
    {
      [airDropNoContentView2 setViewType:5];
    }

    else
    {
      [airDropNoContentView2 setViewType:4];
    }
  }

  objc_initWeak(buf, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100004784;
  v21 = &unk_10002D018;
  v23 = isWifiEnabled;
  v24 = isBluetoothEnabled;
  v25 = isWirelessAccessPointEnabled;
  objc_copyWeak(&v22, buf);
  [UIView animateWithDuration:&v18 animations:0.25];
  [(AirDropBrowserViewController *)self performSelector:"allowContentViewToShow" withObject:0 afterDelay:2.0, v18, v19, v20, v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)browserDidUpdateMePeople:(id)people knownPeople:(id)knownPeople unknownPeople:(id)unknownPeople
{
  unknownPeopleCopy = unknownPeople;
  knownPeopleCopy = knownPeople;
  [(AirDropBrowserViewController *)self setMePeople:people];
  [(AirDropBrowserViewController *)self setKnownPeople:knownPeopleCopy];

  [(AirDropBrowserViewController *)self setUnknownPeople:unknownPeopleCopy];
  currentSnapshot = [(AirDropBrowserViewController *)self currentSnapshot];
  v11 = [currentSnapshot numberOfItems] != 0;

  [(AirDropBrowserViewController *)self layoutAirDropCollectionViewAnimated:v11];
  v12 = [NSMutableArray alloc];
  mePeople = [(AirDropBrowserViewController *)self mePeople];
  v14 = [mePeople count];
  knownPeople = [(AirDropBrowserViewController *)self knownPeople];
  v16 = &v14[[knownPeople count]];
  unknownPeople = [(AirDropBrowserViewController *)self unknownPeople];
  v22 = [v12 initWithCapacity:{objc_msgSend(unknownPeople, "count") + v16}];

  mePeople2 = [(AirDropBrowserViewController *)self mePeople];
  [v22 addObjectsFromArray:mePeople2];

  knownPeople2 = [(AirDropBrowserViewController *)self knownPeople];
  [v22 addObjectsFromArray:knownPeople2];

  magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
  [magicHeadVC updateNodes:v22 withPersonToProgress:self->_personToProgress];

  unknownPeople2 = [(AirDropBrowserViewController *)self unknownPeople];
  [v22 addObjectsFromArray:unknownPeople2];

  [(AirDropBrowserViewController *)self _collectTelemetryForPeople:v22];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  collectionView = [(AirDropBrowserViewController *)self collectionView];

  v5 = scrollCopy;
  if (collectionView == scrollCopy)
  {
    navigationController = [(AirDropBrowserViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v9 = v8;

    [scrollCopy contentOffset];
    v10 = 0.0;
    if (v11 > -v9)
    {
      [scrollCopy contentOffset];
      v10 = fmin((v9 + v12) * 10.0, 100.0) / 100.0;
    }

    navigationItem = [(AirDropBrowserViewController *)self navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceProgress:v10];

    v5 = scrollCopy;
  }
}

- (id)cellForPerson:(id)person
{
  dataSource = self->_dataSource;
  nodeIdentifier = [person nodeIdentifier];
  v6 = [(UICollectionViewDiffableDataSource *)dataSource indexPathForItemIdentifier:nodeIdentifier];

  collectionView = [(AirDropBrowserViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v6];

  return v8;
}

- (void)startTransferForPeople:(id)people
{
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = people;
  v44 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v44)
  {
    v43 = *v56;
    *&v3 = 138412546;
    v40 = v3;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v55 + 1) + 8 * i);
        [(AirDropBrowserViewController *)self _emitTelemetryForPerson:v40];
        personToSharedItemsRequestID = self->_personToSharedItemsRequestID;
        realName = [v46 realName];
        v6 = [(NSMutableDictionary *)personToSharedItemsRequestID objectForKeyedSubscript:realName];

        if (v6)
        {
          previewImage = [(NSMutableDictionary *)self->_sharedItemsRequestIDToPreviewPhoto objectForKeyedSubscript:v6];
          v48 = +[NSMutableArray array];
          v8 = self->_cachedSharedItems;
          objc_sync_enter(v8);
          v9 = [(NSMutableOrderedSet *)self->_cachedSharedItems copy];
          objc_sync_exit(v8);

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = v9;
          v10 = [v49 countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v10)
          {
            v11 = 0;
            v12 = 0;
            payloadDescription = 0;
            v14 = *v52;
            while (1)
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v52 != v14)
                {
                  objc_enumerationMutation(v49);
                }

                v16 = *(*(&v51 + 1) + 8 * j);
                identifer = [v16 identifer];
                if (identifer == [v6 integerValue])
                {
                  v18 = [v16 URL];
                  v19 = v18 == 0;

                  if (!v19)
                  {
                    if (previewImage)
                    {
                      if (!payloadDescription)
                      {
LABEL_18:
                        payloadDescription = [v16 payloadDescription];
                      }
                    }

                    else
                    {
                      previewImage = [v16 previewImage];
                      if (!payloadDescription)
                      {
                        goto LABEL_18;
                      }
                    }

                    wasString = [v16 wasString];
                    [v48 addObject:v16];
                    v11 |= wasString ^ 1;
                    v12 |= wasString;
                    continue;
                  }
                }
              }

              v10 = [v49 countByEnumeratingWithState:&v51 objects:v63 count:16];
              if (!v10)
              {
                v21 = v12 & v11;
                goto LABEL_26;
              }
            }
          }

          v21 = 0;
          payloadDescription = 0;
LABEL_26:

          v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v48 count]);
          if ([v48 count])
          {
            v24 = 0;
            do
            {
              v25 = [v48 objectAtIndexedSubscript:v24];
              v26 = v25;
              if ((v21 & 1) == 0 || ([v25 wasString] & 1) == 0)
              {
                v27 = [v26 URL];
                [v23 addObject:v27];
              }

              ++v24;
            }

            while ([v48 count] > v24);
          }

          v50 = 0;
          v28 = [(AirDropBrowserViewController *)self isValidPayload:v23 toPerson:v46 invalidMessage:&v50];
          v29 = v50;
          if (v28)
          {
            sendingAppBundleID = self->_sendingAppBundleID;
            sessionID = self->_sessionID;
            v32 = SFScaleAndRotateImage();
            v33 = v32;
            [v46 startSendForBundleID:sendingAppBundleID sessionID:sessionID items:v23 description:payloadDescription previewImage:objc_msgSend(v32 fromShareSheet:{"CGImage"), 0}];
          }

          else
          {
            v32 = objc_opt_new();
            v34 = SFLocalizedStringForKey();
            [v32 setTitle:v34];

            [v32 setMessage:v29];
            v35 = SFLocalizedStringForKey();
            [v32 setDefaultButtonTitle:v35];

            [v32 present];
            v36 = [(AirDropBrowserViewController *)self cellForPerson:v46];

            [v36 userDidCancel];
            collectionView = [(AirDropBrowserViewController *)self collectionView];
            collectionView2 = [(AirDropBrowserViewController *)self collectionView];
            v39 = [collectionView2 indexPathForCell:v36];
            [collectionView deselectItemAtIndexPath:v39 animated:0];

            v29 = v36;
          }
        }

        else
        {
          previewImage = airdrop_ui_log();
          if (os_log_type_enabled(previewImage, OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(a2);
            *buf = v40;
            v60 = v22;
            v61 = 2112;
            v62 = v46;
            _os_log_error_impl(&_mh_execute_header, previewImage, OS_LOG_TYPE_ERROR, "%@ failed to find request ID for %@", buf, 0x16u);
          }
        }
      }

      v44 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v44);
  }
}

- (BOOL)isValidPayload:(id)payload toPerson:(id)person invalidMessage:(id *)message
{
  payloadCopy = payload;
  personCopy = person;
  v72 = 0;
  v73 = 0;
  SFFakeFilesAndItemsArrayForURLs();
  v8 = 0;
  v9 = 0;
  v71 = 0;
  v70 = 0;
  v58 = SFContentTypes();
  v56 = 0;
  v57 = v9;
  if (([personCopy supportsPasses] & 1) == 0)
  {
    v59 = personCopy;
    v54 = payloadCopy;
    v55 = v8;
    firstObject = [v8 firstObject];
    v21 = [firstObject objectForKeyedSubscript:kSFOperationFileNameKey];
    pathExtension = [v21 pathExtension];

    [v58 allKeys];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v69 = 0u;
    v22 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v67;
      v25 = 1;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v66 + 1) + 8 * i);
          if (SFIsPass())
          {
            isUnknown = [v59 isUnknown];
            v29 = @"TRANSFER_TO_PERSON_NO_WALLET_TEXT";
            if (isUnknown)
            {
              v29 = @"TRANSFER_TO_DEVICE_NO_WALLET_TEXT";
            }

            v30 = v29;
            v31 = SFLocalizedStringForKey();
            SFLocalizedStringForKey();
            v33 = v32 = pathExtension;

            displayName = [v59 displayName];
            v35 = [NSString stringWithFormat:v33, displayName];
            *message = [NSString stringWithFormat:v31, v35];

            pathExtension = v32;
            v25 = 0;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v23);
    }

    else
    {
      v25 = 1;
    }

    payloadCopy = v54;
    goto LABEL_27;
  }

  if ([personCopy supportsFMF])
  {
    if (![personCopy supportsCredentials] || objc_msgSend(personCopy, "isUnknown"))
    {
      firstObject2 = [v9 firstObject];
      scheme = [firstObject2 scheme];
      pathExtension = [scheme lowercaseString];

      MyFriendsLink = SFIsCredential();
      if (MyFriendsLink)
      {
        firstObject3 = [v57 firstObject];
        SFIsPasskeyCredentialLink();

        v15 = SFLocalizedStringForKey();
        v16 = SFLocalizedStringForKeyInStringsFileNamed();
        *message = [NSString stringWithFormat:v15, v16];

        v75[0] = @"supportsCredentials";
        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [personCopy supportsCredentials]);
        v75[1] = @"unknownPeer";
        v76[0] = v17;
        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [personCopy isUnknown]);
        v76[1] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];

        SFMetricsLog();
LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    pathExtension = payloadCopy;
    v46 = [pathExtension countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (!v46)
    {
      v25 = 1;
      goto LABEL_28;
    }

    v47 = v46;
    v55 = v8;
    v59 = personCopy;
    v48 = *v63;
    while (2)
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(pathExtension);
        }

        v50 = *(*(&v62 + 1) + 8 * j);
        v51 = +[LSApplicationWorkspace defaultWorkspace];
        if ([v51 isApplicationAvailableToOpenURL:v50 error:0])
        {
        }

        else
        {
          v52 = +[LSApplicationWorkspace defaultWorkspace];
          v53 = [v52 isApplicationAvailableToOpenURL:v50 includePrivateURLSchemes:1 error:0];

          if (v53)
          {
            [pathExtension count];
            SFLocalizedStringForKey();
            *message = v25 = 0;
            goto LABEL_27;
          }
        }
      }

      v47 = [pathExtension countByEnumeratingWithState:&v62 objects:v74 count:16];
      v25 = 1;
      if (v47)
      {
        continue;
      }

      break;
    }

LABEL_27:
    personCopy = v59;
    v8 = v55;
    goto LABEL_28;
  }

  firstObject4 = [v9 firstObject];
  scheme2 = [firstObject4 scheme];
  pathExtension = [scheme2 lowercaseString];

  MyFriendsLink = SFIsFindMyFriendsLink();
  if (MyFriendsLink)
  {
    isUnknown2 = [personCopy isUnknown];
    v39 = @"TRANSFER_TO_PERSON_NO_FMF_TEXT";
    if (isUnknown2)
    {
      v39 = @"TRANSFER_TO_DEVICE_NO_FMF_TEXT";
    }

    v40 = pathExtension;
    v41 = v39;
    v19 = SFLocalizedStringForKey();
    v42 = SFLocalizedStringForKey();

    displayName2 = [personCopy displayName];
    v44 = [NSString stringWithFormat:v42, displayName2];
    *message = [NSString stringWithFormat:v19, v44];

    pathExtension = v40;
    goto LABEL_23;
  }

LABEL_24:
  v25 = MyFriendsLink ^ 1;
LABEL_28:

  return v25 & 1;
}

- (void)subscribeToProgresses
{
  if (!self->_progressToken)
  {
    v3 = [NSProgress sf_publishingKeyForApp:self->_sendingAppBundleID sessionID:self->_sessionID];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100006260;
    v6[3] = &unk_10002D090;
    v6[4] = self;
    v4 = [NSProgress _addSubscriberForCategory:v3 usingPublishingHandler:v6];
    progressToken = self->_progressToken;
    self->_progressToken = v4;
  }
}

- (void)unsubscribeToProgresses
{
  if (self->_progressToken)
  {
    [NSProgress _removeSubscriber:?];
    progressToken = self->_progressToken;
    self->_progressToken = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allKeys = [(NSMutableDictionary *)self->_personToProgress allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        [(AirDropBrowserViewController *)self unpublishedProgressForPersonWithRealName:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_personToProgress removeAllObjects];
}

- (void)subscribedProgress:(id)progress forPersonWithRealName:(id)name
{
  progressCopy = progress;
  nameCopy = name;
  v20 = progressCopy;
  [(NSMutableDictionary *)self->_personToProgress setObject:progressCopy forKeyedSubscript:nameCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  collectionView = [(AirDropBrowserViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v10 = [visibleCells countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(visibleCells);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          person = [v14 person];
          realName = [person realName];
          v17 = [realName isEqualToString:nameCopy];

          if (v17)
          {
            [v14 setProgress:v20];
          }
        }
      }

      v11 = [visibleCells countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
  v19 = magicHeadVC;
  if (magicHeadVC)
  {
    [magicHeadVC subscribedProgress:v20 forPersonWithRealName:nameCopy];
  }
}

- (void)unpublishedProgressForPersonWithRealName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_personToProgress objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5)
  {
    sf_transferState = [v5 sf_transferState];
    if ((sf_transferState - 4) <= 2)
    {
      v8 = [NSNumber numberWithInteger:sf_transferState];
      [(NSMutableDictionary *)self->_personToStoredTransferFinalState setObject:v8 forKeyedSubscript:nameCopy];
    }
  }

  v19 = v6;
  [(NSMutableDictionary *)self->_personToProgress removeObjectForKey:nameCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  collectionView = [(AirDropBrowserViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v11 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(visibleCells);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          person = [v15 person];
          realName = [person realName];
          v18 = [realName isEqualToString:nameCopy];

          if (v18)
          {
            [v15 setProgress:0];
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)personCollectionViewCellDidTerminateTransfer:(id)transfer
{
  transferCopy = transfer;
  selectedNodes = self->_selectedNodes;
  v13 = transferCopy;
  person = [transferCopy person];
  LODWORD(selectedNodes) = [(NSMutableSet *)selectedNodes containsObject:person];

  if (selectedNodes)
  {
    v7 = self->_selectedNodes;
    person2 = [v13 person];
    [(NSMutableSet *)v7 removeObject:person2];
  }

  collectionView = [(AirDropBrowserViewController *)self collectionView];
  collectionView2 = [(AirDropBrowserViewController *)self collectionView];
  v11 = [collectionView2 indexPathForCell:v13];
  [collectionView deselectItemAtIndexPath:v11 animated:0];

  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);
  [WeakRetained airDropViewServiceDidFinishTransferWithSuccess:0];
}

- (void)personCollectionViewCellDidStartTransfer:(id)transfer
{
  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);
  [WeakRetained airDropViewServiceDidStartTransfer];
}

- (void)personCollectionViewCellDidFinishTransfer:(id)transfer
{
  transferCopy = transfer;
  selectedNodes = self->_selectedNodes;
  v13 = transferCopy;
  person = [transferCopy person];
  LODWORD(selectedNodes) = [(NSMutableSet *)selectedNodes containsObject:person];

  if (selectedNodes)
  {
    v7 = self->_selectedNodes;
    person2 = [v13 person];
    [(NSMutableSet *)v7 removeObject:person2];
  }

  collectionView = [(AirDropBrowserViewController *)self collectionView];
  collectionView2 = [(AirDropBrowserViewController *)self collectionView];
  v11 = [collectionView2 indexPathForCell:v13];
  [collectionView deselectItemAtIndexPath:v11 animated:0];

  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);
  [WeakRetained airDropViewServiceDidFinishTransferWithSuccess:1];
}

- (void)magicHeadViewControllerToggleSelectionForNode:(id)node
{
  dataSource = self->_dataSource;
  nodeIdentifier = [node nodeIdentifier];
  v10 = [(UICollectionViewDiffableDataSource *)dataSource indexPathForItemIdentifier:nodeIdentifier];

  collectionView = [(AirDropBrowserViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:v10];

  collectionView2 = [(AirDropBrowserViewController *)self collectionView];
  [collectionView2 selectItemAtIndexPath:v10 animated:0 scrollPosition:0];

  [v7 setSelected:1];
  collectionView3 = [(AirDropBrowserViewController *)self collectionView];
  [(AirDropBrowserViewController *)self collectionView:collectionView3 didSelectItemAtIndexPath:v10 cellInitiator:0];
}

- (void)magicHeadViewControllerDidStartTransferForNode:(id)node
{
  v4 = [(AirDropBrowserViewController *)self cellForPerson:node];
  [(AirDropBrowserViewController *)self personCollectionViewCellDidStartTransfer:v4];
}

- (void)magicHeadViewControllerDidTerminateTransferForNode:(id)node
{
  v4 = [(AirDropBrowserViewController *)self cellForPerson:node];
  [(AirDropBrowserViewController *)self personCollectionViewCellDidTerminateTransfer:v4];
}

- (void)magicHeadViewControllerDidFinishTransferForNode:(id)node
{
  v4 = [(AirDropBrowserViewController *)self cellForPerson:node];
  [(AirDropBrowserViewController *)self personCollectionViewCellDidFinishTransfer:v4];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AirDropBrowserViewController;
  coordinatorCopy = coordinator;
  [(AirDropBrowserViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006DBC;
  v8[3] = &unk_10002D0B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_10002D0F8];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  currentSnapshot = [(AirDropBrowserViewController *)self currentSnapshot];
  sectionIdentifiers = [currentSnapshot sectionIdentifiers];
  v9 = [sectionIdentifiers count];

  if (section >= v9)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    currentSnapshot2 = [(AirDropBrowserViewController *)self currentSnapshot];
    sectionIdentifiers2 = [currentSnapshot2 sectionIdentifiers];
    v12 = [sectionIdentifiers2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    v13 = [v12 isEqualToString:@"OtherSection"] ^ 1;
  }

  return v13;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  delegate = [viewCopy delegate];
  v8 = [delegate collectionView:viewCopy shouldHighlightItemAtIndexPath:pathCopy];

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path cellInitiator:(BOOL)initiator
{
  initiatorCopy = initiator;
  viewCopy = view;
  pathCopy = path;
  nodeIDToNode = [(SFAirDropBrowser *)self->_browser nodeIDToNode];
  v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  v12 = [nodeIDToNode objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [viewCopy cellForItemAtIndexPath:pathCopy];
    if (v13)
    {
      realName = [v12 realName];
      v15 = airdrop_ui_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        displayName = [v12 displayName];
        *buf = 138412290;
        v38 = displayName;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Node with display name %@ selected by user", buf, 0xCu);
      }

      if (([(NSMutableSet *)self->_selectedNodes containsObject:v12]& 1) != 0)
      {
        v17 = airdrop_ui_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Node already selected", buf, 2u);
        }

        [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
        [v13 setSelected:0];
        [(AirDropBrowserViewController *)self cancelTransferForCell:v13];
        realNamesWithTransfersStartedFromMagicHead = [(AirDropBrowserViewController *)self realNamesWithTransfersStartedFromMagicHead];
        [realNamesWithTransfersStartedFromMagicHead addObject:realName];

        [v13 setCellState:0];
        [viewCopy setRemembersLastFocusedIndexPath:0];
        [viewCopy setNeedsFocusUpdate];
        [viewCopy updateFocusIfNeeded];
        [viewCopy setRemembersLastFocusedIndexPath:1];
      }

      else
      {
        [(NSMutableDictionary *)self->_personToStoredTransferFinalState removeObjectForKey:realName];
        realNamesWithTransfersStartedFromMagicHead2 = [(AirDropBrowserViewController *)self realNamesWithTransfersStartedFromMagicHead];
        v20 = realNamesWithTransfersStartedFromMagicHead2;
        if (initiatorCopy)
        {
          [realNamesWithTransfersStartedFromMagicHead2 removeObject:realName];

          [v13 userDidSelect];
          magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
          [magicHeadVC resetTransferStateWithRealName:realName];
        }

        else
        {
          [realNamesWithTransfersStartedFromMagicHead2 addObject:realName];

          magicHeadVC2 = [(AirDropBrowserViewController *)self magicHeadVC];
          [magicHeadVC2 userSelectedWithRealName:realName];

          [v13 resetTransferState];
        }

        [(NSMutableSet *)self->_selectedNodes addObject:v12];
        v23 = [[SFShareSheetRecipient alloc] initWithNode:v12];
        airDropDelegate = [(AirDropBrowserViewController *)self airDropDelegate];
        [airDropDelegate airDropViewServiceWillStartTransferToRecipient:v23];

        if (self->_itemsReady)
        {
          v25 = [NSNumber numberWithInteger:self->_sharedItemsRequestID];
          [(NSMutableDictionary *)self->_personToSharedItemsRequestID setObject:v25 forKeyedSubscript:realName];

          v36 = v12;
          v26 = [NSArray arrayWithObjects:&v36 count:1];
          [(AirDropBrowserViewController *)self startTransferForPeople:v26];
        }

        else if (self->_itemsRequested)
        {
          v26 = [NSNumber numberWithInteger:self->_sharedItemsRequestID];
          [(NSMutableDictionary *)self->_personToSharedItemsRequestID setObject:v26 forKeyedSubscript:realName];
        }

        else
        {
          self->_itemsRequested = 1;
          v27 = self->_sharedItemsRequestID + 1;
          self->_sharedItemsRequestID = v27;
          v28 = [NSNumber numberWithInteger:v27];
          [(NSMutableDictionary *)self->_personToSharedItemsRequestID setObject:v28 forKeyedSubscript:realName];

          self->_generatedPreviews = 0;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1000074C8;
          v33[3] = &unk_10002D148;
          v33[4] = self;
          v33[5] = v27;
          v29 = objc_retainBlock(v33);
          v34 = SFAirDropActivityMaxPreviewsKey;
          v35 = &off_10002E200;
          v30 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100007728;
          v31[3] = &unk_10002D170;
          v32 = v29;
          v26 = v29;
          [(AirDropBrowserViewController *)self requestingSharedItemsWithOptions:v30 completionHandler:v31];
        }

        [viewCopy setRemembersLastFocusedIndexPath:0];
        [viewCopy setNeedsFocusUpdate];
        [viewCopy updateFocusIfNeeded];
        [viewCopy setRemembersLastFocusedIndexPath:1];
      }
    }

    else
    {
      realName = airdrop_ui_log();
      if (os_log_type_enabled(realName, OS_LOG_TYPE_ERROR))
      {
        sub_10001D8A4();
      }
    }
  }

  else
  {
    v13 = airdrop_ui_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001D8E4();
    }
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  browser = self->_browser;
  viewCopy = view;
  nodeIDToNode = [(SFAirDropBrowser *)browser nodeIDToNode];
  v10 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  v11 = [nodeIDToNode objectForKeyedSubscript:v10];

  v12 = airdrop_ui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [v11 displayName];
    v15 = 138412290;
    v16 = displayName;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Node with display name %@ deselected by user", &v15, 0xCu);
  }

  [viewCopy layoutIfNeeded];
  v14 = [viewCopy cellForItemAtIndexPath:pathCopy];

  [(AirDropBrowserViewController *)self cancelTransferForCell:v14];
}

- (void)cancelTransferForCell:(id)cell
{
  cellCopy = cell;
  v5 = airdrop_ui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel transfer.", v14, 2u);
  }

  [cellCopy userDidCancel];
  selectedNodes = self->_selectedNodes;
  person = [cellCopy person];
  LODWORD(selectedNodes) = [(NSMutableSet *)selectedNodes containsObject:person];

  if (selectedNodes)
  {
    v8 = self->_selectedNodes;
    person2 = [cellCopy person];
    [(NSMutableSet *)v8 removeObject:person2];
  }

  person3 = [cellCopy person];
  realName = [person3 realName];

  magicHeadVC = [(AirDropBrowserViewController *)self magicHeadVC];
  [magicHeadVC transferCancelledToPerson:realName];

  realNamesWithTransfersStartedFromMagicHead = [(AirDropBrowserViewController *)self realNamesWithTransfersStartedFromMagicHead];
  [realNamesWithTransfersStartedFromMagicHead removeObject:realName];
}

- (void)requestingSharedItemsWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v8 = objc_alloc_init(AirDropExtensionActivity);
  [(AirDropExtensionActivity *)v8 setAirDropViewController:self];
  [(AirDropExtensionActivity *)v8 setAirdropCompletion:handlerCopy];

  v9 = [optionsCopy objectForKeyedSubscript:SFAirDropActivityMaxPreviewsKey];

  -[AirDropExtensionActivity setMaxPreviews:](v8, "setMaxPreviews:", [v9 integerValue]);
  ss_activityTypeToReportToHost = [(AirDropExtensionActivity *)v8 ss_activityTypeToReportToHost];
  ss_activitySpecificExtensionItemDataRequestInfo = [(AirDropExtensionActivity *)v8 ss_activitySpecificExtensionItemDataRequestInfo];
  v12 = [UISUIActivityExtensionItemDataRequest requestForActivity:v8 activityType:ss_activityTypeToReportToHost activitySpecificMetadata:ss_activitySpecificExtensionItemDataRequestInfo];

  airDropDelegate = [(AirDropBrowserViewController *)self airDropDelegate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007B68;
  v15[3] = &unk_10002D198;
  v16 = v8;
  v14 = v8;
  [airDropDelegate airDropViewServiceRequestingSharedItemsWithDataRequest:v12 completionHandler:v15];
}

- (CGSize)suggestedThumbnailSize
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  SFSuggestedAirDropThumbnailSize();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)classes
{
  v3 = [NSSet setWithArray:classes];
  v4 = airdrop_ui_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D924();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    *&v7 = 138412290;
    v31 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [v11 description];
        if ([v12 length] >= 0x3D)
        {
          v13 = [v11 description];
          v14 = [v13 substringToIndex:60];

          v12 = v14;
        }

        v15 = airdrop_ui_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = v31;
          v47 = v12;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Top level values: %@", buf, 0xCu);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v8);
  }

  byte_100033A80 = 0;
  if ([v5 count] >= 2)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v36 + 1) + 8 * j) isSubclassOfClass:objc_opt_class()])
          {
            byte_100033A80 = 1;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v18);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
  v23 = 0;
  if (v22)
  {
    v24 = 0;
    v25 = 0;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v32 + 1) + 8 * v27);
        v23 = v23 || ([v28 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class());
        if (([v28 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()))
        {
          v23 = 1;
          v25 = 1;
        }

        if (([v28 isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v28, "isSubclassOfClass:", objc_opt_class()))
        {
          v23 = 1;
          v24 = 1;
        }

        v27 = v27 + 1;
      }

      while (v22 != v27);
      v29 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
      v22 = v29;
    }

    while (v29);
    LOBYTE(v22) = v24 & v25;
  }

  byte_100033A80 = v22 & 1;
  return v23;
}

- (BOOL)addURL:(id)l withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  lCopy = l;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v16 = airdrop_ui_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v23 = NSStringFromCGSize(v45);
    *buf = 138413314;
    v36 = lCopy;
    v37 = 2112;
    v38 = nameCopy;
    v39 = 2112;
    v40 = descriptionCopy;
    v41 = 2112;
    v42 = imageCopy;
    v43 = 2112;
    v44 = v23;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "addURL:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  scheme = [lCopy scheme];

  if (scheme)
  {
    self->_itemsReady = 0;
    if (imageCopy || (generatedPreviews = self->_generatedPreviews, generatedPreviews > 2))
    {
      operationQueue = self->_operationQueue;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100008544;
      v24[3] = &unk_10002D1E8;
      v25 = lCopy;
      v26 = descriptionCopy;
      v27 = imageCopy;
      selfCopy = self;
      indexCopy = index;
      [(NSOperationQueue *)operationQueue addOperationWithBlock:v24];

      v20 = v25;
    }

    else
    {
      self->_generatedPreviews = generatedPreviews + 1;
      v19 = self->_operationQueue;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100008368;
      v30[3] = &unk_10002D1C0;
      v31 = lCopy;
      selfCopy2 = self;
      v33 = descriptionCopy;
      indexCopy2 = index;
      [(NSOperationQueue *)v19 addOperationWithBlock:v30];

      v20 = v31;
    }
  }

  else
  {
    v20 = airdrop_ui_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10001D998();
    }
  }

  return 1;
}

- (BOOL)addImage:(id)image withAttachmentName:(id)name description:(id)description previewImage:(id)previewImage itemIndex:(int)index
{
  imageCopy = image;
  nameCopy = name;
  descriptionCopy = description;
  previewImageCopy = previewImage;
  v16 = airdrop_ui_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v29 = NSStringFromCGSize(v51);
    [previewImageCopy size];
    v30 = NSStringFromCGSize(v52);
    *buf = 138413570;
    v40 = imageCopy;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = nameCopy;
    v45 = 2112;
    v46 = descriptionCopy;
    v47 = 2112;
    v48 = previewImageCopy;
    v49 = 2112;
    v50 = v30;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "addImage:[%@]-size:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x3Eu);
  }

  v31 = nameCopy;

  self->_itemsReady = 0;
  if (!previewImageCopy)
  {
    previewImageCopy = imageCopy;
  }

  sessionID = self->_sessionID;
  v18 = self->_attachmentCount + 1;
  self->_attachmentCount = v18;
  v19 = [NSString stringWithFormat:@"IMG_%@-%ld", sessionID, v18];
  SuggestedFilename = _UTTypeCreateSuggestedFilename();
  v21 = NSTemporaryDirectory();
  v22 = [v21 stringByAppendingPathComponent:SuggestedFilename];
  operationQueue = self->_operationQueue;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000088D0;
  v32[3] = &unk_10002D210;
  v33 = imageCopy;
  v34 = v22;
  v35 = descriptionCopy;
  v36 = previewImageCopy;
  selfCopy = self;
  indexCopy = index;
  v24 = previewImageCopy;
  v25 = descriptionCopy;
  v26 = v22;
  v27 = imageCopy;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v32];

  return 1;
}

- (BOOL)createURLPayloadForData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index completion:(id)completion
{
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  completionCopy = completion;
  v39 = typeCopy;
  if ([nameCopy length])
  {
    SuggestedFilename = _UTTypeCreateSuggestedFilename();
    v20 = [SuggestedFilename mutableCopy];

    [(__CFString *)v20 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
    [(__CFString *)v20 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
    if (self->_attachmentCount)
    {
      pathExtension = [(__CFString *)v20 pathExtension];
      if ([pathExtension length])
      {
        stringByDeletingPathExtension = [(__CFString *)v20 stringByDeletingPathExtension];
        v23 = self->_attachmentCount + 1;
        self->_attachmentCount = v23;
        v24 = [NSString stringWithFormat:@"%@-%ld.%@", stringByDeletingPathExtension, v23, pathExtension];
      }

      else
      {
        v29 = self->_attachmentCount + 1;
        self->_attachmentCount = v29;
        v24 = [NSString stringWithFormat:@"%@-%ld.%@", v20, v29, pathExtension];
      }
    }

    else
    {
      v24 = v20;
      ++self->_attachmentCount;
    }
  }

  else
  {
    v25 = UTTypeCopyPreferredTagWithClass(typeCopy, kUTTagClassFilenameExtension);
    if (v25)
    {
      v20 = v25;
    }

    else
    {
      v20 = @"data";
    }

    v26 = UTTypeCopyDescription(typeCopy);
    sessionID = self->_sessionID;
    v28 = self->_attachmentCount + 1;
    self->_attachmentCount = v28;
    v24 = [NSString stringWithFormat:@"%@-%@-%ld.%@", v26, sessionID, v28, v20, v39];
  }

  v30 = NSTemporaryDirectory();
  v31 = [v30 stringByAppendingPathComponent:v24];
  operationQueue = self->_operationQueue;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100008F50;
  v42[3] = &unk_10002D238;
  v43 = dataCopy;
  v44 = v31;
  v45 = descriptionCopy;
  v46 = imageCopy;
  indexCopy = index;
  selfCopy = self;
  v48 = completionCopy;
  v33 = completionCopy;
  v34 = imageCopy;
  v35 = descriptionCopy;
  v36 = v31;
  v37 = dataCopy;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v42];

  return 1;
}

- (void)handleLivePhotoItemProvider:(id)provider withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  providerCopy = provider;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v15 = dispatch_semaphore_create(0);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100009804;
  v40 = sub_100009814;
  v41 = 0;
  v42 = NSItemProviderOptionsDispatchModeKey;
  v43 = NSItemProviderOptionsDispatchModeAsynchronous;
  v16 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000981C;
  v33[3] = &unk_10002D2A0;
  v35 = &v36;
  v17 = v15;
  v34 = v17;
  [providerCopy loadItemForTypeIdentifier:kUTTypeLivePhoto options:v16 completionHandler:v33];
  v18 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v17, v18);
  v19 = imageCopy;
  v20 = v19;
  if (!v19)
  {
    imageURL = [v37[5] imageURL];
    path = [imageURL path];
    v20 = [UIImage imageWithContentsOfFile:path];
  }

  operationQueue = self->_operationQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100009884;
  v27[3] = &unk_10002D2C8;
  v31 = &v36;
  v24 = descriptionCopy;
  v28 = v24;
  v25 = v20;
  v29 = v25;
  selfCopy = self;
  indexCopy = index;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v27];

  _Block_object_dispose(&v36, 8);
}

- (void)handleOtherItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image
{
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v65[0] = kUTTypeURL;
  v65[1] = kUTTypeImage;
  v65[2] = kUTTypeRTF;
  v65[3] = kUTTypePlainText;
  v65[4] = kUTTypeData;
  v14 = [NSArray arrayWithObjects:v65 count:5];
  v15 = v14;
  if (typeCopy)
  {
    v16 = [v14 arrayByAddingObject:typeCopy];

    v15 = v16;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (!v18)
  {
    goto LABEL_38;
  }

  v19 = *v59;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v59 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = *(*(&v58 + 1) + 8 * i);
      if ([providerCopy hasItemConformingToTypeIdentifier:v21])
      {
        v22 = dispatch_semaphore_create(0);
        v52 = 0;
        v53 = &v52;
        v54 = 0x3032000000;
        v55 = sub_100009804;
        v56 = sub_100009814;
        v57 = 0;
        v62 = NSItemProviderOptionsDispatchModeKey;
        v63 = NSItemProviderOptionsDispatchModeAsynchronous;
        v23 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10000A290;
        v49[3] = &unk_10002D318;
        v51 = &v52;
        v24 = v22;
        v50 = v24;
        [providerCopy loadItemForTypeIdentifier:v21 options:v23 completionHandler:v49];
        v45 = v23;
        v25 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v24, v25);
        v26 = v53[5];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          string = v53[5];
        }

        else
        {
          v29 = v53[5];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_22:
            v33 = v53[5];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && (byte_100033A80 & 1) == 0)
            {
              v40 = v53[5];
              ++self->_sharedItemsCount;
              [(AirDropBrowserViewController *)self addString:v40 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
            }

            else
            {
              v34 = v53[5];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (byte_100033A80 & 1) == 0)
              {
                v41 = v53[5];
                ++self->_sharedItemsCount;
                [(AirDropBrowserViewController *)self addAttributedString:v41 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
              }

              else
              {
                v35 = v53[5];
                objc_opt_class();
                v36 = objc_opt_isKindOfClass();
                v37 = v53[5];
                if (v36)
                {
                  ++self->_sharedItemsCount;
                  [(AirDropBrowserViewController *)self addURL:v37 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
                }

                else
                {
                  objc_opt_class();
                  v38 = objc_opt_isKindOfClass();
                  v39 = v53[5];
                  if (v38)
                  {
                    ++self->_sharedItemsCount;
                    [(AirDropBrowserViewController *)self addImage:v39 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (typeCopy)
                      {
                        firstObject = typeCopy;
                      }

                      else
                      {
                        registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
                        firstObject = [registeredTypeIdentifiers firstObject];
                      }

                      v44 = v53[5];
                      ++self->_sharedItemsCount;
                      [(AirDropBrowserViewController *)self addData:v44 ofType:firstObject withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:v45];
                    }
                  }
                }
              }
            }

            _Block_object_dispose(&v52, 8);
            goto LABEL_38;
          }

          string = [v53[5] string];
        }

        v30 = [NSURL URLWithString:string, v45];
        if ((isKindOfClass & 1) == 0)
        {
        }

        if (v30)
        {
          scheme = [v30 scheme];
          v32 = scheme == 0;

          if (!v32)
          {
            objc_storeStrong(v53 + 5, v30);
          }
        }

        goto LABEL_22;
      }
    }

    v18 = [v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_38:
}

- (BOOL)addItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image
{
  providerCopy = provider;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  typeCopy = type;
  v17 = airdrop_ui_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v19 = NSStringFromCGSize(v30);
    v20 = 138413314;
    v21 = providerCopy;
    v22 = 2112;
    v23 = nameCopy;
    v24 = 2112;
    v25 = descriptionCopy;
    v26 = 2112;
    v27 = imageCopy;
    v28 = 2112;
    v29 = v19;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "addItemProvider:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", &v20, 0x34u);
  }

  self->_itemsReady = 0;
  [(AirDropBrowserViewController *)self handleOtherItemProvider:providerCopy withDataType:typeCopy attachmentName:nameCopy description:descriptionCopy previewImage:imageCopy];

  return 1;
}

- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)d
{
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v6 = self->_cachedSharedItems;
  objc_sync_enter(v6);
  v7 = [(NSMutableOrderedSet *)self->_cachedSharedItems copy];
  objc_sync_exit(v6);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if ([v12 identifer] == d)
        {
          v13 = [v12 URL];
          if (v13)
          {
            previewImage = [v12 previewImage];
            v15 = previewImage == 0;

            if (!v15)
            {
              previewImage2 = [v12 previewImage];
              [v4 addObject:previewImage2];

              v17 = [v12 URL];
              [v5 addObject:v17];
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  if ([v4 count] >= 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v18 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = *v31;
      while (2)
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(obj);
          }

          pathExtension = [*(*(&v30 + 1) + 8 * j) pathExtension];
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension, 0);
          if ((SFIsImage() & 1) == 0 && (SFIsVideo() & 1) == 0 && (SFIsLivePhotos() & 1) == 0)
          {

            goto LABEL_25;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v23 = +[UIScreen mainScreen];
    [v23 scale];
    v25 = v24 == 2.0;

    v26 = qword_100022BE0[v25];
    obj = SFImageStackFromImages();
    sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
    pathExtension = [NSNumber numberWithInteger:d];
    [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto setObject:obj forKeyedSubscript:pathExtension];
LABEL_25:
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v4 = [(AirDropBrowserViewController *)self collectionView:collection];
  [v4 setNeedsLayout];
}

- (void)_startTelemetry
{
  self->_peopleStartTimestamp = mach_continuous_time();
  v3 = +[NSMapTable weakToStrongObjectsMapTable];
  realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
  self->_realNameToFirstSeenTimestamp = v3;

  _objc_release_x1();
}

- (void)_stopTelemetry
{
  realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
  self->_realNameToFirstSeenTimestamp = 0;
  _objc_release_x1();
}

- (void)_collectTelemetryForPeople:(id)people
{
  peopleCopy = people;
  v14 = mach_continuous_time();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = peopleCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        realName = [*(*(&v15 + 1) + 8 * i) realName];
        if (realName)
        {
          v11 = [(NSMapTable *)self->_realNameToFirstSeenTimestamp objectForKey:realName];
          if (!v11)
          {
            realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
            v13 = [NSNumber numberWithUnsignedLongLong:v14];
            [(NSMapTable *)realNameToFirstSeenTimestamp setObject:v13 forKey:realName];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_emitTelemetryForPerson:(id)person
{
  personCopy = person;
  realName = [personCopy realName];
  if (realName)
  {
    v6 = [(NSMapTable *)self->_realNameToFirstSeenTimestamp objectForKey:realName];
    if (v6)
    {
      v7 = airdrop_ui_log();
      v8 = os_signpost_id_make_with_pointer(v7, personCopy);

      v9 = airdrop_ui_log();
      v10 = v9;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        peopleStartTimestamp = self->_peopleStartTimestamp;
        v15 = 134349056;
        v16 = peopleStartTimestamp;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "TimeToDiscoverPerson", " enableTelemetry=YES  %{public, signpost.description:begin_time}llu", &v15, 0xCu);
      }

      v12 = airdrop_ui_log();
      v13 = v12;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        unsignedLongLongValue = [v6 unsignedLongLongValue];
        v15 = 134349056;
        v16 = unsignedLongLongValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v8, "TimeToDiscoverPerson", "%{public, signpost.description:end_time}llu", &v15, 0xCu);
      }
    }
  }
}

- (AirDropBrowserViewControllerDelegate)airDropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);

  return WeakRetained;
}

@end