@interface SFAirDropActivityViewController
+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)a3;
+ (BOOL)isAirDropAvailable;
- ($115C4C562B26FF47E01F9F4EA65B5887)sendingApplicationAuditToken;
- (BOOL)addAttributedString:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)addData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8;
- (BOOL)addImage:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)addItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7;
- (BOOL)addString:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)addURL:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)createURLPayloadForData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8 completion:(id)a9;
- (BOOL)enableModernShareSheeet;
- (BOOL)isBluetoothEnabled;
- (BOOL)isDebugMode;
- (BOOL)isTetheredModeEnabled;
- (BOOL)isValidPayload:(id)a3 toPerson:(id)a4 invalidMessage:(id *)a5;
- (BOOL)isWifiEnabled;
- (CGSize)_cachedPreferredItemSize;
- (CGSize)calculatePreferredContentSize;
- (CGSize)suggestedThumbnailSize;
- (SFAirDropActivityViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SFAirDropActivityViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_fontWithStyle:(id)a3 maxSizeCategory:(id)a4 traits:(unsigned int)a5;
- (id)attributedStringWithTitle:(id)a3 content:(id)a4;
- (id)cellForPerson:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)indexSetToIndexPaths:(id)a3 inSection:(int64_t)a4;
- (id)instructionsText;
- (id)noAWDLText;
- (id)noWiFiBTText;
- (id)preferredFocusEnvironments;
- (id)titleText;
- (id)wifiBtHelpTextLocalizedStringKey;
- (void)_collectTelemetryForPeople:(id)a3;
- (void)_createiOSLayoutConstraints;
- (void)_createtvOSLayoutConstraints;
- (void)_emitTelemetryForPerson:(id)a3;
- (void)_setIsLoadingActivityItemProviders:(BOOL)a3;
- (void)_startTelemetry;
- (void)_stopTelemetry;
- (void)_updateExclusionPathsForTextViews;
- (void)_updateFontSizes;
- (void)browserDidUpdatePeople:(id)a3;
- (void)cleanupWithSelectedActivityType:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)dealloc;
- (void)didEnterBackground:(id)a3;
- (void)enableAirDropRequiredFeatures;
- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)a3;
- (void)handleImageItemProvider:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (void)handleLivePhotoItemProvider:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)handleOtherItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7;
- (void)invalidate;
- (void)personCollectionViewCellDidFinishTransfer:(id)a3;
- (void)personCollectionViewCellDidStartTransfer:(id)a3;
- (void)personCollectionViewCellDidTerminateTransfer:(id)a3;
- (void)setOtherActivityViewPresented:(BOOL)a3;
- (void)setSendingApplicationAuditToken:(id *)a3;
- (void)setSharedItemsAvailable:(BOOL)a3;
- (void)startBrowsing;
- (void)startTransferForPeople:(id)a3;
- (void)stopBrowsing;
- (void)subscribeToProgresses;
- (void)subscribedProgress:(id)a3 forPersonWithRealName:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)unpublishedProgressForPersonWithRealName:(id)a3;
- (void)unsubscribeToProgresses;
- (void)updatePreferredContentSize;
- (void)updateShowMoreButtonForShowPeople:(BOOL)a3 inactive:(BOOL)a4 active:(BOOL)a5 static:(BOOL)a6;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willEnterForeground:(id)a3;
- (void)wirelessSettingsDidChange:(id)a3;
@end

@implementation SFAirDropActivityViewController

- (SFAirDropActivityViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v30.receiver = self;
  v30.super_class = SFAirDropActivityViewController;
  v4 = [(SFAirDropActivityViewController *)&v30 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = SFLocalizedStringForKey();
    [(SFAirDropActivityViewController *)v4 setTitle:v5];

    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    sendingAppBundleID = v4->_sendingAppBundleID;
    v4->_sendingAppBundleID = v7;

    v4->_attachmentCount = 0;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    personToProgress = v4->_personToProgress;
    v4->_personToProgress = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    personToStoredTransferFinalState = v4->_personToStoredTransferFinalState;
    v4->_personToStoredTransferFinalState = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    personToSharedItemsRequestID = v4->_personToSharedItemsRequestID;
    v4->_personToSharedItemsRequestID = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    sharedItemsRequestIDToPreviewPhoto = v4->_sharedItemsRequestIDToPreviewPhoto;
    v4->_sharedItemsRequestIDToPreviewPhoto = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    cachedSharedItems = v4->_cachedSharedItems;
    v4->_cachedSharedItems = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v4->_operationQueue;
    v4->_operationQueue = v19;

    [(NSOperationQueue *)v4->_operationQueue setMaxConcurrentOperationCount:1];
    v21 = [MEMORY[0x1E696AFB0] UUID];
    v22 = [v21 UUIDString];
    v23 = [v22 substringWithRange:{24, 12}];
    sessionID = v4->_sessionID;
    v4->_sessionID = v23;

    v4->_sharedItemsAvailable = 1;
    v4->_logger = 0;
    v25 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    realNameToFirstSeenTimestamp = v4->_realNameToFirstSeenTimestamp;
    v4->_realNameToFirstSeenTimestamp = v25;

    v4->_sharedItemsCount = 0;
    v27 = [MEMORY[0x1E695DF90] dictionary];
    sharedItemsMap = v4->_sharedItemsMap;
    v4->_sharedItemsMap = v27;
  }

  return v4;
}

- (void)dealloc
{
  [(SFAirDropActivityViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v3 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UICollectionView *)self->_collectionView visibleCells];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  [(SFWirelessSettingsController *)self->_wirelessSettings setDelegate:0];
  [(SFWirelessSettingsController *)self->_wirelessSettings invalidate];
  [(SFAirDropBrowser *)self->_browser setDelegate:0];
  [(SFAirDropBrowser *)self->_browser stop];
  if (self->_logger)
  {
    SFOperationCancel();
    CFRelease(self->_logger);
    self->_logger = 0;
  }
}

- (void)startBrowsing
{
  if (!self->_browserPaused)
  {
    v12 = v2;
    if (self->_browser && ![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
    {
      [(SFAirDropActivityViewController *)self stopBrowsing];
    }

    [(SFAirDropActivityViewController *)self _startTelemetry:v3];
    [(SFAirDropActivityViewController *)self subscribeToProgresses];
    v7 = objc_alloc_init(MEMORY[0x1E69CDDF8]);
    browser = self->_browser;
    self->_browser = v7;

    [(SFAirDropBrowser *)self->_browser setSessionID:self->_sessionID];
    [(SFAirDropBrowser *)self->_browser setBatchDelegate:self];
    [(SFAirDropBrowser *)self->_browser setSendingAppBundleID:self->_sendingAppBundleID];
    [(SFAirDropBrowser *)self->_browser setUrlsBeingShared:self->_urlsBeingShared];
    [(SFAirDropBrowser *)self->_browser setPhotosAssetIDs:self->_photosAssetIDs];
    [(SFAirDropBrowser *)self->_browser start];
    v9 = objc_alloc_init(MEMORY[0x1E69CDEE8]);
    wirelessSettings = self->_wirelessSettings;
    self->_wirelessSettings = v9;

    v11 = self->_wirelessSettings;

    [(SFWirelessSettingsController *)v11 setDelegate:self];
  }
}

- (void)stopBrowsing
{
  self->_browserPaused = 0;
  [(SFAirDropActivityViewController *)self unsubscribeToProgresses];
  [(SFWirelessSettingsController *)self->_wirelessSettings setDelegate:0];
  [(SFWirelessSettingsController *)self->_wirelessSettings invalidate];
  wirelessSettings = self->_wirelessSettings;
  self->_wirelessSettings = 0;

  v4 = [(NSArray *)self->_people count];
  [(SFAirDropBrowser *)self->_browser stop];
  [(SFAirDropBrowser *)self->_browser setDelegate:0];
  browser = self->_browser;
  self->_browser = 0;

  people = self->_people;
  self->_people = 0;

  collectionView = self->_collectionView;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SFAirDropActivityViewController_stopBrowsing__block_invoke;
  v8[3] = &unk_1E7EE36B0;
  v8[4] = self;
  v8[5] = v4;
  [(UICollectionView *)collectionView performBatchUpdates:v8 completion:0];
  [(SFAirDropActivityViewController *)self _stopTelemetry];
}

void __47__SFAirDropActivityViewController_stopBrowsing__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 32) + 1192);
      v4 = [MEMORY[0x1E696AC88] indexPathForItem:v2 inSection:0];
      v6[0] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
      [v3 deleteItemsAtIndexPaths:v5];

      ++v2;
    }

    while (*(a1 + 40) > v2);
  }
}

- (void)_setIsLoadingActivityItemProviders:(BOOL)a3
{
  if (!self->_didSelectNode && self->_browserPaused != a3)
  {
    if (a3)
    {
      self->_browserPaused = 1;
      [(SFAirDropBrowser *)self->_browser pause];
      if (![(SFAirDropActivityViewController *)self isDebugMode])
      {
        return;
      }

      v4 = [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      self->_browserPaused = 0;
      [(SFAirDropBrowser *)self->_browser resume];
      if (![(SFAirDropActivityViewController *)self isDebugMode])
      {
        return;
      }

      v4 = [MEMORY[0x1E69DC888] greenColor];
    }

    v5 = v4;
    v6 = [v4 CGColor];
    v7 = [(SFAirDropActivityViewController *)self view];
    v8 = [v7 layer];
    [v8 setBorderColor:v6];

    v10 = [(SFAirDropActivityViewController *)self view];
    v9 = [v10 layer];
    [v9 setBorderWidth:5.0];
  }
}

- (void)didEnterBackground:(id)a3
{
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {

    [(SFAirDropActivityViewController *)self stopBrowsing];
  }
}

- (void)willEnterForeground:(id)a3
{
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {

    [(SFAirDropActivityViewController *)self startBrowsing];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v11 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v4 addObserver:self selector:sel_willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  if (!self->_browser && ![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {
    [(SFAirDropActivityViewController *)self startBrowsing];
  }

  [(SFAirDropActivityViewController *)self updateContentAreaAnimated:0];
  titleLabel = self->_titleLabel;
  v6 = 0.4;
  if (self->_darkStyleOnLegacyApp)
  {
    v6 = 0.6;
  }

  v7 = [MEMORY[0x1E69DC888] colorWithWhite:v6 alpha:1.0];
  [(UILabel *)titleLabel setColor:v7];

  v8 = 0.05;
  if (self->_darkStyleOnLegacyApp)
  {
    v8 = 0.95;
  }

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:v8 alpha:1.0];
  [(UITextView *)self->_noWifiTextView setTextColor:v9];
  [(UITextView *)self->_instructionsTextView setTextColor:v9];
  [(UITextView *)self->_noAWDLTextView setTextColor:v9];
  v10 = [(SFAirDropActivityViewController *)self view];
  [v10 setNeedsLayout];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {
    [(SFAirDropActivityViewController *)self stopBrowsing];
  }

  v6.receiver = self;
  v6.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v6 viewDidDisappear:v3];
}

- (id)wifiBtHelpTextLocalizedStringKey
{
  if ([(SFWirelessSettingsController *)self->_wirelessSettings deviceSupportsWAPI])
  {
    v2 = @"SENDER_WLAN_BLUETOOTH_HELP_TEXT";
  }

  else
  {
    v2 = @"SENDER_WIFI_BLUETOOTH_HELP_TEXT";
  }

  return v2;
}

- (id)noWiFiBTText
{
  overriddenNoWiFIBTText = self->_overriddenNoWiFIBTText;
  if (overriddenNoWiFIBTText)
  {
    v3 = overriddenNoWiFIBTText;
  }

  else
  {
    v4 = [(SFAirDropActivityViewController *)self wifiBtHelpTextLocalizedStringKey];
    v3 = SFLocalizedStringForKey();
  }

  return v3;
}

- (id)noAWDLText
{
  overriddenNoAWDLText = self->_overriddenNoAWDLText;
  if (overriddenNoAWDLText)
  {
    v3 = overriddenNoAWDLText;
  }

  else
  {
    [(SFWirelessSettingsController *)self->_wirelessSettings isWirelessCarPlayEnabled];
    v3 = SFLocalizedStringForKey();
  }

  return v3;
}

- (id)instructionsText
{
  overriddenInstructionsText = self->_overriddenInstructionsText;
  if (overriddenInstructionsText)
  {
    v3 = overriddenInstructionsText;
  }

  else
  {
    v3 = SFLocalizedStringForKey();
  }

  return v3;
}

- (id)titleText
{
  overriddenTitleText = self->_overriddenTitleText;
  if (overriddenTitleText)
  {
    v3 = overriddenTitleText;
  }

  else
  {
    v3 = SFLocalizedStringForKey();
  }

  return v3;
}

- (void)viewDidLoad
{
  v70.receiver = self;
  v70.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v70 viewDidLoad];
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {
    [(SFAirDropActivityViewController *)self startBrowsing];
  }

  v69 = [(SFAirDropActivityViewController *)self view];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v69 setBackgroundColor:v3];

  [v69 setOpaque:0];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v11];

  v12 = [(SFAirDropActivityViewController *)self titleText];
  [(UILabel *)self->_titleLabel setText:v12];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAlpha:1.0];
  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v13 = objc_alloc_init(SFCollectionViewLayout);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v13;

  v15 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:self->_collectionViewLayout collectionViewLayout:{v5, v6, v7, v8}];
  collectionView = self->_collectionView;
  self->_collectionView = v15;

  [(UICollectionView *)self->_collectionView setClipsToBounds:0];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v17];

  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PersonCellID"];
  [(UICollectionView *)self->_collectionView setAllowsMultipleSelection:1];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [[SFAirDropIconView alloc] initWithFrame:v5, v6, v7, v8];
  airDropIconView = self->_airDropIconView;
  self->_airDropIconView = v18;

  [(SFAirDropIconView *)self->_airDropIconView addTarget:self action:sel_enableAirDropRequiredFeatures forControlEvents:64];
  [(SFAirDropIconView *)self->_airDropIconView setAlpha:0.0];
  [(SFAirDropIconView *)self->_airDropIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_enableAirDropRequiredFeatures];
  [v68 setNumberOfTapsRequired:1];
  v20 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:{v5, v6, v7, v8}];
  noWifiTextView = self->_noWifiTextView;
  self->_noWifiTextView = v20;

  [(UITextView *)self->_noWifiTextView setScrollingEnabled:0];
  v22 = [(UITextView *)self->_noWifiTextView textContainer];
  [v22 setLineFragmentPadding:0.0];

  v23 = [(UITextView *)self->_noWifiTextView textContainer];
  [v23 setMaximumNumberOfLines:0];

  v24 = [(UITextView *)self->_noWifiTextView textContainer];
  [v24 setLineBreakMode:4];

  v25 = *MEMORY[0x1E69DDCE0];
  v26 = *(MEMORY[0x1E69DDCE0] + 8);
  v27 = *(MEMORY[0x1E69DDCE0] + 16);
  v28 = *(MEMORY[0x1E69DDCE0] + 24);
  [(UITextView *)self->_noWifiTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], v26, v27, v28];
  v29 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_noWifiTextView setBackgroundColor:v29];

  [(UITextView *)self->_noWifiTextView setAlpha:0.0];
  [(UITextView *)self->_noWifiTextView setTextAlignment:4];
  v30 = [(SFAirDropActivityViewController *)self title];
  v31 = [(SFAirDropActivityViewController *)self noWiFiBTText];
  v32 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v30 content:v31];
  [(UITextView *)self->_noWifiTextView setAttributedText:v32];

  [(UITextView *)self->_noWifiTextView addGestureRecognizer:v68];
  [(UITextView *)self->_noWifiTextView setUserInteractionEnabled:1];
  [(UITextView *)self->_noWifiTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [[SFAirDropActiveIconView alloc] initWithFrame:0 grayscale:v5, v6, v7, v8];
  airDropActiveIconView = self->_airDropActiveIconView;
  self->_airDropActiveIconView = v33;

  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setAlpha:0.0];
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [MEMORY[0x1E69DC888] clearColor];
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setBackgroundColor:v35];

  v36 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:{v5, v6, v7, v8}];
  instructionsTextView = self->_instructionsTextView;
  self->_instructionsTextView = v36;

  [(UITextView *)self->_instructionsTextView setScrollingEnabled:0];
  v38 = [(UITextView *)self->_instructionsTextView textContainer];
  [v38 setLineFragmentPadding:0.0];

  [(UITextView *)self->_instructionsTextView setTextContainerInset:v25, v26, v27, v28];
  v39 = [(UITextView *)self->_instructionsTextView textContainer];
  [v39 setMaximumNumberOfLines:0];

  v40 = [(UITextView *)self->_instructionsTextView textContainer];
  [v40 setLineBreakMode:4];

  v41 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_instructionsTextView setBackgroundColor:v41];

  [(UITextView *)self->_instructionsTextView setAlpha:0.0];
  [(UITextView *)self->_instructionsTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = [[SFAirDropActiveIconView alloc] initWithFrame:1 grayscale:v5, v6, v7, v8];
  airDropInactiveIconView = self->_airDropInactiveIconView;
  self->_airDropInactiveIconView = v42;

  [(SFAirDropActiveIconView *)self->_airDropInactiveIconView setAlpha:0.0];
  [(SFAirDropActiveIconView *)self->_airDropInactiveIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:{v5, v6, v7, v8}];
  noAWDLTextView = self->_noAWDLTextView;
  self->_noAWDLTextView = v44;

  [(UITextView *)self->_noAWDLTextView setScrollingEnabled:0];
  v46 = [(UITextView *)self->_noAWDLTextView textContainer];
  [v46 setLineFragmentPadding:0.0];

  [(UITextView *)self->_noAWDLTextView setTextContainerInset:v25, v26, v27, v28];
  v47 = [(UITextView *)self->_noAWDLTextView textContainer];
  [v47 setMaximumNumberOfLines:0];

  v48 = [(UITextView *)self->_noAWDLTextView textContainer];
  [v48 setLineBreakMode:4];

  v49 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_noAWDLTextView setBackgroundColor:v49];

  [(UITextView *)self->_noAWDLTextView setAlpha:0.0];
  [(UITextView *)self->_noAWDLTextView setTextAlignment:4];
  v50 = [(SFAirDropActivityViewController *)self title];
  v51 = [(SFAirDropActivityViewController *)self noAWDLText];
  v52 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v50 content:v51];
  [(UITextView *)self->_noAWDLTextView setAttributedText:v52];

  [(UITextView *)self->_noAWDLTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = objc_alloc_init(MEMORY[0x1E69DC738]);
  showMoreButton = self->_showMoreButton;
  self->_showMoreButton = v53;

  [(UIButton *)self->_showMoreButton setAlpha:0.0];
  v55 = self->_showMoreButton;
  v56 = SFLocalizedStringForKey();
  [(UIButton *)v55 setTitle:v56 forState:0];

  v57 = self->_showMoreButton;
  v58 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIButton *)v57 setTitleColor:v58 forState:0];

  [(UIButton *)self->_showMoreButton addTarget:self action:sel_showMore_ forEvents:64];
  [(UIButton *)self->_showMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_showMoreButton setContentEdgeInsets:0.0, 1.0, 0.0, 1.0];
  v59 = MEMORY[0x1E69DB878];
  v60 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v60 _scaledValueForValue:11.0];
  v61 = [v59 systemFontOfSize:?];
  [(UILabel *)self->_titleLabel setFont:v61];

  [(UITextView *)self->_instructionsTextView setTextAlignment:4];
  v62 = [(SFAirDropActivityViewController *)self title];
  v63 = [(SFAirDropActivityViewController *)self instructionsText];
  v64 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v62 content:v63];
  [(UITextView *)self->_instructionsTextView setAttributedText:v64];

  [v69 addSubview:self->_collectionView];
  [v69 addSubview:self->_titleLabel];
  [v69 addSubview:self->_airDropIconView];
  [v69 addSubview:self->_noWifiTextView];
  [v69 addSubview:self->_airDropActiveIconView];
  [v69 addSubview:self->_instructionsTextView];
  [v69 addSubview:self->_airDropInactiveIconView];
  [v69 addSubview:self->_noAWDLTextView];
  [v69 addSubview:self->_showMoreButton];
  v65 = MEMORY[0x1E696ACD8];
  v66 = _NSDictionaryOfVariableBindings(&cfstr_Collectionview.isa, self->_collectionView, 0);
  v67 = [v65 constraintsWithVisualFormat:@"H:|[_collectionView]|" options:0 metrics:0 views:v66];

  [v69 addConstraints:v67];
  [(SFAirDropActivityViewController *)self _createiOSLayoutConstraints];
  [(SFAirDropActivityViewController *)self _updateFontSizes];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v23 viewDidLayoutSubviews];
  v3 = [(SFAirDropActivityViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {

    v5 = *MEMORY[0x1E69DDC58];
LABEL_4:
    [(SFAirDropActivityViewController *)self _updateExclusionPathsForTextViews];
    goto LABEL_5;
  }

  v5 = *MEMORY[0x1E69DDC58];
  v6 = [(SFAirDropActivityViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(v5, v7);

  if (v8 == NSOrderedAscending)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView bounds];
  Width = CGRectGetWidth(v24);
  v10 = SFRoundToScreen(Width * 0.5);
  v11 = [(SFAirDropActivityViewController *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);
  v14 = UIContentSizeCategoryCompareToCategory(v5, v12);
  if (IsAccessibilityCategory || v14 == NSOrderedAscending)
  {
    v18 = 16.0;
    if (v14 == NSOrderedAscending && !IsAccessibilityCategory)
    {
      collectionViewLayout = self->_collectionViewLayout;
      v21 = [(SFAirDropActivityViewController *)self view];
      [v21 bounds];
      [(SFCollectionViewLayout *)collectionViewLayout firstItemCenterForContainerWidth:CGRectGetWidth(v26)];
      v18 = v22 - v10;
    }

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_textViewConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_airdropViewYConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_largeTextTextViewConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_largeTextAirdropViewYConstraints];
    titleLabelTopConstraintDefaultConstant = self->_titleLabelTopConstraintDefaultConstant + 3.0;
  }

  else
  {
    v15 = self->_collectionViewLayout;
    v16 = [(SFAirDropActivityViewController *)self view];
    [v16 bounds];
    [(SFCollectionViewLayout *)v15 firstItemCenterForContainerWidth:CGRectGetWidth(v25)];
    v18 = v17 - v10;

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_largeTextTextViewConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_largeTextAirdropViewYConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_textViewConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_airdropViewYConstraints];
    titleLabelTopConstraintDefaultConstant = self->_titleLabelTopConstraintDefaultConstant;
  }

  [(NSLayoutConstraint *)self->_titleLabelTopConstraint setConstant:titleLabelTopConstraintDefaultConstant];
  [(NSLayoutConstraint *)self->_airDropActiveIconLeftConstraint setConstant:v18];
  [(NSLayoutConstraint *)self->_instructionsRightConstraint setConstant:-v18];
  [(NSLayoutConstraint *)self->_airDropInactiveIconLeftConstraint setConstant:v18];
  [(NSLayoutConstraint *)self->_noAWDLRightConstraint setConstant:-v18];
  [(NSLayoutConstraint *)self->_airDropIconLeftConstraint setConstant:v18];
  [(NSLayoutConstraint *)self->_noWifiRightConstraint setConstant:-v18];
  [(SFAirDropActivityViewController *)self updatePreferredContentSize];
}

- (void)_updateExclusionPathsForTextViews
{
  v41[1] = *MEMORY[0x1E69E9840];
  [(UIButton *)self->_showMoreButton alpha];
  if (v3 == 0.0)
  {
    v15 = [(UITextView *)self->_instructionsTextView textContainer];
    v16 = MEMORY[0x1E695E0F0];
    [v15 setExclusionPaths:MEMORY[0x1E695E0F0]];

    v17 = [(UITextView *)self->_noWifiTextView textContainer];
    [v17 setExclusionPaths:v16];

    v18 = [(UITextView *)self->_noAWDLTextView textContainer];
    [v18 setExclusionPaths:v16];

    [(UITextView *)self->_instructionsTextView sizeToFit];
    [(UITextView *)self->_noWifiTextView sizeToFit];
    noAWDLTextView = self->_noAWDLTextView;

    [(UITextView *)noAWDLTextView sizeToFit];
  }

  else
  {
    [(UIButton *)self->_showMoreButton frame];
    v5 = v4;
    v7 = v6;
    v8 = [(SFAirDropActivityViewController *)self view];
    v9 = [v8 _shouldReverseLayoutDirection];
    [(UITextView *)self->_instructionsTextView frame];
    if (v9)
    {
      MinX = CGRectGetMinX(*&v10);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v10) - v5;
    }

    [(UITextView *)self->_instructionsTextView frame];
    v20 = v7 * 0.5 + CGRectGetMaxY(v43) - v7;
    v21 = MEMORY[0x1E69DC728];
    instructionsTextView = self->_instructionsTextView;
    v23 = [(SFAirDropActivityViewController *)self view];
    [(UITextView *)instructionsTextView convertRect:v23 fromView:MinX, v20, v5, v7];
    v24 = [v21 bezierPathWithRect:?];
    v41[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v26 = [(UITextView *)self->_instructionsTextView textContainer];
    [v26 setExclusionPaths:v25];

    v27 = MEMORY[0x1E69DC728];
    noWifiTextView = self->_noWifiTextView;
    v29 = [(SFAirDropActivityViewController *)self view];
    [(UITextView *)noWifiTextView convertRect:v29 fromView:MinX, v20, v5, v7];
    v30 = [v27 bezierPathWithRect:?];
    v40 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    v32 = [(UITextView *)self->_noWifiTextView textContainer];
    [v32 setExclusionPaths:v31];

    v33 = MEMORY[0x1E69DC728];
    v34 = self->_noAWDLTextView;
    v35 = [(SFAirDropActivityViewController *)self view];
    [(UITextView *)v34 convertRect:v35 fromView:MinX, v20, v5, v7];
    v36 = [v33 bezierPathWithRect:?];
    v39 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v38 = [(UITextView *)self->_noAWDLTextView textContainer];
    [v38 setExclusionPaths:v37];
  }
}

- (void)_createiOSLayoutConstraints
{
  v177[2] = *MEMORY[0x1E69E9840];
  v3 = [(SFAirDropActivityViewController *)self view];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = v5 & 0xFFFFFFFFFFFFFFFBLL;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = dbl_1B9EDEAA0[(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 10;
  }

  else
  {
    v10 = 6;
  }

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = 9;
  }

  else
  {
    v11 = 3;
  }

  if (v6 == 1)
  {
    v12 = 78.0;
  }

  else
  {
    v12 = 62.0;
  }

  self->_minimumPreferredContentSize.width = 0.0;
  self->_minimumPreferredContentSize.height = v9;
  v176[0] = @"topPadding";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v176[1] = @"middlePadding";
  v177[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v177[1] = v14;
  v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:v176 count:2];

  v15 = [(UILabel *)self->_titleLabel centerXAnchor];
  v16 = [v3 safeAreaLayoutGuide];
  v17 = [v16 centerXAnchor];
  v171 = [v15 constraintEqualToAnchor:v17];

  [v3 addConstraint:v171];
  v18 = [(UILabel *)self->_titleLabel widthAnchor];
  v19 = v3;
  v20 = [v3 safeAreaLayoutGuide];
  v21 = [v20 widthAnchor];
  v22 = [v18 constraintEqualToAnchor:v21 constant:-20.0];
  [v19 addConstraint:v22];

  v23 = v11;
  self->_titleLabelTopConstraintDefaultConstant = v11;
  v24 = [(UILabel *)self->_titleLabel topAnchor];
  v25 = [v19 safeAreaLayoutGuide];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:self->_titleLabelTopConstraintDefaultConstant];
  titleLabelTopConstraint = self->_titleLabelTopConstraint;
  self->_titleLabelTopConstraint = v27;

  [v19 addConstraint:self->_titleLabelTopConstraint];
  v29 = MEMORY[0x1E696ACD8];
  v30 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelColl.isa, self->_titleLabel, self->_collectionView, 0);
  v31 = [v29 constraintsWithVisualFormat:@"V:[_titleLabel]-middlePadding-[_collectionView]|" options:0 metrics:v170 views:v30];
  [v19 addConstraints:v31];

  airDropActiveIconView = self->_airDropActiveIconView;
  v33 = [(SFAirDropActiveIconView *)airDropActiveIconView widthAnchor];
  v34 = [MEMORY[0x1E69DC938] currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if ((v35 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v36 = 76.0;
  }

  else
  {
    v36 = 60.0;
  }

  v37 = [v33 constraintEqualToConstant:v36];
  [(SFAirDropActiveIconView *)airDropActiveIconView addConstraint:v37];

  v38 = self->_airDropActiveIconView;
  v39 = [(SFAirDropActiveIconView *)v38 heightAnchor];
  v40 = [MEMORY[0x1E69DC938] currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if ((v41 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v42 = 76.0;
  }

  else
  {
    v42 = 60.0;
  }

  v43 = [v39 constraintEqualToConstant:v42];
  [(SFAirDropActiveIconView *)v38 addConstraint:v43];

  v44 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView leadingAnchor];
  v45 = [v19 safeAreaLayoutGuide];
  v46 = [v45 leadingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  airDropActiveIconLeftConstraint = self->_airDropActiveIconLeftConstraint;
  self->_airDropActiveIconLeftConstraint = v47;

  [v19 addConstraint:self->_airDropActiveIconLeftConstraint];
  airDropIconView = self->_airDropIconView;
  v50 = [(SFAirDropIconView *)airDropIconView widthAnchor];
  v51 = [v50 constraintEqualToConstant:v12];
  [(SFAirDropIconView *)airDropIconView addConstraint:v51];

  v52 = self->_airDropIconView;
  v53 = [(SFAirDropIconView *)v52 heightAnchor];
  v54 = [v53 constraintEqualToConstant:v12];
  [(SFAirDropIconView *)v52 addConstraint:v54];

  v55 = [(SFAirDropIconView *)self->_airDropIconView leadingAnchor];
  v56 = [v19 safeAreaLayoutGuide];
  v57 = [v56 leadingAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  airDropIconLeftConstraint = self->_airDropIconLeftConstraint;
  self->_airDropIconLeftConstraint = v58;

  [v19 addConstraint:self->_airDropIconLeftConstraint];
  v60 = [(UITextView *)self->_noAWDLTextView leadingAnchor];
  v61 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:15.0];
  [v19 addConstraint:v62];

  v63 = [(UITextView *)self->_noAWDLTextView trailingAnchor];
  v64 = [v19 safeAreaLayoutGuide];
  v65 = [v64 trailingAnchor];
  v66 = [v63 constraintEqualToAnchor:v65 constant:5.0];
  noAWDLRightConstraint = self->_noAWDLRightConstraint;
  self->_noAWDLRightConstraint = v66;

  [v19 addConstraint:self->_noAWDLRightConstraint];
  airDropInactiveIconView = self->_airDropInactiveIconView;
  v69 = [(SFAirDropActiveIconView *)airDropInactiveIconView widthAnchor];
  v70 = [MEMORY[0x1E69DC938] currentDevice];
  v71 = [v70 userInterfaceIdiom];

  if ((v71 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v72 = 76.0;
  }

  else
  {
    v72 = 60.0;
  }

  v73 = [v69 constraintEqualToConstant:v72];
  [(SFAirDropActiveIconView *)airDropInactiveIconView addConstraint:v73];

  v74 = self->_airDropInactiveIconView;
  v75 = [(SFAirDropActiveIconView *)v74 heightAnchor];
  v76 = [MEMORY[0x1E69DC938] currentDevice];
  v77 = [v76 userInterfaceIdiom];

  if ((v77 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v78 = 76.0;
  }

  else
  {
    v78 = 60.0;
  }

  v79 = [v75 constraintEqualToConstant:v78];
  [(SFAirDropActiveIconView *)v74 addConstraint:v79];

  v80 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView leadingAnchor];
  v81 = [v19 safeAreaLayoutGuide];
  v82 = [v81 leadingAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  airDropInactiveIconLeftConstraint = self->_airDropInactiveIconLeftConstraint;
  self->_airDropInactiveIconLeftConstraint = v83;

  [v19 addConstraint:self->_airDropInactiveIconLeftConstraint];
  v85 = [(UITextView *)self->_noWifiTextView leadingAnchor];
  v86 = [(SFAirDropIconView *)self->_airDropIconView trailingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:15.0];
  [v19 addConstraint:v87];

  v88 = [(UITextView *)self->_noWifiTextView trailingAnchor];
  v89 = [v19 safeAreaLayoutGuide];
  v90 = [v89 trailingAnchor];
  v91 = [v88 constraintEqualToAnchor:v90 constant:-12.0];
  noWifiRightConstraint = self->_noWifiRightConstraint;
  self->_noWifiRightConstraint = v91;

  v93 = v19;
  [v19 addConstraint:self->_noWifiRightConstraint];
  v94 = [(UITextView *)self->_instructionsTextView leadingAnchor];
  v95 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView trailingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:15.0];
  [v19 addConstraint:v96];

  v97 = [(UITextView *)self->_instructionsTextView trailingAnchor];
  v98 = [v19 safeAreaLayoutGuide];
  v99 = [v98 trailingAnchor];
  v100 = [v97 constraintEqualToAnchor:v99 constant:-5.0];
  instructionsRightConstraint = self->_instructionsRightConstraint;
  self->_instructionsRightConstraint = v100;

  [v19 addConstraint:self->_instructionsRightConstraint];
  v102 = [(UIButton *)self->_showMoreButton trailingAnchor];
  v103 = [(UITextView *)self->_instructionsTextView trailingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];
  [v19 addConstraint:v104];

  v105 = [(UIButton *)self->_showMoreButton bottomAnchor];
  v106 = [(UITextView *)self->_instructionsTextView bottomAnchor];
  v107 = [v105 constraintEqualToAnchor:v106];
  [v19 addConstraint:v107];

  v108 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView centerYAnchor];
  v166 = v108;
  v109 = [(UICollectionView *)self->_collectionView topAnchor];
  v164 = v109;
  v110 = [MEMORY[0x1E69DC938] currentDevice];
  v111 = [v110 userInterfaceIdiom];

  if ((v111 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v112 = 38.0;
  }

  else
  {
    v112 = 30.0;
  }

  v113 = [v108 constraintEqualToAnchor:v109 constant:floor(v112) + -1.0];
  v175[0] = v113;
  v114 = [(SFAirDropIconView *)self->_airDropIconView centerYAnchor];
  v115 = [(UICollectionView *)self->_collectionView topAnchor];
  v116 = [v114 constraintEqualToAnchor:v115 constant:floor(v12 * 0.5) + -2.0];
  v175[1] = v116;
  v117 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView centerYAnchor];
  v118 = [(UICollectionView *)self->_collectionView topAnchor];
  v119 = [MEMORY[0x1E69DC938] currentDevice];
  v120 = [v119 userInterfaceIdiom];

  if ((v120 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v121 = 38.0;
  }

  else
  {
    v121 = 30.0;
  }

  v122 = [v117 constraintEqualToAnchor:v118 constant:floor(v121) + -1.0];
  v175[2] = v122;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:3];
  airdropViewYConstraints = self->_airdropViewYConstraints;
  self->_airdropViewYConstraints = v123;

  v125 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [v125 lineHeight];
  v126 = [(SFAirDropActivityViewController *)self traitCollection];
  [v126 displayScale];
  UIRoundToScale();
  v128 = v127;

  v167 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView topAnchor];
  v169 = [v93 safeAreaLayoutGuide];
  v165 = [v169 topAnchor];
  v129 = v128 + v23;
  v130 = [v167 constraintEqualToAnchor:v165 constant:v129];
  largeTextAirdropViewYConstraint = self->_largeTextAirdropViewYConstraint;
  self->_largeTextAirdropViewYConstraint = v130;

  v174[0] = v130;
  v132 = [(SFAirDropIconView *)self->_airDropIconView topAnchor];
  v168 = v93;
  v133 = [v93 safeAreaLayoutGuide];
  v134 = [v133 topAnchor];
  v135 = [v132 constraintEqualToAnchor:v134 constant:v129];
  v174[1] = v135;
  v136 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView topAnchor];
  v137 = [v93 safeAreaLayoutGuide];
  v138 = [v137 topAnchor];
  v139 = [v136 constraintEqualToAnchor:v138 constant:v129];
  v174[2] = v139;
  v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:3];
  largeTextAirdropViewYConstraints = self->_largeTextAirdropViewYConstraints;
  self->_largeTextAirdropViewYConstraints = v140;

  v142 = [(UITextView *)self->_noAWDLTextView centerYAnchor];
  v143 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView centerYAnchor];
  v144 = [v142 constraintEqualToAnchor:v143];
  v173[0] = v144;
  v145 = [(UITextView *)self->_noWifiTextView centerYAnchor];
  v146 = [(SFAirDropIconView *)self->_airDropIconView centerYAnchor];
  v147 = [v145 constraintEqualToAnchor:v146];
  v173[1] = v147;
  v148 = [(UITextView *)self->_instructionsTextView centerYAnchor];
  v149 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView centerYAnchor];
  v150 = [v148 constraintEqualToAnchor:v149];
  v173[2] = v150;
  v151 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:3];
  textViewConstraints = self->_textViewConstraints;
  self->_textViewConstraints = v151;

  v153 = [(UITextView *)self->_noAWDLTextView topAnchor];
  v154 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView topAnchor];
  v155 = [v153 constraintEqualToAnchor:v154];
  v172[0] = v155;
  v156 = [(UITextView *)self->_noWifiTextView topAnchor];
  v157 = [(SFAirDropIconView *)self->_airDropIconView topAnchor];
  v158 = [v156 constraintEqualToAnchor:v157];
  v172[1] = v158;
  v159 = [(UITextView *)self->_instructionsTextView topAnchor];
  v160 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView topAnchor];
  v161 = [v159 constraintEqualToAnchor:v160];
  v172[2] = v161;
  v162 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:3];
  largeTextTextViewConstraints = self->_largeTextTextViewConstraints;
  self->_largeTextTextViewConstraints = v162;
}

- (void)_createtvOSLayoutConstraints
{
  v110 = [(SFAirDropActivityViewController *)self view];
  v3 = [(UIVisualEffectView *)self->_titleVibrancyView widthAnchor];
  v4 = [v110 widthAnchor];
  v109 = [v3 constraintEqualToAnchor:v4];

  v5 = [(UIVisualEffectView *)self->_titleVibrancyView heightAnchor];
  v6 = [v110 heightAnchor];
  v108 = [v5 constraintEqualToAnchor:v6 multiplier:0.22];

  v7 = [(UIVisualEffectView *)self->_titleVibrancyView topAnchor];
  v8 = [v110 topAnchor];
  v107 = [v7 constraintEqualToAnchor:v8];

  [v109 setActive:1];
  [v108 setActive:1];
  [v107 setActive:1];
  v9 = [(UIVisualEffectView *)self->_iconsVibrancyView widthAnchor];
  v10 = [v110 widthAnchor];
  v106 = [v9 constraintEqualToAnchor:v10];

  v11 = [(UIVisualEffectView *)self->_iconsVibrancyView heightAnchor];
  v12 = [v110 heightAnchor];
  v105 = [v11 constraintEqualToAnchor:v12 multiplier:0.45];

  v13 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v14 = [(UIVisualEffectView *)self->_titleVibrancyView bottomAnchor];
  v104 = [v13 constraintEqualToAnchor:v14];

  [v106 setActive:1];
  [v105 setActive:1];
  [v104 setActive:1];
  v15 = [(UICollectionView *)self->_collectionView widthAnchor];
  v16 = [v110 widthAnchor];
  v103 = [v15 constraintEqualToAnchor:v16];

  v17 = [(UICollectionView *)self->_collectionView heightAnchor];
  v18 = [v110 heightAnchor];
  v102 = [v17 constraintEqualToAnchor:v18 multiplier:0.33];

  v19 = [(UICollectionView *)self->_collectionView topAnchor];
  v20 = [(UIVisualEffectView *)self->_titleVibrancyView bottomAnchor];
  v101 = [v19 constraintEqualToAnchor:v20 constant:33.0];

  [v103 setActive:1];
  [v102 setActive:1];
  [v101 setActive:1];
  v21 = [(UIVisualEffectView *)self->_instructionsVibrancyView widthAnchor];
  v22 = [v110 widthAnchor];
  v100 = [v21 constraintEqualToAnchor:v22];

  v23 = [(UIVisualEffectView *)self->_instructionsVibrancyView heightAnchor];
  v24 = [v110 heightAnchor];
  v99 = [v23 constraintEqualToAnchor:v24 multiplier:0.33];

  v25 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v26 = [(UIVisualEffectView *)self->_iconsVibrancyView bottomAnchor];
  v98 = [v25 constraintEqualToAnchor:v26];

  [v100 setActive:1];
  [v99 setActive:1];
  [v98 setActive:1];
  v27 = [(UILabel *)self->_titleLabel centerXAnchor];
  v28 = [v110 centerXAnchor];
  v97 = [v27 constraintEqualToAnchor:v28];

  v29 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v30 = [v110 topAnchor];
  v96 = [v29 constraintEqualToAnchor:v30 constant:198.0];

  [v97 setActive:1];
  [v96 setActive:1];
  v31 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView widthAnchor];
  v95 = [v31 constraintEqualToConstant:266.0];

  v32 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView heightAnchor];
  v93 = [v32 constraintEqualToConstant:266.0];

  v33 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView centerXAnchor];
  v34 = [v110 centerXAnchor];
  v94 = [v33 constraintEqualToAnchor:v34];

  v35 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView topAnchor];
  v36 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v92 = [v35 constraintEqualToAnchor:v36 constant:70.0];

  [v94 setActive:1];
  [v95 setActive:1];
  [v93 setActive:1];
  [v92 setActive:1];
  v37 = [(SFAirDropIconView *)self->_airDropIconView widthAnchor];
  v91 = [v37 constraintEqualToConstant:266.0];

  v38 = [(SFAirDropIconView *)self->_airDropIconView heightAnchor];
  v90 = [v38 constraintEqualToConstant:266.0];

  v39 = [(SFAirDropIconView *)self->_airDropIconView centerXAnchor];
  v40 = [v110 centerXAnchor];
  v89 = [v39 constraintEqualToAnchor:v40];

  v41 = [(SFAirDropIconView *)self->_airDropIconView topAnchor];
  v42 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v88 = [v41 constraintEqualToAnchor:v42];

  [v91 setActive:1];
  [v90 setActive:1];
  [v89 setActive:1];
  [v88 setActive:1];
  v43 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView widthAnchor];
  v87 = [v43 constraintEqualToConstant:266.0];

  v44 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView heightAnchor];
  v86 = [v44 constraintEqualToConstant:266.0];

  v45 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView centerXAnchor];
  v46 = [v110 centerXAnchor];
  v85 = [v45 constraintEqualToAnchor:v46];

  v47 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView topAnchor];
  v48 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v84 = [v47 constraintEqualToAnchor:v48];

  [v87 setActive:1];
  [v86 setActive:1];
  [v85 setActive:1];
  [v84 setActive:1];
  v49 = [(UITextView *)self->_noAWDLTextView topAnchor];
  v50 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v83 = [v49 constraintEqualToAnchor:v50];

  [v83 setActive:1];
  v51 = [(UITextView *)self->_noWifiTextView topAnchor];
  v52 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v82 = [v51 constraintEqualToAnchor:v52];

  [v82 setActive:1];
  v53 = [(UITextView *)self->_instructionsTextView topAnchor];
  v54 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v81 = [v53 constraintEqualToAnchor:v54 constant:3.0];

  v55 = [(UITextView *)self->_instructionsTextView widthAnchor];
  v56 = [v110 widthAnchor];
  v80 = [v55 constraintEqualToAnchor:v56 multiplier:0.53];

  v57 = [(UITextView *)self->_instructionsTextView centerXAnchor];
  v58 = [v110 centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  [v81 setActive:1];
  [v80 setActive:1];
  [v59 setActive:1];
  v60 = [(UIFocusContainerGuide *)self->_fcg topAnchor];
  v61 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:0.0];

  v63 = [(UIFocusContainerGuide *)self->_fcg bottomAnchor];
  v64 = [v110 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:0.0];

  v66 = [(UIFocusContainerGuide *)self->_fcg widthAnchor];
  v67 = [v110 widthAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:0.0];

  [v62 setActive:1];
  [v65 setActive:1];
  [v68 setActive:1];
  v69 = [(UIButton *)self->_doneButton topAnchor];
  v70 = [(UITextView *)self->_instructionsTextView lastBaselineAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:40.0];

  v72 = [(UIButton *)self->_doneButton centerXAnchor];
  v73 = [v110 centerXAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:0.0];

  v75 = [(UIButton *)self->_doneButton widthAnchor];
  v76 = [v75 constraintGreaterThanOrEqualToConstant:200.0];

  v77 = [(UIButton *)self->_doneButton heightAnchor];
  v78 = [v77 constraintEqualToConstant:82.0];

  [v71 setActive:1];
  [v74 setActive:1];
  [v76 setActive:1];
  [v78 setActive:1];
  v79 = [(UIVisualEffectView *)self->_iconsVibrancyView contentView];
  [v79 bringSubviewToFront:self->_airDropActiveIconView];
}

- (id)attributedStringWithTitle:(id)a3 content:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = MEMORY[0x1E696AEC0];
  if (v8)
  {
    v10 = SFLocalizedStringForKey();
    [v9 stringWithFormat:v10, v6, v7];
  }

  else
  {
    v10 = SFLocalizedStringForKey();
    [v9 stringWithFormat:v10, v7, v37];
  }
  v11 = ;

  v12 = [(SFAirDropActivityViewController *)self traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v13))
  {
  }

  else
  {
    v14 = *MEMORY[0x1E69DDC58];
    v15 = [(SFAirDropActivityViewController *)self traitCollection];
    v16 = [v15 preferredContentSizeCategory];
    v17 = UIContentSizeCategoryCompareToCategory(v14, v16);

    if (v17 != NSOrderedAscending)
    {
      v18 = MEMORY[0x1E69DB878];
      v19 = *MEMORY[0x1E69DDCF8];
      v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v20 _scaledValueForValue:11.0];
      v21 = [v18 boldSystemFontOfSize:?];

      v22 = MEMORY[0x1E69DB878];
      v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v19];
      [v23 _scaledValueForValue:11.0];
      v24 = [v22 systemFontOfSize:?];
      goto LABEL_9;
    }
  }

  v25 = *MEMORY[0x1E69DDD10];
  v26 = [(SFAirDropActivityViewController *)self _screen];
  v27 = _SFPersonCollectionViewMaximumSizeCategory(v26);
  v21 = [(SFAirDropActivityViewController *)self _fontWithStyle:v25 maxSizeCategory:v27 traits:2];

  v23 = [(SFAirDropActivityViewController *)self _screen];
  v28 = _SFPersonCollectionViewMaximumSizeCategory(v23);
  v24 = [(SFAirDropActivityViewController *)self _fontWithStyle:v25 maxSizeCategory:v28 traits:0];

LABEL_9:
  v29 = [v11 rangeOfString:v6];
  v31 = v30;
  v40 = *MEMORY[0x1E69DB648];
  v32 = v40;
  v41[0] = v21;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v38 = v32;
  v39 = v24;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v35 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:v34];
  [v35 setAttributes:v33 range:{v29, v31}];

  return v35;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SFAirDropActivityViewController;
  v4 = a3;
  [(SFAirDropActivityViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(SFAirDropActivityViewController *)self traitCollection:v10.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    self->_shouldExpandTextIfNeeded = 0;
    [(SFAirDropActivityViewController *)self _updateFontSizes];
    v8 = [(SFAirDropActivityViewController *)self view];
    [v8 setNeedsUpdateConstraints];

    v9 = [(SFAirDropActivityViewController *)self view];
    [v9 setNeedsLayout];

    [(SFAirDropActivityViewController *)self updateContentAreaAnimated:0];
  }
}

+ (BOOL)isAirDropAvailable
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([v2 isAirDropAllowed])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v3 = [v4 isClassroomEnabled];
  }

  return v3;
}

+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SFAirDropActivityViewController *)a2 airDropActivityCanPerformActivityWithItemClasses:v5];
  }

  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[SFAirDropActivityViewController airDropActivityCanPerformActivityWithItemClasses:];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v43;
    *&v9 = 138412290;
    v33 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v13 description];
        if ([v14 length] >= 0x3D)
        {
          v15 = [v13 description];
          v16 = [v15 substringToIndex:60];

          v14 = v16;
        }

        v17 = airdrop_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = v33;
          v49 = v14;
          _os_log_debug_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEBUG, "Top level values: %@", buf, 0xCu);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v10);
  }

  sIgnoreStrings = 0;
  if ([v7 count] >= 2)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([*(*(&v38 + 1) + 8 * j) isSubclassOfClass:objc_opt_class()])
          {
            sIgnoreStrings = 1;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v20);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = v7;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
  v25 = 0;
  if (v24)
  {
    v26 = 0;
    v27 = 0;
    v28 = *v35;
    do
    {
      v29 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = *(*(&v34 + 1) + 8 * v29);
        v25 = v25 || ([v30 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class());
        if (([v30 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()))
        {
          v25 = 1;
          v27 = 1;
        }

        if (([v30 isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v30, "isSubclassOfClass:", objc_opt_class()))
        {
          v25 = 1;
          v26 = 1;
        }

        ++v29;
      }

      while (v24 != v29);
      v31 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
      v24 = v31;
    }

    while (v31);
    LOBYTE(v24) = v26 & v27;
  }

  sIgnoreStrings = v24 & 1;
  return v25;
}

- (BOOL)enableModernShareSheeet
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableModernShareSheet", @"com.apple.Sharing", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = [(NSString *)self->_sendingAppBundleID lowercaseString];
    if ([v5 isEqualToString:@"com.apple.mobileslideshow"])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = [(NSString *)self->_sendingAppBundleID lowercaseString];
      v6 = [v7 isEqualToString:@"com.apple.camera"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)isDebugMode
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"EnableBrowserDebugMode", @"com.apple.Sharing", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)isTetheredModeEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"EnableTetheredDisplayPortMode", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)isWifiEnabled
{
  if (([(SFWirelessSettingsController *)self->_wirelessSettings isWifiEnabled]& 1) != 0)
  {
    return 1;
  }

  return [(SFAirDropActivityViewController *)self isTetheredModeEnabled];
}

- (BOOL)isBluetoothEnabled
{
  if (([(SFWirelessSettingsController *)self->_wirelessSettings isBluetoothEnabled]& 1) != 0)
  {
    return 1;
  }

  return [(SFAirDropActivityViewController *)self isTetheredModeEnabled];
}

- (void)enableAirDropRequiredFeatures
{
  [(SFWirelessSettingsController *)self->_wirelessSettings setWifiEnabled:1];
  wirelessSettings = self->_wirelessSettings;

  [(SFWirelessSettingsController *)wirelessSettings setBluetoothEnabled:1];
}

- (void)setOtherActivityViewPresented:(BOOL)a3
{
  if (self->_otherActivityViewPresented != a3)
  {
    self->_otherActivityViewPresented = a3;
  }
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_doneFocused)
  {
    if (self->_doneButton)
    {
      v6[0] = self->_doneButton;
      p_collectionView = v6;
LABEL_6:
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_collectionView count:1];
      goto LABEL_8;
    }
  }

  else if (self->_collectionView)
  {
    collectionView = self->_collectionView;
    p_collectionView = &collectionView;
    goto LABEL_6;
  }

  v3 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v3;
}

- (void)updateShowMoreButtonForShowPeople:(BOOL)a3 inactive:(BOOL)a4 active:(BOOL)a5 static:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  shouldExpandTextIfNeeded = self->_shouldExpandTextIfNeeded;
  v12 = shouldExpandTextIfNeeded || a4;
  v13 = !shouldExpandTextIfNeeded;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = a5 || a6;
  }

  height = self->_minimumPreferredContentSize.height;
  [(NSLayoutConstraint *)self->_largeTextAirdropViewYConstraint constant];
  v17 = height - v16;
  if (v14 && !v9)
  {
    if (v8 || v7 || v6)
    {
      v23 = &OBJC_IVAR___SFAirDropActivityViewController__noWifiTextView;
      if (v7)
      {
        v23 = &OBJC_IVAR___SFAirDropActivityViewController__instructionsTextView;
      }

      if (v8)
      {
        v23 = &OBJC_IVAR___SFAirDropActivityViewController__noAWDLTextView;
      }

      v24 = *v23;
      [*(&self->super.super.super.isa + v24) frame];
      v20 = v25;
      v19 = v26;
      v22 = v27;
      v21 = v28;
      v18 = *(&self->super.super.super.isa + v24);
    }

    else
    {
      v18 = 0;
      v20 = *MEMORY[0x1E695F058];
      v19 = *(MEMORY[0x1E695F058] + 8);
      v22 = *(MEMORY[0x1E695F058] + 16);
      v21 = *(MEMORY[0x1E695F058] + 24);
    }

    v29 = [(SFAirDropActivityViewController *)self view];
    v30 = [v29 _shouldReverseLayoutDirection];

    if (v30)
    {
      v52.origin.x = v20;
      v52.origin.y = v19;
      v52.size.width = v22;
      v52.size.height = v21;
      v31 = CGRectGetMaxX(v52) + -16.0;
    }

    else
    {
      v32 = [(SFAirDropActivityViewController *)self view];
      [v32 frame];
      v33 = CGRectGetWidth(v53) + -16.0;
      v54.origin.x = v20;
      v54.origin.y = v19;
      v54.size.width = v22;
      v54.size.height = v21;
      v31 = v33 - CGRectGetMinX(v54);
    }

    v34 = [v18 textContainer];
    [v34 setMaximumNumberOfLines:0];

    [v18 sizeThatFits:{v31, 0.0}];
    v14 = v35 > v17;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v36 = [(UITextView *)self->_instructionsTextView attributedText];
  v37 = [v36 length];
  v38 = *MEMORY[0x1E69DB648];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __92__SFAirDropActivityViewController_updateShowMoreButtonForShowPeople_inactive_active_static___block_invoke;
  v45[3] = &unk_1E7EE3FA8;
  v45[4] = &v46;
  [v36 enumerateAttribute:v38 inRange:0 options:v37 usingBlock:{0, v45}];
  if (v9 || v14)
  {
    [v47[5] _bodyLeading];
    *&v39 = v17 / v39;
    v40 = vcvtms_u32_f32(*&v39);
  }

  else
  {
    v40 = 0;
  }

  v41 = [(UITextView *)self->_noWifiTextView textContainer];
  [v41 setMaximumNumberOfLines:v40];

  v42 = [(UITextView *)self->_noAWDLTextView textContainer];
  [v42 setMaximumNumberOfLines:v40];

  v43 = [(UITextView *)self->_instructionsTextView textContainer];
  [v43 setMaximumNumberOfLines:v40];

  v44 = 0.0;
  if (v14)
  {
    v44 = 1.0;
  }

  [(UIButton *)self->_showMoreButton setAlpha:v44];

  _Block_object_dispose(&v46, 8);
}

void __92__SFAirDropActivityViewController_updateShowMoreButtonForShowPeople_inactive_active_static___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a5 = 1;
  }
}

- (void)updatePreferredContentSize
{
  [(SFAirDropActivityViewController *)self calculatePreferredContentSize];

  [(SFAirDropActivityViewController *)self setPreferredContentSize:?];
}

- (void)_updateFontSizes
{
  v3 = [(SFAirDropActivityViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);
  v6 = MEMORY[0x1E69DDD10];
  if (IsAccessibilityCategory)
  {
  }

  else
  {
    v7 = *MEMORY[0x1E69DDC58];
    v8 = [(SFAirDropActivityViewController *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(v7, v9);

    if (v10 != NSOrderedAscending)
    {
      v11 = MEMORY[0x1E69DB878];
      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v12 _scaledValueForValue:11.0];
      v13 = [v11 systemFontOfSize:?];
      [(UILabel *)self->_titleLabel setFont:v13];
      v14 = 0;
      goto LABEL_6;
    }
  }

  v15 = *v6;
  v12 = [(SFAirDropActivityViewController *)self _screen];
  v13 = _SFPersonCollectionViewMaximumSizeCategory(v12);
  v16 = [(SFAirDropActivityViewController *)self _fontWithStyle:v15 maxSizeCategory:v13 traits:0];
  [(UILabel *)self->_titleLabel setFont:v16];

  v14 = 1;
LABEL_6:

  v17 = [(SFAirDropActivityViewController *)self title];
  v18 = [(SFAirDropActivityViewController *)self instructionsText];
  v19 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v17 content:v18];
  [(UITextView *)self->_instructionsTextView setAttributedText:v19];

  v20 = [(SFAirDropActivityViewController *)self title];
  v21 = [(SFAirDropActivityViewController *)self noWiFiBTText];
  v22 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v20 content:v21];
  [(UITextView *)self->_noWifiTextView setAttributedText:v22];

  v23 = [(SFAirDropActivityViewController *)self title];
  v24 = [(SFAirDropActivityViewController *)self noAWDLText];
  v25 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v23 content:v24];
  [(UITextView *)self->_noAWDLTextView setAttributedText:v25];

  if (v14)
  {
    v26 = *v6;
    v30 = [(SFAirDropActivityViewController *)self _screen];
    v27 = _SFPersonCollectionViewMaximumSizeCategory(v30);
    [(SFAirDropActivityViewController *)self _fontWithStyle:v26 maxSizeCategory:v27 traits:0];
  }

  else
  {
    v27 = MEMORY[0x1E69DB878];
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v30 _scaledValueForValue:11.0];
    [v27 systemFontOfSize:?];
  }
  v28 = ;
  v29 = [(UIButton *)self->_showMoreButton titleLabel];
  [v29 setFont:v28];

  if (v14)
  {

    v28 = v27;
  }
}

- (id)_fontWithStyle:(id)a3 maxSizeCategory:(id)a4 traits:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SFAirDropActivityViewController *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v11, v9) != NSOrderedAscending)
  {
    v12 = v9;

    v11 = v12;
  }

  v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
  if (v5)
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v13];
    v15 = [v14 fontDescriptorWithSymbolicTraits:v5];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
  }

  else
  {
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8 compatibleWithTraitCollection:v13];
  }

  return v16;
}

- (CGSize)calculatePreferredContentSize
{
  v3 = [(SFAirDropActivityViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC60]) == NSOrderedAscending)
  {
    width = self->_minimumPreferredContentSize.width;
    height = self->_minimumPreferredContentSize.height;
  }

  else
  {
    [(SFAirDropActivityViewController *)self _cachedPreferredItemSize];
    v6 = v5;
    [(UILabel *)self->_titleLabel frame];
    v8 = v6 + v7;
    p_noAWDLTextView = &self->_noAWDLTextView;
    [(UITextView *)self->_noAWDLTextView alpha];
    v11 = v10;
    [(UITextView *)self->_instructionsTextView alpha];
    v13 = v12;
    [(UITextView *)self->_noWifiTextView alpha];
    if (self->_shouldExpandTextIfNeeded && (v11 != 0.0 || v13 != 0.0 || v14 != 0.0))
    {
      v15 = &OBJC_IVAR___SFAirDropActivityViewController__airDropIconView;
      if (v13 == 0.0)
      {
        p_noWifiTextView = &self->_noWifiTextView;
      }

      else
      {
        p_noWifiTextView = &self->_instructionsTextView;
      }

      if (v13 != 0.0)
      {
        v15 = &OBJC_IVAR___SFAirDropActivityViewController__airDropActiveIconView;
      }

      if (v11 == 0.0)
      {
        p_noAWDLTextView = p_noWifiTextView;
      }

      else
      {
        v15 = &OBJC_IVAR___SFAirDropActivityViewController__airDropInactiveIconView;
      }

      [*(&self->super.super.super.isa + *v15) frame];
      v18 = v17;
      v19 = *p_noAWDLTextView;
      [(UITextView *)v19 frame];
      [(UITextView *)v19 sizeThatFits:v20, 0.0];
      if (v18 >= v21)
      {
        v8 = v18;
      }

      else
      {
        v8 = v21;
      }
    }

    if (v8 + 20.0 >= self->_minimumPreferredContentSize.height)
    {
      height = v8 + 20.0;
    }

    else
    {
      height = self->_minimumPreferredContentSize.height;
    }

    width = 0.0;
  }

  v24 = width;
  v25 = height;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)setSendingApplicationAuditToken:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  sendingAppBundleID = self->_sendingAppBundleID;
  self->_sendingAppBundleID = 0;

  v6 = *&a3->var0[4];
  *self->_sendingApplicationAuditToken.val = *a3->var0;
  *&self->_sendingApplicationAuditToken.val[4] = v6;
  v20 = 0;
  v7 = *&a3->var0[4];
  *atoken.val = *a3->var0;
  *&atoken.val[4] = v7;
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v8 = self->_sendingAppBundleID;
    self->_sendingAppBundleID = v20;
  }

  if (!self->_sendingAppBundleID)
  {
    pidp = 0;
    v9 = *&a3->var0[4];
    *atoken.val = *a3->var0;
    *&atoken.val[4] = v9;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    if (pidp)
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SFAirDropActivityViewController setSendingApplicationAuditToken:];
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", pidp];
      v12 = self->_sendingAppBundleID;
      self->_sendingAppBundleID = v11;
    }

    if (!self->_sendingAppBundleID)
    {
      v13 = airdrop_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFAirDropActivityViewController setSendingApplicationAuditToken:];
      }

      v14 = [MEMORY[0x1E696AAE8] mainBundle];
      v15 = [v14 bundleIdentifier];
      v16 = self->_sendingAppBundleID;
      self->_sendingAppBundleID = v15;
    }
  }

  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_sendingAppBundleID;
    atoken.val[0] = 138412290;
    *&atoken.val[1] = v18;
    _os_log_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEFAULT, "Sending app is %@", &atoken, 0xCu);
  }
}

- (CGSize)suggestedThumbnailSize
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UICollectionView *)v7 dequeueReusableCellWithReuseIdentifier:@"PersonCellID" forIndexPath:v6];
  v9 = [(SFAirDropActivityViewController *)self view];
  [v9 frame];
  [v8 setActivitySheetWidth:v10];

  [v8 setDarkStyleOnLegacyApp:self->_darkStyleOnLegacyApp];
  [v8 setStateBeingRestored:1];
  [v8 setDelegate:self];
  [v8 setSessionID:self->_sessionID];
  v11 = -[NSArray objectAtIndexedSubscript:](self->_people, "objectAtIndexedSubscript:", [v6 row]);
  detailCollectionView = self->_detailCollectionView;

  if (detailCollectionView == v7)
  {
    v13 = -[NSArray objectAtIndexedSubscript:](self->_people, "objectAtIndexedSubscript:", [v6 row] + (-[NSArray count](self->_people, "count") >> 1));

    v11 = v13;
  }

  [v8 setPerson:v11];
  personToStoredTransferFinalState = self->_personToStoredTransferFinalState;
  v15 = [v11 realName];
  v16 = [(NSMutableDictionary *)personToStoredTransferFinalState objectForKeyedSubscript:v15];

  if (v16)
  {
    [v8 restoreCellStateFromFinalTransferState:{objc_msgSend(v16, "integerValue")}];
  }

  personToProgress = self->_personToProgress;
  v18 = [v11 realName];
  v19 = [(NSMutableDictionary *)personToProgress objectForKeyedSubscript:v18];

  [v8 setProgress:v19];
  collectionView = self->_collectionView;
  if (v19)
  {
    [(UICollectionView *)collectionView selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
  }

  else
  {
    [(UICollectionView *)collectionView deselectItemAtIndexPath:v6 animated:0];
  }

  [v8 setSelected:v19 != 0];
  [v8 setStateBeingRestored:0];

  return v8;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = a3;
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v5 lastObject];

  v7 = [v4 cellForItemAtIndexPath:v6];

  focusedIndexPath = v6;
  if (!v7)
  {
    focusedIndexPath = self->_focusedIndexPath;
  }

  v9 = focusedIndexPath;

  return focusedIndexPath;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v6 = a4;
  v7 = [v6 nextFocusedIndexPath];
  focusedIndexPath = self->_focusedIndexPath;
  self->_focusedIndexPath = v7;

  v9 = [v6 nextFocusedView];

  LOBYTE(v6) = v9 == self->_doneButton;
  self->_doneFocused = v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 cellForItemAtIndexPath:a4];
  v8 = [v7 person];
  v9 = [v8 realName];

  [(NSMutableDictionary *)self->_personToStoredTransferFinalState removeObjectForKey:v9];
  v10 = [v7 person];
  v11 = [v10 isSuggestion];

  if (!v11)
  {
    self->_didSelectNode = 1;
    [v7 userDidSelect];
    v15 = [v7 person];
    if (self->_itemsReady)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sharedItemsRequestID];
      personToSharedItemsRequestID = self->_personToSharedItemsRequestID;
      v27 = [v15 realName];
      [(NSMutableDictionary *)personToSharedItemsRequestID setObject:v25 forKeyedSubscript:v27];

      v61 = v15;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      [(SFAirDropActivityViewController *)self startTransferForPeople:v28];
    }

    else
    {
      if (!self->_itemsRequested)
      {
        self->_itemsRequested = 1;
        v40 = self->_sharedItemsRequestID + 1;
        self->_sharedItemsRequestID = v40;
        v41 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
        v42 = self->_personToSharedItemsRequestID;
        v43 = [v15 realName];
        [(NSMutableDictionary *)v42 setObject:v41 forKeyedSubscript:v43];

        self->_generatedPreviews = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
        aBlock[3] = &unk_1E7EE3FF8;
        aBlock[4] = self;
        v58 = v40;
        v57 = v6;
        v44 = _Block_copy(aBlock);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        LODWORD(v43) = [WeakRetained conformsToProtocol:&unk_1F38264D0];

        v46 = objc_loadWeakRetained(&self->_delegate);
        v47 = v46;
        if (v43)
        {
          [v46 fmf_airDropActivityRequestingSharedItemsWithCompletionHandler:v44];
        }

        else
        {
          v48 = objc_opt_respondsToSelector();

          v49 = objc_loadWeakRetained(&self->_delegate);
          if (v48)
          {
            v59 = @"SFAirDropActivityMaxPreviewsKey";
            v60 = &unk_1F37F4048;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke_360;
            v54[3] = &unk_1E7EE3CE0;
            v55 = v44;
            [v49 airDropActivityRequestingSharedItemsWithOptions:v50 completionHandler:v54];

            v47 = v55;
          }

          else
          {
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2_361;
            v52[3] = &unk_1E7EE3CE0;
            v53 = v44;
            [v49 airDropActivityRequestingSharedItemsWithCompletionHandler:v52];

            v47 = v53;
          }
        }

        v24 = v57;
        goto LABEL_19;
      }

      v28 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sharedItemsRequestID];
      v31 = self->_personToSharedItemsRequestID;
      v32 = [v15 realName];
      [(NSMutableDictionary *)v31 setObject:v28 forKeyedSubscript:v32];
    }

LABEL_20:
    goto LABEL_21;
  }

  v12 = [v7 person];
  v13 = [v12 transportBundleID];
  v14 = [v13 isEqualToString:@"com.apple.MobileSMS"];

  if (v14)
  {
    v15 = [(SFAirDropActivityViewController *)self delegate];
    v51 = [v7 person];
    v16 = [v51 realName];
    v17 = [v7 person];
    v18 = [v17 displayName];
    v19 = [v7 person];
    [v19 secondaryName];
    v20 = v6;
    v22 = v21 = v9;
    v23 = [v22 componentsSeparatedByString:{@", "}];
    [v15 nodePressedWithGUID:v16 groupName:v18 recipients:v23];

    v9 = v21;
    v6 = v20;

    v24 = v51;
LABEL_19:

    goto LABEL_20;
  }

  v29 = [v7 person];
  v30 = [v29 transportBundleID];
  if ([v30 isEqualToString:@"com.apple.mobilemail"])
  {

LABEL_12:
    v36 = [(SFAirDropActivityViewController *)self delegate];
    v37 = [v7 person];
    v38 = [v37 displayName];
    v62[0] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    [v36 nodePressedWithRecipients:v39];

    goto LABEL_21;
  }

  v33 = [v7 person];
  v34 = [v33 transportBundleID];
  v35 = [v34 isEqualToString:@"com.apple.telephonyutilities.callservicesd"];

  if (v35)
  {
    goto LABEL_12;
  }

LABEL_21:
}

void __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
    block[3] = &unk_1E7EE3FD0;
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v20 = v4;
    v19 = v5;
    dispatch_async(v3, block);
  }

  else
  {
    [*(a1 + 32) setNeedsRequestingSharedItems];
    if ([*(a1 + 40) numberOfItemsInSection:0] >= 1)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 40);
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
        v9 = [v7 cellForItemAtIndexPath:v8];

        if ([v9 isSelected])
        {
          v10 = [v9 person];
          v11 = *(*(a1 + 32) + 1272);
          v12 = [v10 realName];
          v13 = [v11 objectForKeyedSubscript:v12];
          v14 = [v13 integerValue];
          v15 = *(a1 + 48);

          if (v14 == v15)
          {
            [v9 userDidCancel];
            v16 = *(*(a1 + 32) + 1192);
            v17 = [v16 indexPathForCell:v9];
            [v16 deselectItemAtIndexPath:v17 animated:0];
          }
        }

        ++v6;
      }

      while ([*(a1 + 40) numberOfItemsInSection:0] > v6);
    }
  }
}

void __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(void *a1)
{
  [*(a1[4] + 1312) waitUntilAllOperationsAreFinished];
  v2 = a1[4];
  if (*(v2 + 1428) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 1296);
      v5 = *(v2 + 1432);
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
      v7 = [v5 objectForKeyedSubscript:v6];
      [v4 addObject:v7];

      v3 = (v3 + 1);
      v2 = a1[4];
    }

    while (v3 < *(v2 + 1428));
  }

  [v2 generateSpecialPreviewPhotoForRequestID:a1[6]];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
  block[3] = &unk_1E7EE3FD0;
  v8 = a1[5];
  block[4] = a1[4];
  v9 = v8;
  v10 = a1[6];
  v12 = v9;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1305) = 1;
  v15 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 40) numberOfItemsInSection:0] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 40);
      v4 = [MEMORY[0x1E696AC88] indexPathForRow:v2 inSection:0];
      v5 = [v3 cellForItemAtIndexPath:v4];

      if ([v5 isSelected])
      {
        v6 = *(*(a1 + 32) + 1272);
        v7 = [v5 person];
        v8 = [v7 realName];
        v9 = [v6 objectForKeyedSubscript:v8];

        if (!v9)
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
          v11 = *(*(a1 + 32) + 1272);
          v12 = [v5 person];
          v13 = [v12 realName];
          [v11 setObject:v10 forKeyedSubscript:v13];
        }

        v14 = [v5 person];
        [v15 addObject:v14];
      }

      ++v2;
    }

    while ([*(a1 + 40) numberOfItemsInSection:0] > v2);
  }

  [*(a1 + 32) startTransferForPeople:v15];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  [v4 userDidCancel];
}

- (CGSize)_cachedPreferredItemSize
{
  v3 = [(SFAirDropActivityViewController *)self view];
  [v3 bounds];
  Width = CGRectGetWidth(v14);
  v5 = [(SFAirDropActivityViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  [SFPersonCollectionViewCell _cachedPreferredItemSizeForViewWidth:v6 sizeCategory:Width];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)subscribeToProgresses
{
  if (!self->_progressToken)
  {
    v3 = MEMORY[0x1E696AE38];
    v4 = [MEMORY[0x1E696AE38] sf_publishingKeyForApp:self->_sendingAppBundleID sessionID:self->_sessionID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__SFAirDropActivityViewController_subscribeToProgresses__block_invoke;
    v7[3] = &unk_1E7EE4020;
    v7[4] = self;
    v5 = [v3 _addSubscriberForCategory:v4 usingPublishingHandler:v7];
    progressToken = self->_progressToken;
    self->_progressToken = v5;
  }
}

id __56__SFAirDropActivityViewController_subscribeToProgresses__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sf_personRealName];
  [*(a1 + 32) subscribedProgress:v3 forPersonWithRealName:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SFAirDropActivityViewController_subscribeToProgresses__block_invoke_2;
  v8[3] = &unk_1E7EE3748;
  v8[4] = *(a1 + 32);
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

- (void)unsubscribeToProgresses
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_progressToken)
  {
    [MEMORY[0x1E696AE38] _removeSubscriber:?];
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

        [(SFAirDropActivityViewController *)self unpublishedProgressForPersonWithRealName:*(*(&v9 + 1) + 8 * v8++)];
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
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = v6;
  [(NSMutableDictionary *)self->_personToProgress setObject:v6 forKeyedSubscript:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(UICollectionView *)self->_collectionView visibleCells];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 person];
          v15 = [v14 realName];
          v16 = [v15 isEqualToString:v7];

          if (v16)
          {
            [v13 setProgress:v17];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)unpublishedProgressForPersonWithRealName:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_personToProgress objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sf_transferState];
    if ((v7 - 4) <= 2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      [(NSMutableDictionary *)self->_personToStoredTransferFinalState setObject:v8 forKeyedSubscript:v4];
    }
  }

  v18 = v6;
  [(NSMutableDictionary *)self->_personToProgress removeObjectForKey:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(UICollectionView *)self->_collectionView visibleCells];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 person];
          v16 = [v15 realName];
          v17 = [v16 isEqualToString:v4];

          if (v17)
          {
            [v14 setProgress:0];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)personCollectionViewCellDidTerminateTransfer:(id)a3
{
  collectionView = self->_collectionView;
  v4 = [(UICollectionView *)collectionView indexPathForCell:a3];
  [(UICollectionView *)collectionView deselectItemAtIndexPath:v4 animated:0];
}

- (void)personCollectionViewCellDidStartTransfer:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 airDropActivityDidSuccessfullyStartTransfer];
  }
}

- (void)personCollectionViewCellDidFinishTransfer:(id)a3
{
  collectionView = self->_collectionView;
  v5 = [(UICollectionView *)collectionView indexPathForCell:a3];
  [(UICollectionView *)collectionView deselectItemAtIndexPath:v5 animated:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained airDropActivityDidSuccessfullyCompleteTransfer];
}

- (void)wirelessSettingsDidChange:(id)a3
{
  v4 = [(SFAirDropActivityViewController *)self title];
  v5 = [(SFAirDropActivityViewController *)self noWiFiBTText];
  v6 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v4 content:v5];
  [(UITextView *)self->_noWifiTextView setAttributedText:v6];

  v7 = [(SFAirDropActivityViewController *)self title];
  v8 = [(SFAirDropActivityViewController *)self noAWDLText];
  v9 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:v7 content:v8];
  [(UITextView *)self->_noAWDLTextView setAttributedText:v9];

  [(SFAirDropActivityViewController *)self updateContentAreaAnimated:0];
}

- (id)indexSetToIndexPaths:(id)a3 inSection:(int64_t)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SFAirDropActivityViewController_indexSetToIndexPaths_inSection___block_invoke;
  v10[3] = &unk_1E7EE4048;
  v8 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateIndexesUsingBlock:v10];

  return v8;
}

void __66__SFAirDropActivityViewController_indexSetToIndexPaths_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

- (void)browserDidUpdatePeople:(id)a3
{
  people = self->_people;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke;
  v5[3] = &unk_1E7EE40C0;
  v5[4] = self;
  [a3 getChangedIndexesForClientPeopleList:people withCompletion:v5];
}

void __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (![*(*(a1 + 32) + 1400) count])
  {
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.SharingUI.ShareSheet"];

    if (v12)
    {
      [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
      [*(*(a1 + 32) + 1192) setAlpha:0.0];
    }
  }

  v13 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_2;
  v18[3] = &unk_1E7EE4070;
  v19 = *(a1 + 32);
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_373;
  v17[3] = &unk_1E7EE4098;
  v17[4] = v19;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  [v13 _animateUsingDefaultDampedSpringWithDelay:32 initialSpringVelocity:v18 options:v17 animations:0.0 completion:0.0];
}

void __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 1192);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_3;
  v8[3] = &unk_1E7EE4070;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 performBatchUpdates:v8 completion:0];
}

void __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) valueForKeyPath:@"displayName"];
    v4 = SFCompactStringFromCollection();
    v5 = SFCompactStringFromCollection();
    v6 = SFCompactStringFromCollection();
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B9E4B000, v2, OS_LOG_TYPE_DEFAULT, "browserDidUpdatePeople %@ with deleted %@, inserted %@", &v9, 0x20u);
  }

  objc_storeStrong((*(a1 + 56) + 1400), *(a1 + 32));
  [*(a1 + 56) _collectTelemetryForPeople:*(*(a1 + 56) + 1400)];
  [*(a1 + 56) updateContentAreaAnimated:0];
  v7 = [*(a1 + 56) indexSetToIndexPaths:*(a1 + 40) inSection:0];
  if ([v7 count])
  {
    [*(*(a1 + 56) + 1192) deleteItemsAtIndexPaths:v7];
  }

  v8 = [*(a1 + 56) indexSetToIndexPaths:*(a1 + 48) inSection:0];
  if ([v8 count])
  {
    [*(*(a1 + 56) + 1192) insertItemsAtIndexPaths:v8];
  }
}

void __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_373(uint64_t a1)
{
  if (([MEMORY[0x1E69DD250] areAnimationsEnabled] & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 bundleIdentifier];
    v4 = [v3 isEqualToString:@"com.apple.SharingUI.ShareSheet"];

    if (v4)
    {
      [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke_2_374;
      v5[3] = &unk_1E7EE3720;
      v5[4] = *(a1 + 32);
      [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.25];
    }
  }
}

- (id)cellForPerson:(id)a3
{
  v4 = a3;
  if ([(SFAirDropActivityViewController *)self collectionView:self->_collectionView numberOfItemsInSection:0]< 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      collectionView = self->_collectionView;
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
      v8 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v7];

      v9 = [v8 person];
      v10 = [v9 isEqual:v4];

      if (v10)
      {
        break;
      }

      if ([(SFAirDropActivityViewController *)self collectionView:self->_collectionView numberOfItemsInSection:0]<= ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (void)setSharedItemsAvailable:(BOOL)a3
{
  if (self->_sharedItemsAvailable != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_sharedItemsAvailable = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__SFAirDropActivityViewController_setSharedItemsAvailable___block_invoke;
    v5[3] = &unk_1E7EE3720;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.35];
  }
}

void __59__SFAirDropActivityViewController_setSharedItemsAvailable___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 1448))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.35;
  }

  v15[0] = *(v1 + 1024);
  v15[1] = *(v1 + 1192);
  v15[2] = *(v1 + 1088);
  v15[3] = *(v1 + 1104);
  [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 alpha];
        if (v9 != 0.0)
        {
          [v8 setAlpha:v2];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)startTransferForPeople:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = a3;
  v45 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v45)
  {
    v44 = *v57;
    *&v3 = 138412546;
    v41 = v3;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v56 + 1) + 8 * i);
        [(SFAirDropActivityViewController *)self _emitTelemetryForPerson:v41];
        personToSharedItemsRequestID = self->_personToSharedItemsRequestID;
        v5 = [v47 realName];
        v6 = [(NSMutableDictionary *)personToSharedItemsRequestID objectForKeyedSubscript:v5];

        if (v6)
        {
          v7 = [(NSMutableDictionary *)self->_sharedItemsRequestIDToPreviewPhoto objectForKeyedSubscript:v6];
          v49 = [MEMORY[0x1E695DF70] array];
          v8 = self->_cachedSharedItems;
          objc_sync_enter(v8);
          v9 = [(NSMutableOrderedSet *)self->_cachedSharedItems copy];
          objc_sync_exit(v8);

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = v9;
          v10 = [v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v10)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = *v53;
            while (1)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v53 != v14)
                {
                  objc_enumerationMutation(v50);
                }

                v16 = *(*(&v52 + 1) + 8 * j);
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
                    [v49 addObject:v16];
                    v11 |= v20 ^ 1;
                    v12 |= v20;
                    continue;
                  }
                }
              }

              v10 = [v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
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

          v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
          if ([v49 count])
          {
            v24 = 0;
            do
            {
              v25 = [v49 objectAtIndexedSubscript:v24];
              v26 = v25;
              if ((v21 & 1) == 0 || ([v25 wasString] & 1) == 0)
              {
                v27 = [v26 URL];
                [v23 addObject:v27];
              }

              ++v24;
            }

            while ([v49 count] > v24);
          }

          v51 = 0;
          v28 = [(SFAirDropActivityViewController *)self isValidPayload:v23 toPerson:v47 invalidMessage:&v51];
          v29 = v51;
          if (v28)
          {
            sendingAppBundleID = self->_sendingAppBundleID;
            sessionID = self->_sessionID;
            v32 = SFScaleAndRotateImage(v7, 540.0);
            v33 = v32;
            [v47 startSendForBundleID:sendingAppBundleID sessionID:sessionID items:v23 description:v13 previewImage:objc_msgSend(v32 fromShareSheet:{"CGImage"), 0}];
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
            v36 = [(SFAirDropActivityViewController *)self cellForPerson:v47];
            [v36 userDidCancel];
            collectionView = self->_collectionView;
            v38 = [(UICollectionView *)collectionView indexPathForCell:v36];
            [(UICollectionView *)collectionView deselectItemAtIndexPath:v38 animated:0];

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            LOBYTE(collectionView) = objc_opt_respondsToSelector();

            if (collectionView)
            {
              v40 = objc_loadWeakRetained(&self->_delegate);
              [v40 airDropActivityDidFailToStartTransfer];
            }

            v29 = v36;
          }
        }

        else
        {
          v7 = airdrop_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(a2);
            *buf = v41;
            v61 = v22;
            v62 = 2112;
            v63 = v47;
            _os_log_error_impl(&dword_1B9E4B000, v7, OS_LOG_TYPE_ERROR, "%@ failed to find request ID for %@", buf, 0x16u);
          }
        }
      }

      v45 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v45);
  }
}

- (BOOL)isValidPayload:(id)a3 toPerson:(id)a4 invalidMessage:(id *)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v76 = 0;
  v77 = 0;
  SFFakeFilesAndItemsArrayForURLs();
  v8 = 0;
  v9 = 0;
  v75 = 0;
  v74 = 0;
  v62 = SFContentTypes();
  v60 = 0;
  v61 = v9;
  if (([v7 supportsPasses] & 1) == 0)
  {
    v63 = v7;
    v58 = v6;
    v59 = v8;
    v21 = [v8 firstObject];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69CDF90]];
    v12 = [v22 pathExtension];

    [v62 allKeys];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v73 = 0u;
    v23 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v71;
      v26 = 1;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(obj);
          }

          if (SFIsPass())
          {
            v28 = [v63 isUnknown];
            v29 = @"TRANSFER_TO_PERSON_NO_WALLET_TEXT";
            if (v28)
            {
              v29 = @"TRANSFER_TO_DEVICE_NO_WALLET_TEXT";
            }

            v30 = MEMORY[0x1E696AEC0];
            v31 = v29;
            v32 = SFLocalizedStringForKey();
            v33 = MEMORY[0x1E696AEC0];
            SFLocalizedStringForKey();
            v35 = v34 = v12;

            v36 = [v63 displayName];
            v37 = [v33 stringWithFormat:v35, v36];
            *a5 = [v30 stringWithFormat:v32, v37];

            v12 = v34;
            v26 = 0;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 1;
    }

    v6 = v58;
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
        v14 = [v61 firstObject];
        SFIsPasskeyCredentialLink();

        v15 = MEMORY[0x1E696AEC0];
        v16 = SFLocalizedStringForKey();
        v17 = SFLocalizedStringForKeyInStringsFileNamed();
        *a5 = [v15 stringWithFormat:v16, v17];

        v79[0] = @"supportsCredentials";
        v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "supportsCredentials")}];
        v79[1] = @"unknownPeer";
        v80[0] = v18;
        v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isUnknown")}];
        v80[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];

        SFMetricsLog();
LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = v6;
    v50 = [v12 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (!v50)
    {
      v26 = 1;
      goto LABEL_28;
    }

    v51 = v50;
    v59 = v8;
    v63 = v7;
    v52 = *v67;
    while (2)
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v67 != v52)
        {
          objc_enumerationMutation(v12);
        }

        v54 = *(*(&v66 + 1) + 8 * j);
        v55 = [MEMORY[0x1E6963608] defaultWorkspace];
        if ([v55 isApplicationAvailableToOpenURL:v54 error:0])
        {
        }

        else
        {
          v56 = [MEMORY[0x1E6963608] defaultWorkspace];
          v57 = [v56 isApplicationAvailableToOpenURL:v54 includePrivateURLSchemes:1 error:0];

          if (v57)
          {
            [v12 count];
            SFLocalizedStringForKey();
            *a5 = v26 = 0;
            goto LABEL_27;
          }
        }
      }

      v51 = [v12 countByEnumeratingWithState:&v66 objects:v78 count:16];
      v26 = 1;
      if (v51)
      {
        continue;
      }

      break;
    }

LABEL_27:
    v7 = v63;
    v8 = v59;
    goto LABEL_28;
  }

  v38 = [v9 firstObject];
  v39 = [v38 scheme];
  v12 = [v39 lowercaseString];

  MyFriendsLink = SFIsFindMyFriendsLink();
  if (MyFriendsLink)
  {
    v40 = [v7 isUnknown];
    v41 = @"TRANSFER_TO_PERSON_NO_FMF_TEXT";
    if (v40)
    {
      v41 = @"TRANSFER_TO_DEVICE_NO_FMF_TEXT";
    }

    v42 = v12;
    v43 = MEMORY[0x1E696AEC0];
    v44 = v41;
    v20 = SFLocalizedStringForKey();
    v45 = MEMORY[0x1E696AEC0];
    v46 = SFLocalizedStringForKey();

    v47 = [v7 displayName];
    v48 = [v45 stringWithFormat:v46, v47];
    *a5 = [v43 stringWithFormat:v20, v48];

    v12 = v42;
    goto LABEL_23;
  }

LABEL_24:
  v26 = MyFriendsLink ^ 1;
LABEL_28:

  return v26 & 1;
}

- (BOOL)addURL:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = airdrop_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v15 size];
    v23 = NSStringFromCGSize(v46);
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
    _os_log_debug_impl(&dword_1B9E4B000, v16, OS_LOG_TYPE_DEBUG, "addURL:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  v17 = [v12 scheme];

  if (v17)
  {
    self->_itemsReady = 0;
    if (v15 || (generatedPreviews = self->_generatedPreviews, generatedPreviews > 2))
    {
      operationQueue = self->_operationQueue;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke_431;
      v24[3] = &unk_1E7EE4110;
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
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke;
      v30[3] = &unk_1E7EE40E8;
      v31 = v12;
      v32 = v14;
      v33 = self;
      v34 = a7;
      [(NSOperationQueue *)v19 addOperationWithBlock:v30];

      v20 = v31;
    }
  }

  else
  {
    v20 = airdrop_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropActivityViewController addURL:withAttachmentName:description:previewImage:itemIndex:];
    }
  }

  return 1;
}

void __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isFileURL])
  {
    v2 = [*(a1 + 32) path];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v4, 0);
      if (PreferredIdentifierForTag)
      {
        v6 = PreferredIdentifierForTag;
        if (UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x1E69637F8]))
        {
          v7 = [MEMORY[0x1E69DCAB8] imageWithContentsOfFile:v3];
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v8 = airdrop_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke_cold_1();
        }

        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 40) previewImage:v7 identifier:*(*(a1 + 48) + 1016)];
  v10 = *(*(a1 + 48) + 1432);
  objc_sync_enter(v10);
  v11 = *(*(a1 + 48) + 1432);
  v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  [v11 setObject:v9 forKeyedSubscript:v12];

  objc_sync_exit(v10);
}

void __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke_431(uint64_t a1)
{
  v5 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 40) previewImage:*(a1 + 48) identifier:*(*(a1 + 56) + 1016)];
  v2 = *(*(a1 + 56) + 1432);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 56) + 1432);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  [v3 setObject:v5 forKeyedSubscript:v4];

  objc_sync_exit(v2);
}

- (BOOL)addImage:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = airdrop_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v12 size];
    v30 = NSStringFromCGSize(v53);
    [v15 size];
    v31 = NSStringFromCGSize(v54);
    *buf = 138413570;
    v41 = v12;
    v42 = 2112;
    v43 = v30;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    v48 = 2112;
    v49 = v15;
    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1B9E4B000, v16, OS_LOG_TYPE_DEBUG, "addImage:[%@]-size:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x3Eu);
  }

  v32 = v13;

  self->_itemsReady = 0;
  if (!v15)
  {
    v15 = v12;
  }

  v17 = MEMORY[0x1E696AEC0];
  sessionID = self->_sessionID;
  v19 = self->_attachmentCount + 1;
  self->_attachmentCount = v19;
  v20 = [v17 stringWithFormat:@"IMG_%@-%ld", sessionID, v19];
  SuggestedFilename = _UTTypeCreateSuggestedFilename();
  v22 = NSTemporaryDirectory();
  v23 = [v22 stringByAppendingPathComponent:SuggestedFilename];
  operationQueue = self->_operationQueue;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __98__SFAirDropActivityViewController_addImage_withAttachmentName_description_previewImage_itemIndex___block_invoke;
  v33[3] = &unk_1E7EE4138;
  v34 = v12;
  v35 = v23;
  v36 = v14;
  v37 = v15;
  v38 = self;
  v39 = a7;
  v25 = v15;
  v26 = v14;
  v27 = v23;
  v28 = v12;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v33];

  return 1;
}

void __98__SFAirDropActivityViewController_addImage_withAttachmentName_description_previewImage_itemIndex___block_invoke(uint64_t a1)
{
  v7 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  [v7 writeToFile:*(a1 + 40) atomically:1];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 40)];
  v3 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 1016)];

  v4 = *(*(a1 + 64) + 1432);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 64) + 1432);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 72)];
  [v5 setObject:v3 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

- (BOOL)addData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8
{
  v8 = *&a8;
  v41 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = airdrop_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v14 length];
    [v18 size];
    v26 = NSStringFromCGSize(v42);
    *buf = 134219522;
    v28 = v14;
    v29 = 2048;
    v30 = v25;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v26;
    _os_log_debug_impl(&dword_1B9E4B000, v19, OS_LOG_TYPE_DEBUG, "addData:[%p]-length:[%lu] ofType:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x48u);
  }

  self->_itemsReady = 0;
  v20 = v18;
  v21 = v20;
  if (!v20)
  {
    if (UTTypeConformsTo(v15, *MEMORY[0x1E69637F8]))
    {
      v21 = [MEMORY[0x1E69DCAB8] imageWithData:v14];
    }

    else
    {
      v21 = 0;
    }
  }

  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  v23 = [(SFAirDropActivityViewController *)self createURLPayloadForData:v14 ofType:v15 withAttachmentName:v22 description:v17 previewImage:v21 itemIndex:v8 completion:0];

  return v23;
}

- (BOOL)createURLPayloadForData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8 completion:(id)a9
{
  v44 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v42 = v14;
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
        v23 = MEMORY[0x1E696AEC0];
        v24 = self->_attachmentCount + 1;
        self->_attachmentCount = v24;
        v25 = [v23 stringWithFormat:@"%@-%ld.%@", v22, v24, v21];
      }

      else
      {
        v31 = MEMORY[0x1E696AEC0];
        v32 = self->_attachmentCount + 1;
        self->_attachmentCount = v32;
        v25 = [v31 stringWithFormat:@"%@-%ld.%@", v20, v32, v21];
      }
    }

    else
    {
      v25 = v20;
      ++self->_attachmentCount;
    }
  }

  else
  {
    v26 = UTTypeCopyPreferredTagWithClass(v14, *MEMORY[0x1E6963710]);
    if (v26)
    {
      v20 = v26;
    }

    else
    {
      v20 = @"data";
    }

    v27 = UTTypeCopyDescription(v14);
    v28 = MEMORY[0x1E696AEC0];
    sessionID = self->_sessionID;
    v30 = self->_attachmentCount + 1;
    self->_attachmentCount = v30;
    v25 = [v28 stringWithFormat:@"%@-%@-%ld.%@", v27, sessionID, v30, v20, v42];
  }

  v33 = NSTemporaryDirectory();
  v34 = [v33 stringByAppendingPathComponent:v25];
  operationQueue = self->_operationQueue;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __131__SFAirDropActivityViewController_createURLPayloadForData_ofType_withAttachmentName_description_previewImage_itemIndex_completion___block_invoke;
  v45[3] = &unk_1E7EE4160;
  v46 = v44;
  v47 = v34;
  v48 = v16;
  v49 = v17;
  v52 = a8;
  v50 = self;
  v51 = v18;
  v36 = v18;
  v37 = v17;
  v38 = v16;
  v39 = v34;
  v40 = v44;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v45];

  return 1;
}

void __131__SFAirDropActivityViewController_createURLPayloadForData_ofType_withAttachmentName_description_previewImage_itemIndex_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) writeToFile:*(a1 + 40) atomically:1];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 40)];
  v7 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 1016)];

  v3 = *(*(a1 + 64) + 1432);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 64) + 1432);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 80)];
  [v4 setObject:v7 forKeyedSubscript:v5];

  objc_sync_exit(v3);
  v6 = *(a1 + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

- (BOOL)addString:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v7 = *&a7;
  v34 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [v16 size];
    v23 = NSStringFromCGSize(v35);
    *buf = 138413314;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v23;
    _os_log_debug_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEBUG, "addString:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  if (sIgnoreStrings)
  {
    v18 = 1;
  }

  else
  {
    v19 = [v13 dataUsingEncoding:4];
    if (v15)
    {
      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a2);
        *buf = 138412290;
        v25 = v21;
        _os_log_impl(&dword_1B9E4B000, v20, OS_LOG_TYPE_DEFAULT, "%@ discarding description", buf, 0xCu);
      }
    }

    v18 = [(SFAirDropActivityViewController *)self createURLPayloadForData:v19 ofType:*MEMORY[0x1E6963870] withAttachmentName:v14 description:v15 previewImage:v16 itemIndex:v7 completion:&__block_literal_global_5];
  }

  return v18;
}

- (BOOL)addAttributedString:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v7 = *&a7;
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = airdrop_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v15 size];
    v26 = NSStringFromCGSize(v41);
    *buf = 138413314;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v26;
    _os_log_debug_impl(&dword_1B9E4B000, v16, OS_LOG_TYPE_DEBUG, "addAttributedString:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  if (sIgnoreStrings)
  {
    v17 = 1;
  }

  else
  {
    v18 = [v12 length];
    v28 = *MEMORY[0x1E69DB628];
    v29 = *MEMORY[0x1E69DB658];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v27 = 0;
    v20 = [v12 dataFromRange:0 documentAttributes:v18 error:{v19, &v27}];
    v21 = v27;

    if (v21)
    {
      v22 = airdrop_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SFAirDropActivityViewController addAttributedString:withAttachmentName:description:previewImage:itemIndex:];
      }

      v23 = [v12 string];
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v20 encoding:4];
    }

    v24 = v23;
    v17 = [(SFAirDropActivityViewController *)self addString:v23 withAttachmentName:v13 description:v14 previewImage:v15 itemIndex:v7];
  }

  return v17;
}

- (void)handleLivePhotoItemProvider:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v45[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v28 = a4;
  v13 = a5;
  v14 = a6;
  v15 = dispatch_semaphore_create(0);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v44 = *MEMORY[0x1E696A4E0];
  v45[0] = *MEMORY[0x1E696A4D8];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v17 = *MEMORY[0x1E6963818];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __117__SFAirDropActivityViewController_handleLivePhotoItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke;
  v35[3] = &unk_1E7EE41A8;
  v37 = &v38;
  v18 = v15;
  v36 = v18;
  [v12 loadItemForTypeIdentifier:v17 options:v16 completionHandler:v35];
  v19 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v18, v19);
  v20 = v14;
  v21 = v20;
  if (!v20)
  {
    v22 = MEMORY[0x1E69DCAB8];
    v23 = [v39[5] imageURL];
    v24 = [v23 path];
    v21 = [v22 imageWithContentsOfFile:v24];
  }

  operationQueue = self->_operationQueue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __117__SFAirDropActivityViewController_handleLivePhotoItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke_2;
  v29[3] = &unk_1E7EE41D0;
  v33 = &v38;
  v26 = v13;
  v30 = v26;
  v27 = v21;
  v31 = v27;
  v32 = self;
  v34 = a7;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v29];

  _Block_object_dispose(&v38, 8);
}

void __117__SFAirDropActivityViewController_handleLivePhotoItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __117__SFAirDropActivityViewController_handleLivePhotoItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke_2(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getPLPhotoLibraryClass_softClass;
  v17 = getPLPhotoLibraryClass_softClass;
  if (!getPLPhotoLibraryClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getPLPhotoLibraryClass_block_invoke;
    v13[3] = &unk_1E7EE4248;
    v13[4] = &v14;
    __getPLPhotoLibraryClass_block_invoke(v13);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = [v2 photoOutboundSharingTmpDirectoryURL];
  v5 = [*(*(*(a1 + 56) + 8) + 40) videoURL];
  v6 = [*(*(*(a1 + 56) + 8) + 40) imageURL];
  v7 = [*(*(*(a1 + 56) + 8) + 40) uniqueIdentifier];
  v8 = SFCreateLivePhotoBundle();

  v9 = [SFAirDropPayload newPayloadWithURL:v8 description:*(a1 + 32) previewImage:*(a1 + 40) identifier:*(*(a1 + 48) + 1016)];
  v10 = *(*(a1 + 48) + 1432);
  objc_sync_enter(v10);
  v11 = *(*(a1 + 48) + 1432);
  v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  [v11 setObject:v9 forKeyedSubscript:v12];

  objc_sync_exit(v10);
}

- (void)handleImageItemProvider:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v7 = *&a7;
  v31[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v30 = *MEMORY[0x1E696A4E0];
  v31[0] = *MEMORY[0x1E696A4D8];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v18 = *MEMORY[0x1E69637F8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113__SFAirDropActivityViewController_handleImageItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke;
  v21[3] = &unk_1E7EE41F8;
  v23 = &v24;
  v19 = v16;
  v22 = v19;
  [v12 loadItemForTypeIdentifier:v18 options:v17 completionHandler:v21];
  v20 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v19, v20);
  [(SFAirDropActivityViewController *)self addImage:v25[5] withAttachmentName:v13 description:v14 previewImage:v15 itemIndex:v7];

  _Block_object_dispose(&v24, 8);
}

void __113__SFAirDropActivityViewController_handleImageItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)handleOtherItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7
{
  v63[5] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v14 = *MEMORY[0x1E69637F8];
  v63[0] = *MEMORY[0x1E69638B8];
  v63[1] = v14;
  v15 = *MEMORY[0x1E6963870];
  v63[2] = *MEMORY[0x1E6963888];
  v63[3] = v15;
  v63[4] = *MEMORY[0x1E6963798];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:5];
  v17 = v16;
  if (v13)
  {
    v18 = [v16 arrayByAddingObject:v13];

    v17 = v18;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (!v20)
  {
    goto LABEL_38;
  }

  v21 = *v57;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v57 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v23 = *(*(&v56 + 1) + 8 * i);
      if ([v12 hasItemConformingToTypeIdentifier:v23])
      {
        v24 = dispatch_semaphore_create(0);
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__0;
        v54 = __Block_byref_object_dispose__0;
        v55 = 0;
        v60 = *MEMORY[0x1E696A4E0];
        v61 = *MEMORY[0x1E696A4D8];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __112__SFAirDropActivityViewController_handleOtherItemProvider_withDataType_attachmentName_description_previewImage___block_invoke;
        v47[3] = &unk_1E7EE4220;
        v49 = &v50;
        v26 = v24;
        v48 = v26;
        [v12 loadItemForTypeIdentifier:v23 options:v25 completionHandler:v47];
        v43 = v25;
        v27 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v26, v27);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v29 = MEMORY[0x1E695DFF8];
          v30 = v51[5];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_22:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && (sIgnoreStrings & 1) == 0)
            {
              v38 = v51[5];
              ++self->_sharedItemsCount;
              [(SFAirDropActivityViewController *)self addString:v38 withAttachmentName:v44 description:v45 previewImage:v46 itemIndex:?];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (sIgnoreStrings & 1) == 0)
              {
                v39 = v51[5];
                ++self->_sharedItemsCount;
                [(SFAirDropActivityViewController *)self addAttributedString:v39 withAttachmentName:v44 description:v45 previewImage:v46 itemIndex:?];
              }

              else
              {
                objc_opt_class();
                v34 = objc_opt_isKindOfClass();
                v35 = v51[5];
                if (v34)
                {
                  ++self->_sharedItemsCount;
                  [(SFAirDropActivityViewController *)self addURL:v35 withAttachmentName:v44 description:v45 previewImage:v46 itemIndex:?];
                }

                else
                {
                  objc_opt_class();
                  v36 = objc_opt_isKindOfClass();
                  v37 = v51[5];
                  if (v36)
                  {
                    ++self->_sharedItemsCount;
                    [(SFAirDropActivityViewController *)self addImage:v37 withAttachmentName:v44 description:v45 previewImage:v46 itemIndex:?];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (v13)
                      {
                        v40 = v13;
                      }

                      else
                      {
                        v41 = [v12 registeredTypeIdentifiers];
                        v40 = [v41 firstObject];
                      }

                      v42 = v51[5];
                      ++self->_sharedItemsCount;
                      [(SFAirDropActivityViewController *)self addData:v42 ofType:v40 withAttachmentName:v44 description:v45 previewImage:v46 itemIndex:v43];
                    }
                  }
                }
              }
            }

            _Block_object_dispose(&v50, 8);
            goto LABEL_38;
          }

          v29 = MEMORY[0x1E695DFF8];
          v30 = [v51[5] string];
        }

        v31 = [v29 URLWithString:{v30, v43}];
        if ((isKindOfClass & 1) == 0)
        {
        }

        if (v31)
        {
          v32 = [v31 scheme];
          v33 = v32 == 0;

          if (!v33)
          {
            objc_storeStrong(v51 + 5, v31);
          }
        }

        goto LABEL_22;
      }
    }

    v20 = [v19 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_38:
}

void __112__SFAirDropActivityViewController_handleOtherItemProvider_withDataType_attachmentName_description_previewImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 localizedDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1B9E4B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to load item for type identifier with error %@", &v10, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)addItemProvider:(id)a3 withDataType:(id)a4 attachmentName:(id)a5 description:(id)a6 previewImage:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [v15 size];
    v19 = NSStringFromCGSize(v31);
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
    _os_log_debug_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEBUG, "addItemProvider:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", &v20, 0x34u);
  }

  self->_itemsReady = 0;
  [(SFAirDropActivityViewController *)self handleOtherItemProvider:v12 withDataType:v16 attachmentName:v13 description:v14 previewImage:v15];

  return 1;
}

- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
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
      for (i = 0; i != v9; ++i)
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
      v20 = *MEMORY[0x1E6963710];
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(*(&v30 + 1) + 8 * j) pathExtension];
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v20, v22, 0);
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

    v24 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v24 scale];
    v26 = v25 == 2.0;

    obj = SFImageStackFromImages(v4, dbl_1B9EDEAB0[v26]);
    sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto setObject:obj forKeyedSubscript:v22];
LABEL_25:
  }
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  [v7 itemSize];
  v10 = v9;
  [v7 minimumLineSpacing];
  v12 = v11;

  v13 = [v8 numberOfItemsInSection:a5];
  v14 = v10 * v13;
  v15 = v12 * (v13 - 1);
  [v8 bounds];
  v17 = v16;

  v18 = 0.0;
  if ((v17 - v14 - v15) * 0.5 >= 0.0)
  {
    v18 = (v17 - v14 - v15) * 0.5;
  }

  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  result.right = v21;
  result.bottom = v20;
  result.left = v18;
  result.top = v19;
  return result;
}

- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5
{
  v6 = a5;
  v7 = airdrop_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (a4 == 10)
  {
    if (v8)
    {
      [SFAirDropActivityViewController handleOperationCallback:v6 event:v7 withResults:?];
    }
  }

  else if (v8)
  {
    [SFAirDropActivityViewController handleOperationCallback:a4 event:v6 withResults:v7];
  }
}

- (void)cleanupWithSelectedActivityType:(id)a3
{
  v5 = a3;
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SFAirDropActivityViewController *)a2 cleanupWithSelectedActivityType:v5, v6];
  }

  if (!self->_logger)
  {
    self->_logger = SFOperationCreate();
    SFOperationSetClient();
    SFOperationSetDispatchQueue();
    SFOperationSetProperty();
    SFOperationSetProperty();
    SFOperationResume();
  }
}

- (void)_startTelemetry
{
  self->_peopleStartTimestamp = mach_continuous_time();
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
  self->_realNameToFirstSeenTimestamp = v3;
}

- (void)_stopTelemetry
{
  realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
  self->_realNameToFirstSeenTimestamp = 0;
}

- (void)_collectTelemetryForPeople:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
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
      for (i = 0; i != v7; ++i)
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
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 realName];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_realNameToFirstSeenTimestamp objectForKey:v5];
    if (v6)
    {
      v7 = airdrop_log();
      v8 = os_signpost_id_make_with_pointer(v7, v4);

      v9 = airdrop_log();
      v10 = v9;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        peopleStartTimestamp = self->_peopleStartTimestamp;
        v15 = 134349056;
        v16 = peopleStartTimestamp;
        _os_signpost_emit_with_name_impl(&dword_1B9E4B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "TimeToDiscoverPerson", " enableTelemetry=YES  %{public, signpost.description:begin_time}llu", &v15, 0xCu);
      }

      v12 = airdrop_log();
      v13 = v12;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v14 = [v6 unsignedLongLongValue];
        v15 = 134349056;
        v16 = v14;
        _os_signpost_emit_with_name_impl(&dword_1B9E4B000, v13, OS_SIGNPOST_INTERVAL_END, v8, "TimeToDiscoverPerson", "%{public, signpost.description:end_time}llu", &v15, 0xCu);
      }
    }
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)sendingApplicationAuditToken
{
  v3 = *&self[47].var0[6];
  *retstr->var0 = *&self[47].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (SFAirDropActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)airDropActivityCanPerformActivityWithItemClasses:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_DEBUG, "%@", v4, 0xCu);
}

+ (void)airDropActivityCanPerformActivityWithItemClasses:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1B9E4B000, v0, OS_LOG_TYPE_DEBUG, "Classes: %@", v1, 0xCu);
}

- (void)addURL:withAttachmentName:description:previewImage:itemIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addAttributedString:withAttachmentName:description:previewImage:itemIndex:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1B9E4B000, v1, OS_LOG_TYPE_ERROR, "Failed to convert NSAttributedString [%@] to HTML due to: %@", v2, 0x16u);
}

- (void)handleOperationCallback:(uint64_t)a1 event:(uint64_t)a2 withResults:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) > 0xE)
  {
    v3 = @"?";
  }

  else
  {
    v3 = off_1E7EE4280[a1 - 1];
  }

  v4 = 138412802;
  v5 = v3;
  v6 = 1024;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B9E4B000, log, OS_LOG_TYPE_ERROR, "SFAirDropActivityViewController UNHANDLED EVENT %@ [%d] %@", &v4, 0x1Cu);
}

- (void)handleOperationCallback:(void *)a1 event:(NSObject *)a2 withResults:.cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69CDF88]];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_ERROR, "SFAirDropActivityViewController %@", v4, 0xCu);
}

- (void)cleanupWithSelectedActivityType:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1B9E4B000, a3, OS_LOG_TYPE_DEBUG, "%@ %@", v6, 0x16u);
}

@end