@interface SBActivationInfoViewController
- (BOOL)_shouldGroupIMEIsForPrimary:(id)primary secondary:(id)secondary;
- (SBActivationInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_activationInfoCell;
- (id)_backgroundViewForHeaderView:(id)view;
- (id)_formattedIMEI:(id)i;
- (id)_formattedString:(id)string withSpaceAfterDigits:(unint64_t)digits;
- (id)_processDeviceInfo;
- (id)_processMobileEquipmentInfo:(id)info forSlot:(int64_t)slot;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_adjustMobileEquipmentLayout:(id)layout;
- (void)_telephonyStateChanged;
- (void)_updateMobileEquipmentInfo;
- (void)dealloc;
- (void)loadView;
- (void)mobileEquipmentInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot;
- (void)subscriptionInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBActivationInfoViewController

- (SBActivationInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = SBActivationInfoViewController;
  v4 = [(SBActivationInfoViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    telephonyStateProvider = [SBApp telephonyStateProvider];
    [telephonyStateProvider addObserver:v4];

    v6 = MGCopyAnswer();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    serial = v4->_serial;
    v4->_serial = v7;

    [(SBActivationInfoViewController *)v4 _updateMobileEquipmentInfo];
  }

  return v4;
}

- (void)dealloc
{
  telephonyStateProvider = [SBApp telephonyStateProvider];
  [telephonyStateProvider removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBActivationInfoViewController;
  [(SBActivationInfoViewController *)&v4 dealloc];
}

- (void)loadView
{
  v50[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  activationInfoTableView = self->_activationInfoTableView;
  self->_activationInfoTableView = v4;

  v6 = self->_activationInfoTableView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UITableView *)v6 setBackgroundColor:clearColor];

  [(UITableView *)self->_activationInfoTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_activationInfoTableView setBounces:0];
  [(UITableView *)self->_activationInfoTableView setSectionFooterHeight:0.0];
  v8 = self->_activationInfoTableView;
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UITableView *)v8 setSeparatorColor:primaryColor];

  [(UITableView *)self->_activationInfoTableView setDataSource:self];
  [(UITableView *)self->_activationInfoTableView setDelegate:self];
  [(UITableView *)self->_activationInfoTableView reloadData];
  [(UITableView *)self->_activationInfoTableView sizeToFit];
  v10 = [MEMORY[0x277D75220] buttonWithType:1];
  regulatoryInfoButton = self->_regulatoryInfoButton;
  self->_regulatoryInfoButton = v10;

  [(UIButton *)self->_regulatoryInfoButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_regulatoryInfoButton;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [mainBundle localizedStringForKey:@"REGULATORY_INFO_BUTTON_LABEL" value:@"Regulatory" table:@"SpringBoard"];
  [(UIButton *)v12 setTitle:v14 forState:0];

  if (_os_feature_enabled_impl())
  {
    v15 = self->_regulatoryInfoButton;
    primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)v15 setTintColor:primaryColor2];
  }

  [(UIButton *)self->_regulatoryInfoButton sizeToFit];
  v17 = objc_alloc(MEMORY[0x277CC37B0]);
  v18 = [v17 initWithQueue:MEMORY[0x277D85CD0]];
  v19 = MEMORY[0x277CBEB18];
  v20 = self->_regulatoryInfoButton;
  v50[0] = self->_activationInfoTableView;
  v50[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  v22 = [v19 arrayWithArray:v21];

  v23 = [v18 isSharingIdentitySupportedWithError:0];
  bOOLValue = [v23 BOOLValue];

  if (bOOLValue)
  {
    v25 = [MEMORY[0x277D75220] buttonWithType:1];
    secureIntentButton = self->_secureIntentButton;
    self->_secureIntentButton = v25;

    [(UIButton *)self->_secureIntentButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = self->_secureIntentButton;
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [mainBundle2 localizedStringForKey:@"SHARE_DEVICE_IDENTIFIERS_LABEL" value:@"Share Device Identifiers" table:@"SpringBoard"];
    [(UIButton *)v27 setTitle:v29 forState:0];

    if (_os_feature_enabled_impl())
    {
      v30 = self->_secureIntentButton;
      primaryColor3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(UIButton *)v30 setTintColor:primaryColor3];
    }

    [(UIButton *)self->_secureIntentButton sizeToFit];
    [v22 addObject:self->_secureIntentButton];
  }

  v32 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v22];
  [v32 setAxis:1];
  [v32 setAlignment:3];
  [v32 setDistribution:3];
  [v32 setSpacing:24.0];
  objc_storeStrong(&self->_containerView, v32);
  [(UIView *)self->_containerView systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  v34 = v33;
  heightAnchor = [(UITableView *)self->_activationInfoTableView heightAnchor];
  [(UITableView *)self->_activationInfoTableView contentSize];
  v37 = [heightAnchor constraintEqualToConstant:v34 + v36];

  LODWORD(v38) = 1132068864;
  [v37 setPriority:v38];
  objc_storeStrong(&self->_activationInfoTableViewHeight, v37);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    mainScreen = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [mainScreen readableWidth];
    v43 = v42;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v43 = v44;
  }

  widthAnchor = [(UITableView *)self->_activationInfoTableView widthAnchor];
  v46 = [widthAnchor constraintEqualToConstant:v43];

  [(SBActivationInfoViewController *)self setView:self->_containerView];
  v47 = MEMORY[0x277CCAAD0];
  v49[0] = v46;
  v49[1] = v37;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  [v47 activateConstraints:v48];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBActivationInfoViewController;
  [(SBActivationInfoViewController *)&v4 viewWillAppear:appear];
  [(UITableView *)self->_activationInfoTableView reloadData];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBActivationInfoViewController;
  [(SBActivationInfoViewController *)&v5 viewDidLayoutSubviews];
  activationInfoTableViewHeight = self->_activationInfoTableViewHeight;
  [(UITableView *)self->_activationInfoTableView contentSize];
  [(NSLayoutConstraint *)activationInfoTableViewHeight setConstant:v4];
}

- (void)subscriptionInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBActivationInfoViewController_subscriptionInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)mobileEquipmentInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SBActivationInfoViewController_mobileEquipmentInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_mobileEquipmentInfo objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ACTIVATION_INFO_CELL_ID"];
  v8 = v7;
  if (v7)
  {
    _activationInfoCell = v7;
  }

  else
  {
    _activationInfoCell = [(SBActivationInfoViewController *)self _activationInfoCell];
  }

  v10 = _activationInfoCell;

  section = [pathCopy section];
  v12 = [pathCopy row];

  v13 = [(NSArray *)self->_mobileEquipmentInfo objectAtIndexedSubscript:section];
  v14 = MEMORY[0x277CCAC30];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__SBActivationInfoViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v25[3] = &unk_2783BCAD0;
  v26 = v13;
  v15 = v13;
  v16 = [v14 predicateWithBlock:v25];
  v17 = [&unk_28336E850 filteredArrayUsingPredicate:v16];

  v18 = [v17 objectAtIndexedSubscript:v12];
  v19 = [v15 objectForKeyedSubscript:v18];
  textLabel = [v10 textLabel];
  [textLabel setText:v18];

  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setAdjustsFontSizeToFitWidth:1];

  detailTextLabel2 = [v10 detailTextLabel];
  [detailTextLabel2 setMinimumScaleFactor:0.5];

  detailTextLabel3 = [v10 detailTextLabel];
  [detailTextLabel3 setText:v19];

  return v10;
}

BOOL __66__SBActivationInfoViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"ACTIVATION_INFO_HEADER_ID"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"ACTIVATION_INFO_HEADER_ID"];
    v7 = [(SBActivationInfoViewController *)self _backgroundViewForHeaderView:v6];
    [v6 setBackgroundView:v7];
  }

  v8 = @" ";
  if (!section)
  {
    v8 = 0;
  }

  v9 = v8;
  textLabel = [v6 textLabel];
  [textLabel setText:v9];

  return v6;
}

- (void)_telephonyStateChanged
{
  [(SBActivationInfoViewController *)self _updateMobileEquipmentInfo];
  activationInfoTableView = self->_activationInfoTableView;

  [(UITableView *)activationInfoTableView reloadData];
}

- (void)_updateMobileEquipmentInfo
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = +[SBTelephonyManager sharedTelephonyManager];
  hasCellularData = [v3 hasCellularData];

  if (hasCellularData)
  {
    v5 = +[SBTelephonyManager sharedTelephonyManager];
    _primaryMobileEquipmentInfo = [v5 _primaryMobileEquipmentInfo];

    if (_primaryMobileEquipmentInfo)
    {
      v7 = [(SBActivationInfoViewController *)self _processMobileEquipmentInfo:_primaryMobileEquipmentInfo forSlot:1];
      [array addObject:v7];
    }

    v8 = +[SBTelephonyManager sharedTelephonyManager];
    _secondaryMobileEquipmentInfo = [v8 _secondaryMobileEquipmentInfo];

    if (_secondaryMobileEquipmentInfo)
    {
      v10 = [(SBActivationInfoViewController *)self _processMobileEquipmentInfo:_secondaryMobileEquipmentInfo forSlot:2];
      if ([v10 count])
      {
        [array addObject:v10];
      }
    }

    [(SBActivationInfoViewController *)self _adjustMobileEquipmentLayout:array];
    if (_primaryMobileEquipmentInfo && ([_primaryMobileEquipmentInfo MEID], v11 = objc_claimAutoreleasedReturnValue(), meid = self->_meid, self->_meid = v11, meid, objc_msgSend(_primaryMobileEquipmentInfo, "CSN"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v15 = _primaryMobileEquipmentInfo, v14) || _secondaryMobileEquipmentInfo && (objc_msgSend(_secondaryMobileEquipmentInfo, "CSN"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v15 = _secondaryMobileEquipmentInfo, v17))
    {
      v18 = [v15 CSN];
      eid = self->_eid;
      self->_eid = v18;
    }
  }

  _processDeviceInfo = [(SBActivationInfoViewController *)self _processDeviceInfo];
  v21 = array;
  if (_processDeviceInfo)
  {
    [array insertObject:_processDeviceInfo atIndex:0];
    v21 = array;
  }

  v22 = [v21 copy];
  mobileEquipmentInfo = self->_mobileEquipmentInfo;
  self->_mobileEquipmentInfo = v22;
}

- (id)_processMobileEquipmentInfo:(id)info forSlot:(int64_t)slot
{
  v6 = MEMORY[0x277CBEB38];
  infoCopy = info;
  dictionary = [v6 dictionary];
  iMEI = [infoCopy IMEI];
  iCCID = [infoCopy ICCID];
  isOnBootstrap = [infoCopy isOnBootstrap];

  if (iMEI)
  {
    if (slot == 1)
    {
      slot = @"IMEI";
    }

    else
    {
      slot = [MEMORY[0x277CCACA8] stringWithFormat:@"IMEI%ld", slot];
    }

    v13 = [(SBActivationInfoViewController *)self _formattedIMEI:iMEI];
    if (![v13 length])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [mainBundle localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v13 = v15;
    }

    [dictionary setObject:v13 forKey:slot];
    if (!((iCCID == 0) | isOnBootstrap & 1))
    {
      v16 = [(SBActivationInfoViewController *)self _formattedICCID:iCCID];
      if ([v16 length])
      {
        [dictionary setObject:v16 forKey:@"ICCID"];
      }
    }
  }

  v17 = [dictionary copy];

  return v17;
}

- (id)_processDeviceInfo
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  serial = self->_serial;
  if (serial)
  {
    v5 = serial;
    if (![(NSString *)v5 length])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [mainBundle localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v5 = v7;
    }

    [dictionary setObject:v5 forKey:@"SN"];
  }

  meid = self->_meid;
  if (meid)
  {
    v9 = meid;
    if (![(NSString *)v9 length])
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v11 = [mainBundle2 localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v9 = v11;
    }

    [dictionary setObject:v9 forKey:@"MEID"];
  }

  if (self->_eid)
  {
    v12 = [(SBActivationInfoViewController *)self _formattedEID:?];
    if (![v12 length])
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [mainBundle3 localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v12 = v14;
    }

    [dictionary setObject:v12 forKey:@"EID"];
  }

  if ([dictionary count])
  {
    v15 = [dictionary copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_adjustMobileEquipmentLayout:(id)layout
{
  v10[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if ([layoutCopy count] == 2)
  {
    v5 = [layoutCopy objectAtIndexedSubscript:0];
    v6 = [layoutCopy objectAtIndexedSubscript:1];
    if ([(SBActivationInfoViewController *)self _shouldGroupIMEIsForPrimary:v5 secondary:v6])
    {
      v7 = [v5 mutableCopy];
      [v7 addEntriesFromDictionary:v6];
      v8 = [v7 copy];
      v10[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [layoutCopy setArray:v9];
    }
  }
}

- (BOOL)_shouldGroupIMEIsForPrimary:(id)primary secondary:(id)secondary
{
  v27 = *MEMORY[0x277D85DE8];
  secondaryCopy = secondary;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [primary allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      if (![*(*(&v21 + 1) + 8 * v10) hasPrefix:@"IMEI"])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [secondaryCopy allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v11)
    {
      v15 = 1;
      goto LABEL_19;
    }

    v12 = v11;
    v13 = *v18;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(allKeys);
      }

      if (![*(*(&v17 + 1) + 8 * v14) hasPrefix:@"IMEI"])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
        v15 = 1;
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)_activationInfoCell
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ACTIVATION_INFO_CELL_ID"];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setSelectionStyle:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textLabel = [v3 textLabel];
  [textLabel setFont:v5];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setFont:v7];

  textLabel2 = [v3 textLabel];
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [textLabel2 setTextColor:primaryColor];

  detailTextLabel2 = [v3 detailTextLabel];
  primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [detailTextLabel2 setTextColor:primaryColor2];

  return v3;
}

- (id)_backgroundViewForHeaderView:(id)view
{
  v3 = MEMORY[0x277D75D18];
  viewCopy = view;
  v5 = [v3 alloc];
  [viewCopy bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v5 initWithFrame:{v7, v9, v11, v13}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v14 setBackgroundColor:clearColor];

  return v14;
}

- (id)_formattedIMEI:(id)i
{
  v3 = [i mutableCopy];
  if ([v3 length] >= 3)
  {
    [v3 insertString:@" " atIndex:2];
  }

  if ([v3 length] >= 0xA)
  {
    [v3 insertString:@" " atIndex:9];
  }

  if ([v3 length] >= 0x11)
  {
    [v3 insertString:@" " atIndex:16];
  }

  return v3;
}

- (id)_formattedString:(id)string withSpaceAfterDigits:(unint64_t)digits
{
  stringCopy = string;
  v6 = stringCopy;
  if (stringCopy)
  {
    v7 = [stringCopy mutableCopy];
    if ([v6 length] >= digits)
    {
      v8 = [v6 length];
      if (v8 > digits)
      {
        v9 = v8;
        digitsCopy = digits;
        digitsCopy2 = digits;
        do
        {
          [v7 insertString:@" " atIndex:digitsCopy];
          digitsCopy2 += digits;
          digitsCopy += digits + 1;
        }

        while (digitsCopy2 < v9);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end