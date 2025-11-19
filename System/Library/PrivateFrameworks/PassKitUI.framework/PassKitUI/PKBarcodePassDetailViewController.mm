@interface PKBarcodePassDetailViewController
+ (BOOL)isWifiEnabled;
- (BOOL)_isBluetoothEnabled;
- (BOOL)_linkedAppAvailable;
- (BOOL)_settingsAvailable;
- (BOOL)_updateHeaderHeight;
- (BOOL)handleDeletePassWithUniqueID:(id)a3;
- (BOOL)reloadData;
- (BOOL)shouldAllowRefresh;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (PKBarcodePassDetailViewController)initWithPass:(id)a3;
- (PKPassDeleteHandler)deleteOverrider;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_automaticSelectionCell;
- (id)_barcodeCell;
- (id)_deleteCell;
- (id)_fieldCellForRow:(unint64_t)a3;
- (id)_fieldForRow:(unint64_t)a3;
- (id)_locationHelpTextWithLink:(id *)a3 linkRange:(_NSRange *)a4;
- (id)_locationHelpViewForTableView:(id)a3;
- (id)_personalizePassCell;
- (id)_settingsCellForRow:(unint64_t)a3;
- (id)linkedApp;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)rowAnimationForReloadingSection:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_numberOfAvailableSettings;
- (unint64_t)_settingForRow:(unint64_t)a3;
- (void)_bluetoothPowerChanged:(id)a3;
- (void)_passSettingsChanged:(id)a3;
- (void)_refreshFinished:(BOOL)a3;
- (void)_reloadPassAndView;
- (void)_sharePass;
- (void)_updateNavigationItem;
- (void)_updatePassProperties;
- (void)_updateStandardAppearance:(id)a3;
- (void)_wifiChanged:(id)a3;
- (void)appViewContentSizeChanged:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)pushSettingsFromViewToModel;
- (void)refreshControlValueChanged:(id)a3;
- (void)reloadSection:(unint64_t)a3;
- (void)reloadSections:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setShowCloseButton:(BOOL)a3;
- (void)setShowsLinks:(BOOL)a3;
- (void)setSuppressedContent:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKBarcodePassDetailViewController

+ (BOOL)isWifiEnabled
{
  v2 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  v3 = [v2 isWiFiEnabled];

  return v3;
}

- (PKBarcodePassDetailViewController)initWithPass:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = PKBarcodePassDetailViewController;
  v6 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v22, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 7);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
    v8 = [(PKPass *)v7->_pass displayProfile];
    displayProfile = v7->_displayProfile;
    v7->_displayProfile = v8;

    v10 = [PKPassColorProfile profileForDisplayProfile:v7->_displayProfile];
    colorProfile = v7->_colorProfile;
    v7->_colorProfile = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fieldCellsByRow = v7->_fieldCellsByRow;
    v7->_fieldCellsByRow = v12;

    v7->_isWifiEnabled = 1;
    v7->_isLocationEnabled = 1;
    v7->_isBluetoothEnabled = 1;
    v14 = [(PKBarcodePassDetailViewController *)v7 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v14 pkui_setupScrollEdgeChromelessAppearance];
      [v14 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    v7->_titleOpacity = 0.0;
    v15 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v15 configureWithDefaultBackground];
    [(PKBarcodePassDetailViewController *)v7 _updateStandardAppearance:v15];
    [v14 setStandardAppearance:v15];
    [(PKBarcodePassDetailViewController *)v7 _updatePassProperties];
    v16 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
    [v16 addWiFiObserver:v7 selector:sel__wifiChanged_];

    v17 = [MEMORY[0x1E698F468] sharedInstance];
    btManager = v7->_btManager;
    v7->_btManager = v17;

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v7 selector:sel__bluetoothPowerChanged_ name:*MEMORY[0x1E698F448] object:0];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v7 selector:sel__bluetoothPowerChanged_ name:*MEMORY[0x1E698F458] object:0];

    PKObservePassSettingsChanged();
  }

  return v7;
}

- (void)dealloc
{
  PKUnregisterPassSettingsChangedObserver();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [v4 removeWiFiObserver:self];

  refreshTimeout = self->_refreshTimeout;
  if (refreshTimeout)
  {
    dispatch_source_cancel(refreshTimeout);
    v6 = self->_refreshTimeout;
    self->_refreshTimeout = 0;
  }

  if (self->_didRampScreenBrightness)
  {
    v7 = +[PKBacklightController sharedInstance];
    [v7 endRequestingBacklightRamping:self];

    self->_didRampScreenBrightness = 0;
  }

  v8.receiver = self;
  v8.super_class = PKBarcodePassDetailViewController;
  [(PKSectionTableViewController *)&v8 dealloc];
}

- (void)setShowCloseButton:(BOOL)a3
{
  if (self->_showCloseButton == !a3)
  {
    self->_showCloseButton = a3;
    [(PKBarcodePassDetailViewController *)self _updateNavigationItem];
  }
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = PKBarcodePassDetailViewController;
  [(PKBarcodePassDetailViewController *)&v14 loadView];
  v3 = [(PKBarcodePassDetailViewController *)self tableView];
  if ([(PKBarcodePassDetailViewController *)self shouldAllowRefresh])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    refreshControl = self->_refreshControl;
    self->_refreshControl = v4;

    [(PKBarcodePassDetailViewController *)self setRefreshControl:self->_refreshControl];
    [(UIRefreshControl *)self->_refreshControl addTarget:self action:sel_refreshControlValueChanged_ forControlEvents:4096];
  }

  v6 = [[PKPassHeaderView alloc] initWithPass:self->_pass];
  passHeaderView = self->_passHeaderView;
  self->_passHeaderView = v6;

  [(PKPassHeaderView *)self->_passHeaderView setDelegate:self];
  [(PKPassHeaderView *)self->_passHeaderView setSuppressedContent:self->_suppressedContent];
  [(PKPassHeaderView *)self->_passHeaderView setShowModificationDate:[(PKBarcodePassDetailViewController *)self shouldAllowRefresh]];
  v8 = self->_passHeaderView;
  if (([(PKPass *)self->_pass isExpired]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = [(PKPass *)self->_pass isVoided];
  }

  [(PKPassHeaderView *)v8 setExpiredPass:v9];
  [(PKPassHeaderView *)self->_passHeaderView setSmall:1];
  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 0.0, self->_headerHeight}];
  headerView = self->_headerView;
  self->_headerView = v11;

  [v3 setTableHeaderView:self->_headerView];
  [(UIView *)self->_headerView addSubview:self->_passHeaderView];
  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"FirstSectionHeaderReuseIdentifier"];
  v13 = [(PKBarcodePassDetailViewController *)self tableView];
  [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B99E8]];

  [(PKBarcodePassDetailViewController *)self setShowsLinks:(self->_suppressedContent & 0x10) == 0];
  [(PKBarcodePassDetailViewController *)self _updateHeaderHeight];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKBarcodePassDetailViewController;
  [(PKBarcodePassDetailViewController *)&v7 viewWillAppear:a3];
  v4 = [MEMORY[0x1E695FBE8] locationServicesEnabled];
  if (self->_isLocationEnabled == (v4 ^ 1))
  {
    self->_isLocationEnabled = v4;
    locationHelpView = self->_locationHelpView;
    self->_locationHelpView = 0;

    [(PKBarcodePassDetailViewController *)self reloadData];
  }

  if ([(PKBarcodePassDetailViewController *)self shouldMapSection:5])
  {
    self->_didRampScreenBrightness = 1;
    v6 = +[PKBacklightController sharedInstance];
    [v6 beginRequestingBacklightRamping:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKBarcodePassDetailViewController;
  [(PKBarcodePassDetailViewController *)&v5 viewWillDisappear:a3];
  if (self->_didRampScreenBrightness)
  {
    v4 = +[PKBacklightController sharedInstance];
    [v4 endRequestingBacklightRamping:self];

    self->_didRampScreenBrightness = 0;
  }
}

- (void)viewWillLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PKBarcodePassDetailViewController;
  [(PKBarcodePassDetailViewController *)&v46 viewWillLayoutSubviews];
  v3 = [(PKBarcodePassDetailViewController *)self tableView];
  v4 = [(PKBarcodePassDetailViewController *)self navigationItem];
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v3 safeAreaInsets];
  v12 = v11;
  v14 = v13;
  [v3 contentSize];
  v16 = v15;
  if (self->_previousLayoutTableViewBoundsSize.width != v8)
  {
    self->_previousLayoutTableViewBoundsSize.width = v8;
    self->_previousLayoutTableViewBoundsSize.height = v10;
    [(PKBarcodePassDetailViewController *)self _updateHeaderHeight];
  }

  [(PKBarcodePassDetailViewController *)self _offscreenHeaderHeight];
  v18 = v17;
  [v3 contentInset];
  v20 = v19;
  v21 = v10 - (v12 + v14);
  v22 = v16 - v21;
  v23 = v16 > v21 && v22 < v18;
  v24 = v20;
  if (v23)
  {
    v24 = v18 - v22;
  }

  if (v20 != v24)
  {
    [v3 setContentInset:?];
  }

  [v3 adjustedContentInset];
  v26 = v25;
  v27 = v18 + v25 - v12;
  v28 = [(UIRefreshControl *)self->_refreshControl superview];

  if (v6 >= -v26 || v28 == 0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = -v26 - v6;
  }

  v31 = v27 + v30;
  memset(&slice, 0, sizeof(slice));
  [v3 _rectForTableHeaderView];
  v35 = v26 + v30;
  v36 = -v35;
  headerHeight = self->_headerHeight;
  v38 = v31 - v35;
  v39 = v6 - v38 + v33;
  if (v6 <= v38)
  {
    v39 = v33;
  }

  v40 = v33 - (v36 - v6);
  if (v6 >= v36)
  {
    v40 = v39;
  }

  self->_headerFrame.origin.x = v32;
  self->_headerFrame.origin.y = v40;
  self->_headerFrame.size.width = v34;
  self->_headerFrame.size.height = headerHeight;
  [(UIView *)self->_headerView setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(PKPassHeaderView *)self->_passHeaderView updateShadow:fmin(fmax((v6 - v38) / (v38 + -20.0 - v38), 0.0), 1.0)];
  [(PKPassHeaderView *)self->_passHeaderView setAlpha:fmin(fmax((v6 - (v38 + 20.0)) / (v38 - (v38 + 20.0)), 0.0), 1.0)];
  v41 = fmin(fmax((v6 - ((v35 + v38) * 0.25 - v35)) / ((v35 + v38) * 0.25 - v35 + 20.0 - ((v35 + v38) * 0.25 - v35)), 0.0), 1.0);
  [(UIView *)self->_headerView bounds];
  v44 = v47;
  CGRectDivide(v47, &slice, &v44, self->_headerHeight, CGRectMinYEdge);
  [(PKPassHeaderView *)self->_passHeaderView setFrame:slice.origin.x + self->_headerContentInset.left, slice.origin.y + self->_headerContentInset.top, slice.size.width - (self->_headerContentInset.left + self->_headerContentInset.right), slice.size.height - (self->_headerContentInset.top + self->_headerContentInset.bottom)];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }

  if (self->_titleOpacity != v41)
  {
    self->_titleOpacity = v41;
    v42 = [v4 standardAppearance];
    v43 = [v42 copy];

    [(PKBarcodePassDetailViewController *)self _updateStandardAppearance:v43];
    [v4 setStandardAppearance:v43];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKBarcodePassDetailViewController;
  [(PKBarcodePassDetailViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(PKBarcodePassDetailViewController *)self tableView];
  [v3 layoutIfNeeded];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [v3 _moveContentSubview:self->_headerView toBack:0];
  }

  [(UIView *)self->_headerView setFrame:self->_headerFrame.origin.x, self->_headerFrame.origin.y, self->_headerFrame.size.width, self->_headerFrame.size.height];
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  LOBYTE(v4) = 0;
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
        if ((self->_suppressedContent & 0x100) == 0)
        {

          return [(PKBarcodePassDetailViewController *)self _personalizeAvailable];
        }

        goto LABEL_33;
      }

      if ((self->_suppressedContent & 1) == 0)
      {
        return PKRunningInViewService() ^ 1;
      }

LABEL_33:
      LOBYTE(v4) = 0;
      return v4;
    }

    if (a3 != 5)
    {
      if (a3 == 6)
      {
        v6 = [(PKBarcodePassDetailViewController *)self _relevantBuckets];
        LOBYTE(v4) = [v6 count] != 0;
      }

      return v4;
    }

    if ((self->_suppressedContent & 0x80) != 0 || !PKValueAddedServicesEnabledForPass() && ![(PKPass *)self->_pass supportsIssuerBinding])
    {
      goto LABEL_33;
    }

    v7 = [(PKPass *)self->_pass barcode];
    LOBYTE(v4) = v7 != 0;

    return v4;
  }

  if (a3)
  {
    if (a3 == 1)
    {

      return [(PKBarcodePassDetailViewController *)self _settingsAvailable];
    }

    else
    {
      if (a3 != 2)
      {
        return v4;
      }

      if (PKValueAddedServicesEnabledForPass())
      {
        LOBYTE(v4) = 1;
        return v4;
      }

      if (!PKIsPairedWithWatch() || ![(PKPass *)self->_pass hasValidNFCPayload])
      {
        goto LABEL_33;
      }

      pass = self->_pass;

      return [(PKPass *)pass isValid];
    }
  }

  else
  {

    return [(PKBarcodePassDetailViewController *)self _linkedAppAvailable];
  }
}

- (void)reloadSection:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      automaticUpdatesCell = self->_automaticUpdatesCell;
      self->_automaticUpdatesCell = 0;

      showNotificationsCell = self->_showNotificationsCell;
      self->_showNotificationsCell = 0;

      showInLockScreenCell = self->_showInLockScreenCell;
      self->_showInLockScreenCell = 0;

      [(PKBarcodePassDetailViewController *)self setShowsLinks:(self->_suppressedContent & 0x10) == 0];
      break;
    case 6uLL:
      [(NSMutableDictionary *)self->_fieldCellsByRow removeAllObjects];
      break;
    case 5uLL:
      barcodeCell = self->_barcodeCell;
      self->_barcodeCell = 0;

      break;
  }

  v9.receiver = self;
  v9.super_class = PKBarcodePassDetailViewController;
  [(PKSectionTableViewController *)&v9 reloadSection:a3];
}

- (void)reloadSections:(id)a3
{
  v4 = a3;
  if ([v4 containsObject:&unk_1F3CC6FF8])
  {
    barcodeCell = self->_barcodeCell;
    self->_barcodeCell = 0;
  }

  if ([v4 containsObject:&unk_1F3CC7010])
  {
    [(NSMutableDictionary *)self->_fieldCellsByRow removeAllObjects];
  }

  if ([v4 containsObject:&unk_1F3CC7028])
  {
    automaticUpdatesCell = self->_automaticUpdatesCell;
    self->_automaticUpdatesCell = 0;

    showNotificationsCell = self->_showNotificationsCell;
    self->_showNotificationsCell = 0;

    showInLockScreenCell = self->_showInLockScreenCell;
    self->_showInLockScreenCell = 0;

    [(PKBarcodePassDetailViewController *)self setShowsLinks:(self->_suppressedContent & 0x10) == 0];
  }

  v9.receiver = self;
  v9.super_class = PKBarcodePassDetailViewController;
  [(PKSectionTableViewController *)&v9 reloadSections:v4];
}

- (BOOL)reloadData
{
  automaticUpdatesCell = self->_automaticUpdatesCell;
  self->_automaticUpdatesCell = 0;

  showNotificationsCell = self->_showNotificationsCell;
  self->_showNotificationsCell = 0;

  showInLockScreenCell = self->_showInLockScreenCell;
  self->_showInLockScreenCell = 0;

  barcodeCell = self->_barcodeCell;
  self->_barcodeCell = 0;

  [(PKBarcodePassDetailViewController *)self setShowsLinks:(self->_suppressedContent & 0x10) == 0];
  [(NSMutableDictionary *)self->_fieldCellsByRow removeAllObjects];
  v8.receiver = self;
  v8.super_class = PKBarcodePassDetailViewController;
  return [(PKSectionTableViewController *)&v8 reloadData];
}

- (int64_t)rowAnimationForReloadingSection:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 100;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PKBarcodePassDetailViewController;
  return [(PKSectionTableViewController *)&v6 rowAnimationForReloadingSection:?];
}

- (BOOL)_updateHeaderHeight
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = [(PKBarcodePassDetailViewController *)self tableView];
  [v5 separatorInset];
  v7 = fmax(v6, 10.0);
  [v5 bounds];
  [(PKPassHeaderView *)self->_passHeaderView sizeThatFits:v8 - v7 - v7, 84.0];
  v10 = fmax(v9, 0.0);
  headerHeight = self->_headerHeight;
  v12 = v4 + v10;
  self->_headerHeight = v12;
  p_headerContentInset = &self->_headerContentInset;
  if (headerHeight != v12)
  {
    p_headerContentInset->top = v3;
    self->_headerContentInset.left = v7;
    p_right = &self->_headerContentInset.right;
LABEL_11:
    self->_headerContentInset.bottom = v4;
    *p_right = v7;
    goto LABEL_12;
  }

  p_right = &self->_headerContentInset.right;
  if (self->_headerContentInset.left != v7 || p_headerContentInset->top != v3 || self->_headerContentInset.right != v7)
  {
    p_headerContentInset->top = v3;
    self->_headerContentInset.left = v7;
    goto LABEL_11;
  }

  bottom = self->_headerContentInset.bottom;
  p_headerContentInset->top = v3;
  self->_headerContentInset.left = v7;
  self->_headerContentInset.bottom = v4;
  self->_headerContentInset.right = v7;
  if (bottom == v4)
  {
    v17 = 0;
    goto LABEL_13;
  }

LABEL_12:
  [(UIView *)self->_headerView bounds];
  [(UIView *)self->_headerView setBounds:?];
  [v5 setTableHeaderView:0];
  [v5 setTableHeaderView:self->_headerView];
  v17 = 1;
LABEL_13:

  return v17;
}

- (id)linkedApp
{
  linkedApp = self->_linkedApp;
  if (!linkedApp)
  {
    v4 = [PKLinkedAppView alloc];
    v5 = [(PKPass *)self->_pass storeIdentifiers];
    v6 = [(PKPass *)self->_pass systemAppBundleIdentifiers];
    v7 = [(PKPass *)self->_pass appLaunchURL];
    v8 = [(PKLinkedAppView *)v4 initWithStoreIDs:v5 systemAppBundleIdentifiers:v6 appLaunchURL:v7 reuseIdentifier:0];
    v9 = self->_linkedApp;
    self->_linkedApp = v8;

    v10 = [(PKLinkedAppView *)self->_linkedApp linkedAppView];
    [v10 setDelegate:self];

    v11 = self->_linkedApp;
    v12 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKLinkedAppView *)v11 setBackgroundColor:v12];

    linkedApp = self->_linkedApp;
  }

  return linkedApp;
}

- (void)setShowsLinks:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  self->_showsLinks = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_fieldCellsByRow allValues];
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

        [*(*(&v9 + 1) + 8 * v8++) setShowLinks:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_wifiChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E698B618]];
  v6 = [v5 BOOLValue];

  if (self->_isWifiEnabled != v6)
  {
    self->_isWifiEnabled = v6;
    locationHelpView = self->_locationHelpView;
    self->_locationHelpView = 0;

    [(PKBarcodePassDetailViewController *)self reloadData];
  }
}

- (BOOL)_isBluetoothEnabled
{
  if (![(BluetoothManager *)self->_btManager available])
  {
    return self->_isBluetoothEnabled;
  }

  btManager = self->_btManager;

  return [(BluetoothManager *)btManager enabled];
}

- (void)_bluetoothPowerChanged:(id)a3
{
  v4 = [(BluetoothManager *)self->_btManager available];
  if (v4)
  {
    v4 = [(BluetoothManager *)self->_btManager enabled];
  }

  if (self->_isBluetoothEnabled != v4)
  {
    self->_isBluetoothEnabled = v4;
    locationHelpView = self->_locationHelpView;
    self->_locationHelpView = 0;

    [(PKBarcodePassDetailViewController *)self reloadData];
  }
}

- (id)_locationHelpTextWithLink:(id *)a3 linkRange:(_NSRange *)a4
{
  showsLinks = self->_showsLinks;
  v8 = [(PKPass *)self->_pass embeddedBeacons];
  v9 = [v8 count];

  v10 = [MEMORY[0x1E695FBE8] isRangingAvailable];
  if (!showsLinks)
  {
    if (!((v9 == 0) | v10 & 1))
    {
LABEL_30:
      v14 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_BTLE";
      goto LABEL_31;
    }

LABEL_9:
    v14 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC";
LABEL_31:
    v19 = PKLocalizedString(&v14->isa);
    v17 = 0;
    v21 = v19;
    goto LABEL_32;
  }

  if (self->_isLocationEnabled)
  {
    if (self->_isWifiEnabled)
    {
      if (v9)
      {
        if (!self->_isBluetoothEnabled && ((v10 ^ 1) & 1) == 0)
        {
          v11 = PKLocalizedString(&cfstr_SettingsShowOn_9.isa);
          v12 = @"prefs:root=Bluetooth";
          v13 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_BLUETOOTH_LINK";
          goto LABEL_23;
        }

        if (!v10)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_9;
    }

    if (PKUseWLAN())
    {
      v15 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_WLAN";
    }

    else
    {
      v15 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_WIFI";
    }

    v11 = PKLocalizedString(&v15->isa);
    if (PKUseWLAN())
    {
      v13 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_WLAN_LINK";
    }

    else
    {
      v13 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_WIFI_LINK";
    }

    v12 = @"prefs:root=WIFI";
  }

  else if (self->_isWifiEnabled)
  {
    v11 = PKLocalizedString(&cfstr_SettingsShowOn_3.isa);
    v12 = @"prefs:root=Privacy&path=LOCATION";
    v13 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_LOCATION_SERVICES_LINK";
  }

  else
  {
    if (PKUseWLAN())
    {
      v16 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_WLAN_RELEVANCY";
    }

    else
    {
      v16 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_RELEVANCY";
    }

    v11 = PKLocalizedString(&v16->isa);
    v12 = @"prefs:root=ROOT";
    v13 = @"SETTINGS_SHOW_ON_LOCKSCREEN_DESC_NO_RELEVANCY_LINK";
  }

LABEL_23:
  v17 = PKLocalizedString(&v13->isa);
  v18 = v11;
  v19 = v18;
  if (v17)
  {
    v20 = [v18 stringByAppendingString:@" "];
    v21 = [v20 stringByAppendingString:v17];

    if (a3)
    {
      *a3 = v12;
    }

    if (a4)
    {
      v22 = [v21 length];
      v23 = v22 - [v17 length];
      v24 = [v17 length];
      a4->location = v23;
      a4->length = v24;
    }
  }

  else
  {
    v21 = v18;
  }

LABEL_32:

  return v21;
}

- (id)_locationHelpViewForTableView:(id)a3
{
  locationHelpView = self->_locationHelpView;
  if (!locationHelpView)
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v5 = [(PKBarcodePassDetailViewController *)self _locationHelpTextWithLink:&v14 linkRange:&v15];
    v6 = v14;
    v7 = objc_alloc_init(PKFooterHyperlinkView);
    if (v6)
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      v9 = PKAttributedStringByAddingLinkToRange(v5, v15, v16, v8);
      [(PKFooterHyperlinkView *)v7 setAttributedText:v9];

      v10 = &__block_literal_global_52;
      v11 = &__block_literal_global_52;
      [(PKFooterHyperlinkView *)v7 setAction:&__block_literal_global_52];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
      [(PKFooterHyperlinkView *)v7 setAttributedText:v10];
    }

    v12 = self->_locationHelpView;
    self->_locationHelpView = &v7->super.super;

    locationHelpView = self->_locationHelpView;
  }

  return locationHelpView;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  result = 0;
  if (v5 > 1)
  {
    if ((v5 - 2) >= 3 && v5 != 5)
    {
      if (v5 == 6)
      {
        v7 = [(PKBarcodePassDetailViewController *)self _relevantBuckets];
        v8 = [v7 firstObject];
        v9 = [v8 count];

        return v9;
      }

      return result;
    }

    return 1;
  }

  if (!v5)
  {
    return 1;
  }

  if (v5 == 1)
  {

    return [(PKBarcodePassDetailViewController *)self _numberOfAvailableSettings];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v5 section]);
  v7 = 0;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = -[PKBarcodePassDetailViewController _settingsCellForRow:](self, "_settingsCellForRow:", [v5 row]);
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_18;
        }

        v8 = [(PKBarcodePassDetailViewController *)self _automaticSelectionCell];
      }
    }

    else
    {
      v8 = [(PKBarcodePassDetailViewController *)self linkedApp];
    }
  }

  else if (v6 > 4)
  {
    if (v6 == 5)
    {
      v8 = [(PKBarcodePassDetailViewController *)self _barcodeCell];
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_18;
      }

      v8 = -[PKBarcodePassDetailViewController _fieldCellForRow:](self, "_fieldCellForRow:", [v5 row]);
    }
  }

  else
  {
    if (v6 == 3)
    {
      [(PKBarcodePassDetailViewController *)self _deleteCell];
    }

    else
    {
      [(PKBarcodePassDetailViewController *)self _personalizePassCell];
    }
    v8 = ;
  }

  v7 = v8;
LABEL_18:

  return v7;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  [v7 adjustedContentInset];
  v9 = v8;
  v11 = v10;
  [v7 contentSize];
  v13 = v12;
  [v7 bounds];
  v15 = v14;

  [(PKBarcodePassDetailViewController *)self _offscreenHeaderHeight];
  if (v11 + v9 + v13 >= v16 + v15)
  {
    v17 = v16 - v9;
    y = a5->y;
    if (y > -v9 && y < v17)
    {
      if ((v9 + y) / (v9 + v17) <= 0.5)
      {
        v17 = -v9;
      }

      a5->y = v17;
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKBarcodePassDetailViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  if (v8 == 4)
  {
    v13 = self->_pass;
    v14 = [(PKPass *)v13 passTypeIdentifier];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __71__PKBarcodePassDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v19 = &unk_1E80155D8;
    v15 = v13;
    PKPassPersonalizationRequestToken();
  }

  else if (v8 == 3)
  {
    v9 = [v6 cellForRowAtIndexPath:v7];
    v10 = [PKViewControllerPresentationTarget targetWithPresentingViewController:self sourceView:v9];

    pass = self->_pass;
    WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
    [PKPassDeleteHelper presentDeleteBarcodePassAlertForPass:pass withHandler:WeakRetained presentationTarget:v10];
  }

  [v6 deselectRowAtIndexPath:v7 animated:{1, v16, v17, v18, v19}];
}

void __71__PKBarcodePassDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKBarcodePassDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__PKBarcodePassDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v10 = [[PKPassPersonalizationViewController alloc] initWithPass:*(a1 + 40) personalizationToken:*(a1 + 32) personalizationSource:3];
    v2 = [*(a1 + 48) presentingViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKPassPersonalizationViewController *)v10 setDelegate:v2];
      v3 = [*(a1 + 48) navigationController];
      [v3 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v4 = MEMORY[0x1E69DC650];
    v5 = PKLocalizedString(&cfstr_Personalizatio_8.isa);
    v6 = PKLocalizedString(&cfstr_Personalizatio_9.isa);
    v10 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v7 = MEMORY[0x1E69DC648];
    v8 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v9 = [v7 actionWithTitle:v8 style:1 handler:0];
    [(PKPassPersonalizationViewController *)v10 addAction:v9];

    [*(a1 + 48) presentViewController:v10 animated:1 completion:0];
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 == 4)
  {
    v6 = [(PKPass *)self->_pass personalization];
    v7 = [v6 localizedDescription];
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v6 = [(PKPass *)self->_pass organizationName];
    v7 = PKLocalizedString(&cfstr_SettingsAutoma.isa, &stru_1F3BD5BF0.isa, v6);
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 > 0 || (-[PKBarcodePassDetailViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", v6, a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v8))
  {
    [v6 sectionHeaderHeight];
    v10 = v9;
  }

  else
  {
    v10 = 36.0;
  }

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 > 0 || (-[PKBarcodePassDetailViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", v6, a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"FirstSectionHeaderReuseIdentifier"];
  }

  return v9;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 1 && [(PKPass *)self->_pass hasTimeOrLocationRelevancyInfo])
  {
    v7 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    [v6 sectionFooterHeight];
    v7 = v8;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 1 && [(PKPass *)self->_pass hasTimeOrLocationRelevancyInfo])
  {
    v7 = [(PKBarcodePassDetailViewController *)self _locationHelpViewForTableView:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [a4 section]);
  if (v7 && v7 - 5 > 1)
  {
    [v6 rowHeight];
    v8 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [a4 section]);
  if (v7 && v7 - 5 > 1)
  {
    [v6 rowHeight];
    v8 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (void)_reloadPassAndView
{
  v3 = [(PKPassHeaderView *)self->_passHeaderView pass];
  pass = self->_pass;
  self->_pass = v3;

  [(PKBarcodePassDetailViewController *)self _updatePassProperties];
}

- (BOOL)handleDeletePassWithUniqueID:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPass *)pass uniqueID];
  v7 = PKEqualObjects();

  if (v7)
  {
    v8 = [PKViewControllerPresentationTarget targetWithPresentingViewController:self];
    v9 = self->_pass;
    WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
    [PKPassDeleteHelper presentDeleteBarcodePassAlertForPass:v9 withHandler:WeakRetained presentationTarget:v8];
  }

  return v7;
}

- (void)setSuppressedContent:(unint64_t)a3
{
  if (self->_suppressedContent != a3)
  {
    self->_suppressedContent = a3;
    [(PKPassHeaderView *)self->_passHeaderView setSuppressedContent:?];
    [(PKBarcodePassDetailViewController *)self _updateNavigationItem];

    [(PKBarcodePassDetailViewController *)self reloadData];
  }
}

- (void)_sharePass
{
  [(PKBarcodePassDetailViewController *)self loadViewIfNeeded];
  v3 = MEMORY[0x1E69CD9F8];
  pass = self->_pass;
  v5 = [(PKPassHeaderView *)self->_passHeaderView passView];
  v6 = [(PKLinkedAppView *)self->_linkedApp linkedAppView];
  v7 = [v6 linkedApplication];
  v8 = [v3 pkui_activityControllerForPass:pass passView:v5 passLinkedApplication:v7];

  if (v8)
  {
    v9 = self->_pass;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__PKBarcodePassDetailViewController__sharePass__block_invoke;
    v11[3] = &unk_1E8012528;
    v12 = v9;
    v10 = v9;
    [v8 setCompletionWithItemsHandler:v11];
    [(PKBarcodePassDetailViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

void __47__PKBarcodePassDetailViewController__sharePass__block_invoke(uint64_t a1, void *a2, int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) noteShared];
    v6 = *MEMORY[0x1E69B9EE0];
    v8 = @"activity";
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    MEMORY[0x1BFB41980](v6, v7);
  }

  else
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EE8], 0);
  }
}

- (unint64_t)_numberOfAvailableSettings
{
  if ([(PKPass *)self->_pass isUpdatable])
  {
    if (([(PKPass *)self->_pass settings]& 2) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 + [(PKPass *)self->_pass hasTimeOrLocationRelevancyInfo];
}

- (void)_updatePassProperties
{
  [(PKBarcodePassDetailViewController *)self reloadData];
  [(PKBarcodePassDetailViewController *)self _updateNavigationItem];
  [(PKBarcodePassDetailViewController *)self _updateHeaderHeight];
  [(PKBarcodePassDetailViewController *)self setShowsLinks:(self->_suppressedContent & 0x10) == 0];
  v3 = [(PKBarcodePassDetailViewController *)self viewIfLoaded];
  [v3 setNeedsLayout];
}

- (void)_updateNavigationItem
{
  v6 = [(PKBarcodePassDetailViewController *)self navigationItem];
  if (self->_showCloseButton)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__done_];
    [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  }

  else
  {
    v3 = 0;
  }

  if ((self->_suppressedContent & 2) != 0 || ![(PKPass *)self->_pass supportsSharing]|| [(PKPass *)self->_pass sharingMethod]== -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__sharePass];
    [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9C48]];
  }

  v5 = [(PKPass *)self->_pass localizedDescription];
  [v6 setTitle:v5];

  [v6 setRightBarButtonItem:v4];
  [v6 setLeftBarButtonItem:v3];
}

- (void)_updateStandardAppearance:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69DB650];
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 labelColor];
  v7 = [v6 colorWithAlphaComponent:self->_titleOpacity];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setTitleTextAttributes:v8];
}

- (BOOL)_linkedAppAvailable
{
  v3 = [(PKPass *)self->_pass storeIdentifiers];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKPass *)self->_pass systemAppBundleIdentifiers];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (BOOL)_settingsAvailable
{
  if (([(PKPass *)self->_pass isUpdatable]& 1) != 0)
  {
    return 1;
  }

  pass = self->_pass;

  return [(PKPass *)pass hasTimeOrLocationRelevancyInfo];
}

- (id)_automaticSelectionCell
{
  automaticSelectionCell = self->_automaticSelectionCell;
  if (!automaticSelectionCell)
  {
    v4 = [PKSettingTableCell alloc];
    v5 = PKLocalizedString(&cfstr_SettingsAutoma_0.isa);
    v6 = [(PKSettingTableCell *)v4 initWithTitle:v5 target:0 action:0];
    v7 = self->_automaticSelectionCell;
    self->_automaticSelectionCell = v6;

    [(PKSettingTableCell *)self->_automaticSelectionCell setOn:([(PKPass *)self->_pass settings]>> 4) & 1];
    [(PKSettingTableCell *)self->_automaticSelectionCell setTarget:self action:sel_pushSettingsFromViewToModel];
    automaticSelectionCell = self->_automaticSelectionCell;
  }

  [(PKSettingTableCell *)automaticSelectionCell setAccessibilityIdentifier:*MEMORY[0x1E69B94C8]];
  v8 = self->_automaticSelectionCell;

  return v8;
}

- (id)_deleteCell
{
  deleteCell = self->_deleteCell;
  if (!deleteCell)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    v5 = self->_deleteCell;
    self->_deleteCell = v4;

    v6 = [(UITableViewCell *)self->_deleteCell textLabel];
    v7 = PKLocalizedString(&cfstr_RemovePass.isa);
    [v6 setText:v7];

    v8 = [MEMORY[0x1E69DC888] systemRedColor];
    [v6 setTextColor:v8];

    [v6 setTextAlignment:4];
    deleteCell = self->_deleteCell;
  }

  [(UITableViewCell *)deleteCell setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
  v9 = self->_deleteCell;

  return v9;
}

- (id)_barcodeCell
{
  if (!self->_barcodeCell)
  {
    result = [(PKPass *)self->_pass style];
    if (result <= 0xD)
    {
      if (((1 << result) & 0x3EF) != 0)
      {
        v4 = 0;
LABEL_5:
        v5 = [[PKBarcodeTableViewCell alloc] initWithStyle:v4 reuseIdentifier:@"PKBarcodeTableViewCellReuseIdentifier"];
        barcodeCell = self->_barcodeCell;
        self->_barcodeCell = v5;

        goto LABEL_6;
      }

      if (((1 << result) & 0x410) != 0)
      {
        v4 = 1;
        goto LABEL_5;
      }

      if (result == 13)
      {
        __break(1u);
        return result;
      }
    }
  }

LABEL_6:
  [(PKBarcodeTableViewCell *)self->_barcodeCell setPass:self->_pass];
  [(PKBarcodeTableViewCell *)self->_barcodeCell setAccessibilityIdentifier:*MEMORY[0x1E69B9510]];
  v7 = self->_barcodeCell;

  return v7;
}

- (id)_personalizePassCell
{
  personalizePassCell = self->_personalizePassCell;
  if (!personalizePassCell)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    v5 = self->_personalizePassCell;
    self->_personalizePassCell = v4;

    v6 = [(UITableViewCell *)self->_personalizePassCell textLabel];
    v7 = PKLocalizedString(&cfstr_Personalizatio_10.isa);
    [v6 setText:v7];

    v8 = [(UITableViewCell *)self->_personalizePassCell textLabel];
    v9 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v8 setTextColor:v9];

    v10 = [(UITableViewCell *)self->_personalizePassCell textLabel];
    [v10 setTextAlignment:4];

    personalizePassCell = self->_personalizePassCell;
  }

  [(UITableViewCell *)personalizePassCell setAccessibilityIdentifier:*MEMORY[0x1E69B93F8]];
  v11 = self->_personalizePassCell;

  return v11;
}

- (unint64_t)_settingForRow:(unint64_t)a3
{
  if ([(PKPass *)self->_pass isUpdatable])
  {
    v5 = [(PKPass *)self->_pass settings];
    v6 = 0;
    if ((v5 & 2) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v5 & 2) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(PKPass *)self->_pass hasTimeOrLocationRelevancyInfo];
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 + v9 <= a3)
  {
    return 0;
  }

  if (v6 == a3)
  {
    return 2;
  }

  if (v7 == a3)
  {
    return 128;
  }

  return v10 == a3;
}

- (id)_settingsCellForRow:(unint64_t)a3
{
  v4 = [(PKBarcodePassDetailViewController *)self _settingForRow:a3];
  v5 = [(PKPass *)self->_pass settings];
  if (v4 == 1)
  {
    p_showInLockScreenCell = &self->_showInLockScreenCell;
    showInLockScreenCell = self->_showInLockScreenCell;
    if (!showInLockScreenCell)
    {
      v19 = [PKSettingTableCell alloc];
      v20 = PKLocalizedString(&cfstr_SettingsShowOn.isa);
      v21 = [(PKSettingTableCell *)v19 initWithTitle:v20 target:0 action:0];
      v22 = *p_showInLockScreenCell;
      *p_showInLockScreenCell = v21;

      [*p_showInLockScreenCell setAccessibilityIdentifier:*MEMORY[0x1E69B9CD0]];
      v12 = *p_showInLockScreenCell;
      v13 = v5 & 1;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v4 == 128)
  {
    p_showInLockScreenCell = &self->_showNotificationsCell;
    showInLockScreenCell = self->_showNotificationsCell;
    if (!showInLockScreenCell)
    {
      v14 = [PKSettingTableCell alloc];
      v15 = PKLocalizedString(&cfstr_SettingsShowNo.isa);
      v16 = [(PKSettingTableCell *)v14 initWithTitle:v15 target:0 action:0];
      v17 = *p_showInLockScreenCell;
      *p_showInLockScreenCell = v16;

      [*p_showInLockScreenCell setAccessibilityIdentifier:*MEMORY[0x1E69B9438]];
      v12 = *p_showInLockScreenCell;
      v13 = (v5 & 0x80) == 0;
      goto LABEL_12;
    }

LABEL_9:
    v18 = showInLockScreenCell;
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    v18 = 0;
    goto LABEL_13;
  }

  p_showInLockScreenCell = &self->_automaticUpdatesCell;
  showInLockScreenCell = self->_automaticUpdatesCell;
  if (showInLockScreenCell)
  {
    goto LABEL_9;
  }

  v8 = [PKSettingTableCell alloc];
  v9 = PKLocalizedString(&cfstr_SettingsNotify.isa);
  v10 = [(PKSettingTableCell *)v8 initWithTitle:v9 target:0 action:0];
  v11 = *p_showInLockScreenCell;
  *p_showInLockScreenCell = v10;

  [*p_showInLockScreenCell setAccessibilityIdentifier:*MEMORY[0x1E69B94D0]];
  v12 = *p_showInLockScreenCell;
  v13 = (v5 >> 1) & 1;
LABEL_12:
  [v12 setOn:v13];
  v18 = *p_showInLockScreenCell;
  [(PKSettingTableCell *)v18 setTarget:self action:sel_pushSettingsFromViewToModel];
LABEL_13:

  return v18;
}

- (id)_fieldCellForRow:(unint64_t)a3
{
  fieldCellsByRow = self->_fieldCellsByRow;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)fieldCellsByRow objectForKey:v6];

  if (!v7)
  {
    v7 = [[PKBackFieldTableCell alloc] initWithBridgeStyle:0 reuseIdentifier:@"PKBackFieldTableCell"];
    [(PKBackFieldTableCell *)v7 setShowLinks:self->_showsLinks];
    v8 = [(PKBarcodePassDetailViewController *)self _fieldForRow:a3];
    [(PKBackFieldTableCell *)v7 setField:v8];

    v9 = self->_fieldCellsByRow;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v9 setObject:v7 forKey:v10];
  }

  return v7;
}

- (id)_fieldForRow:(unint64_t)a3
{
  v4 = [(PKBarcodePassDetailViewController *)self _relevantBuckets];
  v5 = [v4 firstObject];

  if ([v5 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
  }

  return v6;
}

- (void)refreshControlValueChanged:(id)a3
{
  v4 = a3;
  if ([v4 isRefreshing])
  {
    objc_initWeak(&location, self);
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    refreshTimeout = self->_refreshTimeout;
    self->_refreshTimeout = v5;

    v7 = self->_refreshTimeout;
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v9 = self->_refreshTimeout;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__PKBarcodePassDetailViewController_refreshControlValueChanged___block_invoke;
    handler[3] = &unk_1E8015600;
    handler[4] = v15;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v9, handler);
    pass = self->_pass;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKBarcodePassDetailViewController_refreshControlValueChanged___block_invoke_2;
    v11[3] = &unk_1E8015650;
    v11[4] = v15;
    objc_copyWeak(&v12, &location);
    [(PKPass *)pass requestUpdateWithCompletion:v11];
    dispatch_resume(self->_refreshTimeout);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    _Block_object_dispose(v15, 8);
    objc_destroyWeak(&location);
  }
}

void __64__PKBarcodePassDetailViewController_refreshControlValueChanged___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _refreshFinished:1];
  }
}

void __64__PKBarcodePassDetailViewController_refreshControlValueChanged___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKBarcodePassDetailViewController_refreshControlValueChanged___block_invoke_3;
  block[3] = &unk_1E8015628;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __64__PKBarcodePassDetailViewController_refreshControlValueChanged___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    v4 = WeakRetained;
    [WeakRetained[167] updateModifiedDate];
  }

  else
  {
    *(v2 + 24) = 1;
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _refreshFinished:(*(a1 + 48) & 1) == 0];
  }

  WeakRetained = v4;
LABEL_6:
}

- (void)_refreshFinished:(BOOL)a3
{
  refreshTimeout = self->_refreshTimeout;
  if (refreshTimeout)
  {
    dispatch_source_cancel(refreshTimeout);
    v5 = self->_refreshTimeout;
    self->_refreshTimeout = 0;
  }

  [(UIRefreshControl *)self->_refreshControl endRefreshing];
  passHeaderView = self->_passHeaderView;

  [(PKPassHeaderView *)passHeaderView updateModifiedDate];
}

- (BOOL)shouldAllowRefresh
{
  v3 = [(PKPass *)self->_pass webServiceURL];
  if (v3)
  {
    v4 = [(PKPass *)self->_pass dataAccessor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)pushSettingsFromViewToModel
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPass *)self->_pass settings];
  automaticUpdatesCell = self->_automaticUpdatesCell;
  if (automaticUpdatesCell)
  {
    if ([(PKSettingTableCell *)automaticUpdatesCell isOn])
    {
      v5 = v3 | 2;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFFFDLL;
    }
  }

  else
  {
    v5 = v3;
  }

  showNotificationsCell = self->_showNotificationsCell;
  if (showNotificationsCell)
  {
    if ([(PKSettingTableCell *)showNotificationsCell isOn])
    {
      v5 &= ~0x80uLL;
    }

    else
    {
      v5 |= 0x80uLL;
    }
  }

  showInLockScreenCell = self->_showInLockScreenCell;
  if (showInLockScreenCell)
  {
    if ([(PKSettingTableCell *)showInLockScreenCell isOn])
    {
      v5 |= 1uLL;
    }

    else
    {
      v5 &= ~1uLL;
    }
  }

  automaticSelectionCell = self->_automaticSelectionCell;
  if (automaticSelectionCell)
  {
    if ([(PKSettingTableCell *)automaticSelectionCell isOn])
    {
      v5 |= 0x10uLL;
    }

    else
    {
      v5 &= ~0x10uLL;
    }
  }

  v9 = v5 ^ v3;
  if (((v5 ^ v3) & 2) != 0)
  {
    v10 = *MEMORY[0x1E69B9EF8];
    v18 = @"on";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:(v5 >> 1) & 1];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    MEMORY[0x1BFB41980](v10, v12);
  }

  if (v9)
  {
    v13 = *MEMORY[0x1E69B9EF0];
    v16 = @"on";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v5 & 1];
    v17 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    MEMORY[0x1BFB41980](v13, v15);
  }

  [(PKPass *)self->_pass setSettings:(2 * v9) & 0x20 | v5];
  if ((v9 & 2) != 0)
  {
    [(PKBarcodePassDetailViewController *)self reloadSection:1];
  }
}

- (void)_passSettingsChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69BBC18]];
  v7 = [(PKPass *)self->_pass uniqueID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x1E69BBC10]];

    if (v10)
    {
      v11 = [v10 unsignedIntegerValue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__PKBarcodePassDetailViewController__passSettingsChanged___block_invoke;
      v12[3] = &unk_1E80119C8;
      v12[4] = self;
      v12[5] = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }
  }
}

uint64_t __58__PKBarcodePassDetailViewController__passSettingsChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1352) setSettingsWithoutUpdatingDataAccessor:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1144);
  if (v2)
  {
    v3 = [v2 isOn];
    v4 = *(a1 + 40) & 2;
    v5 = v3 ^ (*(a1 + 40) >> 1) & 1;
    v2 = *(*(a1 + 32) + 1144);
  }

  else
  {
    v5 = 0;
    v4 = *(a1 + 40) & 2;
  }

  [v2 setOn:v4 != 0 notify:0];
  [*(*(a1 + 32) + 1152) setOn:(*(a1 + 40) & 0x80) == 0 notify:0];
  [*(*(a1 + 32) + 1160) setOn:*(a1 + 40) & 1 notify:0];
  result = [*(*(a1 + 32) + 1168) setOn:(*(a1 + 40) >> 4) & 1 notify:0];
  if (v5)
  {
    v7 = *(a1 + 32);

    return [v7 reloadSection:1];
  }

  return result;
}

- (void)appViewContentSizeChanged:(id)a3
{
  v4 = [(PKBarcodePassDetailViewController *)self tableView];
  [v4 beginUpdates];

  v5 = [(PKBarcodePassDetailViewController *)self tableView];
  [v5 endUpdates];
}

- (PKPassDeleteHandler)deleteOverrider
{
  WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);

  return WeakRetained;
}

@end