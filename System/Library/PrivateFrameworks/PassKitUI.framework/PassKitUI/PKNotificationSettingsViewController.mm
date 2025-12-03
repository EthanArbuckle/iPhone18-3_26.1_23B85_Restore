@interface PKNotificationSettingsViewController
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKNotificationSettingsViewController)init;
- (id)_accountCellForRow:(int64_t)row tableView:(id)view;
- (id)_newFeaturesCellForRow:(int64_t)row tableView:(id)view;
- (id)_offersCellForRow:(int64_t)row tableView:(id)view;
- (id)_ordersCellForRow:(int64_t)row tableView:(id)view;
- (id)_preauthorizedPaymentsCellForRow:(int64_t)row tableView:(id)view;
- (id)_transactionCellForRow:(int64_t)row tableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleLibraryUpdate:(id)update;
- (void)_toggleNewFeatures;
- (void)_toggleOffers;
- (void)_toggleOrders;
- (void)_togglePreauthorizedPayments;
- (void)_toggleSavings;
- (void)_updateVisibilityFor:(unint64_t)for;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKNotificationSettingsViewController

- (PKNotificationSettingsViewController)init
{
  v38.receiver = self;
  v38.super_class = PKNotificationSettingsViewController;
  v2 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v38, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 6);
  if (v2)
  {
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v2->_paymentDataProvider;
    v2->_paymentDataProvider = defaultDataProvider;

    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v6 = [mEMORY[0x1E69B8A58] passesOfType:1];
    v7 = [v6 pk_arrayByApplyingBlock:&__block_literal_global_5];

    v8 = [v7 pk_createArrayByRemovingObjectsPassingTest:&__block_literal_global_36];
    paymentPasses = v2->_paymentPasses;
    v2->_paymentPasses = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visibleSections = v2->_visibleSections;
    v2->_visibleSections = v10;

    if ([(NSArray *)v2->_paymentPasses count])
    {
      v12 = v2->_visibleSections;
      v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
      [(NSMutableArray *)v12 addObject:v13];
    }

    v14 = v2->_visibleSections;
    v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [(NSMutableArray *)v14 addObject:v15];

    v16 = v2->_visibleSections;
    v17 = [MEMORY[0x1E696AD98] numberWithInt:2];
    [(NSMutableArray *)v16 addObject:v17];

    v18 = v2->_visibleSections;
    v19 = [MEMORY[0x1E696AD98] numberWithInt:3];
    [(NSMutableArray *)v18 addObject:v19];

    v20 = v2->_visibleSections;
    v21 = [MEMORY[0x1E696AD98] numberWithInt:4];
    [(NSMutableArray *)v20 addObject:v21];

    v22 = v2->_visibleSections;
    v23 = [MEMORY[0x1E696AD98] numberWithInt:5];
    [(NSMutableArray *)v22 addObject:v23];

    defaultDataProvider2 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v25 = v2->_paymentDataProvider;
    v2->_paymentDataProvider = defaultDataProvider2;

    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __44__PKNotificationSettingsViewController_init__block_invoke_3;
    v36[3] = &unk_1E80112C0;
    v27 = v2;
    v37 = v27;
    [mEMORY[0x1E69B8400] defaultAccountForFeature:5 completion:v36];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v27 selector:sel__handleLibraryUpdate_ name:*MEMORY[0x1E69BBBD8] object:0];

    v29 = *MEMORY[0x1E69BB718];
    v30 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB718]];

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:v29];
      v31 = 1;
    }

    v27->_beganAnalytics = v31;
    v32 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v27 action:sel__close];
    closeButton = v27->_closeButton;
    v27->_closeButton = v32;

    navigationItem = [(PKNotificationSettingsViewController *)v27 navigationItem];
    [navigationItem setLeftBarButtonItem:v27->_closeButton animated:1];
  }

  return v2;
}

uint64_t __44__PKNotificationSettingsViewController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessPass])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isIdentityPass];
  }

  return v3;
}

void __44__PKNotificationSettingsViewController_init__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 1160);
    *(v7 + 1160) = 0;

    v9 = *(*(a1 + 32) + 1176);

    [v9 pk_removeObjectsPassingTest:&__block_literal_global_42];
  }

  else
  {
    v4 = [a2 accountIdentifier];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1160);
    *(v5 + 1160) = v4;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BBBD8] object:0];

  if (self->_beganAnalytics)
  {
    v4 = *MEMORY[0x1E69BB718];
    v5 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB718]];

    if (v5)
    {
      [MEMORY[0x1E69B8540] endSubjectReporting:v4];
    }
  }

  v6.receiver = self;
  v6.super_class = PKNotificationSettingsViewController;
  [(PKSectionTableViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKNotificationSettingsViewController;
  [(PKSectionTableViewController *)&v6 viewDidLoad];
  tableView = [(PKNotificationSettingsViewController *)self tableView];
  [tableView setAllowsSelection:1];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  navigationItem = [(PKNotificationSettingsViewController *)self navigationItem];
  v5 = PKLocalizedPaymentString(&cfstr_MoreButtonTool.isa);
  [navigationItem setTitle:v5];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_visibleSections objectAtIndex:section];
  intValue = [v4 intValue];

  return intValue < 6;
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  if (section == 6)
  {
    return 0;
  }

  if (section == 1)
  {
    return self->_savingsAccountIdentifier != 0;
  }

  if (section)
  {
    return 1;
  }

  return [(NSArray *)self->_paymentPasses count:v3]!= 0;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_visibleSections objectAtIndex:section];
  [v4 intValue];

  return 0;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndex:](self->_visibleSections, "objectAtIndex:", [pathCopy section]);
  intValue = [v8 intValue];

  v10 = 0;
  if (intValue > 2)
  {
    switch(intValue)
    {
      case 3:
        v11 = -[PKNotificationSettingsViewController _preauthorizedPaymentsCellForRow:tableView:](self, "_preauthorizedPaymentsCellForRow:tableView:", [pathCopy row], viewCopy);
        break;
      case 4:
        v11 = -[PKNotificationSettingsViewController _newFeaturesCellForRow:tableView:](self, "_newFeaturesCellForRow:tableView:", [pathCopy row], viewCopy);
        break;
      case 5:
        v11 = -[PKNotificationSettingsViewController _offersCellForRow:tableView:](self, "_offersCellForRow:tableView:", [pathCopy row], viewCopy);
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (intValue)
  {
    if (intValue == 1)
    {
      v11 = -[PKNotificationSettingsViewController _accountCellForRow:tableView:](self, "_accountCellForRow:tableView:", [pathCopy row], viewCopy);
    }

    else
    {
      if (intValue != 2)
      {
        goto LABEL_15;
      }

      v11 = -[PKNotificationSettingsViewController _ordersCellForRow:tableView:](self, "_ordersCellForRow:tableView:", [pathCopy row], viewCopy);
    }
  }

  else
  {
    v11 = -[PKNotificationSettingsViewController _transactionCellForRow:tableView:](self, "_transactionCellForRow:tableView:", [pathCopy row], viewCopy);
  }

  v10 = v11;
LABEL_15:

  return v10;
}

- (id)_transactionCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKNotificationSettingsViewController *)self _reuseIdentifierForSection:0];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  if (!v7)
  {
    v7 = [[PKStackedLabelCell alloc] initWithReuseIdentifier:v6];
    v8 = PKLocalizedPaymentString(&cfstr_NotificationSe.isa);
    [(PKStackedLabelCell *)v7 setTitleText:v8];

    [(PKStackedLabelCell *)v7 setAccessoryType:1];
  }

  return v7;
}

- (id)_accountCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKNotificationSettingsViewController *)self _reuseIdentifierForSection:1];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  savingsCell = self->_savingsCell;
  self->_savingsCell = v7;

  v9 = self->_savingsCell;
  if (!v9)
  {
    v10 = PKLocalizedPaymentString(&cfstr_NotificationSe_0.isa);
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__toggleSavings];
    v12 = self->_savingsCell;
    self->_savingsCell = v11;

    v9 = self->_savingsCell;
  }

  [(PKSettingTableCell *)v9 setOn:[(PKNotificationSettingsViewController *)self _allSavingsSettingsAreDisabled]^ 1];
  v13 = self->_savingsCell;
  v14 = v13;

  return v13;
}

- (void)_toggleSavings
{
  isOn = [(PKSettingTableCell *)self->_savingsCell isOn];
  PKSetHasDisabledAPYUpdateNotificationsForAccountIdentifier();
  PKSetHasDisabledInterestPaidNotificationsForAccountIdentifier();
  savingsAccountIdentifier = self->_savingsAccountIdentifier;

  MEMORY[0x1EEE255A8](savingsAccountIdentifier, !isOn);
}

- (id)_preauthorizedPaymentsCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKNotificationSettingsViewController *)self _reuseIdentifierForSection:3];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  preauthorizedPaymentsCell = self->_preauthorizedPaymentsCell;
  self->_preauthorizedPaymentsCell = v7;

  v9 = self->_preauthorizedPaymentsCell;
  if (!v9)
  {
    v10 = PKLocalizedPaymentString(&cfstr_NotificationSe_1.isa);
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__togglePreauthorizedPayments];
    v12 = self->_preauthorizedPaymentsCell;
    self->_preauthorizedPaymentsCell = v11;

    v9 = self->_preauthorizedPaymentsCell;
  }

  [(PKSettingTableCell *)v9 setOn:PKMerchantTokenUpcomingPaymentNotificationsEnabled()];
  v13 = self->_preauthorizedPaymentsCell;
  v14 = v13;

  return v13;
}

- (void)_togglePreauthorizedPayments
{
  v2 = [(PKSettingTableCell *)self->_preauthorizedPaymentsCell isOn]^ 1;

  MEMORY[0x1EEE255F8](v2);
}

- (id)_newFeaturesCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKNotificationSettingsViewController *)self _reuseIdentifierForSection:4];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  newFeaturesCell = self->_newFeaturesCell;
  self->_newFeaturesCell = v7;

  v9 = self->_newFeaturesCell;
  if (!v9)
  {
    v10 = PKLocalizedPaymentString(&cfstr_NotificationSe_2.isa);
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__toggleNewFeatures];
    v12 = self->_newFeaturesCell;
    self->_newFeaturesCell = v11;

    v9 = self->_newFeaturesCell;
  }

  [(PKSettingTableCell *)v9 setOn:PKNewFeaturesNotificationsDisabled() ^ 1];
  v13 = self->_newFeaturesCell;

  return v13;
}

- (void)_toggleNewFeatures
{
  v9[2] = *MEMORY[0x1E69E9840];
  [(PKSettingTableCell *)self->_newFeaturesCell isOn];
  PKSetNewFeaturesNotificationsDisabled();
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB718];
  v4 = *MEMORY[0x1E69BA680];
  v9[0] = *MEMORY[0x1E69BA7F8];
  v5 = *MEMORY[0x1E69BB2F0];
  v8[0] = v4;
  v8[1] = v5;
  v6 = PKAnalyticsReportSwitchToggleResultValue();
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 subject:v3 sendEvent:v7];
}

- (id)_offersCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKNotificationSettingsViewController *)self _reuseIdentifierForSection:5];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  offersCell = self->_offersCell;
  self->_offersCell = v7;

  v9 = self->_offersCell;
  if (!v9)
  {
    v10 = PKLocalizedPaymentString(&cfstr_NotificationSe_3.isa);
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__toggleOffers];
    v12 = self->_offersCell;
    self->_offersCell = v11;

    v9 = self->_offersCell;
  }

  [(PKSettingTableCell *)v9 setOn:PKOffersNotificationsDisabled() ^ 1];
  v13 = self->_offersCell;
  v14 = v13;

  return v13;
}

- (void)_toggleOffers
{
  v9[2] = *MEMORY[0x1E69E9840];
  [(PKSettingTableCell *)self->_offersCell isOn];
  PKSetOffersNotificationsDisabled();
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB718];
  v4 = *MEMORY[0x1E69BA680];
  v9[0] = *MEMORY[0x1E69BA800];
  v5 = *MEMORY[0x1E69BB2F0];
  v8[0] = v4;
  v8[1] = v5;
  v6 = PKAnalyticsReportSwitchToggleResultValue();
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 subject:v3 sendEvent:v7];
}

- (id)_ordersCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKNotificationSettingsViewController *)self _reuseIdentifierForSection:2];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  ordersCell = self->_ordersCell;
  self->_ordersCell = v7;

  if (!self->_ordersCell)
  {
    v9 = PKLocalizedPaymentString(&cfstr_NotificationSe_4.isa);
    v10 = [[PKSettingTableCell alloc] initWithTitle:v9 target:self action:sel__toggleOrders];
    v11 = self->_ordersCell;
    self->_ordersCell = v10;
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKSettingTableCell *)self->_ordersCell setOn:[(PKPaymentDefaultDataProvider *)self->_paymentDataProvider isOrderManagementNotificationsDisabled]^ 1];
  }

  v12 = self->_ordersCell;
  v13 = v12;

  return v12;
}

- (void)_toggleOrders
{
  isOn = [(PKSettingTableCell *)self->_ordersCell isOn];
  if (objc_opt_respondsToSelector())
  {
    paymentDataProvider = self->_paymentDataProvider;

    [(PKPaymentDefaultDataProvider *)paymentDataProvider setOrderManagementNotificationsDisabled:!isOn];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_visibleSections objectAtIndex:section];
  intValue = [v4 intValue];

  if (intValue == 1)
  {
    v6 = @"NOTIFICATION_SETTINGS_ACCOUNT_FOOTER";
    goto LABEL_5;
  }

  if (intValue == 3)
  {
    v6 = @"NOTIFICATION_SETTINGS_PREAUTHORIZED_PAYMENTS_FOOTER";
LABEL_5:
    v7 = PKLocalizedPaymentString(&v6->isa);
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndex:](self->_visibleSections, "objectAtIndex:", [pathCopy section]);
  intValue = [v7 intValue];

  if (!intValue)
  {
    v9 = [[PKPaymentTransactionNotificationSettingsViewController alloc] initWithPaymentPasses:self->_paymentPasses];
    navigationController = [(PKNotificationSettingsViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_updateVisibilityFor:(unint64_t)for
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
  if (!for)
  {
    if ([(NSArray *)self->_paymentPasses count]&& (v6 = self->_visibleSections, v9[0] = MEMORY[0x1E69E9820], v9[1] = 3221225472, v9[2] = __61__PKNotificationSettingsViewController__updateVisibilityFor___block_invoke, v9[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l, v9[4] = 0, ([(NSMutableArray *)v6 pk_containsObjectPassingTest:v9]& 1) == 0))
    {
      [(NSMutableArray *)self->_visibleSections insertObject:v5 atIndex:0];
    }

    else if (![(NSArray *)self->_paymentPasses count])
    {
      visibleSections = self->_visibleSections;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__PKNotificationSettingsViewController__updateVisibilityFor___block_invoke_2;
      v8[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
      v8[4] = 0;
      [(NSMutableArray *)visibleSections pk_removeObjectsPassingTest:v8];
    }
  }
}

- (void)_handleLibraryUpdate:(id)update
{
  updateCopy = update;
  userInfo = [updateCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BBC00]];

  userInfo2 = [updateCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69BBBD0]];

  userInfo3 = [updateCopy userInfo];

  v10 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69BBBF8]];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PKNotificationSettingsViewController__handleLibraryUpdate___block_invoke;
  v14[3] = &unk_1E8011C98;
  v14[4] = self;
  v15 = v10;
  v16 = v8;
  v17 = v6;
  v11 = v6;
  v12 = v8;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __61__PKNotificationSettingsViewController__handleLibraryUpdate___block_invoke(id *a1)
{
  v2 = *(a1[4] + 146);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__PKNotificationSettingsViewController__handleLibraryUpdate___block_invoke_2;
  v21[3] = &unk_1E8011C28;
  v22 = a1[5];
  v3 = [v2 pk_createArrayByRemovingObjectsPassingTest:v21];
  v4 = a1[4];
  v5 = v4[146];
  v4[146] = v3;

  v6 = [a1[6] pk_createArrayByRemovingObjectsPassingTest:&__block_literal_global_106];
  v7 = [*(a1[4] + 146) arrayByAddingObjectsFromArray:v6];
  v8 = a1[4];
  v9 = v8[146];
  v8[146] = v7;

  v10 = [a1[7] pk_createArrayByRemovingObjectsPassingTest:&__block_literal_global_108];
  v11 = [*(a1[4] + 146) mutableCopy];
  v12 = *(a1[4] + 146);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__PKNotificationSettingsViewController__handleLibraryUpdate___block_invoke_5;
  v18[3] = &unk_1E8011C70;
  v19 = v10;
  v13 = v11;
  v20 = v13;
  v14 = v10;
  [v12 enumerateObjectsUsingBlock:v18];
  v15 = a1[4];
  v16 = v15[146];
  v15[146] = v13;
  v17 = v13;

  [a1[4] _updateVisibilityFor:0];
}

BOOL __61__PKNotificationSettingsViewController__handleLibraryUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(v10, 0, sizeof(v10));
  v4 = *(a1 + 32);
  if ([v4 countByEnumeratingWithState:v10 objects:v11 count:16])
  {
    v5 = **(&v10[0] + 1);
    v6 = [v3 serialNumber];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BBC08]];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__PKNotificationSettingsViewController__handleLibraryUpdate___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [v5 uniqueID];
        v13 = [v11 uniqueID];

        if (v12 == v13)
        {
          [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end