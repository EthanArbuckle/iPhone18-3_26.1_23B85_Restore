@interface PXContextualMemoriesSettingsTableViewController
+ (id)title;
- (BOOL)_isDatePickerCellAtIndexPath:(id)a3;
- (BOOL)_isLocationPickerCellAtIndexPath:(id)a3;
- (BOOL)_isPeopleValueCellAtIndexPath:(id)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PXContextualMemoriesSettingsTableViewController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_indexPathForDatePicker;
- (id)_indexPathForDateValue;
- (id)_indexPathForLocationPicker;
- (id)_indexPathForLocationValue;
- (id)_indexPathForPeopleValue;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_sectionForDate;
- (int64_t)_sectionForLocation;
- (int64_t)_sectionForPeople;
- (int64_t)_sectionForSettingOfClass:(Class)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didChangeDatePicker:(id)a3;
- (void)_didPressResetAll:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_installProgressIndicatorView;
- (void)_reloadRowAndRestoreSelectionIfNeededAtIndexPath:(id)a3;
- (void)_showContactsPicker;
- (void)_tableView:(id)a3 selectionDidUpdateForRowAtIndexPath:(id)a4;
- (void)_updateDatePickerHidden;
- (void)_updateLocationPickerHidden;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXContextualMemoriesSettingsTableViewController

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &kPXContextualMemoriesSettingsKVOContextKeyDate)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v27 = &unk_1E774C648;
    v28 = self;
    goto LABEL_9;
  }

  if (a6 == &kPXContextualMemoriesSettingsKVOContextKeyCoordinate || a6 == &kPXContextualMemoriesSettingsKVOContextKeyPlacemark)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v22 = &unk_1E774C648;
    v23 = self;
    goto LABEL_9;
  }

  if (a6 == &kPXContextualMemoriesSettingsKVOContextKeyPeople)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v17 = &unk_1E774C648;
    v18 = self;
LABEL_9:
    px_dispatch_on_main_queue();
  }

  v13.receiver = self;
  v13.super_class = PXContextualMemoriesSettingsTableViewController;
  [(PXContextualMemoriesSettingsTableViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
}

void __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) showsDatePicker])
  {
    v2 = [*(a1 + 32) _indexPathForDatePicker];
    v3 = [*(a1 + 32) tableView];
    v4 = [v3 cellForRowAtIndexPath:v2];

    v5 = [v4 datePicker];
    v6 = [*(*(a1 + 32) + 1048) timeSetting];
    v7 = [v6 date];
    [v5 setDate:v7 animated:1];
  }

  v8 = [*(a1 + 32) _indexPathForDateValue];
  [*(a1 + 32) _reloadRowAndRestoreSelectionIfNeededAtIndexPath:v8];
}

void __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _indexPathForLocationValue];
  [*(a1 + 32) _reloadRowAndRestoreSelectionIfNeededAtIndexPath:v2];
}

void __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _indexPathForPeopleValue];
  v3 = [*(a1 + 32) tableView];
  v5[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:100];
}

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2050000000;
        v12 = getCNContactFormatterClass_softClass;
        v28 = getCNContactFormatterClass_softClass;
        if (!getCNContactFormatterClass_softClass)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __getCNContactFormatterClass_block_invoke;
          v24[3] = &unk_1E774BD00;
          v24[4] = &v25;
          __getCNContactFormatterClass_block_invoke(v24);
          v12 = v26[3];
        }

        v13 = v12;
        _Block_object_dispose(&v25, 8);
        v14 = [v12 stringFromContact:v11 style:{0, v18}];
        if ([v14 length])
        {
          [v6 addObject:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v8);
  }

  v15 = [(PXContextualMemoriesSettings *)self->_settings peopleSetting];
  [v15 setPeopleNames:v6];

  v16 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  v17 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v17 deselectRowAtIndexPath:v16 animated:1];
}

- (void)contactPickerDidCancel:(id)a3
{
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  v4 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v4 deselectRowAtIndexPath:v5 animated:1];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userLocation];

  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v5 dequeueReusableAnnotationViewWithIdentifier:@"pin"];
    if (v8)
    {
      v9 = v8;
      [(MKAnnotationView *)v9 setAnnotation:v6];
    }

    else
    {
      v9 = [(MKPinAnnotationView *)[PXPlacesPinAnnotationView alloc] initWithAnnotation:v6 reuseIdentifier:@"pin"];
      [(MKPinAnnotationView *)v9 setAnimatesDrop:1];
      [(MKAnnotationView *)v9 setCanShowCallout:1];
      [(MKAnnotationView *)v9 setDraggable:1];
    }
  }

  return v9;
}

- (void)_showContactsPicker
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v3 = getCNContactPickerViewControllerClass_softClass;
  v28 = getCNContactPickerViewControllerClass_softClass;
  if (!getCNContactPickerViewControllerClass_softClass)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getCNContactPickerViewControllerClass_block_invoke;
    v23 = &unk_1E774BD00;
    v24 = &v25;
    __getCNContactPickerViewControllerClass_block_invoke(&v20);
    v3 = v26[3];
  }

  v4 = v3;
  _Block_object_dispose(&v25, 8);
  v5 = objc_alloc_init(v3);
  [v5 setDelegate:self];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v6 = getCNContactGivenNameKeySymbolLoc_ptr;
  v28 = getCNContactGivenNameKeySymbolLoc_ptr;
  if (!getCNContactGivenNameKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getCNContactGivenNameKeySymbolLoc_block_invoke;
    v23 = &unk_1E774BD00;
    v24 = &v25;
    v7 = ContactsLibrary();
    v8 = dlsym(v7, "CNContactGivenNameKey");
    *(v24[1] + 24) = v8;
    getCNContactGivenNameKeySymbolLoc_ptr = *(v24[1] + 24);
    v6 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactGivenNameKey(void)"];
    [v16 handleFailureInFunction:v17 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:40 description:{@"%s", dlerror()}];

    goto LABEL_12;
  }

  v9 = *v6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v10 = getCNContactFamilyNameKeySymbolLoc_ptr;
  v28 = getCNContactFamilyNameKeySymbolLoc_ptr;
  v29 = v9;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getCNContactFamilyNameKeySymbolLoc_block_invoke;
    v23 = &unk_1E774BD00;
    v24 = &v25;
    v11 = ContactsLibrary();
    v12 = dlsym(v11, "CNContactFamilyNameKey");
    *(v24[1] + 24) = v12;
    getCNContactFamilyNameKeySymbolLoc_ptr = *(v24[1] + 24);
    v10 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactFamilyNameKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:39 description:{@"%s", dlerror()}];

LABEL_12:
    __break(1u);
  }

  v30 = *v10;
  v13 = MEMORY[0x1E695DEC8];
  v14 = v30;
  v15 = [v13 arrayWithObjects:&v29 count:2];

  [v5 setDisplayedPropertyKeys:v15];
  [(PXContextualMemoriesSettingsTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_didPressResetAll:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PXContextualMemoriesSettings *)self->_settings settings:a3];
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

        [*(*(&v8 + 1) + 8 * v7++) resetToDefault];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleLongPress:(id)a3
{
  v10 = a3;
  if ([v10 state] == 1)
  {
    v4 = [v10 view];
    [v10 locationInView:v4];
    [v4 convertPoint:v4 toCoordinateFromView:?];
    v6 = v5;
    v8 = v7;
    v9 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
    [v9 setCoordinate:{v6, v8}];
  }
}

- (void)_didChangeDatePicker:(id)a3
{
  v5 = [a3 date];
  v4 = [(PXContextualMemoriesSettings *)self->_settings timeSetting];
  [v4 setDate:v5];
}

- (BOOL)_isPeopleValueCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  v6 = [v4 section];
  if (v6 == [v5 section])
  {
    v7 = [v4 row];
    v8 = v7 == [v5 row];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isLocationPickerCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForLocationPicker];
  v6 = [v4 section];
  if (v6 == [v5 section])
  {
    v7 = [v4 row];
    v8 = v7 == [v5 row];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isDatePickerCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForDatePicker];
  v6 = [v4 section];
  if (v6 == [v5 section])
  {
    v7 = [v4 row];
    v8 = v7 == [v5 row];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_indexPathForLocationPicker
{
  v2 = MEMORY[0x1E696AC88];
  v3 = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForLocation];

  return [v2 indexPathForRow:1 inSection:v3];
}

- (id)_indexPathForDatePicker
{
  v2 = MEMORY[0x1E696AC88];
  v3 = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForDate];

  return [v2 indexPathForRow:1 inSection:v3];
}

- (id)_indexPathForPeopleValue
{
  v2 = MEMORY[0x1E696AC88];
  v3 = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForPeople];

  return [v2 indexPathForRow:0 inSection:v3];
}

- (id)_indexPathForLocationValue
{
  v2 = MEMORY[0x1E696AC88];
  v3 = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForLocation];

  return [v2 indexPathForRow:0 inSection:v3];
}

- (id)_indexPathForDateValue
{
  v2 = MEMORY[0x1E696AC88];
  v3 = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForDate];

  return [v2 indexPathForRow:0 inSection:v3];
}

- (int64_t)_sectionForPeople
{
  v3 = objc_opt_class();

  return [(PXContextualMemoriesSettingsTableViewController *)self _sectionForSettingOfClass:v3];
}

- (int64_t)_sectionForLocation
{
  v3 = objc_opt_class();

  return [(PXContextualMemoriesSettingsTableViewController *)self _sectionForSettingOfClass:v3];
}

- (int64_t)_sectionForDate
{
  v3 = objc_opt_class();

  return [(PXContextualMemoriesSettingsTableViewController *)self _sectionForSettingOfClass:v3];
}

- (void)_reloadRowAndRestoreSelectionIfNeededAtIndexPath:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  v20[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v15 + 1) + 8 * v13) isEqual:{v4, v15}])
        {
          v14 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
          [v14 selectRowAtIndexPath:v4 animated:0 scrollPosition:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (int64_t)_sectionForSettingOfClass:(Class)a3
{
  v4 = [(PXContextualMemoriesSettings *)self->_settings settings];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PXContextualMemoriesSettingsTableViewController__sectionForSettingOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e46_B32__0___PXContextualMemoriesSetting__8Q16_B24lu32l8;
  v7[4] = a3;
  v5 = [v4 indexOfObjectPassingTest:v7];

  return v5;
}

uint64_t __77__PXContextualMemoriesSettingsTableViewController__sectionForSettingOfClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

- (void)_updateLocationPickerHidden
{
  v11[1] = *MEMORY[0x1E69E9840];
  showsLocationPicker = self->_showsLocationPicker;
  v4 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v4 beginUpdates];

  self->_showsLocationPicker ^= 1u;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  v6 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForLocationPicker];
  v7 = v6;
  if (showsLocationPicker)
  {
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 deleteRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  else
  {
    v10 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v5 insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  v9 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v9 endUpdates];
}

- (void)_updateDatePickerHidden
{
  v11[1] = *MEMORY[0x1E69E9840];
  showsDatePicker = self->_showsDatePicker;
  v4 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v4 beginUpdates];

  self->_showsDatePicker ^= 1u;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  v6 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForDatePicker];
  v7 = v6;
  if (showsDatePicker)
  {
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 deleteRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  else
  {
    v10 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v5 insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  v9 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v9 endUpdates];
}

- (void)_tableView:(id)a3 selectionDidUpdateForRowAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForDateValue];
  v6 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForLocationValue];
  v7 = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  if ([v5 isEqual:v8])
  {
    [(PXContextualMemoriesSettingsTableViewController *)self _updateDatePickerHidden];
  }

  else if ([v6 isEqual:v8])
  {
    [(PXContextualMemoriesSettingsTableViewController *)self _updateLocationPickerHidden];
  }

  else if ([v7 isEqual:v8])
  {
    [(PXContextualMemoriesSettingsTableViewController *)self _showContactsPicker];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(PXContextualMemoriesSettingsTableViewController *)self _isDatePickerCellAtIndexPath:v5])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(PXContextualMemoriesSettingsTableViewController *)self _isLocationPickerCellAtIndexPath:v5];
  }

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXContextualMemoriesSettingsTableViewController *)self _isDatePickerCellAtIndexPath:v7])
  {
    v8 = 200.0;
  }

  else if ([(PXContextualMemoriesSettingsTableViewController *)self _isLocationPickerCellAtIndexPath:v7])
  {
    v8 = 250.0;
  }

  else
  {
    [v6 rowHeight];
    v8 = v9;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(PXContextualMemoriesSettings *)self->_settings settings];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 headerTitle];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXContextualMemoriesSettingsTableViewController *)self _isDatePickerCellAtIndexPath:v7];
  v9 = [(PXContextualMemoriesSettingsTableViewController *)self _isLocationPickerCellAtIndexPath:v7];
  if (v8)
  {
    v10 = @"PXContextualMemoriesSettingsDatePickerTableViewCell";
    v11 = @"PXContextualMemoriesSettingsDatePickerTableViewCell";
    v12 = [v6 dequeueReusableCellWithIdentifier:@"PXContextualMemoriesSettingsDatePickerTableViewCell" forIndexPath:v7];
    v13 = [v12 datePicker];
    v14 = [(PXContextualMemoriesSettings *)self->_settings timeSetting];
    v15 = [v14 date];
    [v13 setDate:v15 animated:0];

    v16 = [v12 datePicker];

    [v16 addTarget:self action:sel__didChangeDatePicker_ forControlEvents:4096];
  }

  else if (v9)
  {
    v17 = @"PXContextualMemoriesSettingsLocationPickerTableViewCell";
    v12 = [v6 dequeueReusableCellWithIdentifier:@"PXContextualMemoriesSettingsLocationPickerTableViewCell" forIndexPath:v7];
    v18 = [v12 mapView];
    [v18 setMapViewDelegate:self];
    v19 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
    [v18 addGestureRecognizer:v19];
    v20 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
    [v18 addAnnotation:v20];

    v21 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
    [v21 coordinate];
    v23 = v22;
    v25 = v24;

    v39.latitude = v23;
    v39.longitude = v25;
    if (CLLocationCoordinate2DIsValid(v39))
    {
      [(PXContextualMemoriesSettingsTableViewController *)self _regionForLocationCoordinate:v23, v25];
      [v18 setRegion:0 animated:?];
    }

    v10 = @"PXContextualMemoriesSettingsLocationPickerTableViewCell";
  }

  else
  {
    v26 = @"PXContextualMemoriesSettingsValueTableViewCell";
    v27 = [v6 dequeueReusableCellWithIdentifier:@"PXContextualMemoriesSettingsValueTableViewCell" forIndexPath:v7];
    v28 = [(PXContextualMemoriesSettings *)self->_settings settings];
    v29 = [v28 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    v12 = v27;
    v30 = [v29 title];
    v31 = [v30 length];
    if (v31)
    {
      v32 = [v29 title];
    }

    else
    {
      v32 = @" ";
    }

    v33 = [v12 valueLabel];
    [v33 setText:v32];

    if (v31)
    {
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __83__PXContextualMemoriesSettingsTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v36[3] = &unk_1E77330F0;
    v37 = v29;
    v34 = v29;
    [v12 setResetHandler:v36];
    [v12 setNeedsUpdateConstraints];
    [v12 updateConstraintsIfNeeded];

    v10 = @"PXContextualMemoriesSettingsValueTableViewCell";
  }

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(PXContextualMemoriesSettings *)self->_settings settings];
  v7 = [v6 objectAtIndexedSubscript:a4];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && self->_showsDatePicker || (objc_opt_class(), (objc_opt_isKindOfClass()) && self->_showsLocationPicker)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PXContextualMemoriesSettings *)self->_settings settings];
  v4 = [v3 count];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PXContextualMemoriesSettingsTableViewController;
  [(PXContextualMemoriesSettingsTableViewController *)&v6 viewWillAppear:a3];
  [(PXContextualMemoriesSettingsTableViewController *)self _installProgressIndicatorView];
  v4 = +[PXContextualMemoriesSettingsController sharedController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PXContextualMemoriesSettingsTableViewController_viewWillAppear___block_invoke;
  v5[3] = &unk_1E77330C8;
  v5[4] = self;
  [v4 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:v5];
}

void __66__PXContextualMemoriesSettingsTableViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 1048), a2);
  v4 = a2;
  v5 = [*(a1 + 32) progressIndicatorView];
  [v5 removeFromSuperview];

  [*(a1 + 32) setProgressIndicatorView:0];
  v6 = [*(a1 + 32) tableView];
  [v6 reloadData];

  v7 = [*(*(a1 + 32) + 1048) timeSetting];
  [v7 addObserver:*(a1 + 32) forKeyPath:@"date" options:0 context:&kPXContextualMemoriesSettingsKVOContextKeyDate];

  v8 = [*(*(a1 + 32) + 1048) locationSetting];
  [v8 addObserver:*(a1 + 32) forKeyPath:@"coordinate" options:0 context:&kPXContextualMemoriesSettingsKVOContextKeyCoordinate];

  v9 = [*(*(a1 + 32) + 1048) locationSetting];
  [v9 addObserver:*(a1 + 32) forKeyPath:@"placemark" options:0 context:&kPXContextualMemoriesSettingsKVOContextKeyPlacemark];

  v10 = [*(*(a1 + 32) + 1048) peopleSetting];
  [v10 addObserver:*(a1 + 32) forKeyPath:@"peopleNames" options:0 context:&kPXContextualMemoriesSettingsKVOContextKeyPeople];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PXContextualMemoriesSettingsTableViewController;
  [(PXContextualMemoriesSettingsTableViewController *)&v15 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Reset all" value:&stru_1F1741150 table:0];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__didPressResetAll_];
  v7 = [(PXContextualMemoriesSettingsTableViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = *MEMORY[0x1E69DE3D0];
  v9 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v9 setRowHeight:v8];

  v10 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v10 setEstimatedRowHeight:44.0];

  v11 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v11 setAllowsMultipleSelection:1];

  v12 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXContextualMemoriesSettingsValueTableViewCell"];

  v13 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v13 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXContextualMemoriesSettingsDatePickerTableViewCell"];

  v14 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXContextualMemoriesSettingsLocationPickerTableViewCell"];
}

- (void)_installProgressIndicatorView
{
  v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXContextualMemoriesSettingsTableViewController *)self setProgressIndicatorView:v27];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setText:@"Loading..."];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 setFont:v4];

  [v3 setTextAlignment:1];
  [v27 addSubview:v3];
  v5 = [v3 widthAnchor];
  v6 = [v27 widthAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v3 centerXAnchor];
  v9 = [v27 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v3 centerYAnchor];
  v12 = [v27 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(PXContextualMemoriesSettingsTableViewController *)self view];
  [v14 addSubview:v27];
  v15 = [v27 widthAnchor];
  v16 = [v14 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v27 heightAnchor];
  v19 = [v14 heightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v27 centerXAnchor];
  v22 = [v14 centerXAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v27 centerYAnchor];
  v25 = [v14 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];
}

- (void)dealloc
{
  v3 = [(PXContextualMemoriesSettings *)self->_settings timeSetting];
  [v3 removeObserver:self forKeyPath:@"date" context:&kPXContextualMemoriesSettingsKVOContextKeyDate];

  v4 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
  [v4 removeObserver:self forKeyPath:@"coordinate" context:&kPXContextualMemoriesSettingsKVOContextKeyCoordinate];

  v5 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
  [v5 removeObserver:self forKeyPath:@"placemark" context:&kPXContextualMemoriesSettingsKVOContextKeyPlacemark];

  v6 = [(PXContextualMemoriesSettings *)self->_settings peopleSetting];
  [v6 removeObserver:self forKeyPath:@"peopleNames" context:&kPXContextualMemoriesSettingsKVOContextKeyPeople];

  v7.receiver = self;
  v7.super_class = PXContextualMemoriesSettingsTableViewController;
  [(PXContextualMemoriesSettingsTableViewController *)&v7 dealloc];
}

- (PXContextualMemoriesSettingsTableViewController)init
{
  v5.receiver = self;
  v5.super_class = PXContextualMemoriesSettingsTableViewController;
  v2 = [(PXContextualMemoriesSettingsTableViewController *)&v5 initWithStyle:1];
  if (v2)
  {
    v3 = [objc_opt_class() title];
    [(PXContextualMemoriesSettingsTableViewController *)v2 setTitle:v3];
  }

  return v2;
}

+ (id)title
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Contextual Settings" value:&stru_1F1741150 table:0];

  return v3;
}

@end