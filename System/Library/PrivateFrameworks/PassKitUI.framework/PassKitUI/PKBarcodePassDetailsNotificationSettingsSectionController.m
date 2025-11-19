@interface PKBarcodePassDetailsNotificationSettingsSectionController
+ (BOOL)canShowSectionforPass:(id)a3;
+ (int64_t)_countOfRowsForPass:(id)a3;
- (BOOL)_shouldMapSection;
- (PKBarcodePassDetailsNotificationSettingsSectionController)initWithPass:(id)a3 detailViewStyle:(int64_t)a4 delegate:(id)a5;
- (PKBarcodePassDetailsNotificationSettingsSectionControllerDelegate)delegate;
- (id)_cellForType:(int64_t)a3;
- (id)_indexPathForRowType:(int64_t)a3;
- (id)_settingsCellForRow:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (int64_t)_countOfRows;
- (unint64_t)_settingForRow:(unint64_t)a3;
- (void)_passSettingsChanged:(id)a3;
- (void)dealloc;
- (void)pushSettingsFromViewToModel;
@end

@implementation PKBarcodePassDetailsNotificationSettingsSectionController

- (PKBarcodePassDetailsNotificationSettingsSectionController)initWithPass:(id)a3 detailViewStyle:(int64_t)a4 delegate:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PKBarcodePassDetailsNotificationSettingsSectionController;
  v11 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)&v18 init];
  if (v11)
  {
    v20[0] = @"BarcodePassNotificationsSectionIdentifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    allSectionIdentifiers = v11->_allSectionIdentifiers;
    v11->_allSectionIdentifiers = v12;

    objc_storeStrong(&v11->_pass, a3);
    v11->_detailViewStyle = a4;
    objc_storeWeak(&v11->_delegate, v10);
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
    v16 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v16 addObserver:v11 selector:sel__passSettingsChanged_ name:*MEMORY[0x1E69BBBF0] object:0];
  }

  return v11;
}

- (void)dealloc
{
  PKUnregisterPassSettingsChangedObserver();
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKBarcodePassDetailsNotificationSettingsSectionController;
  [(PKBarcodePassDetailsNotificationSettingsSectionController *)&v4 dealloc];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v6 = a4;
  if (PKEqualObjects())
  {
    v7 = -[PKBarcodePassDetailsNotificationSettingsSectionController _settingsCellForRow:](self, "_settingsCellForRow:", [v6 row]);
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

- (id)_indexPathForRowType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained indexOfSectionIdentifier:@"BarcodePassNotificationsSectionIdentifier"];

  if ([(PKBarcodePassDetailsNotificationSettingsSectionController *)self _countOfRows]<= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:v6];
  }

  return v7;
}

- (id)_cellForType:(int64_t)a3
{
  v4 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _indexPathForRowType:a3];
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

+ (BOOL)canShowSectionforPass:(id)a3
{
  v3 = a3;
  if ([v3 isUpdatable])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasTimeOrLocationRelevancyInfo];
  }

  return v4;
}

+ (int64_t)_countOfRowsForPass:(id)a3
{
  v3 = a3;
  if ([v3 isUpdatable])
  {
    if (([v3 settings] & 2) != 0)
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

  v5 = v4 + [v3 hasTimeOrLocationRelevancyInfo];

  return v5;
}

- (BOOL)_shouldMapSection
{
  v3 = objc_opt_class();
  pass = self->_pass;

  return [v3 canShowSectionforPass:pass];
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
  v4 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _settingForRow:a3];
  v5 = [(PKPass *)self->_pass settings];
  switch(v4)
  {
    case 1uLL:
      v12 = [PKSettingTableCell alloc];
      v13 = PKLocalizedString(&cfstr_SettingsShowOn.isa);
      v8 = [(PKSettingTableCell *)v12 initWithTitle:v13 target:0 action:0];

      [(PKSettingTableCell *)v8 setOn:v5 & 1];
      v9 = MEMORY[0x1E69B9CD0];
      goto LABEL_7;
    case 0x80uLL:
      v10 = [PKSettingTableCell alloc];
      v11 = PKLocalizedString(&cfstr_SettingsShowNo.isa);
      v8 = [(PKSettingTableCell *)v10 initWithTitle:v11 target:0 action:0];

      [(PKSettingTableCell *)v8 setOn:(v5 & 0x80) == 0];
      v9 = MEMORY[0x1E69B9438];
      goto LABEL_7;
    case 2uLL:
      v6 = [PKSettingTableCell alloc];
      v7 = PKLocalizedString(&cfstr_SettingsNotify.isa);
      v8 = [(PKSettingTableCell *)v6 initWithTitle:v7 target:0 action:0];

      [(PKSettingTableCell *)v8 setOn:(v5 >> 1) & 1];
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
  v3 = [(PKPass *)self->_pass settings];
  v4 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _cellForType:0];
  v5 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _cellForType:1];
  v6 = [(PKBarcodePassDetailsNotificationSettingsSectionController *)self _cellForType:2];
  if (!v4)
  {
    v7 = v3;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ([v4 isOn])
  {
    v7 = v3 | 2;
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFFFFDLL;
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

  v8 = v7 ^ v3;
  if (((v7 ^ v3) & 2) != 0)
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
      v12[2] = __82__PKBarcodePassDetailsNotificationSettingsSectionController__passSettingsChanged___block_invoke;
      v12[3] = &unk_1E80119C8;
      v12[4] = self;
      v12[5] = v11;
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