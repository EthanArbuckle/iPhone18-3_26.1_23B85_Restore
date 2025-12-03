@interface PKPaymentTransactionNotificationSettingsViewController
- (BOOL)_allTogglesAreDisabled;
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKPaymentTransactionNotificationSettingsViewController)initWithPaymentPasses:(id)passes;
- (id)_allNotificationCellForRow:(int64_t)row tableView:(id)view;
- (id)_dailyCashNotificationCellForRow:(int64_t)row tableView:(id)view;
- (id)_paymentCardCellForRow:(int64_t)row tableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_toggleAllNotifications;
- (void)_toggleDailyCash:(id)cash;
- (void)_togglePaymentPassNotifications:(id)notifications;
- (void)updateMasterToggle:(BOOL)toggle;
- (void)viewDidLoad;
@end

@implementation PKPaymentTransactionNotificationSettingsViewController

- (PKPaymentTransactionNotificationSettingsViewController)initWithPaymentPasses:(id)passes
{
  passesCopy = passes;
  v26.receiver = self;
  v26.super_class = PKPaymentTransactionNotificationSettingsViewController;
  v5 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v26, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 3);
  if (v5)
  {
    v6 = [passesCopy sortedArrayUsingComparator:&__block_literal_global_69];
    paymentPasses = v5->_paymentPasses;
    v5->_paymentPasses = v6;

    v8 = [(NSArray *)v5->_paymentPasses pk_firstObjectPassingTest:&__block_literal_global_19_0];
    peerPaymentPass = v5->_peerPaymentPass;
    v5->_peerPaymentPass = v8;

    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    account = [mEMORY[0x1E69B9000] account];
    peerPaymentAccount = v5->_peerPaymentAccount;
    v5->_peerPaymentAccount = account;

    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__PKPaymentTransactionNotificationSettingsViewController_initWithPaymentPasses___block_invoke_3;
    v24[3] = &unk_1E80112C0;
    v14 = v5;
    v25 = v14;
    [mEMORY[0x1E69B8400] defaultAccountForFeature:2 completion:v24];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visibleSections = v14->_visibleSections;
    v14->_visibleSections = v15;

    v17 = v14->_visibleSections;
    v18 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(NSMutableArray *)v17 addObject:v18];

    v19 = v14->_visibleSections;
    v20 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [(NSMutableArray *)v19 addObject:v20];

    if ([(PKPaymentTransactionNotificationSettingsViewController *)v14 shouldMapSection:2])
    {
      v21 = v14->_visibleSections;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:2];
      [(NSMutableArray *)v21 addObject:v22];
    }
  }

  return v5;
}

BOOL __80__PKPaymentTransactionNotificationSettingsViewController_initWithPaymentPasses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 compare:v6] == -1;
  return v7;
}

void __80__PKPaymentTransactionNotificationSettingsViewController_initWithPaymentPasses___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    objc_initWeak(&location, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKPaymentTransactionNotificationSettingsViewController_initWithPaymentPasses___block_invoke_4;
    block[3] = &unk_1E80110E0;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __80__PKPaymentTransactionNotificationSettingsViewController_initWithPaymentPasses___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 144, *(a1 + 32));
    v3 = [v4 tableView];
    [v3 reloadData];

    WeakRetained = v4;
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPaymentTransactionNotificationSettingsViewController;
  [(PKSectionTableViewController *)&v6 viewDidLoad];
  tableView = [(PKPaymentTransactionNotificationSettingsViewController *)self tableView];
  [tableView setAllowsSelection:1];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  navigationItem = [(PKPaymentTransactionNotificationSettingsViewController *)self navigationItem];
  v5 = PKLocalizedPaymentString(&cfstr_NotificationSe.isa);
  [navigationItem setTitle:v5];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_visibleSections objectAtIndex:section];
  intValue = [v5 intValue];

  switch(intValue)
  {
    case 2:
      return 1;
    case 1:
      paymentPasses = self->_paymentPasses;

      return [(NSArray *)paymentPasses count];
    case 0:
      return 1;
    default:
      return 0;
  }
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  if (section == 3)
  {
    return 0;
  }

  if (section == 2)
  {
    return self->_peerPaymentPass != 0;
  }

  return 1;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_visibleSections objectAtIndex:section];
  intValue = [v4 intValue];

  if (intValue == 2)
  {
    v6 = PKLocalizedPaymentString(&cfstr_NotificationSe_7.isa);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_visibleSections objectAtIndex:section];
  intValue = [v4 intValue];

  if (!intValue)
  {
    v6 = @"NOTIFICATION_SETTINGS_TRANSACTIONS_FOOTER";
    goto LABEL_5;
  }

  if (intValue == 2)
  {
    v6 = @"NOTIFICATION_SETTINGS_DAILY_CASH_FOOTER";
LABEL_5:
    v7 = PKLocalizedPaymentString(&v6->isa);
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndex:](self->_visibleSections, "objectAtIndex:", [pathCopy section]);
  intValue = [v8 intValue];

  switch(intValue)
  {
    case 2:
      v10 = -[PKPaymentTransactionNotificationSettingsViewController _dailyCashNotificationCellForRow:tableView:](self, "_dailyCashNotificationCellForRow:tableView:", [pathCopy row], viewCopy);
      goto LABEL_7;
    case 1:
      v10 = -[PKPaymentTransactionNotificationSettingsViewController _paymentCardCellForRow:tableView:](self, "_paymentCardCellForRow:tableView:", [pathCopy row], viewCopy);
      goto LABEL_7;
    case 0:
      v10 = -[PKPaymentTransactionNotificationSettingsViewController _allNotificationCellForRow:tableView:](self, "_allNotificationCellForRow:tableView:", [pathCopy row], viewCopy);
LABEL_7:
      v11 = v10;
      goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)_allNotificationCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKPaymentTransactionNotificationSettingsViewController *)self _reuseIdentifierForSection:0];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  allNotificationsCell = self->_allNotificationsCell;
  self->_allNotificationsCell = v7;

  v9 = self->_allNotificationsCell;
  if (!v9)
  {
    v10 = PKLocalizedPaymentString(&cfstr_NotificationSe.isa);
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__toggleAllNotifications];
    v12 = self->_allNotificationsCell;
    self->_allNotificationsCell = v11;

    v9 = self->_allNotificationsCell;
  }

  [(PKSettingTableCell *)v9 setOn:[(PKPaymentTransactionNotificationSettingsViewController *)self _allTogglesAreDisabled]^ 1];
  v13 = self->_allNotificationsCell;
  v14 = v13;

  return v13;
}

- (void)_toggleAllNotifications
{
  isOn = [(PKSettingTableCell *)self->_allNotificationsCell isOn];
  paymentPasses = self->_paymentPasses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PKPaymentTransactionNotificationSettingsViewController__toggleAllNotifications__block_invoke;
  v7[3] = &unk_1E80162C8;
  v8 = isOn;
  v7[4] = self;
  [(NSArray *)paymentPasses enumerateObjectsUsingBlock:v7];
  v5 = [(PKSecureElementPass *)self->_peerPaymentPass settings]& 0xFFFFFFFFFFFFFBFFLL;
  v6 = 1024;
  if (isOn)
  {
    v6 = 0;
  }

  [(PKSecureElementPass *)self->_peerPaymentPass setSettings:v5 | v6];
  [(PKSettingTableCell *)self->_dailyCashCell setOn:isOn];
}

void __81__PKPaymentTransactionNotificationSettingsViewController__toggleAllNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 settings];
  if ((([v11 supportsFPANNotifications] & 1) != 0 || objc_msgSend(v11, "supportsDPANNotifications")) && (objc_msgSend(v11, "isPeerPaymentPass") & 1) == 0)
  {
    v6 = v11;
    if (*(a1 + 40))
    {
      v7 = v5 & 0xFFFFFFFFFFFFFF7FLL;
    }

    else
    {
      v7 = v5 | 0x80;
    }
  }

  else
  {
    v6 = v11;
    if (*(a1 + 40) == 1)
    {
      v7 = v5 | 8;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFF7;
    }
  }

  [v6 setSettings:v7];
  v8 = [*(a1 + 32) tableView];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:1];
  v10 = [v8 cellForRowAtIndexPath:v9];

  [v10 setOn:*(a1 + 40)];
}

- (BOOL)_allTogglesAreDisabled
{
  v16 = *MEMORY[0x1E69E9840];
  if (([(PKSecureElementPass *)self->_peerPaymentPass settings]& 0x400) != 0)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_paymentPasses;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((([v8 supportsFPANNotifications] & 1) != 0 || objc_msgSend(v8, "supportsDPANNotifications")) && (objc_msgSend(v8, "isPeerPaymentPass") & 1) == 0)
        {
          if (([v8 settings] & 0x80) == 0)
          {
LABEL_17:
            v9 = 0;
            goto LABEL_18;
          }
        }

        else if (([v8 settings] & 8) != 0)
        {
          goto LABEL_17;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_18:

  return v9;
}

- (id)_dailyCashNotificationCellForRow:(int64_t)row tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKPaymentTransactionNotificationSettingsViewController *)self _reuseIdentifierForSection:2];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  dailyCashCell = self->_dailyCashCell;
  self->_dailyCashCell = v7;

  v9 = self->_dailyCashCell;
  if (!v9)
  {
    v10 = PKLocalizedPaymentString(&cfstr_NotificationSe_7.isa);
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__toggleDailyCash_];
    v12 = self->_dailyCashCell;
    self->_dailyCashCell = v11;

    v9 = self->_dailyCashCell;
  }

  [(PKSettingTableCell *)v9 setOn:([(PKSecureElementPass *)self->_peerPaymentPass settings]& 0x400) == 0];
  v13 = self->_dailyCashCell;
  v14 = v13;

  return v13;
}

- (void)_toggleDailyCash:(id)cash
{
  peerPaymentPass = self->_peerPaymentPass;
  cashCopy = cash;
  settings = [(PKSecureElementPass *)peerPaymentPass settings];
  isOn = [cashCopy isOn];

  v8 = 1024;
  if (isOn)
  {
    v8 = 0;
  }

  [(PKSecureElementPass *)self->_peerPaymentPass setSettings:v8 | settings & 0xFFFFFFFFFFFFFBFFLL];

  [(PKPaymentTransactionNotificationSettingsViewController *)self updateMasterToggle:isOn];
}

- (id)_paymentCardCellForRow:(int64_t)row tableView:(id)view
{
  paymentPasses = self->_paymentPasses;
  viewCopy = view;
  v8 = [(NSArray *)paymentPasses objectAtIndex:row];
  settings = [v8 settings];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"cellPaymentPassIdentifier"];

  if ([v8 isPeerPaymentPass])
  {
    currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    minimalFormattedStringValue = [currentBalance minimalFormattedStringValue];
    displayableListOfBalances = PKLocalizedPaymentString(&cfstr_NotificationSe_10.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
LABEL_5:

    goto LABEL_6;
  }

  if ([v8 isAppleCardPass])
  {
    currentBalance = [(PKAccount *)self->_appleCardAccount creditDetails];
    minimalFormattedStringValue = [currentBalance cardBalance];
    v12MinimalFormattedStringValue = [minimalFormattedStringValue minimalFormattedStringValue];
    displayableListOfBalances = PKLocalizedPaymentString(&cfstr_NotificationSe_11.isa, &stru_1F3BD5BF0.isa, v12MinimalFormattedStringValue);

    goto LABEL_5;
  }

  if (![v8 isStoredValuePass])
  {
    currentBalance = [v8 paymentPass];
    displayableListOfBalances = PKSanitizedPrimaryAccountRepresentationForPass();
LABEL_6:

    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v8];
  transitBalanceModel = self->_transitBalanceModel;
  self->_transitBalanceModel = v19;

  displayableListOfBalances = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableListOfBalances];
  if (!v10)
  {
LABEL_7:
    localizedDescription = [v8 localizedDescription];
    v10 = [[PKPassSettingTableCell alloc] initWithTitle:localizedDescription detailText:displayableListOfBalances target:self action:sel__togglePaymentPassNotifications_ reuseIdentifier:@"cellPaymentPassIdentifier"];
  }

LABEL_8:
  [(PKPassSettingTableCell *)v10 setPass:v8 withDetailText:displayableListOfBalances];
  settingSwitch = [(PKSettingTableCell *)v10 settingSwitch];
  [settingSwitch setTag:row];

  if ((([v8 supportsFPANNotifications] & 1) != 0 || objc_msgSend(v8, "supportsDPANNotifications")) && (objc_msgSend(v8, "isPeerPaymentPass") & 1) == 0)
  {
    v17 = (settings & 0x80) == 0;
  }

  else
  {
    v17 = (settings >> 3) & 1;
  }

  [(PKSettingTableCell *)v10 setOn:v17];

  return v10;
}

- (void)_togglePaymentPassNotifications:(id)notifications
{
  paymentPasses = self->_paymentPasses;
  notificationsCopy = notifications;
  v10 = -[NSArray objectAtIndex:](paymentPasses, "objectAtIndex:", [notificationsCopy tag]);
  settings = [v10 settings];
  isOn = [notificationsCopy isOn];

  if ((([v10 supportsFPANNotifications] & 1) != 0 || objc_msgSend(v10, "supportsDPANNotifications")) && (objc_msgSend(v10, "isPeerPaymentPass") & 1) == 0)
  {
    v8 = v10;
    if (isOn)
    {
      v9 = settings & 0xFFFFFFFFFFFFFF7FLL;
    }

    else
    {
      v9 = settings | 0x80;
    }
  }

  else
  {
    v8 = v10;
    if (isOn)
    {
      v9 = settings | 8;
    }

    else
    {
      v9 = settings & 0xFFFFFFFFFFFFFFF7;
    }
  }

  [v8 setSettings:v9];
  [(PKPaymentTransactionNotificationSettingsViewController *)self updateMasterToggle:isOn];
}

- (void)updateMasterToggle:(BOOL)toggle
{
  toggleCopy = toggle;
  if (toggle || [(PKPaymentTransactionNotificationSettingsViewController *)self _allTogglesAreDisabled])
  {
    allNotificationsCell = self->_allNotificationsCell;

    [(PKSettingTableCell *)allNotificationsCell setOn:toggleCopy];
  }
}

@end