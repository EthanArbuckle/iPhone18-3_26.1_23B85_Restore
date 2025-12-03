@interface SFAirDropActivityViewController
+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)classes;
+ (BOOL)isAirDropAvailable;
- ($115C4C562B26FF47E01F9F4EA65B5887)sendingApplicationAuditToken;
- (BOOL)addAttributedString:(id)string withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (BOOL)addData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (BOOL)addImage:(id)image withAttachmentName:(id)name description:(id)description previewImage:(id)previewImage itemIndex:(int)index;
- (BOOL)addItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image;
- (BOOL)addString:(id)string withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (BOOL)addURL:(id)l withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (BOOL)createURLPayloadForData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index completion:(id)completion;
- (BOOL)enableModernShareSheeet;
- (BOOL)isBluetoothEnabled;
- (BOOL)isDebugMode;
- (BOOL)isTetheredModeEnabled;
- (BOOL)isValidPayload:(id)payload toPerson:(id)person invalidMessage:(id *)message;
- (BOOL)isWifiEnabled;
- (CGSize)_cachedPreferredItemSize;
- (CGSize)calculatePreferredContentSize;
- (CGSize)suggestedThumbnailSize;
- (SFAirDropActivityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SFAirDropActivityViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_fontWithStyle:(id)style maxSizeCategory:(id)category traits:(unsigned int)traits;
- (id)attributedStringWithTitle:(id)title content:(id)content;
- (id)cellForPerson:(id)person;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)indexSetToIndexPaths:(id)paths inSection:(int64_t)section;
- (id)instructionsText;
- (id)noAWDLText;
- (id)noWiFiBTText;
- (id)preferredFocusEnvironments;
- (id)titleText;
- (id)wifiBtHelpTextLocalizedStringKey;
- (void)_collectTelemetryForPeople:(id)people;
- (void)_createiOSLayoutConstraints;
- (void)_createtvOSLayoutConstraints;
- (void)_emitTelemetryForPerson:(id)person;
- (void)_setIsLoadingActivityItemProviders:(BOOL)providers;
- (void)_startTelemetry;
- (void)_stopTelemetry;
- (void)_updateExclusionPathsForTextViews;
- (void)_updateFontSizes;
- (void)browserDidUpdatePeople:(id)people;
- (void)cleanupWithSelectedActivityType:(id)type;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dealloc;
- (void)didEnterBackground:(id)background;
- (void)enableAirDropRequiredFeatures;
- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)d;
- (void)handleImageItemProvider:(id)provider withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (void)handleLivePhotoItemProvider:(id)provider withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (void)handleOperationCallback:(__SFOperation *)callback event:(int64_t)event withResults:(id)results;
- (void)handleOtherItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image;
- (void)invalidate;
- (void)personCollectionViewCellDidFinishTransfer:(id)transfer;
- (void)personCollectionViewCellDidStartTransfer:(id)transfer;
- (void)personCollectionViewCellDidTerminateTransfer:(id)transfer;
- (void)setOtherActivityViewPresented:(BOOL)presented;
- (void)setSendingApplicationAuditToken:(id *)token;
- (void)setSharedItemsAvailable:(BOOL)available;
- (void)startBrowsing;
- (void)startTransferForPeople:(id)people;
- (void)stopBrowsing;
- (void)subscribeToProgresses;
- (void)subscribedProgress:(id)progress forPersonWithRealName:(id)name;
- (void)traitCollectionDidChange:(id)change;
- (void)unpublishedProgressForPersonWithRealName:(id)name;
- (void)unsubscribeToProgresses;
- (void)updatePreferredContentSize;
- (void)updateShowMoreButtonForShowPeople:(BOOL)people inactive:(BOOL)inactive active:(BOOL)active static:(BOOL)static;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willEnterForeground:(id)foreground;
- (void)wirelessSettingsDidChange:(id)change;
@end

@implementation SFAirDropActivityViewController

- (SFAirDropActivityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v30.receiver = self;
  v30.super_class = SFAirDropActivityViewController;
  v4 = [(SFAirDropActivityViewController *)&v30 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = SFLocalizedStringForKey();
    [(SFAirDropActivityViewController *)v4 setTitle:v5];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    sendingAppBundleID = v4->_sendingAppBundleID;
    v4->_sendingAppBundleID = bundleIdentifier;

    v4->_attachmentCount = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    personToProgress = v4->_personToProgress;
    v4->_personToProgress = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    personToStoredTransferFinalState = v4->_personToStoredTransferFinalState;
    v4->_personToStoredTransferFinalState = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    personToSharedItemsRequestID = v4->_personToSharedItemsRequestID;
    v4->_personToSharedItemsRequestID = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    sharedItemsRequestIDToPreviewPhoto = v4->_sharedItemsRequestIDToPreviewPhoto;
    v4->_sharedItemsRequestIDToPreviewPhoto = dictionary4;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    cachedSharedItems = v4->_cachedSharedItems;
    v4->_cachedSharedItems = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v4->_operationQueue;
    v4->_operationQueue = v19;

    [(NSOperationQueue *)v4->_operationQueue setMaxConcurrentOperationCount:1];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v23 = [uUIDString substringWithRange:{24, 12}];
    sessionID = v4->_sessionID;
    v4->_sessionID = v23;

    v4->_sharedItemsAvailable = 1;
    v4->_logger = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    realNameToFirstSeenTimestamp = v4->_realNameToFirstSeenTimestamp;
    v4->_realNameToFirstSeenTimestamp = weakToStrongObjectsMapTable;

    v4->_sharedItemsCount = 0;
    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    sharedItemsMap = v4->_sharedItemsMap;
    v4->_sharedItemsMap = dictionary5;
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
  visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
  v4 = [visibleCells countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [visibleCells countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_setIsLoadingActivityItemProviders:(BOOL)providers
{
  if (!self->_didSelectNode && self->_browserPaused != providers)
  {
    if (providers)
    {
      self->_browserPaused = 1;
      [(SFAirDropBrowser *)self->_browser pause];
      if (![(SFAirDropActivityViewController *)self isDebugMode])
      {
        return;
      }

      redColor = [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      self->_browserPaused = 0;
      [(SFAirDropBrowser *)self->_browser resume];
      if (![(SFAirDropActivityViewController *)self isDebugMode])
      {
        return;
      }

      redColor = [MEMORY[0x1E69DC888] greenColor];
    }

    v5 = redColor;
    cGColor = [redColor CGColor];
    view = [(SFAirDropActivityViewController *)self view];
    layer = [view layer];
    [layer setBorderColor:cGColor];

    view2 = [(SFAirDropActivityViewController *)self view];
    layer2 = [view2 layer];
    [layer2 setBorderWidth:5.0];
  }
}

- (void)didEnterBackground:(id)background
{
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {

    [(SFAirDropActivityViewController *)self stopBrowsing];
  }
}

- (void)willEnterForeground:(id)foreground
{
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {

    [(SFAirDropActivityViewController *)self startBrowsing];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v11 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel_willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
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
  view = [(SFAirDropActivityViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  if (![(SFAirDropActivityViewController *)self manuallyManageBrowsing])
  {
    [(SFAirDropActivityViewController *)self stopBrowsing];
  }

  v6.receiver = self;
  v6.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v6 viewDidDisappear:disappearCopy];
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
    wifiBtHelpTextLocalizedStringKey = [(SFAirDropActivityViewController *)self wifiBtHelpTextLocalizedStringKey];
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

  view = [(SFAirDropActivityViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  [view setOpaque:0];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:clearColor2];

  titleText = [(SFAirDropActivityViewController *)self titleText];
  [(UILabel *)self->_titleLabel setText:titleText];

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
  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor3];

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
  textContainer = [(UITextView *)self->_noWifiTextView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  textContainer2 = [(UITextView *)self->_noWifiTextView textContainer];
  [textContainer2 setMaximumNumberOfLines:0];

  textContainer3 = [(UITextView *)self->_noWifiTextView textContainer];
  [textContainer3 setLineBreakMode:4];

  v25 = *MEMORY[0x1E69DDCE0];
  v26 = *(MEMORY[0x1E69DDCE0] + 8);
  v27 = *(MEMORY[0x1E69DDCE0] + 16);
  v28 = *(MEMORY[0x1E69DDCE0] + 24);
  [(UITextView *)self->_noWifiTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], v26, v27, v28];
  clearColor4 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_noWifiTextView setBackgroundColor:clearColor4];

  [(UITextView *)self->_noWifiTextView setAlpha:0.0];
  [(UITextView *)self->_noWifiTextView setTextAlignment:4];
  title = [(SFAirDropActivityViewController *)self title];
  noWiFiBTText = [(SFAirDropActivityViewController *)self noWiFiBTText];
  v32 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title content:noWiFiBTText];
  [(UITextView *)self->_noWifiTextView setAttributedText:v32];

  [(UITextView *)self->_noWifiTextView addGestureRecognizer:v68];
  [(UITextView *)self->_noWifiTextView setUserInteractionEnabled:1];
  [(UITextView *)self->_noWifiTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [[SFAirDropActiveIconView alloc] initWithFrame:0 grayscale:v5, v6, v7, v8];
  airDropActiveIconView = self->_airDropActiveIconView;
  self->_airDropActiveIconView = v33;

  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setAlpha:0.0];
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor5 = [MEMORY[0x1E69DC888] clearColor];
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView setBackgroundColor:clearColor5];

  v36 = [objc_alloc(MEMORY[0x1E69DD168]) initReadonlyAndUnselectableWithFrame:0 textContainer:{v5, v6, v7, v8}];
  instructionsTextView = self->_instructionsTextView;
  self->_instructionsTextView = v36;

  [(UITextView *)self->_instructionsTextView setScrollingEnabled:0];
  textContainer4 = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer4 setLineFragmentPadding:0.0];

  [(UITextView *)self->_instructionsTextView setTextContainerInset:v25, v26, v27, v28];
  textContainer5 = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer5 setMaximumNumberOfLines:0];

  textContainer6 = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer6 setLineBreakMode:4];

  clearColor6 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_instructionsTextView setBackgroundColor:clearColor6];

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
  textContainer7 = [(UITextView *)self->_noAWDLTextView textContainer];
  [textContainer7 setLineFragmentPadding:0.0];

  [(UITextView *)self->_noAWDLTextView setTextContainerInset:v25, v26, v27, v28];
  textContainer8 = [(UITextView *)self->_noAWDLTextView textContainer];
  [textContainer8 setMaximumNumberOfLines:0];

  textContainer9 = [(UITextView *)self->_noAWDLTextView textContainer];
  [textContainer9 setLineBreakMode:4];

  clearColor7 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_noAWDLTextView setBackgroundColor:clearColor7];

  [(UITextView *)self->_noAWDLTextView setAlpha:0.0];
  [(UITextView *)self->_noAWDLTextView setTextAlignment:4];
  title2 = [(SFAirDropActivityViewController *)self title];
  noAWDLText = [(SFAirDropActivityViewController *)self noAWDLText];
  v52 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title2 content:noAWDLText];
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
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIButton *)v57 setTitleColor:systemBlueColor forState:0];

  [(UIButton *)self->_showMoreButton addTarget:self action:sel_showMore_ forEvents:64];
  [(UIButton *)self->_showMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_showMoreButton setContentEdgeInsets:0.0, 1.0, 0.0, 1.0];
  v59 = MEMORY[0x1E69DB878];
  v60 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v60 _scaledValueForValue:11.0];
  v61 = [v59 systemFontOfSize:?];
  [(UILabel *)self->_titleLabel setFont:v61];

  [(UITextView *)self->_instructionsTextView setTextAlignment:4];
  title3 = [(SFAirDropActivityViewController *)self title];
  instructionsText = [(SFAirDropActivityViewController *)self instructionsText];
  v64 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title3 content:instructionsText];
  [(UITextView *)self->_instructionsTextView setAttributedText:v64];

  [view addSubview:self->_collectionView];
  [view addSubview:self->_titleLabel];
  [view addSubview:self->_airDropIconView];
  [view addSubview:self->_noWifiTextView];
  [view addSubview:self->_airDropActiveIconView];
  [view addSubview:self->_instructionsTextView];
  [view addSubview:self->_airDropInactiveIconView];
  [view addSubview:self->_noAWDLTextView];
  [view addSubview:self->_showMoreButton];
  v65 = MEMORY[0x1E696ACD8];
  v66 = _NSDictionaryOfVariableBindings(&cfstr_Collectionview.isa, self->_collectionView, 0);
  v67 = [v65 constraintsWithVisualFormat:@"H:|[_collectionView]|" options:0 metrics:0 views:v66];

  [view addConstraints:v67];
  [(SFAirDropActivityViewController *)self _createiOSLayoutConstraints];
  [(SFAirDropActivityViewController *)self _updateFontSizes];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = SFAirDropActivityViewController;
  [(SFAirDropActivityViewController *)&v23 viewDidLayoutSubviews];
  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {

    v5 = *MEMORY[0x1E69DDC58];
LABEL_4:
    [(SFAirDropActivityViewController *)self _updateExclusionPathsForTextViews];
    goto LABEL_5;
  }

  v5 = *MEMORY[0x1E69DDC58];
  traitCollection2 = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(v5, preferredContentSizeCategory2);

  if (v8 == NSOrderedAscending)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(SFAirDropActiveIconView *)self->_airDropActiveIconView bounds];
  Width = CGRectGetWidth(v24);
  v10 = SFRoundToScreen(Width * 0.5);
  traitCollection3 = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);
  v14 = UIContentSizeCategoryCompareToCategory(v5, preferredContentSizeCategory3);
  if (IsAccessibilityCategory || v14 == NSOrderedAscending)
  {
    v18 = 16.0;
    if (v14 == NSOrderedAscending && !IsAccessibilityCategory)
    {
      collectionViewLayout = self->_collectionViewLayout;
      view = [(SFAirDropActivityViewController *)self view];
      [view bounds];
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
    view2 = [(SFAirDropActivityViewController *)self view];
    [view2 bounds];
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
    textContainer = [(UITextView *)self->_instructionsTextView textContainer];
    v16 = MEMORY[0x1E695E0F0];
    [textContainer setExclusionPaths:MEMORY[0x1E695E0F0]];

    textContainer2 = [(UITextView *)self->_noWifiTextView textContainer];
    [textContainer2 setExclusionPaths:v16];

    textContainer3 = [(UITextView *)self->_noAWDLTextView textContainer];
    [textContainer3 setExclusionPaths:v16];

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
    view = [(SFAirDropActivityViewController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];
    [(UITextView *)self->_instructionsTextView frame];
    if (_shouldReverseLayoutDirection)
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
    view2 = [(SFAirDropActivityViewController *)self view];
    [(UITextView *)instructionsTextView convertRect:view2 fromView:MinX, v20, v5, v7];
    v24 = [v21 bezierPathWithRect:?];
    v41[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    textContainer4 = [(UITextView *)self->_instructionsTextView textContainer];
    [textContainer4 setExclusionPaths:v25];

    v27 = MEMORY[0x1E69DC728];
    noWifiTextView = self->_noWifiTextView;
    view3 = [(SFAirDropActivityViewController *)self view];
    [(UITextView *)noWifiTextView convertRect:view3 fromView:MinX, v20, v5, v7];
    v30 = [v27 bezierPathWithRect:?];
    v40 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    textContainer5 = [(UITextView *)self->_noWifiTextView textContainer];
    [textContainer5 setExclusionPaths:v31];

    v33 = MEMORY[0x1E69DC728];
    v34 = self->_noAWDLTextView;
    view4 = [(SFAirDropActivityViewController *)self view];
    [(UITextView *)v34 convertRect:view4 fromView:MinX, v20, v5, v7];
    v36 = [v33 bezierPathWithRect:?];
    v39 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    textContainer6 = [(UITextView *)self->_noAWDLTextView textContainer];
    [textContainer6 setExclusionPaths:v37];
  }
}

- (void)_createiOSLayoutConstraints
{
  v177[2] = *MEMORY[0x1E69E9840];
  view = [(SFAirDropActivityViewController *)self view];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v9 = dbl_1B9EDEAA0[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 10;
  }

  else
  {
    v10 = 6;
  }

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v171 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  [view addConstraint:v171];
  widthAnchor = [(UILabel *)self->_titleLabel widthAnchor];
  v19 = view;
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide2 widthAnchor];
  v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-20.0];
  [v19 addConstraint:v22];

  v23 = v11;
  self->_titleLabelTopConstraintDefaultConstant = v11;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  safeAreaLayoutGuide3 = [v19 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_titleLabelTopConstraintDefaultConstant];
  titleLabelTopConstraint = self->_titleLabelTopConstraint;
  self->_titleLabelTopConstraint = v27;

  [v19 addConstraint:self->_titleLabelTopConstraint];
  v29 = MEMORY[0x1E696ACD8];
  v30 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelColl.isa, self->_titleLabel, self->_collectionView, 0);
  v31 = [v29 constraintsWithVisualFormat:@"V:[_titleLabel]-middlePadding-[_collectionView]|" options:0 metrics:v170 views:v30];
  [v19 addConstraints:v31];

  airDropActiveIconView = self->_airDropActiveIconView;
  widthAnchor3 = [(SFAirDropActiveIconView *)airDropActiveIconView widthAnchor];
  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v36 = 76.0;
  }

  else
  {
    v36 = 60.0;
  }

  v37 = [widthAnchor3 constraintEqualToConstant:v36];
  [(SFAirDropActiveIconView *)airDropActiveIconView addConstraint:v37];

  v38 = self->_airDropActiveIconView;
  heightAnchor = [(SFAirDropActiveIconView *)v38 heightAnchor];
  currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v42 = 76.0;
  }

  else
  {
    v42 = 60.0;
  }

  v43 = [heightAnchor constraintEqualToConstant:v42];
  [(SFAirDropActiveIconView *)v38 addConstraint:v43];

  leadingAnchor = [(SFAirDropActiveIconView *)self->_airDropActiveIconView leadingAnchor];
  safeAreaLayoutGuide4 = [v19 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide4 leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  airDropActiveIconLeftConstraint = self->_airDropActiveIconLeftConstraint;
  self->_airDropActiveIconLeftConstraint = v47;

  [v19 addConstraint:self->_airDropActiveIconLeftConstraint];
  airDropIconView = self->_airDropIconView;
  widthAnchor4 = [(SFAirDropIconView *)airDropIconView widthAnchor];
  v51 = [widthAnchor4 constraintEqualToConstant:v12];
  [(SFAirDropIconView *)airDropIconView addConstraint:v51];

  v52 = self->_airDropIconView;
  heightAnchor2 = [(SFAirDropIconView *)v52 heightAnchor];
  v54 = [heightAnchor2 constraintEqualToConstant:v12];
  [(SFAirDropIconView *)v52 addConstraint:v54];

  leadingAnchor3 = [(SFAirDropIconView *)self->_airDropIconView leadingAnchor];
  safeAreaLayoutGuide5 = [v19 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide5 leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  airDropIconLeftConstraint = self->_airDropIconLeftConstraint;
  self->_airDropIconLeftConstraint = v58;

  [v19 addConstraint:self->_airDropIconLeftConstraint];
  leadingAnchor5 = [(UITextView *)self->_noAWDLTextView leadingAnchor];
  trailingAnchor = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView trailingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:15.0];
  [v19 addConstraint:v62];

  trailingAnchor2 = [(UITextView *)self->_noAWDLTextView trailingAnchor];
  safeAreaLayoutGuide6 = [v19 safeAreaLayoutGuide];
  trailingAnchor3 = [safeAreaLayoutGuide6 trailingAnchor];
  v66 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:5.0];
  noAWDLRightConstraint = self->_noAWDLRightConstraint;
  self->_noAWDLRightConstraint = v66;

  [v19 addConstraint:self->_noAWDLRightConstraint];
  airDropInactiveIconView = self->_airDropInactiveIconView;
  widthAnchor5 = [(SFAirDropActiveIconView *)airDropInactiveIconView widthAnchor];
  currentDevice5 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

  if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v72 = 76.0;
  }

  else
  {
    v72 = 60.0;
  }

  v73 = [widthAnchor5 constraintEqualToConstant:v72];
  [(SFAirDropActiveIconView *)airDropInactiveIconView addConstraint:v73];

  v74 = self->_airDropInactiveIconView;
  heightAnchor3 = [(SFAirDropActiveIconView *)v74 heightAnchor];
  currentDevice6 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];

  if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v78 = 76.0;
  }

  else
  {
    v78 = 60.0;
  }

  v79 = [heightAnchor3 constraintEqualToConstant:v78];
  [(SFAirDropActiveIconView *)v74 addConstraint:v79];

  leadingAnchor6 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView leadingAnchor];
  safeAreaLayoutGuide7 = [v19 safeAreaLayoutGuide];
  leadingAnchor7 = [safeAreaLayoutGuide7 leadingAnchor];
  v83 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  airDropInactiveIconLeftConstraint = self->_airDropInactiveIconLeftConstraint;
  self->_airDropInactiveIconLeftConstraint = v83;

  [v19 addConstraint:self->_airDropInactiveIconLeftConstraint];
  leadingAnchor8 = [(UITextView *)self->_noWifiTextView leadingAnchor];
  trailingAnchor4 = [(SFAirDropIconView *)self->_airDropIconView trailingAnchor];
  v87 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:15.0];
  [v19 addConstraint:v87];

  trailingAnchor5 = [(UITextView *)self->_noWifiTextView trailingAnchor];
  safeAreaLayoutGuide8 = [v19 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide8 trailingAnchor];
  v91 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-12.0];
  noWifiRightConstraint = self->_noWifiRightConstraint;
  self->_noWifiRightConstraint = v91;

  v93 = v19;
  [v19 addConstraint:self->_noWifiRightConstraint];
  leadingAnchor9 = [(UITextView *)self->_instructionsTextView leadingAnchor];
  trailingAnchor7 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView trailingAnchor];
  v96 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7 constant:15.0];
  [v19 addConstraint:v96];

  trailingAnchor8 = [(UITextView *)self->_instructionsTextView trailingAnchor];
  safeAreaLayoutGuide9 = [v19 safeAreaLayoutGuide];
  trailingAnchor9 = [safeAreaLayoutGuide9 trailingAnchor];
  v100 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-5.0];
  instructionsRightConstraint = self->_instructionsRightConstraint;
  self->_instructionsRightConstraint = v100;

  [v19 addConstraint:self->_instructionsRightConstraint];
  trailingAnchor10 = [(UIButton *)self->_showMoreButton trailingAnchor];
  trailingAnchor11 = [(UITextView *)self->_instructionsTextView trailingAnchor];
  v104 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  [v19 addConstraint:v104];

  bottomAnchor = [(UIButton *)self->_showMoreButton bottomAnchor];
  bottomAnchor2 = [(UITextView *)self->_instructionsTextView bottomAnchor];
  v107 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v19 addConstraint:v107];

  centerYAnchor = [(SFAirDropActiveIconView *)self->_airDropActiveIconView centerYAnchor];
  v166 = centerYAnchor;
  topAnchor3 = [(UICollectionView *)self->_collectionView topAnchor];
  v164 = topAnchor3;
  currentDevice7 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom7 = [currentDevice7 userInterfaceIdiom];

  if ((userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v112 = 38.0;
  }

  else
  {
    v112 = 30.0;
  }

  v113 = [centerYAnchor constraintEqualToAnchor:topAnchor3 constant:floor(v112) + -1.0];
  v175[0] = v113;
  centerYAnchor2 = [(SFAirDropIconView *)self->_airDropIconView centerYAnchor];
  topAnchor4 = [(UICollectionView *)self->_collectionView topAnchor];
  v116 = [centerYAnchor2 constraintEqualToAnchor:topAnchor4 constant:floor(v12 * 0.5) + -2.0];
  v175[1] = v116;
  centerYAnchor3 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView centerYAnchor];
  topAnchor5 = [(UICollectionView *)self->_collectionView topAnchor];
  currentDevice8 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom8 = [currentDevice8 userInterfaceIdiom];

  if ((userInterfaceIdiom8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v121 = 38.0;
  }

  else
  {
    v121 = 30.0;
  }

  v122 = [centerYAnchor3 constraintEqualToAnchor:topAnchor5 constant:floor(v121) + -1.0];
  v175[2] = v122;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:3];
  airdropViewYConstraints = self->_airdropViewYConstraints;
  self->_airdropViewYConstraints = v123;

  v125 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [v125 lineHeight];
  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v128 = v127;

  topAnchor6 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView topAnchor];
  safeAreaLayoutGuide10 = [v93 safeAreaLayoutGuide];
  topAnchor7 = [safeAreaLayoutGuide10 topAnchor];
  v129 = v128 + v23;
  v130 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:v129];
  largeTextAirdropViewYConstraint = self->_largeTextAirdropViewYConstraint;
  self->_largeTextAirdropViewYConstraint = v130;

  v174[0] = v130;
  topAnchor8 = [(SFAirDropIconView *)self->_airDropIconView topAnchor];
  v168 = v93;
  safeAreaLayoutGuide11 = [v93 safeAreaLayoutGuide];
  topAnchor9 = [safeAreaLayoutGuide11 topAnchor];
  v135 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:v129];
  v174[1] = v135;
  topAnchor10 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView topAnchor];
  safeAreaLayoutGuide12 = [v93 safeAreaLayoutGuide];
  topAnchor11 = [safeAreaLayoutGuide12 topAnchor];
  v139 = [topAnchor10 constraintEqualToAnchor:topAnchor11 constant:v129];
  v174[2] = v139;
  v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:3];
  largeTextAirdropViewYConstraints = self->_largeTextAirdropViewYConstraints;
  self->_largeTextAirdropViewYConstraints = v140;

  centerYAnchor4 = [(UITextView *)self->_noAWDLTextView centerYAnchor];
  centerYAnchor5 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView centerYAnchor];
  v144 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
  v173[0] = v144;
  centerYAnchor6 = [(UITextView *)self->_noWifiTextView centerYAnchor];
  centerYAnchor7 = [(SFAirDropIconView *)self->_airDropIconView centerYAnchor];
  v147 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
  v173[1] = v147;
  centerYAnchor8 = [(UITextView *)self->_instructionsTextView centerYAnchor];
  centerYAnchor9 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView centerYAnchor];
  v150 = [centerYAnchor8 constraintEqualToAnchor:centerYAnchor9];
  v173[2] = v150;
  v151 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:3];
  textViewConstraints = self->_textViewConstraints;
  self->_textViewConstraints = v151;

  topAnchor12 = [(UITextView *)self->_noAWDLTextView topAnchor];
  topAnchor13 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView topAnchor];
  v155 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
  v172[0] = v155;
  topAnchor14 = [(UITextView *)self->_noWifiTextView topAnchor];
  topAnchor15 = [(SFAirDropIconView *)self->_airDropIconView topAnchor];
  v158 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
  v172[1] = v158;
  topAnchor16 = [(UITextView *)self->_instructionsTextView topAnchor];
  topAnchor17 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView topAnchor];
  v161 = [topAnchor16 constraintEqualToAnchor:topAnchor17];
  v172[2] = v161;
  v162 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:3];
  largeTextTextViewConstraints = self->_largeTextTextViewConstraints;
  self->_largeTextTextViewConstraints = v162;
}

- (void)_createtvOSLayoutConstraints
{
  view = [(SFAirDropActivityViewController *)self view];
  widthAnchor = [(UIVisualEffectView *)self->_titleVibrancyView widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v109 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  heightAnchor = [(UIVisualEffectView *)self->_titleVibrancyView heightAnchor];
  heightAnchor2 = [view heightAnchor];
  v108 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.22];

  topAnchor = [(UIVisualEffectView *)self->_titleVibrancyView topAnchor];
  topAnchor2 = [view topAnchor];
  v107 = [topAnchor constraintEqualToAnchor:topAnchor2];

  [v109 setActive:1];
  [v108 setActive:1];
  [v107 setActive:1];
  widthAnchor3 = [(UIVisualEffectView *)self->_iconsVibrancyView widthAnchor];
  widthAnchor4 = [view widthAnchor];
  v106 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];

  heightAnchor3 = [(UIVisualEffectView *)self->_iconsVibrancyView heightAnchor];
  heightAnchor4 = [view heightAnchor];
  v105 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.45];

  topAnchor3 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  bottomAnchor = [(UIVisualEffectView *)self->_titleVibrancyView bottomAnchor];
  v104 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];

  [v106 setActive:1];
  [v105 setActive:1];
  [v104 setActive:1];
  widthAnchor5 = [(UICollectionView *)self->_collectionView widthAnchor];
  widthAnchor6 = [view widthAnchor];
  v103 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];

  heightAnchor5 = [(UICollectionView *)self->_collectionView heightAnchor];
  heightAnchor6 = [view heightAnchor];
  v102 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 multiplier:0.33];

  topAnchor4 = [(UICollectionView *)self->_collectionView topAnchor];
  bottomAnchor2 = [(UIVisualEffectView *)self->_titleVibrancyView bottomAnchor];
  v101 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:33.0];

  [v103 setActive:1];
  [v102 setActive:1];
  [v101 setActive:1];
  widthAnchor7 = [(UIVisualEffectView *)self->_instructionsVibrancyView widthAnchor];
  widthAnchor8 = [view widthAnchor];
  v100 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];

  heightAnchor7 = [(UIVisualEffectView *)self->_instructionsVibrancyView heightAnchor];
  heightAnchor8 = [view heightAnchor];
  v99 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8 multiplier:0.33];

  topAnchor5 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  bottomAnchor3 = [(UIVisualEffectView *)self->_iconsVibrancyView bottomAnchor];
  v98 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];

  [v100 setActive:1];
  [v99 setActive:1];
  [v98 setActive:1];
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v97 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor6 = [view topAnchor];
  v96 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor6 constant:198.0];

  [v97 setActive:1];
  [v96 setActive:1];
  widthAnchor9 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView widthAnchor];
  v95 = [widthAnchor9 constraintEqualToConstant:266.0];

  heightAnchor9 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView heightAnchor];
  v93 = [heightAnchor9 constraintEqualToConstant:266.0];

  centerXAnchor3 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView centerXAnchor];
  centerXAnchor4 = [view centerXAnchor];
  v94 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  topAnchor7 = [(SFAirDropActiveIconView *)self->_airDropActiveIconView topAnchor];
  topAnchor8 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v92 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:70.0];

  [v94 setActive:1];
  [v95 setActive:1];
  [v93 setActive:1];
  [v92 setActive:1];
  widthAnchor10 = [(SFAirDropIconView *)self->_airDropIconView widthAnchor];
  v91 = [widthAnchor10 constraintEqualToConstant:266.0];

  heightAnchor10 = [(SFAirDropIconView *)self->_airDropIconView heightAnchor];
  v90 = [heightAnchor10 constraintEqualToConstant:266.0];

  centerXAnchor5 = [(SFAirDropIconView *)self->_airDropIconView centerXAnchor];
  centerXAnchor6 = [view centerXAnchor];
  v89 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];

  topAnchor9 = [(SFAirDropIconView *)self->_airDropIconView topAnchor];
  topAnchor10 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v88 = [topAnchor9 constraintEqualToAnchor:topAnchor10];

  [v91 setActive:1];
  [v90 setActive:1];
  [v89 setActive:1];
  [v88 setActive:1];
  widthAnchor11 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView widthAnchor];
  v87 = [widthAnchor11 constraintEqualToConstant:266.0];

  heightAnchor11 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView heightAnchor];
  v86 = [heightAnchor11 constraintEqualToConstant:266.0];

  centerXAnchor7 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView centerXAnchor];
  centerXAnchor8 = [view centerXAnchor];
  v85 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];

  topAnchor11 = [(SFAirDropActiveIconView *)self->_airDropInactiveIconView topAnchor];
  topAnchor12 = [(UIVisualEffectView *)self->_iconsVibrancyView topAnchor];
  v84 = [topAnchor11 constraintEqualToAnchor:topAnchor12];

  [v87 setActive:1];
  [v86 setActive:1];
  [v85 setActive:1];
  [v84 setActive:1];
  topAnchor13 = [(UITextView *)self->_noAWDLTextView topAnchor];
  topAnchor14 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v83 = [topAnchor13 constraintEqualToAnchor:topAnchor14];

  [v83 setActive:1];
  topAnchor15 = [(UITextView *)self->_noWifiTextView topAnchor];
  topAnchor16 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v82 = [topAnchor15 constraintEqualToAnchor:topAnchor16];

  [v82 setActive:1];
  topAnchor17 = [(UITextView *)self->_instructionsTextView topAnchor];
  topAnchor18 = [(UIVisualEffectView *)self->_instructionsVibrancyView topAnchor];
  v81 = [topAnchor17 constraintEqualToAnchor:topAnchor18 constant:3.0];

  widthAnchor12 = [(UITextView *)self->_instructionsTextView widthAnchor];
  widthAnchor13 = [view widthAnchor];
  v80 = [widthAnchor12 constraintEqualToAnchor:widthAnchor13 multiplier:0.53];

  centerXAnchor9 = [(UITextView *)self->_instructionsTextView centerXAnchor];
  centerXAnchor10 = [view centerXAnchor];
  v59 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];

  [v81 setActive:1];
  [v80 setActive:1];
  [v59 setActive:1];
  topAnchor19 = [(UIFocusContainerGuide *)self->_fcg topAnchor];
  bottomAnchor4 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v62 = [topAnchor19 constraintEqualToAnchor:bottomAnchor4 constant:0.0];

  bottomAnchor5 = [(UIFocusContainerGuide *)self->_fcg bottomAnchor];
  bottomAnchor6 = [view bottomAnchor];
  v65 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];

  widthAnchor14 = [(UIFocusContainerGuide *)self->_fcg widthAnchor];
  widthAnchor15 = [view widthAnchor];
  v68 = [widthAnchor14 constraintEqualToAnchor:widthAnchor15 constant:0.0];

  [v62 setActive:1];
  [v65 setActive:1];
  [v68 setActive:1];
  topAnchor20 = [(UIButton *)self->_doneButton topAnchor];
  lastBaselineAnchor = [(UITextView *)self->_instructionsTextView lastBaselineAnchor];
  v71 = [topAnchor20 constraintEqualToAnchor:lastBaselineAnchor constant:40.0];

  centerXAnchor11 = [(UIButton *)self->_doneButton centerXAnchor];
  centerXAnchor12 = [view centerXAnchor];
  v74 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12 constant:0.0];

  widthAnchor16 = [(UIButton *)self->_doneButton widthAnchor];
  v76 = [widthAnchor16 constraintGreaterThanOrEqualToConstant:200.0];

  heightAnchor12 = [(UIButton *)self->_doneButton heightAnchor];
  v78 = [heightAnchor12 constraintEqualToConstant:82.0];

  [v71 setActive:1];
  [v74 setActive:1];
  [v76 setActive:1];
  [v78 setActive:1];
  contentView = [(UIVisualEffectView *)self->_iconsVibrancyView contentView];
  [contentView bringSubviewToFront:self->_airDropActiveIconView];
}

- (id)attributedStringWithTitle:(id)title content:(id)content
{
  v41[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  contentCopy = content;
  v8 = [titleCopy length];
  v9 = MEMORY[0x1E696AEC0];
  if (v8)
  {
    v10 = SFLocalizedStringForKey();
    [v9 stringWithFormat:v10, titleCopy, contentCopy];
  }

  else
  {
    v10 = SFLocalizedStringForKey();
    [v9 stringWithFormat:v10, contentCopy, v37];
  }
  v11 = ;

  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
  }

  else
  {
    v14 = *MEMORY[0x1E69DDC58];
    traitCollection2 = [(SFAirDropActivityViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v17 = UIContentSizeCategoryCompareToCategory(v14, preferredContentSizeCategory2);

    if (v17 != NSOrderedAscending)
    {
      v18 = MEMORY[0x1E69DB878];
      v19 = *MEMORY[0x1E69DDCF8];
      v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v20 _scaledValueForValue:11.0];
      v21 = [v18 boldSystemFontOfSize:?];

      v22 = MEMORY[0x1E69DB878];
      _screen2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v19];
      [_screen2 _scaledValueForValue:11.0];
      v24 = [v22 systemFontOfSize:?];
      goto LABEL_9;
    }
  }

  v25 = *MEMORY[0x1E69DDD10];
  _screen = [(SFAirDropActivityViewController *)self _screen];
  v27 = _SFPersonCollectionViewMaximumSizeCategory(_screen);
  v21 = [(SFAirDropActivityViewController *)self _fontWithStyle:v25 maxSizeCategory:v27 traits:2];

  _screen2 = [(SFAirDropActivityViewController *)self _screen];
  v28 = _SFPersonCollectionViewMaximumSizeCategory(_screen2);
  v24 = [(SFAirDropActivityViewController *)self _fontWithStyle:v25 maxSizeCategory:v28 traits:0];

LABEL_9:
  v29 = [v11 rangeOfString:titleCopy];
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

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = SFAirDropActivityViewController;
  changeCopy = change;
  [(SFAirDropActivityViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(SFAirDropActivityViewController *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    self->_shouldExpandTextIfNeeded = 0;
    [(SFAirDropActivityViewController *)self _updateFontSizes];
    view = [(SFAirDropActivityViewController *)self view];
    [view setNeedsUpdateConstraints];

    view2 = [(SFAirDropActivityViewController *)self view];
    [view2 setNeedsLayout];

    [(SFAirDropActivityViewController *)self updateContentAreaAnimated:0];
  }
}

+ (BOOL)isAirDropAvailable
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] isAirDropAllowed])
  {
    isClassroomEnabled = 1;
  }

  else
  {
    mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
    isClassroomEnabled = [mEMORY[0x1E69ADFB8]2 isClassroomEnabled];
  }

  return isClassroomEnabled;
}

+ (BOOL)airDropActivityCanPerformActivityWithItemClasses:(id)classes
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:classes];
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
    lowercaseString = [(NSString *)self->_sendingAppBundleID lowercaseString];
    if ([lowercaseString isEqualToString:@"com.apple.mobileslideshow"])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      lowercaseString2 = [(NSString *)self->_sendingAppBundleID lowercaseString];
      v6 = [lowercaseString2 isEqualToString:@"com.apple.camera"] ^ 1;
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

- (void)setOtherActivityViewPresented:(BOOL)presented
{
  if (self->_otherActivityViewPresented != presented)
  {
    self->_otherActivityViewPresented = presented;
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

- (void)updateShowMoreButtonForShowPeople:(BOOL)people inactive:(BOOL)inactive active:(BOOL)active static:(BOOL)static
{
  staticCopy = static;
  activeCopy = active;
  inactiveCopy = inactive;
  peopleCopy = people;
  shouldExpandTextIfNeeded = self->_shouldExpandTextIfNeeded;
  v12 = shouldExpandTextIfNeeded || inactive;
  v13 = !shouldExpandTextIfNeeded;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = active || static;
  }

  height = self->_minimumPreferredContentSize.height;
  [(NSLayoutConstraint *)self->_largeTextAirdropViewYConstraint constant];
  v17 = height - v16;
  if (v14 && !peopleCopy)
  {
    if (inactiveCopy || activeCopy || staticCopy)
    {
      v23 = &OBJC_IVAR___SFAirDropActivityViewController__noWifiTextView;
      if (activeCopy)
      {
        v23 = &OBJC_IVAR___SFAirDropActivityViewController__instructionsTextView;
      }

      if (inactiveCopy)
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

    view = [(SFAirDropActivityViewController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

    if (_shouldReverseLayoutDirection)
    {
      v52.origin.x = v20;
      v52.origin.y = v19;
      v52.size.width = v22;
      v52.size.height = v21;
      v31 = CGRectGetMaxX(v52) + -16.0;
    }

    else
    {
      view2 = [(SFAirDropActivityViewController *)self view];
      [view2 frame];
      v33 = CGRectGetWidth(v53) + -16.0;
      v54.origin.x = v20;
      v54.origin.y = v19;
      v54.size.width = v22;
      v54.size.height = v21;
      v31 = v33 - CGRectGetMinX(v54);
    }

    textContainer = [v18 textContainer];
    [textContainer setMaximumNumberOfLines:0];

    [v18 sizeThatFits:{v31, 0.0}];
    v14 = v35 > v17;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  attributedText = [(UITextView *)self->_instructionsTextView attributedText];
  v37 = [attributedText length];
  v38 = *MEMORY[0x1E69DB648];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __92__SFAirDropActivityViewController_updateShowMoreButtonForShowPeople_inactive_active_static___block_invoke;
  v45[3] = &unk_1E7EE3FA8;
  v45[4] = &v46;
  [attributedText enumerateAttribute:v38 inRange:0 options:v37 usingBlock:{0, v45}];
  if (peopleCopy || v14)
  {
    [v47[5] _bodyLeading];
    *&v39 = v17 / v39;
    v40 = vcvtms_u32_f32(*&v39);
  }

  else
  {
    v40 = 0;
  }

  textContainer2 = [(UITextView *)self->_noWifiTextView textContainer];
  [textContainer2 setMaximumNumberOfLines:v40];

  textContainer3 = [(UITextView *)self->_noAWDLTextView textContainer];
  [textContainer3 setMaximumNumberOfLines:v40];

  textContainer4 = [(UITextView *)self->_instructionsTextView textContainer];
  [textContainer4 setMaximumNumberOfLines:v40];

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
  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v6 = MEMORY[0x1E69DDD10];
  if (IsAccessibilityCategory)
  {
  }

  else
  {
    v7 = *MEMORY[0x1E69DDC58];
    traitCollection2 = [(SFAirDropActivityViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(v7, preferredContentSizeCategory2);

    if (v10 != NSOrderedAscending)
    {
      v11 = MEMORY[0x1E69DB878];
      _screen = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [_screen _scaledValueForValue:11.0];
      v13 = [v11 systemFontOfSize:?];
      [(UILabel *)self->_titleLabel setFont:v13];
      v14 = 0;
      goto LABEL_6;
    }
  }

  v15 = *v6;
  _screen = [(SFAirDropActivityViewController *)self _screen];
  v13 = _SFPersonCollectionViewMaximumSizeCategory(_screen);
  v16 = [(SFAirDropActivityViewController *)self _fontWithStyle:v15 maxSizeCategory:v13 traits:0];
  [(UILabel *)self->_titleLabel setFont:v16];

  v14 = 1;
LABEL_6:

  title = [(SFAirDropActivityViewController *)self title];
  instructionsText = [(SFAirDropActivityViewController *)self instructionsText];
  v19 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title content:instructionsText];
  [(UITextView *)self->_instructionsTextView setAttributedText:v19];

  title2 = [(SFAirDropActivityViewController *)self title];
  noWiFiBTText = [(SFAirDropActivityViewController *)self noWiFiBTText];
  v22 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title2 content:noWiFiBTText];
  [(UITextView *)self->_noWifiTextView setAttributedText:v22];

  title3 = [(SFAirDropActivityViewController *)self title];
  noAWDLText = [(SFAirDropActivityViewController *)self noAWDLText];
  v25 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title3 content:noAWDLText];
  [(UITextView *)self->_noAWDLTextView setAttributedText:v25];

  if (v14)
  {
    v26 = *v6;
    _screen2 = [(SFAirDropActivityViewController *)self _screen];
    v27 = _SFPersonCollectionViewMaximumSizeCategory(_screen2);
    [(SFAirDropActivityViewController *)self _fontWithStyle:v26 maxSizeCategory:v27 traits:0];
  }

  else
  {
    v27 = MEMORY[0x1E69DB878];
    _screen2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [_screen2 _scaledValueForValue:11.0];
    [v27 systemFontOfSize:?];
  }
  v28 = ;
  titleLabel = [(UIButton *)self->_showMoreButton titleLabel];
  [titleLabel setFont:v28];

  if (v14)
  {

    v28 = v27;
  }
}

- (id)_fontWithStyle:(id)style maxSizeCategory:(id)category traits:(unsigned int)traits
{
  v5 = *&traits;
  styleCopy = style;
  categoryCopy = category;
  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, categoryCopy) != NSOrderedAscending)
  {
    v12 = categoryCopy;

    preferredContentSizeCategory = v12;
  }

  v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  if (v5)
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v13];
    v15 = [v14 fontDescriptorWithSymbolicTraits:v5];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
  }

  else
  {
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:styleCopy compatibleWithTraitCollection:v13];
  }

  return v16;
}

- (CGSize)calculatePreferredContentSize
{
  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC60]) == NSOrderedAscending)
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

- (void)setSendingApplicationAuditToken:(id *)token
{
  v22 = *MEMORY[0x1E69E9840];
  sendingAppBundleID = self->_sendingAppBundleID;
  self->_sendingAppBundleID = 0;

  v6 = *&token->var0[4];
  *self->_sendingApplicationAuditToken.val = *token->var0;
  *&self->_sendingApplicationAuditToken.val[4] = v6;
  v20 = 0;
  v7 = *&token->var0[4];
  *atoken.val = *token->var0;
  *&atoken.val[4] = v7;
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v8 = self->_sendingAppBundleID;
    self->_sendingAppBundleID = v20;
  }

  if (!self->_sendingAppBundleID)
  {
    pidp = 0;
    v9 = *&token->var0[4];
    *atoken.val = *token->var0;
    *&atoken.val[4] = v9;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    if (pidp)
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SFAirDropActivityViewController setSendingApplicationAuditToken:];
      }

      pidp = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", pidp];
      v12 = self->_sendingAppBundleID;
      self->_sendingAppBundleID = pidp;
    }

    if (!self->_sendingAppBundleID)
    {
      v13 = airdrop_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFAirDropActivityViewController setSendingApplicationAuditToken:];
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v16 = self->_sendingAppBundleID;
      self->_sendingAppBundleID = bundleIdentifier;
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  SFSuggestedAirDropThumbnailSize();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(UICollectionView *)viewCopy dequeueReusableCellWithReuseIdentifier:@"PersonCellID" forIndexPath:pathCopy];
  view = [(SFAirDropActivityViewController *)self view];
  [view frame];
  [v8 setActivitySheetWidth:v10];

  [v8 setDarkStyleOnLegacyApp:self->_darkStyleOnLegacyApp];
  [v8 setStateBeingRestored:1];
  [v8 setDelegate:self];
  [v8 setSessionID:self->_sessionID];
  v11 = -[NSArray objectAtIndexedSubscript:](self->_people, "objectAtIndexedSubscript:", [pathCopy row]);
  detailCollectionView = self->_detailCollectionView;

  if (detailCollectionView == viewCopy)
  {
    v13 = -[NSArray objectAtIndexedSubscript:](self->_people, "objectAtIndexedSubscript:", [pathCopy row] + (-[NSArray count](self->_people, "count") >> 1));

    v11 = v13;
  }

  [v8 setPerson:v11];
  personToStoredTransferFinalState = self->_personToStoredTransferFinalState;
  realName = [v11 realName];
  v16 = [(NSMutableDictionary *)personToStoredTransferFinalState objectForKeyedSubscript:realName];

  if (v16)
  {
    [v8 restoreCellStateFromFinalTransferState:{objc_msgSend(v16, "integerValue")}];
  }

  personToProgress = self->_personToProgress;
  realName2 = [v11 realName];
  v19 = [(NSMutableDictionary *)personToProgress objectForKeyedSubscript:realName2];

  [v8 setProgress:v19];
  collectionView = self->_collectionView;
  if (v19)
  {
    [(UICollectionView *)collectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }

  else
  {
    [(UICollectionView *)collectionView deselectItemAtIndexPath:pathCopy animated:0];
  }

  [v8 setSelected:v19 != 0];
  [v8 setStateBeingRestored:0];

  return v8;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  viewCopy = view;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  lastObject = [indexPathsForSelectedItems lastObject];

  v7 = [viewCopy cellForItemAtIndexPath:lastObject];

  focusedIndexPath = lastObject;
  if (!v7)
  {
    focusedIndexPath = self->_focusedIndexPath;
  }

  v9 = focusedIndexPath;

  return focusedIndexPath;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  focusedIndexPath = self->_focusedIndexPath;
  self->_focusedIndexPath = nextFocusedIndexPath;

  nextFocusedView = [contextCopy nextFocusedView];

  LOBYTE(contextCopy) = nextFocusedView == self->_doneButton;
  self->_doneFocused = contextCopy;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v62[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [viewCopy cellForItemAtIndexPath:path];
  person = [v7 person];
  realName = [person realName];

  [(NSMutableDictionary *)self->_personToStoredTransferFinalState removeObjectForKey:realName];
  person2 = [v7 person];
  isSuggestion = [person2 isSuggestion];

  if (!isSuggestion)
  {
    self->_didSelectNode = 1;
    [v7 userDidSelect];
    person3 = [v7 person];
    if (self->_itemsReady)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sharedItemsRequestID];
      personToSharedItemsRequestID = self->_personToSharedItemsRequestID;
      realName2 = [person3 realName];
      [(NSMutableDictionary *)personToSharedItemsRequestID setObject:v25 forKeyedSubscript:realName2];

      v61 = person3;
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
        realName3 = [person3 realName];
        [(NSMutableDictionary *)v42 setObject:v41 forKeyedSubscript:realName3];

        self->_generatedPreviews = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__SFAirDropActivityViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
        aBlock[3] = &unk_1E7EE3FF8;
        aBlock[4] = self;
        v58 = v40;
        v57 = viewCopy;
        v44 = _Block_copy(aBlock);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        LODWORD(realName3) = [WeakRetained conformsToProtocol:&unk_1F38264D0];

        v46 = objc_loadWeakRetained(&self->_delegate);
        v47 = v46;
        if (realName3)
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
      realName4 = [person3 realName];
      [(NSMutableDictionary *)v31 setObject:v28 forKeyedSubscript:realName4];
    }

LABEL_20:
    goto LABEL_21;
  }

  person4 = [v7 person];
  transportBundleID = [person4 transportBundleID];
  v14 = [transportBundleID isEqualToString:@"com.apple.MobileSMS"];

  if (v14)
  {
    person3 = [(SFAirDropActivityViewController *)self delegate];
    person5 = [v7 person];
    realName5 = [person5 realName];
    person6 = [v7 person];
    displayName = [person6 displayName];
    person7 = [v7 person];
    [person7 secondaryName];
    v20 = viewCopy;
    v22 = v21 = realName;
    v23 = [v22 componentsSeparatedByString:{@", "}];
    [person3 nodePressedWithGUID:realName5 groupName:displayName recipients:v23];

    realName = v21;
    viewCopy = v20;

    v24 = person5;
LABEL_19:

    goto LABEL_20;
  }

  person8 = [v7 person];
  transportBundleID2 = [person8 transportBundleID];
  if ([transportBundleID2 isEqualToString:@"com.apple.mobilemail"])
  {

LABEL_12:
    delegate = [(SFAirDropActivityViewController *)self delegate];
    person9 = [v7 person];
    displayName2 = [person9 displayName];
    v62[0] = displayName2;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    [delegate nodePressedWithRecipients:v39];

    goto LABEL_21;
  }

  person10 = [v7 person];
  transportBundleID3 = [person10 transportBundleID];
  v35 = [transportBundleID3 isEqualToString:@"com.apple.telephonyutilities.callservicesd"];

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

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  [v4 userDidCancel];
}

- (CGSize)_cachedPreferredItemSize
{
  view = [(SFAirDropActivityViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v14);
  traitCollection = [(SFAirDropActivityViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [SFPersonCollectionViewCell _cachedPreferredItemSizeForViewWidth:preferredContentSizeCategory sizeCategory:Width];
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

        [(SFAirDropActivityViewController *)self unpublishedProgressForPersonWithRealName:*(*(&v9 + 1) + 8 * v8++)];
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
  v23 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  nameCopy = name;
  v17 = progressCopy;
  [(NSMutableDictionary *)self->_personToProgress setObject:progressCopy forKeyedSubscript:nameCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          person = [v13 person];
          realName = [person realName];
          v16 = [realName isEqualToString:nameCopy];

          if (v16)
          {
            [v13 setProgress:v17];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)unpublishedProgressForPersonWithRealName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_personToProgress objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5)
  {
    sf_transferState = [v5 sf_transferState];
    if ((sf_transferState - 4) <= 2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:sf_transferState];
      [(NSMutableDictionary *)self->_personToStoredTransferFinalState setObject:v8 forKeyedSubscript:nameCopy];
    }
  }

  v18 = v6;
  [(NSMutableDictionary *)self->_personToProgress removeObjectForKey:nameCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
  v10 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          person = [v14 person];
          realName = [person realName];
          v17 = [realName isEqualToString:nameCopy];

          if (v17)
          {
            [v14 setProgress:0];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)personCollectionViewCellDidTerminateTransfer:(id)transfer
{
  collectionView = self->_collectionView;
  v4 = [(UICollectionView *)collectionView indexPathForCell:transfer];
  [(UICollectionView *)collectionView deselectItemAtIndexPath:v4 animated:0];
}

- (void)personCollectionViewCellDidStartTransfer:(id)transfer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 airDropActivityDidSuccessfullyStartTransfer];
  }
}

- (void)personCollectionViewCellDidFinishTransfer:(id)transfer
{
  collectionView = self->_collectionView;
  v5 = [(UICollectionView *)collectionView indexPathForCell:transfer];
  [(UICollectionView *)collectionView deselectItemAtIndexPath:v5 animated:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained airDropActivityDidSuccessfullyCompleteTransfer];
}

- (void)wirelessSettingsDidChange:(id)change
{
  title = [(SFAirDropActivityViewController *)self title];
  noWiFiBTText = [(SFAirDropActivityViewController *)self noWiFiBTText];
  v6 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title content:noWiFiBTText];
  [(UITextView *)self->_noWifiTextView setAttributedText:v6];

  title2 = [(SFAirDropActivityViewController *)self title];
  noAWDLText = [(SFAirDropActivityViewController *)self noAWDLText];
  v9 = [(SFAirDropActivityViewController *)self attributedStringWithTitle:title2 content:noAWDLText];
  [(UITextView *)self->_noAWDLTextView setAttributedText:v9];

  [(SFAirDropActivityViewController *)self updateContentAreaAnimated:0];
}

- (id)indexSetToIndexPaths:(id)paths inSection:(int64_t)section
{
  v5 = MEMORY[0x1E695DF70];
  pathsCopy = paths;
  v7 = [[v5 alloc] initWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SFAirDropActivityViewController_indexSetToIndexPaths_inSection___block_invoke;
  v10[3] = &unk_1E7EE4048;
  v8 = v7;
  v11 = v8;
  sectionCopy = section;
  [pathsCopy enumerateIndexesUsingBlock:v10];

  return v8;
}

void __66__SFAirDropActivityViewController_indexSetToIndexPaths_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

- (void)browserDidUpdatePeople:(id)people
{
  people = self->_people;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFAirDropActivityViewController_browserDidUpdatePeople___block_invoke;
  v5[3] = &unk_1E7EE40C0;
  v5[4] = self;
  [people getChangedIndexesForClientPeopleList:people withCompletion:v5];
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

- (id)cellForPerson:(id)person
{
  personCopy = person;
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

      person = [v8 person];
      v10 = [person isEqual:personCopy];

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

- (void)setSharedItemsAvailable:(BOOL)available
{
  if (self->_sharedItemsAvailable != available)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_sharedItemsAvailable = available;
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

- (void)startTransferForPeople:(id)people
{
  v66 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = people;
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
        realName = [v47 realName];
        v6 = [(NSMutableDictionary *)personToSharedItemsRequestID objectForKeyedSubscript:realName];

        if (v6)
        {
          previewImage = [(NSMutableDictionary *)self->_sharedItemsRequestIDToPreviewPhoto objectForKeyedSubscript:v6];
          array = [MEMORY[0x1E695DF70] array];
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
            payloadDescription = 0;
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
                    [array addObject:v16];
                    v11 |= wasString ^ 1;
                    v12 |= wasString;
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
          payloadDescription = 0;
LABEL_26:

          v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array, "count")}];
          if ([array count])
          {
            v24 = 0;
            do
            {
              v25 = [array objectAtIndexedSubscript:v24];
              v26 = v25;
              if ((v21 & 1) == 0 || ([v25 wasString] & 1) == 0)
              {
                v27 = [v26 URL];
                [v23 addObject:v27];
              }

              ++v24;
            }

            while ([array count] > v24);
          }

          v51 = 0;
          v28 = [(SFAirDropActivityViewController *)self isValidPayload:v23 toPerson:v47 invalidMessage:&v51];
          v29 = v51;
          if (v28)
          {
            sendingAppBundleID = self->_sendingAppBundleID;
            sessionID = self->_sessionID;
            v32 = SFScaleAndRotateImage(previewImage, 540.0);
            v33 = v32;
            [v47 startSendForBundleID:sendingAppBundleID sessionID:sessionID items:v23 description:payloadDescription previewImage:objc_msgSend(v32 fromShareSheet:{"CGImage"), 0}];
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
          previewImage = airdrop_log();
          if (os_log_type_enabled(previewImage, OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(a2);
            *buf = v41;
            v61 = v22;
            v62 = 2112;
            v63 = v47;
            _os_log_error_impl(&dword_1B9E4B000, previewImage, OS_LOG_TYPE_ERROR, "%@ failed to find request ID for %@", buf, 0x16u);
          }
        }
      }

      v45 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v45);
  }
}

- (BOOL)isValidPayload:(id)payload toPerson:(id)person invalidMessage:(id *)message
{
  v82 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  personCopy = person;
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
  if (([personCopy supportsPasses] & 1) == 0)
  {
    v63 = personCopy;
    v58 = payloadCopy;
    v59 = v8;
    firstObject = [v8 firstObject];
    v22 = [firstObject objectForKeyedSubscript:*MEMORY[0x1E69CDF90]];
    pathExtension = [v22 pathExtension];

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
            isUnknown = [v63 isUnknown];
            v29 = @"TRANSFER_TO_PERSON_NO_WALLET_TEXT";
            if (isUnknown)
            {
              v29 = @"TRANSFER_TO_DEVICE_NO_WALLET_TEXT";
            }

            v30 = MEMORY[0x1E696AEC0];
            v31 = v29;
            v32 = SFLocalizedStringForKey();
            v33 = MEMORY[0x1E696AEC0];
            SFLocalizedStringForKey();
            v35 = v34 = pathExtension;

            displayName = [v63 displayName];
            v37 = [v33 stringWithFormat:v35, displayName];
            *message = [v30 stringWithFormat:v32, v37];

            pathExtension = v34;
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

    payloadCopy = v58;
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
        firstObject3 = [v61 firstObject];
        SFIsPasskeyCredentialLink();

        v15 = MEMORY[0x1E696AEC0];
        v16 = SFLocalizedStringForKey();
        v17 = SFLocalizedStringForKeyInStringsFileNamed();
        *message = [v15 stringWithFormat:v16, v17];

        v79[0] = @"supportsCredentials";
        v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(personCopy, "supportsCredentials")}];
        v79[1] = @"unknownPeer";
        v80[0] = v18;
        v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(personCopy, "isUnknown")}];
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
    pathExtension = payloadCopy;
    v50 = [pathExtension countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (!v50)
    {
      v26 = 1;
      goto LABEL_28;
    }

    v51 = v50;
    v59 = v8;
    v63 = personCopy;
    v52 = *v67;
    while (2)
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v67 != v52)
        {
          objc_enumerationMutation(pathExtension);
        }

        v54 = *(*(&v66 + 1) + 8 * j);
        defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
        if ([defaultWorkspace isApplicationAvailableToOpenURL:v54 error:0])
        {
        }

        else
        {
          defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
          v57 = [defaultWorkspace2 isApplicationAvailableToOpenURL:v54 includePrivateURLSchemes:1 error:0];

          if (v57)
          {
            [pathExtension count];
            SFLocalizedStringForKey();
            *message = v26 = 0;
            goto LABEL_27;
          }
        }
      }

      v51 = [pathExtension countByEnumeratingWithState:&v66 objects:v78 count:16];
      v26 = 1;
      if (v51)
      {
        continue;
      }

      break;
    }

LABEL_27:
    personCopy = v63;
    v8 = v59;
    goto LABEL_28;
  }

  firstObject4 = [v9 firstObject];
  scheme2 = [firstObject4 scheme];
  pathExtension = [scheme2 lowercaseString];

  MyFriendsLink = SFIsFindMyFriendsLink();
  if (MyFriendsLink)
  {
    isUnknown2 = [personCopy isUnknown];
    v41 = @"TRANSFER_TO_PERSON_NO_FMF_TEXT";
    if (isUnknown2)
    {
      v41 = @"TRANSFER_TO_DEVICE_NO_FMF_TEXT";
    }

    v42 = pathExtension;
    v43 = MEMORY[0x1E696AEC0];
    v44 = v41;
    v20 = SFLocalizedStringForKey();
    v45 = MEMORY[0x1E696AEC0];
    v46 = SFLocalizedStringForKey();

    displayName2 = [personCopy displayName];
    v48 = [v45 stringWithFormat:v46, displayName2];
    *message = [v43 stringWithFormat:v20, v48];

    pathExtension = v42;
    goto LABEL_23;
  }

LABEL_24:
  v26 = MyFriendsLink ^ 1;
LABEL_28:

  return v26 & 1;
}

- (BOOL)addURL:(id)l withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v16 = airdrop_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v23 = NSStringFromCGSize(v46);
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
    _os_log_debug_impl(&dword_1B9E4B000, v16, OS_LOG_TYPE_DEBUG, "addURL:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  scheme = [lCopy scheme];

  if (scheme)
  {
    self->_itemsReady = 0;
    if (imageCopy || (generatedPreviews = self->_generatedPreviews, generatedPreviews > 2))
    {
      operationQueue = self->_operationQueue;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke_431;
      v24[3] = &unk_1E7EE4110;
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
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __96__SFAirDropActivityViewController_addURL_withAttachmentName_description_previewImage_itemIndex___block_invoke;
      v30[3] = &unk_1E7EE40E8;
      v31 = lCopy;
      v32 = descriptionCopy;
      selfCopy2 = self;
      indexCopy2 = index;
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

- (BOOL)addImage:(id)image withAttachmentName:(id)name description:(id)description previewImage:(id)previewImage itemIndex:(int)index
{
  v52 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  nameCopy = name;
  descriptionCopy = description;
  previewImageCopy = previewImage;
  v16 = airdrop_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v30 = NSStringFromCGSize(v53);
    [previewImageCopy size];
    v31 = NSStringFromCGSize(v54);
    *buf = 138413570;
    v41 = imageCopy;
    v42 = 2112;
    v43 = v30;
    v44 = 2112;
    v45 = nameCopy;
    v46 = 2112;
    v47 = descriptionCopy;
    v48 = 2112;
    v49 = previewImageCopy;
    v50 = 2112;
    v51 = v31;
    _os_log_debug_impl(&dword_1B9E4B000, v16, OS_LOG_TYPE_DEBUG, "addImage:[%@]-size:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x3Eu);
  }

  v32 = nameCopy;

  self->_itemsReady = 0;
  if (!previewImageCopy)
  {
    previewImageCopy = imageCopy;
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
  v34 = imageCopy;
  v35 = v23;
  v36 = descriptionCopy;
  v37 = previewImageCopy;
  selfCopy = self;
  indexCopy = index;
  v25 = previewImageCopy;
  v26 = descriptionCopy;
  v27 = v23;
  v28 = imageCopy;
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

- (BOOL)addData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  v8 = *&index;
  v41 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v19 = airdrop_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v25 = [dataCopy length];
    [imageCopy size];
    v26 = NSStringFromCGSize(v42);
    *buf = 134219522;
    v28 = dataCopy;
    v29 = 2048;
    v30 = v25;
    v31 = 2112;
    v32 = typeCopy;
    v33 = 2112;
    v34 = nameCopy;
    v35 = 2112;
    v36 = descriptionCopy;
    v37 = 2112;
    v38 = imageCopy;
    v39 = 2112;
    v40 = v26;
    _os_log_debug_impl(&dword_1B9E4B000, v19, OS_LOG_TYPE_DEBUG, "addData:[%p]-length:[%lu] ofType:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x48u);
  }

  self->_itemsReady = 0;
  v20 = imageCopy;
  v21 = v20;
  if (!v20)
  {
    if (UTTypeConformsTo(typeCopy, *MEMORY[0x1E69637F8]))
    {
      v21 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
    }

    else
    {
      v21 = 0;
    }
  }

  if (nameCopy)
  {
    v22 = nameCopy;
  }

  else
  {
    v22 = descriptionCopy;
  }

  v23 = [(SFAirDropActivityViewController *)self createURLPayloadForData:dataCopy ofType:typeCopy withAttachmentName:v22 description:descriptionCopy previewImage:v21 itemIndex:v8 completion:0];

  return v23;
}

- (BOOL)createURLPayloadForData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index completion:(id)completion
{
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  completionCopy = completion;
  v42 = typeCopy;
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
        v23 = MEMORY[0x1E696AEC0];
        v24 = self->_attachmentCount + 1;
        self->_attachmentCount = v24;
        v25 = [v23 stringWithFormat:@"%@-%ld.%@", stringByDeletingPathExtension, v24, pathExtension];
      }

      else
      {
        v31 = MEMORY[0x1E696AEC0];
        v32 = self->_attachmentCount + 1;
        self->_attachmentCount = v32;
        v25 = [v31 stringWithFormat:@"%@-%ld.%@", v20, v32, pathExtension];
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
    v26 = UTTypeCopyPreferredTagWithClass(typeCopy, *MEMORY[0x1E6963710]);
    if (v26)
    {
      v20 = v26;
    }

    else
    {
      v20 = @"data";
    }

    v27 = UTTypeCopyDescription(typeCopy);
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
  v46 = dataCopy;
  v47 = v34;
  v48 = descriptionCopy;
  v49 = imageCopy;
  indexCopy = index;
  selfCopy = self;
  v51 = completionCopy;
  v36 = completionCopy;
  v37 = imageCopy;
  v38 = descriptionCopy;
  v39 = v34;
  v40 = dataCopy;
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

- (BOOL)addString:(id)string withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  v7 = *&index;
  v34 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v23 = NSStringFromCGSize(v35);
    *buf = 138413314;
    v25 = stringCopy;
    v26 = 2112;
    v27 = nameCopy;
    v28 = 2112;
    v29 = descriptionCopy;
    v30 = 2112;
    v31 = imageCopy;
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
    v19 = [stringCopy dataUsingEncoding:4];
    if (descriptionCopy)
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

    v18 = [(SFAirDropActivityViewController *)self createURLPayloadForData:v19 ofType:*MEMORY[0x1E6963870] withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:v7 completion:&__block_literal_global_5];
  }

  return v18;
}

- (BOOL)addAttributedString:(id)string withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  v7 = *&index;
  v40 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v16 = airdrop_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v26 = NSStringFromCGSize(v41);
    *buf = 138413314;
    v31 = stringCopy;
    v32 = 2112;
    v33 = nameCopy;
    v34 = 2112;
    v35 = descriptionCopy;
    v36 = 2112;
    v37 = imageCopy;
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
    v18 = [stringCopy length];
    v28 = *MEMORY[0x1E69DB628];
    v29 = *MEMORY[0x1E69DB658];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v27 = 0;
    v20 = [stringCopy dataFromRange:0 documentAttributes:v18 error:{v19, &v27}];
    v21 = v27;

    if (v21)
    {
      v22 = airdrop_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SFAirDropActivityViewController addAttributedString:withAttachmentName:description:previewImage:itemIndex:];
      }

      string = [stringCopy string];
    }

    else
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v20 encoding:4];
    }

    v24 = string;
    v17 = [(SFAirDropActivityViewController *)self addString:string withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:v7];
  }

  return v17;
}

- (void)handleLivePhotoItemProvider:(id)provider withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  v45[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
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
  [providerCopy loadItemForTypeIdentifier:v17 options:v16 completionHandler:v35];
  v19 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v18, v19);
  v20 = imageCopy;
  v21 = v20;
  if (!v20)
  {
    v22 = MEMORY[0x1E69DCAB8];
    imageURL = [v39[5] imageURL];
    path = [imageURL path];
    v21 = [v22 imageWithContentsOfFile:path];
  }

  operationQueue = self->_operationQueue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __117__SFAirDropActivityViewController_handleLivePhotoItemProvider_withAttachmentName_description_previewImage_itemIndex___block_invoke_2;
  v29[3] = &unk_1E7EE41D0;
  v33 = &v38;
  v26 = descriptionCopy;
  v30 = v26;
  v27 = v21;
  v31 = v27;
  selfCopy = self;
  indexCopy = index;
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

- (void)handleImageItemProvider:(id)provider withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  v7 = *&index;
  v31[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
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
  [providerCopy loadItemForTypeIdentifier:v18 options:v17 completionHandler:v21];
  v20 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v19, v20);
  [(SFAirDropActivityViewController *)self addImage:v25[5] withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:v7];

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

- (void)handleOtherItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image
{
  v63[5] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v14 = *MEMORY[0x1E69637F8];
  v63[0] = *MEMORY[0x1E69638B8];
  v63[1] = v14;
  v15 = *MEMORY[0x1E6963870];
  v63[2] = *MEMORY[0x1E6963888];
  v63[3] = v15;
  v63[4] = *MEMORY[0x1E6963798];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:5];
  v17 = v16;
  if (typeCopy)
  {
    v18 = [v16 arrayByAddingObject:typeCopy];

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
      if ([providerCopy hasItemConformingToTypeIdentifier:v23])
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
        [providerCopy loadItemForTypeIdentifier:v23 options:v25 completionHandler:v47];
        v43 = v25;
        v27 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v26, v27);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v29 = MEMORY[0x1E695DFF8];
          string = v51[5];
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
              [(SFAirDropActivityViewController *)self addString:v38 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (sIgnoreStrings & 1) == 0)
              {
                v39 = v51[5];
                ++self->_sharedItemsCount;
                [(SFAirDropActivityViewController *)self addAttributedString:v39 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
              }

              else
              {
                objc_opt_class();
                v34 = objc_opt_isKindOfClass();
                v35 = v51[5];
                if (v34)
                {
                  ++self->_sharedItemsCount;
                  [(SFAirDropActivityViewController *)self addURL:v35 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
                }

                else
                {
                  objc_opt_class();
                  v36 = objc_opt_isKindOfClass();
                  v37 = v51[5];
                  if (v36)
                  {
                    ++self->_sharedItemsCount;
                    [(SFAirDropActivityViewController *)self addImage:v37 withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:?];
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

                      v42 = v51[5];
                      ++self->_sharedItemsCount;
                      [(SFAirDropActivityViewController *)self addData:v42 ofType:firstObject withAttachmentName:nameCopy description:descriptionCopy previewImage:imageCopy itemIndex:v43];
                    }
                  }
                }
              }
            }

            _Block_object_dispose(&v50, 8);
            goto LABEL_38;
          }

          v29 = MEMORY[0x1E695DFF8];
          string = [v51[5] string];
        }

        v31 = [v29 URLWithString:{string, v43}];
        if ((isKindOfClass & 1) == 0)
        {
        }

        if (v31)
        {
          scheme = [v31 scheme];
          v33 = scheme == 0;

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

- (BOOL)addItemProvider:(id)provider withDataType:(id)type attachmentName:(id)name description:(id)description previewImage:(id)image
{
  v30 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  typeCopy = type;
  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v19 = NSStringFromCGSize(v31);
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
    _os_log_debug_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEBUG, "addItemProvider:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", &v20, 0x34u);
  }

  self->_itemsReady = 0;
  [(SFAirDropActivityViewController *)self handleOtherItemProvider:providerCopy withDataType:typeCopy attachmentName:nameCopy description:descriptionCopy previewImage:imageCopy];

  return 1;
}

- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)d
{
  v40 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
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
              [array addObject:previewImage2];

              v17 = [v12 URL];
              [array2 addObject:v17];
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  if ([array count] >= 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = array2;
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

          pathExtension = [*(*(&v30 + 1) + 8 * j) pathExtension];
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v20, pathExtension, 0);
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

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v26 = v25 == 2.0;

    obj = SFImageStackFromImages(array, dbl_1B9EDEAB0[v26]);
    sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
    pathExtension = [MEMORY[0x1E696AD98] numberWithInteger:d];
    [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto setObject:obj forKeyedSubscript:pathExtension];
LABEL_25:
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  viewCopy = view;
  [layoutCopy itemSize];
  v10 = v9;
  [layoutCopy minimumLineSpacing];
  v12 = v11;

  v13 = [viewCopy numberOfItemsInSection:index];
  v14 = v10 * v13;
  v15 = v12 * (v13 - 1);
  [viewCopy bounds];
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

- (void)handleOperationCallback:(__SFOperation *)callback event:(int64_t)event withResults:(id)results
{
  resultsCopy = results;
  v7 = airdrop_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (event == 10)
  {
    if (v8)
    {
      [SFAirDropActivityViewController handleOperationCallback:resultsCopy event:v7 withResults:?];
    }
  }

  else if (v8)
  {
    [SFAirDropActivityViewController handleOperationCallback:event event:resultsCopy withResults:v7];
  }
}

- (void)cleanupWithSelectedActivityType:(id)type
{
  typeCopy = type;
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SFAirDropActivityViewController *)a2 cleanupWithSelectedActivityType:typeCopy, v6];
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
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
  self->_realNameToFirstSeenTimestamp = weakToStrongObjectsMapTable;
}

- (void)_stopTelemetry
{
  realNameToFirstSeenTimestamp = self->_realNameToFirstSeenTimestamp;
  self->_realNameToFirstSeenTimestamp = 0;
}

- (void)_collectTelemetryForPeople:(id)people
{
  v20 = *MEMORY[0x1E69E9840];
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
      for (i = 0; i != v7; ++i)
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
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
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
  v17 = *MEMORY[0x1E69E9840];
  personCopy = person;
  realName = [personCopy realName];
  if (realName)
  {
    v6 = [(NSMapTable *)self->_realNameToFirstSeenTimestamp objectForKey:realName];
    if (v6)
    {
      v7 = airdrop_log();
      v8 = os_signpost_id_make_with_pointer(v7, personCopy);

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
        unsignedLongLongValue = [v6 unsignedLongLongValue];
        v15 = 134349056;
        v16 = unsignedLongLongValue;
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