@interface SBActivationInfoViewController
- (BOOL)_shouldGroupIMEIsForPrimary:(id)a3 secondary:(id)a4;
- (SBActivationInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_activationInfoCell;
- (id)_backgroundViewForHeaderView:(id)a3;
- (id)_formattedIMEI:(id)a3;
- (id)_formattedString:(id)a3 withSpaceAfterDigits:(unint64_t)a4;
- (id)_processDeviceInfo;
- (id)_processMobileEquipmentInfo:(id)a3 forSlot:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_adjustMobileEquipmentLayout:(id)a3;
- (void)_telephonyStateChanged;
- (void)_updateMobileEquipmentInfo;
- (void)dealloc;
- (void)loadView;
- (void)mobileEquipmentInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4;
- (void)subscriptionInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBActivationInfoViewController

- (SBActivationInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBActivationInfoViewController;
  v4 = [(SBActivationInfoViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [SBApp telephonyStateProvider];
    [v5 addObserver:v4];

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
  v3 = [SBApp telephonyStateProvider];
  [v3 removeObserver:self];

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
  v7 = [MEMORY[0x277D75348] clearColor];
  [(UITableView *)v6 setBackgroundColor:v7];

  [(UITableView *)self->_activationInfoTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_activationInfoTableView setBounces:0];
  [(UITableView *)self->_activationInfoTableView setSectionFooterHeight:0.0];
  v8 = self->_activationInfoTableView;
  v9 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UITableView *)v8 setSeparatorColor:v9];

  [(UITableView *)self->_activationInfoTableView setDataSource:self];
  [(UITableView *)self->_activationInfoTableView setDelegate:self];
  [(UITableView *)self->_activationInfoTableView reloadData];
  [(UITableView *)self->_activationInfoTableView sizeToFit];
  v10 = [MEMORY[0x277D75220] buttonWithType:1];
  regulatoryInfoButton = self->_regulatoryInfoButton;
  self->_regulatoryInfoButton = v10;

  [(UIButton *)self->_regulatoryInfoButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_regulatoryInfoButton;
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 localizedStringForKey:@"REGULATORY_INFO_BUTTON_LABEL" value:@"Regulatory" table:@"SpringBoard"];
  [(UIButton *)v12 setTitle:v14 forState:0];

  if (_os_feature_enabled_impl())
  {
    v15 = self->_regulatoryInfoButton;
    v16 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)v15 setTintColor:v16];
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
  v24 = [v23 BOOLValue];

  if (v24)
  {
    v25 = [MEMORY[0x277D75220] buttonWithType:1];
    secureIntentButton = self->_secureIntentButton;
    self->_secureIntentButton = v25;

    [(UIButton *)self->_secureIntentButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = self->_secureIntentButton;
    v28 = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [v28 localizedStringForKey:@"SHARE_DEVICE_IDENTIFIERS_LABEL" value:@"Share Device Identifiers" table:@"SpringBoard"];
    [(UIButton *)v27 setTitle:v29 forState:0];

    if (_os_feature_enabled_impl())
    {
      v30 = self->_secureIntentButton;
      v31 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(UIButton *)v30 setTintColor:v31];
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
  v35 = [(UITableView *)self->_activationInfoTableView heightAnchor];
  [(UITableView *)self->_activationInfoTableView contentSize];
  v37 = [v35 constraintEqualToConstant:v34 + v36];

  LODWORD(v38) = 1132068864;
  [v37 setPriority:v38];
  objc_storeStrong(&self->_activationInfoTableViewHeight, v37);
  v39 = [MEMORY[0x277D75418] currentDevice];
  v40 = [v39 userInterfaceIdiom];

  if ((v40 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v41 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v41 readableWidth];
    v43 = v42;
  }

  else
  {
    v41 = [MEMORY[0x277D759A0] mainScreen];
    [v41 bounds];
    v43 = v44;
  }

  v45 = [(UITableView *)self->_activationInfoTableView widthAnchor];
  v46 = [v45 constraintEqualToConstant:v43];

  [(SBActivationInfoViewController *)self setView:self->_containerView];
  v47 = MEMORY[0x277CCAAD0];
  v49[0] = v46;
  v49[1] = v37;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  [v47 activateConstraints:v48];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBActivationInfoViewController;
  [(SBActivationInfoViewController *)&v4 viewWillAppear:a3];
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

- (void)subscriptionInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBActivationInfoViewController_subscriptionInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)mobileEquipmentInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SBActivationInfoViewController_mobileEquipmentInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_mobileEquipmentInfo objectAtIndexedSubscript:a4];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ACTIVATION_INFO_CELL_ID"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(SBActivationInfoViewController *)self _activationInfoCell];
  }

  v10 = v9;

  v11 = [v6 section];
  v12 = [v6 row];

  v13 = [(NSArray *)self->_mobileEquipmentInfo objectAtIndexedSubscript:v11];
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
  v20 = [v10 textLabel];
  [v20 setText:v18];

  v21 = [v10 detailTextLabel];
  [v21 setAdjustsFontSizeToFitWidth:1];

  v22 = [v10 detailTextLabel];
  [v22 setMinimumScaleFactor:0.5];

  v23 = [v10 detailTextLabel];
  [v23 setText:v19];

  return v10;
}

BOOL __66__SBActivationInfoViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"ACTIVATION_INFO_HEADER_ID"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"ACTIVATION_INFO_HEADER_ID"];
    v7 = [(SBActivationInfoViewController *)self _backgroundViewForHeaderView:v6];
    [v6 setBackgroundView:v7];
  }

  v8 = @" ";
  if (!a4)
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v6 textLabel];
  [v10 setText:v9];

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
  v24 = [MEMORY[0x277CBEB18] array];
  v3 = +[SBTelephonyManager sharedTelephonyManager];
  v4 = [v3 hasCellularData];

  if (v4)
  {
    v5 = +[SBTelephonyManager sharedTelephonyManager];
    v6 = [v5 _primaryMobileEquipmentInfo];

    if (v6)
    {
      v7 = [(SBActivationInfoViewController *)self _processMobileEquipmentInfo:v6 forSlot:1];
      [v24 addObject:v7];
    }

    v8 = +[SBTelephonyManager sharedTelephonyManager];
    v9 = [v8 _secondaryMobileEquipmentInfo];

    if (v9)
    {
      v10 = [(SBActivationInfoViewController *)self _processMobileEquipmentInfo:v9 forSlot:2];
      if ([v10 count])
      {
        [v24 addObject:v10];
      }
    }

    [(SBActivationInfoViewController *)self _adjustMobileEquipmentLayout:v24];
    if (v6 && ([v6 MEID], v11 = objc_claimAutoreleasedReturnValue(), meid = self->_meid, self->_meid = v11, meid, objc_msgSend(v6, "CSN"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v15 = v6, v14) || v9 && (objc_msgSend(v9, "CSN"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v15 = v9, v17))
    {
      v18 = [v15 CSN];
      eid = self->_eid;
      self->_eid = v18;
    }
  }

  v20 = [(SBActivationInfoViewController *)self _processDeviceInfo];
  v21 = v24;
  if (v20)
  {
    [v24 insertObject:v20 atIndex:0];
    v21 = v24;
  }

  v22 = [v21 copy];
  mobileEquipmentInfo = self->_mobileEquipmentInfo;
  self->_mobileEquipmentInfo = v22;
}

- (id)_processMobileEquipmentInfo:(id)a3 forSlot:(int64_t)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v9 = [v7 IMEI];
  v10 = [v7 ICCID];
  v11 = [v7 isOnBootstrap];

  if (v9)
  {
    if (a4 == 1)
    {
      v12 = @"IMEI";
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"IMEI%ld", a4];
    }

    v13 = [(SBActivationInfoViewController *)self _formattedIMEI:v9];
    if (![v13 length])
    {
      v14 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [v14 localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v13 = v15;
    }

    [v8 setObject:v13 forKey:v12];
    if (!((v10 == 0) | v11 & 1))
    {
      v16 = [(SBActivationInfoViewController *)self _formattedICCID:v10];
      if ([v16 length])
      {
        [v8 setObject:v16 forKey:@"ICCID"];
      }
    }
  }

  v17 = [v8 copy];

  return v17;
}

- (id)_processDeviceInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  serial = self->_serial;
  if (serial)
  {
    v5 = serial;
    if (![(NSString *)v5 length])
    {
      v6 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [v6 localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v5 = v7;
    }

    [v3 setObject:v5 forKey:@"SN"];
  }

  meid = self->_meid;
  if (meid)
  {
    v9 = meid;
    if (![(NSString *)v9 length])
    {
      v10 = [MEMORY[0x277CCA8D8] mainBundle];
      v11 = [v10 localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v9 = v11;
    }

    [v3 setObject:v9 forKey:@"MEID"];
  }

  if (self->_eid)
  {
    v12 = [(SBActivationInfoViewController *)self _formattedEID:?];
    if (![v12 length])
    {
      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [v13 localizedStringForKey:@"NO_NAME" value:&stru_283094718 table:@"SpringBoard"];

      v12 = v14;
    }

    [v3 setObject:v12 forKey:@"EID"];
  }

  if ([v3 count])
  {
    v15 = [v3 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_adjustMobileEquipmentLayout:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    if ([(SBActivationInfoViewController *)self _shouldGroupIMEIsForPrimary:v5 secondary:v6])
    {
      v7 = [v5 mutableCopy];
      [v7 addEntriesFromDictionary:v6];
      v8 = [v7 copy];
      v10[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [v4 setArray:v9];
    }
  }
}

- (BOOL)_shouldGroupIMEIsForPrimary:(id)a3 secondary:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
        objc_enumerationMutation(v6);
      }

      if (![*(*(&v21 + 1) + 8 * v10) hasPrefix:@"IMEI"])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
    v6 = [v5 allKeys];
    v11 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
        objc_enumerationMutation(v6);
      }

      if (![*(*(&v17 + 1) + 8 * v14) hasPrefix:@"IMEI"])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setSelectionStyle:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v6 = [v3 textLabel];
  [v6 setFont:v5];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v8 = [v3 detailTextLabel];
  [v8 setFont:v7];

  v9 = [v3 textLabel];
  v10 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [v9 setTextColor:v10];

  v11 = [v3 detailTextLabel];
  v12 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [v11 setTextColor:v12];

  return v3;
}

- (id)_backgroundViewForHeaderView:(id)a3
{
  v3 = MEMORY[0x277D75D18];
  v4 = a3;
  v5 = [v3 alloc];
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v5 initWithFrame:{v7, v9, v11, v13}];
  v15 = [MEMORY[0x277D75348] clearColor];
  [v14 setBackgroundColor:v15];

  return v14;
}

- (id)_formattedIMEI:(id)a3
{
  v3 = [a3 mutableCopy];
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

- (id)_formattedString:(id)a3 withSpaceAfterDigits:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    if ([v6 length] >= a4)
    {
      v8 = [v6 length];
      if (v8 > a4)
      {
        v9 = v8;
        v10 = a4;
        v11 = a4;
        do
        {
          [v7 insertString:@" " atIndex:v10];
          v11 += a4;
          v10 += a4 + 1;
        }

        while (v11 < v9);
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