@interface PKBarcodePassDetailsNotificationSettingsSectionController
+ (BOOL)canShowSectionforPass:(id)pass;
+ (int64_t)_countOfRowsForPass:(id)pass;
- (BOOL)_shouldMapSection;
- (PKBarcodePassDetailsNotificationSettingsSectionController)initWithPass:(id)pass detailViewStyle:(int64_t)style delegate:(id)delegate;
- (PKBarcodePassDetailsNotificationSettingsSectionControllerDelegate)delegate;
- (id)_cellForType:(int64_t)type;
- (id)_indexPathForRowType:(int64_t)type;
- (id)_settingsCellForRow:(unint64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (int64_t)_countOfRows;
- (unint64_t)_settingForRow:(unint64_t)row;
- (void)_passSettingsChanged:(id)changed;
- (void)dealloc;
- (void)pushSettingsFromViewToModel;
@end

@implementation PKBarcodePassDetailsNotificationSettingsSectionController

- (PKBarcodePassDetailsNotificationSettingsSectionController)initWithPass:(id)pass detailViewStyle:(int64_t)style delegate:(id)delegate
{
  v20[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PKBarcodePassDetailsNotificationSettingsSectionController;
  v11 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)&v18 init];
  if (v11)
  {
    v20[0] = @"BarcodePassNotificationsSectionIdentifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    allSectionIdentifiers = v11->_allSectionIdentifiers;
    v11->_allSectionIdentifiers = v12;

    objc_storeStrong(&v11->_pass, pass);
    v11->_detailViewStyle = style;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    if ([(PKBarcodePassDetailsNotificationSettingsSectionController *)v11 _shouldMapSection])
    {
      v19 = @"BarcodePassNotificationsSectionIdentifier";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    sectionIdentifiers = v11->_sectionIdentifiers;
    v11->_sectionIdentifiers = v14;

    PKObservePassSettingsChanged();
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__passSettingsChanged_ name:*MEMORY[0x1E69BBBF0] object:0];
  }

  return v11;
}

- (void)dealloc
{
  PKUnregisterPassSettingsChangedObserver();
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKBarcodePassDetailsNotificationSettingsSectionController;
  [(PKBarcodePassDetailsNotificationSettingsSectionController *)&v4 dealloc];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  pathCopy = path;
  if (PKEqualObjects())
  {
    v7 = -[PKBarcodePassDetailsNotificationSettingsSectionController _settingsCellForRow:](self, "_settingsCellForRow:", [pathCopy row]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_countOfRows
{
  v3 = objc_opt_class();
  pass = self->_pass;

  return [v3 _countOfRowsForPass:pass];
}

- (id)_indexPathForRowType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained indexOfSectionIdentifier:@"BarcodePassNotificationsSectionIdentifier"];

  if ([(PKBarcodePassDetailsNotificationSettingsSectionController *)self _countOfRows]<= type)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:type inSection:v6];
  }

  return v7;
}

- (id)_cellForType:(int64_t)type
{
  v4 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _indexPathForRowType:type];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained cellForRowAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)canShowSectionforPass:(id)pass
{
  passCopy = pass;
  if ([passCopy isUpdatable])
  {
    hasTimeOrLocationRelevancyInfo = 1;
  }

  else
  {
    hasTimeOrLocationRelevancyInfo = [passCopy hasTimeOrLocationRelevancyInfo];
  }

  return hasTimeOrLocationRelevancyInfo;
}

+ (int64_t)_countOfRowsForPass:(id)pass
{
  passCopy = pass;
  if ([passCopy isUpdatable])
  {
    if (([passCopy settings] & 2) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + [passCopy hasTimeOrLocationRelevancyInfo];

  return v5;
}

- (BOOL)_shouldMapSection
{
  v3 = objc_opt_class();
  pass = self->_pass;

  return [v3 canShowSectionforPass:pass];
}

- (unint64_t)_settingForRow:(unint64_t)row
{
  if ([(PKPass *)self->_pass isUpdatable])
  {
    settings = [(PKPass *)self->_pass settings];
    v6 = 0;
    if ((settings & 2) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((settings & 2) != 0)
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

  hasTimeOrLocationRelevancyInfo = [(PKPass *)self->_pass hasTimeOrLocationRelevancyInfo];
  if (hasTimeOrLocationRelevancyInfo)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 + hasTimeOrLocationRelevancyInfo <= row)
  {
    return 0;
  }

  if (v6 == row)
  {
    return 2;
  }

  if (v7 == row)
  {
    return 128;
  }

  return v10 == row;
}

- (id)_settingsCellForRow:(unint64_t)row
{
  v4 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _settingForRow:row];
  settings = [(PKPass *)self->_pass settings];
  switch(v4)
  {
    case 1uLL:
      v12 = [PKSettingTableCell alloc];
      v13 = PKLocalizedString(&cfstr_SettingsShowOn.isa);
      v8 = [(PKSettingTableCell *)v12 initWithTitle:v13 target:0 action:0];

      [(PKSettingTableCell *)v8 setOn:settings & 1];
      v9 = MEMORY[0x1E69B9CD0];
      goto LABEL_7;
    case 0x80uLL:
      v10 = [PKSettingTableCell alloc];
      v11 = PKLocalizedString(&cfstr_SettingsShowNo.isa);
      v8 = [(PKSettingTableCell *)v10 initWithTitle:v11 target:0 action:0];

      [(PKSettingTableCell *)v8 setOn:(settings & 0x80) == 0];
      v9 = MEMORY[0x1E69B9438];
      goto LABEL_7;
    case 2uLL:
      v6 = [PKSettingTableCell alloc];
      v7 = PKLocalizedString(&cfstr_SettingsNotify.isa);
      v8 = [(PKSettingTableCell *)v6 initWithTitle:v7 target:0 action:0];

      [(PKSettingTableCell *)v8 setOn:(settings >> 1) & 1];
      v9 = MEMORY[0x1E69B94D0];
LABEL_7:
      [(PKSettingTableCell *)v8 setAccessibilityIdentifier:*v9];
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  [(PKSettingTableCell *)v8 setTarget:self action:sel_pushSettingsFromViewToModel];

  return v8;
}

- (void)pushSettingsFromViewToModel
{
  v19[1] = *MEMORY[0x1E69E9840];
  settings = [(PKPass *)self->_pass settings];
  v4 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _cellForType:0];
  v5 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _cellForType:1];
  v6 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _cellForType:2];
  if (!v4)
  {
    v7 = settings;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ([v4 isOn])
  {
    v7 = settings | 2;
  }

  else
  {
    v7 = settings & 0xFFFFFFFFFFFFFFFDLL;
  }

  if (v5)
  {
LABEL_6:
    if ([v5 isOn])
    {
      v7 &= ~0x80uLL;
    }

    else
    {
      v7 |= 0x80uLL;
    }
  }

LABEL_9:
  if (v6)
  {
    if ([v6 isOn])
    {
      v7 |= 1uLL;
    }

    else
    {
      v7 &= ~1uLL;
    }
  }

  v8 = v7 ^ settings;
  if (((v7 ^ settings) & 2) != 0)
  {
    v9 = *MEMORY[0x1E69B9EF8];
    v18 = @"on";
    v10 = [MEMORY[0x1E696AD98] numberWithBool:(v7 >> 1) & 1];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    MEMORY[0x1BFB41980](v9, v11);
  }

  if (v8)
  {
    v12 = *MEMORY[0x1E69B9EF0];
    v16 = @"on";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v7 & 1];
    v17 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    MEMORY[0x1BFB41980](v12, v14);
  }

  [(PKPass *)self->_pass setSettings:(2 * v8) & 0x20 | v7];
  if ((v8 & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadSectionIdentifier:@"BarcodePassNotificationsSectionIdentifier"];
  }
}

- (void)_passSettingsChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69BBC18]];
  uniqueID = [(PKPass *)self->_pass uniqueID];
  v8 = [v6 isEqual:uniqueID];

  if (v8)
  {
    userInfo2 = [changedCopy userInfo];
    v10 = [userInfo2 objectForKey:*MEMORY[0x1E69BBC10]];

    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __82__PKBarcodePassDetailsNotificationSettingsSectionController__passSettingsChanged___block_invoke;
      v12[3] = &unk_1E80119C8;
      v12[4] = self;
      v12[5] = unsignedIntegerValue;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }
  }
}

void __82__PKBarcodePassDetailsNotificationSettingsSectionController__passSettingsChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setSettingsWithoutUpdatingDataAccessor:*(a1 + 40)];
  v7 = [*(a1 + 32) _cellForType:0];
  v2 = [*(a1 + 32) _cellForType:1];
  v3 = [*(a1 + 32) _cellForType:2];
  if (v7)
  {
    v4 = [v7 isOn];
    v5 = (*(a1 + 40) >> 1) & 1;
    [v7 setOn:v5 notify:0];
    [v2 setOn:(*(a1 + 40) & 0x80) == 0 notify:0];
    [v3 setOn:*(a1 + 40) & 1 notify:0];
    if (v4 != v5)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      [WeakRetained reloadSectionIdentifier:@"BarcodePassNotificationsSectionIdentifier"];
    }
  }

  else
  {
    [0 setOn:(*(a1 + 40) >> 1) & 1 notify:0];
    [v2 setOn:(*(a1 + 40) & 0x80) == 0 notify:0];
    [v3 setOn:*(a1 + 40) & 1 notify:0];
  }
}

- (PKBarcodePassDetailsNotificationSettingsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end