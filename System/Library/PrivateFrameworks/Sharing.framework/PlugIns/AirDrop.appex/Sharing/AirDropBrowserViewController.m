@interface AirDropBrowserViewController
+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)a3;
- (AirDropBrowserViewController)initWithCoder:(id)a3;
- (AirDropBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AirDropBrowserViewControllerDelegate)airDropDelegate;
- (BOOL)addImage:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)addItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7;
- (BOOL)addURL:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)createURLPayloadForData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8 completion:(id)a9;
- (BOOL)isValidPayload:(id)a3 toPerson:(id)a4 invalidMessage:(id *)a5;
- (CGSize)suggestedThumbnailSize;
- (id)airDropCollectionViewLayout;
- (id)cellForPerson:(id)a3;
- (void)_collectTelemetryForPeople:(id)a3;
- (void)_emitTelemetryForPerson:(id)a3;
- (void)_startTelemetry;
- (void)_stopTelemetry;
- (void)browserDidUpdateMePeople:(id)a3 knownPeople:(id)a4 unknownPeople:(id)a5;
- (void)cancelTransferForCell:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4 cellInitiator:(BOOL)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)donePressed;
- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)a3;
- (void)handleLivePhotoItemProvider:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (void)handleOtherItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7;
- (void)magicHeadViewControllerDidFinishTransferForNode:(id)a3;
- (void)magicHeadViewControllerDidStartTransferForNode:(id)a3;
- (void)magicHeadViewControllerDidTerminateTransferForNode:(id)a3;
- (void)magicHeadViewControllerToggleSelectionForNode:(id)a3;
- (void)noContentViewActionTriggered:(id)a3;
- (void)personCollectionViewCellDidFinishTransfer:(id)a3;
- (void)personCollectionViewCellDidStartTransfer:(id)a3;
- (void)personCollectionViewCellDidTerminateTransfer:(id)a3;
- (void)requestingSharedItemsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)startBrowsing;
- (void)startTransferForPeople:(id)a3;
- (void)stopBrowsing;
- (void)subscribeToProgresses;
- (void)subscribedProgress:(id)a3 forPersonWithRealName:(id)a4;
- (void)unpublishedProgressForPersonWithRealName:(id)a3;
- (void)unsubscribeToProgresses;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)wirelessSettingsDidChange:(id)a3;
@end

@implementation AirDropBrowserViewController

- (AirDropBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = AirDropBrowserViewController;
  return [(AirDropBrowserViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (AirDropBrowserViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AirDropBrowserViewController;
  return [(AirDropBrowserViewController *)&v4 initWithCoder:a3];
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

  v7 = [(AirDropBrowserViewController *)self view];
  [v7 setBackgroundColor:0];

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
  v25 = [v24 UUIDString];
  v26 = [v25 substringWithRange:{24, 12}];
  sessionID = self->_sessionID;
  self->_sessionID = v26;

  self->_browserPaused = 1;
  self->_canShowNoContentView = [(AirDropBrowserViewController *)self showNoContentView];
  [(AirDropBrowserViewController *)self startBrowsing];
  v28 = [UIBlurEffect effectWithStyle:9];
  v144 = [[UIVisualEffectView alloc] initWithEffect:v28];
  [(AirDropBrowserViewController *)self setBackgroundView:?];
  v29 = [(AirDropBrowserViewController *)self backgroundView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(AirDropBrowserViewController *)self view];
  v31 = [(AirDropBrowserViewController *)self backgroundView];
  [v30 addSubview:v31];

  v32 = objc_alloc_init(AirDropNoContentView);
  [(AirDropBrowserViewController *)self setAirDropNoContentView:v32];

  v33 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [v33 setDelegate:self];

  v34 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [v34 setAlpha:0.0];

  v35 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [(AirDropBrowserViewController *)self view];
  v37 = [(AirDropBrowserViewController *)self airDropNoContentView];
  [v36 addSubview:v37];

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

    v43 = [(AirDropBrowserViewController *)self magicHeadVC];
    [v43 setNumberOfDots:25];

    v44 = [(AirDropBrowserViewController *)self magicHeadVC];
    [v44 setDotsRadius:2.0];

    v45 = [(AirDropBrowserViewController *)self magicHeadVC];
    [v45 setDelegate:self];
  }

  v46 = [UICollectionView alloc];
  v47 = [(AirDropBrowserViewController *)self view];
  [v47 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = [(AirDropBrowserViewController *)self airDropCollectionViewLayout];
  v57 = [v46 initWithFrame:v56 collectionViewLayout:{v49, v51, v53, v55}];
  [(AirDropBrowserViewController *)self setCollectionView:v57];

  v58 = [(AirDropBrowserViewController *)self collectionView];
  [v58 setDelegate:self];

  v59 = [(AirDropBrowserViewController *)self collectionView];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  v60 = [(AirDropBrowserViewController *)self collectionView];
  [v60 setBackgroundColor:0];

  v61 = [(AirDropBrowserViewController *)self collectionView];
  [v61 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"OtherCellID"];

  v62 = [(AirDropBrowserViewController *)self collectionView];
  [v62 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PersonCellID"];

  v63 = [(AirDropBrowserViewController *)self collectionView];
  [v63 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderID"];

  v64 = [(AirDropBrowserViewController *)self collectionView];
  [v64 setAlwaysBounceVertical:1];

  v65 = [(AirDropBrowserViewController *)self collectionView];
  [v65 setAllowsMultipleSelection:1];

  v66 = [(AirDropBrowserViewController *)self collectionView];
  [v66 setShowsHorizontalScrollIndicator:0];

  v67 = [(AirDropBrowserViewController *)self collectionView];
  [v67 setShowsVerticalScrollIndicator:0];

  v68 = [(AirDropBrowserViewController *)self collectionView];
  [v68 setRemembersLastFocusedIndexPath:1];

  v69 = [(AirDropBrowserViewController *)self view];
  v70 = [(AirDropBrowserViewController *)self collectionView];
  [v69 addSubview:v70];

  v71 = objc_opt_new();
  v72 = [(AirDropBrowserViewController *)self backgroundView];

  if (v72)
  {
    v73 = [(AirDropBrowserViewController *)self backgroundView];
    v74 = [v73 leadingAnchor];
    v75 = [(AirDropBrowserViewController *)self view];
    v76 = [v75 leadingAnchor];
    v77 = [v74 constraintEqualToAnchor:v76];
    [v71 addObject:v77];

    v78 = [(AirDropBrowserViewController *)self backgroundView];
    v79 = [v78 trailingAnchor];
    v80 = [(AirDropBrowserViewController *)self view];
    v81 = [v80 trailingAnchor];
    v82 = [v79 constraintEqualToAnchor:v81];
    [v71 addObject:v82];

    v83 = [(AirDropBrowserViewController *)self backgroundView];
    v84 = [v83 topAnchor];
    v85 = [(AirDropBrowserViewController *)self view];
    v86 = [v85 topAnchor];
    v87 = [v84 constraintEqualToAnchor:v86];
    [v71 addObject:v87];

    v88 = [(AirDropBrowserViewController *)self backgroundView];
    v89 = [v88 bottomAnchor];
    v90 = [(AirDropBrowserViewController *)self view];
    v91 = [v90 bottomAnchor];
    v92 = [v89 constraintEqualToAnchor:v91];
    [v71 addObject:v92];
  }

  v93 = [(AirDropBrowserViewController *)self collectionView];
  v94 = [v93 leftAnchor];
  v95 = [(AirDropBrowserViewController *)self view];
  v96 = [v95 leftAnchor];
  v97 = [v94 constraintEqualToAnchor:v96];
  [v71 addObject:v97];

  v98 = [(AirDropBrowserViewController *)self collectionView];
  v99 = [v98 rightAnchor];
  v100 = [(AirDropBrowserViewController *)self view];
  v101 = [v100 rightAnchor];
  v102 = [v99 constraintEqualToAnchor:v101];
  [v71 addObject:v102];

  v103 = [(AirDropBrowserViewController *)self collectionView];
  v104 = [v103 bottomAnchor];
  v105 = [(AirDropBrowserViewController *)self view];
  v106 = [v105 bottomAnchor];
  v107 = [v104 constraintEqualToAnchor:v106];
  [v71 addObject:v107];

  v108 = [(AirDropBrowserViewController *)self collectionViewTopConstraint];

  if (!v108)
  {
    v109 = [(AirDropBrowserViewController *)self collectionView];
    v110 = [v109 topAnchor];
    v111 = [(AirDropBrowserViewController *)self view];
    v112 = [v111 topAnchor];
    v113 = [v110 constraintEqualToAnchor:v112];
    [(AirDropBrowserViewController *)self setCollectionViewTopConstraint:v113];
  }

  v114 = [(AirDropBrowserViewController *)self airDropNoContentView];
  v115 = [v114 leadingAnchor];
  v116 = [(AirDropBrowserViewController *)self view];
  v117 = [v116 leadingAnchor];
  v118 = [v115 constraintEqualToAnchor:v117 constant:24.0];
  [v71 addObject:v118];

  v119 = [(AirDropBrowserViewController *)self airDropNoContentView];
  v120 = [v119 trailingAnchor];
  v121 = [(AirDropBrowserViewController *)self view];
  v122 = [v121 trailingAnchor];
  v123 = [v120 constraintEqualToAnchor:v122 constant:-24.0];
  [v71 addObject:v123];

  v124 = [(AirDropBrowserViewController *)self airDropNoContentView];
  v125 = [(AirDropBrowserViewController *)self view];
  v126 = [NSLayoutConstraint constraintWithItem:v124 attribute:10 relatedBy:0 toItem:v125 attribute:10 multiplier:0.95 constant:0.0];
  [v71 addObject:v126];

  [NSLayoutConstraint activateConstraints:v71];
  v127 = [(AirDropBrowserViewController *)self collectionViewTopConstraint];
  [v127 setActive:1];

  objc_initWeak(&location, self);
  v128 = [UICollectionViewDiffableDataSource alloc];
  v129 = [(AirDropBrowserViewController *)self collectionView];
  v147[0] = _NSConcreteStackBlock;
  v147[1] = 3221225472;
  v147[2] = sub_100002FE0;
  v147[3] = &unk_10002CF78;
  objc_copyWeak(&v148, &location);
  v130 = [v128 initWithCollectionView:v129 cellProvider:v147];

  v145[0] = _NSConcreteStackBlock;
  v145[1] = 3221225472;
  v145[2] = sub_1000032A4;
  v145[3] = &unk_10002CFA0;
  objc_copyWeak(&v146, &location);
  [v130 setSupplementaryViewProvider:v145];
  [(AirDropBrowserViewController *)self setDataSource:v130];
  v131 = [(AirDropBrowserViewController *)self view];
  [v131 setClipsToBounds:1];

  v132 = +[UIDevice currentDevice];
  v133 = [v132 userInterfaceIdiom];

  if (v133 == 6)
  {
    v134 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"donePressed"];
    v135 = [(AirDropBrowserViewController *)self navigationItem];
    [v135 setLeftBarButtonItem:v134];
  }

  else
  {
    v134 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"donePressed"];
    v135 = [(AirDropBrowserViewController *)self navigationItem];
    [v135 setRightBarButtonItem:v134];
  }

  v136 = [(AirDropBrowserViewController *)self navigationItem];
  [v136 _setManualScrollEdgeAppearanceEnabled:1];

  v137 = objc_alloc_init(UINavigationBarAppearance);
  [v137 configureWithTransparentBackground];
  v138 = +[UIColor separatorColor];
  [v137 setShadowColor:v138];

  v139 = [(AirDropBrowserViewController *)self navigationItem];
  [v139 setScrollEdgeAppearance:v137];

  v140 = objc_alloc_init(UINavigationBarAppearance);
  [v140 configureWithDefaultBackground];
  v141 = +[UIColor separatorColor];
  [v140 setShadowColor:v141];

  v142 = [(AirDropBrowserViewController *)self navigationItem];
  [v142 setStandardAppearance:v140];

  v143 = [(AirDropBrowserViewController *)self navigationItem];
  [v143 _setManualScrollEdgeAppearanceProgress:1.0];

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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v30 = a4;
  v7 = a5;
  v8 = [(AirDropBrowserViewController *)self currentSnapshot];
  v9 = [v8 sectionIdentifiers];
  v10 = [v7 section];

  v11 = [v9 objectAtIndexedSubscript:v10];

  if ([v11 isEqualToString:@"OtherSection"])
  {
    v12 = [(AirDropBrowserViewController *)self magicHeadVC];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 view];
      v15 = [v30 contentView];
      [v15 bounds];
      [v14 setFrame:?];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = [v15 subviews];
      [v16 makeObjectsPerformSelector:"removeFromSuperview"];

      [v13 willMoveToParentViewController:self];
      [(AirDropBrowserViewController *)self addChildViewController:v13];
      [v15 addSubview:v14];
      [v13 didMoveToParentViewController:self];
      v17 = objc_opt_new();
      v18 = [v14 leftAnchor];
      v19 = [v15 leftAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      [v17 addObject:v20];

      v21 = [v14 rightAnchor];
      v22 = [v15 rightAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      [v17 addObject:v23];

      v24 = [v14 topAnchor];
      v25 = [v15 topAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:22.0];
      [v17 addObject:v26];

      v27 = [v14 bottomAnchor];
      v28 = [v15 bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];
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
  v3 = [(AirDropBrowserViewController *)self collectionView];
  v4 = [(AirDropBrowserViewController *)self airDropCollectionViewLayout];
  [v3 setCollectionViewLayout:v4];
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

    v5 = [(AirDropBrowserViewController *)self magicHeadVC];
    [v5 setEnabled:0];
  }
}

- (void)donePressed
{
  v3 = [(AirDropBrowserViewController *)self airDropDelegate];
  [v3 airDropViewServiceDidRequestDismissal];

  [(AirDropBrowserViewController *)self stopBrowsing];
}

- (void)noContentViewActionTriggered:(id)a3
{
  v4 = a3;
  v5 = [(AirDropBrowserViewController *)self airDropNoContentView];

  if (v5 == v4)
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

- (void)wirelessSettingsDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 isWifiEnabled];
  v6 = [v4 isBluetoothEnabled];
  v7 = [v4 isWirelessAccessPointEnabled];
  v8 = [v4 deviceSupportsWAPI];
  v9 = [v4 ultraWideBandStatus];
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "no";
    if (v9 != 1)
    {
      v11 = "yes";
    }

    *buf = 136315138;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UWB Status in AirDrop is %s", buf, 0xCu);
  }

  v12 = v9 != 1;

  v13 = [(AirDropBrowserViewController *)self currentSnapshot];
  v14 = [v13 sectionIdentifiers];
  v15 = [v14 containsObject:@"OtherSection"];

  if ((v15 & v12 & 1) == 0)
  {
    [(AirDropBrowserViewController *)self layoutAirDropCollectionViewAnimated:1];
  }

  if (v7)
  {
    v16 = [(AirDropBrowserViewController *)self airDropNoContentView];
    [v16 setViewType:7];
  }

  else
  {
    v17 = [(AirDropBrowserViewController *)self airDropNoContentView];
    v16 = v17;
    if ((v5 | v6))
    {
      if (v5)
      {
        if (v6)
        {
          [v17 setViewType:0];
        }

        else
        {
          [v17 setViewType:3];
        }
      }

      else if (v8)
      {
        [v17 setViewType:2];
      }

      else
      {
        [v17 setViewType:1];
      }
    }

    else if (v8)
    {
      [v17 setViewType:5];
    }

    else
    {
      [v17 setViewType:4];
    }
  }

  objc_initWeak(buf, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100004784;
  v21 = &unk_10002D018;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  objc_copyWeak(&v22, buf);
  [UIView animateWithDuration:&v18 animations:0.25];
  [(AirDropBrowserViewController *)self performSelector:"allowContentViewToShow" withObject:0 afterDelay:2.0, v18, v19, v20, v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)browserDidUpdateMePeople:(id)a3 knownPeople:(id)a4 unknownPeople:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(AirDropBrowserViewController *)self setMePeople:a3];
  [(AirDropBrowserViewController *)self setKnownPeople:v9];

  [(AirDropBrowserViewController *)self setUnknownPeople:v8];
  v10 = [(AirDropBrowserViewController *)self currentSnapshot];
  v11 = [v10 numberOfItems] != 0;

  [(AirDropBrowserViewController *)self layoutAirDropCollectionViewAnimated:v11];
  v12 = [NSMutableArray alloc];
  v13 = [(AirDropBrowserViewController *)self mePeople];
  v14 = [v13 count];
  v15 = [(AirDropBrowserViewController *)self knownPeople];
  v16 = &v14[[v15 count]];
  v17 = [(AirDropBrowserViewController *)self unknownPeople];
  v22 = [v12 initWithCapacity:{objc_msgSend(v17, "count") + v16}];

  v18 = [(AirDropBrowserViewController *)self mePeople];
  [v22 addObjectsFromArray:v18];

  v19 = [(AirDropBrowserViewController *)self knownPeople];
  [v22 addObjectsFromArray:v19];

  v20 = [(AirDropBrowserViewController *)self magicHeadVC];
  [v20 updateNodes:v22 withPersonToProgress:self->_personToProgress];

  v21 = [(AirDropBrowserViewController *)self unknownPeople];
  [v22 addObjectsFromArray:v21];

  [(AirDropBrowserViewController *)self _collectTelemetryForPeople:v22];
}

- (void)scrollViewDidScroll:(id)a3
{
  v14 = a3;
  v4 = [(AirDropBrowserViewController *)self collectionView];

  v5 = v14;
  if (v4 == v14)
  {
    v6 = [(AirDropBrowserViewController *)self navigationController];
    v7 = [v6 navigationBar];
    [v7 frame];
    v9 = v8;

    [v14 contentOffset];
    v10 = 0.0;
    if (v11 > -v9)
    {
      [v14 contentOffset];
      v10 = fmin((v9 + v12) * 10.0, 100.0) / 100.0;
    }

    v13 = [(AirDropBrowserViewController *)self navigationItem];
    [v13 _setManualScrollEdgeAppearanceProgress:v10];

    v5 = v14;
  }
}

- (id)cellForPerson:(id)a3
{
  dataSource = self->_dataSource;
  v5 = [a3 nodeIdentifier];
  v6 = [(UICollectionViewDiffableDataSource *)dataSource indexPathForItemIdentifier:v5];

  v7 = [(AirDropBrowserViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  return v8;
}

- (void)startTransferForPeople:(id)a3
{
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = a3;
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
        v5 = [v46 realName];
        v6 = [(NSMutableDictionary *)personToSharedItemsRequestID objectForKeyedSubscript:v5];

        if (v6)
        {
          v7 = [(NSMutableDictionary *)self->_sharedItemsRequestIDToPreviewPhoto objectForKeyedSubscript:v6];
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
            v13 = 0;
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
                v17 = [v16 identifer];
                if (v17 == [v6 integerValue])
                {
                  v18 = [v16 URL];
                  v19 = v18 == 0;

                  if (!v19)
                  {
                    if (v7)
                    {
                      if (!v13)
                      {
LABEL_18:
                        v13 = [v16 payloadDescription];
                      }
                    }

                    else
                    {
                      v7 = [v16 previewImage];
                      if (!v13)
                      {
                        goto LABEL_18;
                      }
                    }

                    v20 = [v16 wasString];
                    [v48 addObject:v16];
                    v11 |= v20 ^ 1;
                    v12 |= v20;
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
          v13 = 0;
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
            [v46 startSendForBundleID:sendingAppBundleID sessionID:sessionID items:v23 description:v13 previewImage:objc_msgSend(v32 fromShareSheet:{"CGImage"), 0}];
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
            v37 = [(AirDropBrowserViewController *)self collectionView];
            v38 = [(AirDropBrowserViewController *)self collectionView];
            v39 = [v38 indexPathForCell:v36];
            [v37 deselectItemAtIndexPath:v39 animated:0];

            v29 = v36;
          }
        }

        else
        {
          v7 = airdrop_ui_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(a2);
            *buf = v40;
            v60 = v22;
            v61 = 2112;
            v62 = v46;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ failed to find request ID for %@", buf, 0x16u);
          }
        }
      }

      v44 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v44);
  }
}

- (BOOL)isValidPayload:(id)a3 toPerson:(id)a4 invalidMessage:(id *)a5
{
  v6 = a3;
  v7 = a4;
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
  if (([v7 supportsPasses] & 1) == 0)
  {
    v59 = v7;
    v54 = v6;
    v55 = v8;
    v20 = [v8 firstObject];
    v21 = [v20 objectForKeyedSubscript:kSFOperationFileNameKey];
    v12 = [v21 pathExtension];

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
            v28 = [v59 isUnknown];
            v29 = @"TRANSFER_TO_PERSON_NO_WALLET_TEXT";
            if (v28)
            {
              v29 = @"TRANSFER_TO_DEVICE_NO_WALLET_TEXT";
            }

            v30 = v29;
            v31 = SFLocalizedStringForKey();
            SFLocalizedStringForKey();
            v33 = v32 = v12;

            v34 = [v59 displayName];
            v35 = [NSString stringWithFormat:v33, v34];
            *a5 = [NSString stringWithFormat:v31, v35];

            v12 = v32;
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

    v6 = v54;
    goto LABEL_27;
  }

  if ([v7 supportsFMF])
  {
    if (![v7 supportsCredentials] || objc_msgSend(v7, "isUnknown"))
    {
      v10 = [v9 firstObject];
      v11 = [v10 scheme];
      v12 = [v11 lowercaseString];

      MyFriendsLink = SFIsCredential();
      if (MyFriendsLink)
      {
        v14 = [v57 firstObject];
        SFIsPasskeyCredentialLink();

        v15 = SFLocalizedStringForKey();
        v16 = SFLocalizedStringForKeyInStringsFileNamed();
        *a5 = [NSString stringWithFormat:v15, v16];

        v75[0] = @"supportsCredentials";
        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsCredentials]);
        v75[1] = @"unknownPeer";
        v76[0] = v17;
        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isUnknown]);
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
    v12 = v6;
    v46 = [v12 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (!v46)
    {
      v25 = 1;
      goto LABEL_28;
    }

    v47 = v46;
    v55 = v8;
    v59 = v7;
    v48 = *v63;
    while (2)
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v12);
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
            [v12 count];
            SFLocalizedStringForKey();
            *a5 = v25 = 0;
            goto LABEL_27;
          }
        }
      }

      v47 = [v12 countByEnumeratingWithState:&v62 objects:v74 count:16];
      v25 = 1;
      if (v47)
      {
        continue;
      }

      break;
    }

LABEL_27:
    v7 = v59;
    v8 = v55;
    goto LABEL_28;
  }

  v36 = [v9 firstObject];
  v37 = [v36 scheme];
  v12 = [v37 lowercaseString];

  MyFriendsLink = SFIsFindMyFriendsLink();
  if (MyFriendsLink)
  {
    v38 = [v7 isUnknown];
    v39 = @"TRANSFER_TO_PERSON_NO_FMF_TEXT";
    if (v38)
    {
      v39 = @"TRANSFER_TO_DEVICE_NO_FMF_TEXT";
    }

    v40 = v12;
    v41 = v39;
    v19 = SFLocalizedStringForKey();
    v42 = SFLocalizedStringForKey();

    v43 = [v7 displayName];
    v44 = [NSString stringWithFormat:v42, v43];
    *a5 = [NSString stringWithFormat:v19, v44];

    v12 = v40;
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
  v4 = [(NSMutableDictionary *)self->_personToProgress allKeys];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(AirDropBrowserViewController *)self unpublishedProgressForPersonWithRealName:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_personToProgress removeAllObjects];
}

- (void)subscribedProgress:(id)a3 forPersonWithRealName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = v6;
  [(NSMutableDictionary *)self->_personToProgress setObject:v6 forKeyedSubscript:v7];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(AirDropBrowserViewController *)self collectionView];
  v9 = [v8 visibleCells];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 person];
          v16 = [v15 realName];
          v17 = [v16 isEqualToString:v7];

          if (v17)
          {
            [v14 setProgress:v20];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = [(AirDropBrowserViewController *)self magicHeadVC];
  v19 = v18;
  if (v18)
  {
    [v18 subscribedProgress:v20 forPersonWithRealName:v7];
  }
}

- (void)unpublishedProgressForPersonWithRealName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_personToProgress objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sf_transferState];
    if ((v7 - 4) <= 2)
    {
      v8 = [NSNumber numberWithInteger:v7];
      [(NSMutableDictionary *)self->_personToStoredTransferFinalState setObject:v8 forKeyedSubscript:v4];
    }
  }

  v19 = v6;
  [(NSMutableDictionary *)self->_personToProgress removeObjectForKey:v4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(AirDropBrowserViewController *)self collectionView];
  v10 = [v9 visibleCells];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 person];
          v17 = [v16 realName];
          v18 = [v17 isEqualToString:v4];

          if (v18)
          {
            [v15 setProgress:0];
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)personCollectionViewCellDidTerminateTransfer:(id)a3
{
  v4 = a3;
  selectedNodes = self->_selectedNodes;
  v13 = v4;
  v6 = [v4 person];
  LODWORD(selectedNodes) = [(NSMutableSet *)selectedNodes containsObject:v6];

  if (selectedNodes)
  {
    v7 = self->_selectedNodes;
    v8 = [v13 person];
    [(NSMutableSet *)v7 removeObject:v8];
  }

  v9 = [(AirDropBrowserViewController *)self collectionView];
  v10 = [(AirDropBrowserViewController *)self collectionView];
  v11 = [v10 indexPathForCell:v13];
  [v9 deselectItemAtIndexPath:v11 animated:0];

  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);
  [WeakRetained airDropViewServiceDidFinishTransferWithSuccess:0];
}

- (void)personCollectionViewCellDidStartTransfer:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);
  [WeakRetained airDropViewServiceDidStartTransfer];
}

- (void)personCollectionViewCellDidFinishTransfer:(id)a3
{
  v4 = a3;
  selectedNodes = self->_selectedNodes;
  v13 = v4;
  v6 = [v4 person];
  LODWORD(selectedNodes) = [(NSMutableSet *)selectedNodes containsObject:v6];

  if (selectedNodes)
  {
    v7 = self->_selectedNodes;
    v8 = [v13 person];
    [(NSMutableSet *)v7 removeObject:v8];
  }

  v9 = [(AirDropBrowserViewController *)self collectionView];
  v10 = [(AirDropBrowserViewController *)self collectionView];
  v11 = [v10 indexPathForCell:v13];
  [v9 deselectItemAtIndexPath:v11 animated:0];

  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);
  [WeakRetained airDropViewServiceDidFinishTransferWithSuccess:1];
}

- (void)magicHeadViewControllerToggleSelectionForNode:(id)a3
{
  dataSource = self->_dataSource;
  v5 = [a3 nodeIdentifier];
  v10 = [(UICollectionViewDiffableDataSource *)dataSource indexPathForItemIdentifier:v5];

  v6 = [(AirDropBrowserViewController *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v10];

  v8 = [(AirDropBrowserViewController *)self collectionView];
  [v8 selectItemAtIndexPath:v10 animated:0 scrollPosition:0];

  [v7 setSelected:1];
  v9 = [(AirDropBrowserViewController *)self collectionView];
  [(AirDropBrowserViewController *)self collectionView:v9 didSelectItemAtIndexPath:v10 cellInitiator:0];
}

- (void)magicHeadViewControllerDidStartTransferForNode:(id)a3
{
  v4 = [(AirDropBrowserViewController *)self cellForPerson:a3];
  [(AirDropBrowserViewController *)self personCollectionViewCellDidStartTransfer:v4];
}

- (void)magicHeadViewControllerDidTerminateTransferForNode:(id)a3
{
  v4 = [(AirDropBrowserViewController *)self cellForPerson:a3];
  [(AirDropBrowserViewController *)self personCollectionViewCellDidTerminateTransfer:v4];
}

- (void)magicHeadViewControllerDidFinishTransferForNode:(id)a3
{
  v4 = [(AirDropBrowserViewController *)self cellForPerson:a3];
  [(AirDropBrowserViewController *)self personCollectionViewCellDidFinishTransfer:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AirDropBrowserViewController;
  v7 = a4;
  [(AirDropBrowserViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006DBC;
  v8[3] = &unk_10002D0B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_10002D0F8];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [(AirDropBrowserViewController *)self currentSnapshot];
  v8 = [v7 sectionIdentifiers];
  v9 = [v8 count];

  if (v6 >= v9)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v10 = [(AirDropBrowserViewController *)self currentSnapshot];
    v11 = [v10 sectionIdentifiers];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

    v13 = [v12 isEqualToString:@"OtherSection"] ^ 1;
  }

  return v13;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 delegate];
  v8 = [v7 collectionView:v6 shouldHighlightItemAtIndexPath:v5];

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4 cellInitiator:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SFAirDropBrowser *)self->_browser nodeIDToNode];
  v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v9];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v8 cellForItemAtIndexPath:v9];
    if (v13)
    {
      v14 = [v12 realName];
      v15 = airdrop_ui_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v12 displayName];
        *buf = 138412290;
        v38 = v16;
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

        [v8 deselectItemAtIndexPath:v9 animated:1];
        [v13 setSelected:0];
        [(AirDropBrowserViewController *)self cancelTransferForCell:v13];
        v18 = [(AirDropBrowserViewController *)self realNamesWithTransfersStartedFromMagicHead];
        [v18 addObject:v14];

        [v13 setCellState:0];
        [v8 setRemembersLastFocusedIndexPath:0];
        [v8 setNeedsFocusUpdate];
        [v8 updateFocusIfNeeded];
        [v8 setRemembersLastFocusedIndexPath:1];
      }

      else
      {
        [(NSMutableDictionary *)self->_personToStoredTransferFinalState removeObjectForKey:v14];
        v19 = [(AirDropBrowserViewController *)self realNamesWithTransfersStartedFromMagicHead];
        v20 = v19;
        if (v5)
        {
          [v19 removeObject:v14];

          [v13 userDidSelect];
          v21 = [(AirDropBrowserViewController *)self magicHeadVC];
          [v21 resetTransferStateWithRealName:v14];
        }

        else
        {
          [v19 addObject:v14];

          v22 = [(AirDropBrowserViewController *)self magicHeadVC];
          [v22 userSelectedWithRealName:v14];

          [v13 resetTransferState];
        }

        [(NSMutableSet *)self->_selectedNodes addObject:v12];
        v23 = [[SFShareSheetRecipient alloc] initWithNode:v12];
        v24 = [(AirDropBrowserViewController *)self airDropDelegate];
        [v24 airDropViewServiceWillStartTransferToRecipient:v23];

        if (self->_itemsReady)
        {
          v25 = [NSNumber numberWithInteger:self->_sharedItemsRequestID];
          [(NSMutableDictionary *)self->_personToSharedItemsRequestID setObject:v25 forKeyedSubscript:v14];

          v36 = v12;
          v26 = [NSArray arrayWithObjects:&v36 count:1];
          [(AirDropBrowserViewController *)self startTransferForPeople:v26];
        }

        else if (self->_itemsRequested)
        {
          v26 = [NSNumber numberWithInteger:self->_sharedItemsRequestID];
          [(NSMutableDictionary *)self->_personToSharedItemsRequestID setObject:v26 forKeyedSubscript:v14];
        }

        else
        {
          self->_itemsRequested = 1;
          v27 = self->_sharedItemsRequestID + 1;
          self->_sharedItemsRequestID = v27;
          v28 = [NSNumber numberWithInteger:v27];
          [(NSMutableDictionary *)self->_personToSharedItemsRequestID setObject:v28 forKeyedSubscript:v14];

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

        [v8 setRemembersLastFocusedIndexPath:0];
        [v8 setNeedsFocusUpdate];
        [v8 updateFocusIfNeeded];
        [v8 setRemembersLastFocusedIndexPath:1];
      }
    }

    else
    {
      v14 = airdrop_ui_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = a4;
  browser = self->_browser;
  v8 = a3;
  v9 = [(SFAirDropBrowser *)browser nodeIDToNode];
  v10 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v6];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = airdrop_ui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 displayName];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Node with display name %@ deselected by user", &v15, 0xCu);
  }

  [v8 layoutIfNeeded];
  v14 = [v8 cellForItemAtIndexPath:v6];

  [(AirDropBrowserViewController *)self cancelTransferForCell:v14];
}

- (void)cancelTransferForCell:(id)a3
{
  v4 = a3;
  v5 = airdrop_ui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel transfer.", v14, 2u);
  }

  [v4 userDidCancel];
  selectedNodes = self->_selectedNodes;
  v7 = [v4 person];
  LODWORD(selectedNodes) = [(NSMutableSet *)selectedNodes containsObject:v7];

  if (selectedNodes)
  {
    v8 = self->_selectedNodes;
    v9 = [v4 person];
    [(NSMutableSet *)v8 removeObject:v9];
  }

  v10 = [v4 person];
  v11 = [v10 realName];

  v12 = [(AirDropBrowserViewController *)self magicHeadVC];
  [v12 transferCancelledToPerson:v11];

  v13 = [(AirDropBrowserViewController *)self realNamesWithTransfersStartedFromMagicHead];
  [v13 removeObject:v11];
}

- (void)requestingSharedItemsWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AirDropExtensionActivity);
  [(AirDropExtensionActivity *)v8 setAirDropViewController:self];
  [(AirDropExtensionActivity *)v8 setAirdropCompletion:v6];

  v9 = [v7 objectForKeyedSubscript:SFAirDropActivityMaxPreviewsKey];

  -[AirDropExtensionActivity setMaxPreviews:](v8, "setMaxPreviews:", [v9 integerValue]);
  v10 = [(AirDropExtensionActivity *)v8 ss_activityTypeToReportToHost];
  v11 = [(AirDropExtensionActivity *)v8 ss_activitySpecificExtensionItemDataRequestInfo];
  v12 = [UISUIActivityExtensionItemDataRequest requestForActivity:v8 activityType:v10 activitySpecificMetadata:v11];

  v13 = [(AirDropBrowserViewController *)self airDropDelegate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007B68;
  v15[3] = &unk_10002D198;
  v16 = v8;
  v14 = v8;
  [v13 airDropViewServiceRequestingSharedItemsWithDataRequest:v12 completionHandler:v15];
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

+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)a3
{
  v3 = [NSSet setWithArray:a3];
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

- (BOOL)addURL:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = airdrop_ui_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v15 size];
    v23 = NSStringFromCGSize(v45);
    *buf = 138413314;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v23;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "addURL:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  v17 = [v12 scheme];

  if (v17)
  {
    self->_itemsReady = 0;
    if (v15 || (generatedPreviews = self->_generatedPreviews, generatedPreviews > 2))
    {
      operationQueue = self->_operationQueue;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100008544;
      v24[3] = &unk_10002D1E8;
      v25 = v12;
      v26 = v14;
      v27 = v15;
      v28 = self;
      v29 = a7;
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
      v31 = v12;
      v32 = self;
      v33 = v14;
      v34 = a7;
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

- (BOOL)addImage:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = airdrop_ui_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v12 size];
    v29 = NSStringFromCGSize(v51);
    [v15 size];
    v30 = NSStringFromCGSize(v52);
    *buf = 138413570;
    v40 = v12;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = v14;
    v47 = 2112;
    v48 = v15;
    v49 = 2112;
    v50 = v30;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "addImage:[%@]-size:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x3Eu);
  }

  v31 = v13;

  self->_itemsReady = 0;
  if (!v15)
  {
    v15 = v12;
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
  v33 = v12;
  v34 = v22;
  v35 = v14;
  v36 = v15;
  v37 = self;
  v38 = a7;
  v24 = v15;
  v25 = v14;
  v26 = v22;
  v27 = v12;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v32];

  return 1;
}

- (BOOL)createURLPayloadForData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8 completion:(id)a9
{
  v41 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v39 = v14;
  if ([v15 length])
  {
    SuggestedFilename = _UTTypeCreateSuggestedFilename();
    v20 = [SuggestedFilename mutableCopy];

    [(__CFString *)v20 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
    [(__CFString *)v20 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
    if (self->_attachmentCount)
    {
      v21 = [(__CFString *)v20 pathExtension];
      if ([v21 length])
      {
        v22 = [(__CFString *)v20 stringByDeletingPathExtension];
        v23 = self->_attachmentCount + 1;
        self->_attachmentCount = v23;
        v24 = [NSString stringWithFormat:@"%@-%ld.%@", v22, v23, v21];
      }

      else
      {
        v29 = self->_attachmentCount + 1;
        self->_attachmentCount = v29;
        v24 = [NSString stringWithFormat:@"%@-%ld.%@", v20, v29, v21];
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
    v25 = UTTypeCopyPreferredTagWithClass(v14, kUTTagClassFilenameExtension);
    if (v25)
    {
      v20 = v25;
    }

    else
    {
      v20 = @"data";
    }

    v26 = UTTypeCopyDescription(v14);
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
  v43 = v41;
  v44 = v31;
  v45 = v16;
  v46 = v17;
  v49 = a8;
  v47 = self;
  v48 = v18;
  v33 = v18;
  v34 = v17;
  v35 = v16;
  v36 = v31;
  v37 = v41;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v42];

  return 1;
}

- (void)handleLivePhotoItemProvider:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v12 = a3;
  v26 = a4;
  v13 = a5;
  v14 = a6;
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
  [v12 loadItemForTypeIdentifier:kUTTypeLivePhoto options:v16 completionHandler:v33];
  v18 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v17, v18);
  v19 = v14;
  v20 = v19;
  if (!v19)
  {
    v21 = [v37[5] imageURL];
    v22 = [v21 path];
    v20 = [UIImage imageWithContentsOfFile:v22];
  }

  operationQueue = self->_operationQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100009884;
  v27[3] = &unk_10002D2C8;
  v31 = &v36;
  v24 = v13;
  v28 = v24;
  v25 = v20;
  v29 = v25;
  v30 = self;
  v32 = a7;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v27];

  _Block_object_dispose(&v36, 8);
}

- (void)handleOtherItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v65[0] = kUTTypeURL;
  v65[1] = kUTTypeImage;
  v65[2] = kUTTypeRTF;
  v65[3] = kUTTypePlainText;
  v65[4] = kUTTypeData;
  v14 = [NSArray arrayWithObjects:v65 count:5];
  v15 = v14;
  if (v13)
  {
    v16 = [v14 arrayByAddingObject:v13];

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
      if ([v12 hasItemConformingToTypeIdentifier:v21])
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
        [v12 loadItemForTypeIdentifier:v21 options:v23 completionHandler:v49];
        v45 = v23;
        v25 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v24, v25);
        v26 = v53[5];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v28 = v53[5];
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
              [(AirDropBrowserViewController *)self addString:v40 withAttachmentName:v46 description:v47 previewImage:v48 itemIndex:?];
            }

            else
            {
              v34 = v53[5];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (byte_100033A80 & 1) == 0)
              {
                v41 = v53[5];
                ++self->_sharedItemsCount;
                [(AirDropBrowserViewController *)self addAttributedString:v41 withAttachmentName:v46 description:v47 previewImage:v48 itemIndex:?];
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
                  [(AirDropBrowserViewController *)self addURL:v37 withAttachmentName:v46 description:v47 previewImage:v48 itemIndex:?];
                }

                else
                {
                  objc_opt_class();
                  v38 = objc_opt_isKindOfClass();
                  v39 = v53[5];
                  if (v38)
                  {
                    ++self->_sharedItemsCount;
                    [(AirDropBrowserViewController *)self addImage:v39 withAttachmentName:v46 description:v47 previewImage:v48 itemIndex:?];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (v13)
                      {
                        v42 = v13;
                      }

                      else
                      {
                        v43 = [v12 registeredTypeIdentifiers];
                        v42 = [v43 firstObject];
                      }

                      v44 = v53[5];
                      ++self->_sharedItemsCount;
                      [(AirDropBrowserViewController *)self addData:v44 ofType:v42 withAttachmentName:v46 description:v47 previewImage:v48 itemIndex:v45];
                    }
                  }
                }
              }
            }

            _Block_object_dispose(&v52, 8);
            goto LABEL_38;
          }

          v28 = [v53[5] string];
        }

        v30 = [NSURL URLWithString:v28, v45];
        if ((isKindOfClass & 1) == 0)
        {
        }

        if (v30)
        {
          v31 = [v30 scheme];
          v32 = v31 == 0;

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

- (BOOL)addItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = airdrop_ui_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [v15 size];
    v19 = NSStringFromCGSize(v30);
    v20 = 138413314;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v19;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "addItemProvider:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", &v20, 0x34u);
  }

  self->_itemsReady = 0;
  [(AirDropBrowserViewController *)self handleOtherItemProvider:v12 withDataType:v16 attachmentName:v13 description:v14 previewImage:v15];

  return 1;
}

- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)a3
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
        if ([v12 identifer] == a3)
        {
          v13 = [v12 URL];
          if (v13)
          {
            v14 = [v12 previewImage];
            v15 = v14 == 0;

            if (!v15)
            {
              v16 = [v12 previewImage];
              [v4 addObject:v16];

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

          v21 = [*(*(&v30 + 1) + 8 * j) pathExtension];
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v21, 0);
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
    v21 = [NSNumber numberWithInteger:a3];
    [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto setObject:obj forKeyedSubscript:v21];
LABEL_25:
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v4 = [(AirDropBrowserViewController *)self collectionView:a3];
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

- (void)_collectTelemetryForPeople:(id)a3
{
  v4 = a3;
  v14 = mach_continuous_time();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
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

        v10 = [*(*(&v15 + 1) + 8 * i) realName];
        if (v10)
        {
          v11 = [(NSMapTable *)self->_realNameToFirstSeenTimestamp objectForKey:v10];
          if (!v11)
          {
            realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
            v13 = [NSNumber numberWithUnsignedLongLong:v14];
            [(NSMapTable *)realNameToFirstSeenTimestamp setObject:v13 forKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_emitTelemetryForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 realName];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_realNameToFirstSeenTimestamp objectForKey:v5];
    if (v6)
    {
      v7 = airdrop_ui_log();
      v8 = os_signpost_id_make_with_pointer(v7, v4);

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
        v14 = [v6 unsignedLongLongValue];
        v15 = 134349056;
        v16 = v14;
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