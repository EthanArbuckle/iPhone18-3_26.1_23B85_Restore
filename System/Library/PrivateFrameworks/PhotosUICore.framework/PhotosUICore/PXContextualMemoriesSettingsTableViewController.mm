@interface PXContextualMemoriesSettingsTableViewController
+ (id)title;
- (BOOL)_isDatePickerCellAtIndexPath:(id)path;
- (BOOL)_isLocationPickerCellAtIndexPath:(id)path;
- (BOOL)_isPeopleValueCellAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PXContextualMemoriesSettingsTableViewController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_indexPathForDatePicker;
- (id)_indexPathForDateValue;
- (id)_indexPathForLocationPicker;
- (id)_indexPathForLocationValue;
- (id)_indexPathForPeopleValue;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_sectionForDate;
- (int64_t)_sectionForLocation;
- (int64_t)_sectionForPeople;
- (int64_t)_sectionForSettingOfClass:(Class)class;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didChangeDatePicker:(id)picker;
- (void)_didPressResetAll:(id)all;
- (void)_handleLongPress:(id)press;
- (void)_installProgressIndicatorView;
- (void)_reloadRowAndRestoreSelectionIfNeededAtIndexPath:(id)path;
- (void)_showContactsPicker;
- (void)_tableView:(id)view selectionDidUpdateForRowAtIndexPath:(id)path;
- (void)_updateDatePickerHidden;
- (void)_updateLocationPickerHidden;
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
- (void)contactPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXContextualMemoriesSettingsTableViewController

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &kPXContextualMemoriesSettingsKVOContextKeyDate)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v27 = &unk_1E774C648;
    selfCopy = self;
    goto LABEL_9;
  }

  if (context == &kPXContextualMemoriesSettingsKVOContextKeyCoordinate || context == &kPXContextualMemoriesSettingsKVOContextKeyPlacemark)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v22 = &unk_1E774C648;
    selfCopy2 = self;
    goto LABEL_9;
  }

  if (context == &kPXContextualMemoriesSettingsKVOContextKeyPeople)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __98__PXContextualMemoriesSettingsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v17 = &unk_1E774C648;
    selfCopy3 = self;
LABEL_9:
    px_dispatch_on_main_queue();
  }

  v13.receiver = self;
  v13.super_class = PXContextualMemoriesSettingsTableViewController;
  [(PXContextualMemoriesSettingsTableViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  v30 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  contactsCopy = contacts;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = contactsCopy;
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
        v14 = [v12 stringFromContact:v11 style:{0, pickerCopy}];
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

  peopleSetting = [(PXContextualMemoriesSettings *)self->_settings peopleSetting];
  [peopleSetting setPeopleNames:v6];

  _indexPathForPeopleValue = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  tableView = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:_indexPathForPeopleValue animated:1];
}

- (void)contactPickerDidCancel:(id)cancel
{
  _indexPathForPeopleValue = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  tableView = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:_indexPathForPeopleValue animated:1];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  userLocation = [viewCopy userLocation];

  if (userLocation == annotationCopy)
  {
    v9 = 0;
  }

  else
  {
    v8 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:@"pin"];
    if (v8)
    {
      v9 = v8;
      [(MKAnnotationView *)v9 setAnnotation:annotationCopy];
    }

    else
    {
      v9 = [(MKPinAnnotationView *)[PXPlacesPinAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"pin"];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactGivenNameKey(void)"];
    [currentHandler handleFailureInFunction:v17 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:40 description:{@"%s", dlerror()}];

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
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactFamilyNameKey(void)"];
    [currentHandler2 handleFailureInFunction:v19 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:39 description:{@"%s", dlerror()}];

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

- (void)_didPressResetAll:(id)all
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PXContextualMemoriesSettings *)self->_settings settings:all];
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

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    view = [pressCopy view];
    [pressCopy locationInView:view];
    [view convertPoint:view toCoordinateFromView:?];
    v6 = v5;
    v8 = v7;
    locationSetting = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
    [locationSetting setCoordinate:{v6, v8}];
  }
}

- (void)_didChangeDatePicker:(id)picker
{
  date = [picker date];
  timeSetting = [(PXContextualMemoriesSettings *)self->_settings timeSetting];
  [timeSetting setDate:date];
}

- (BOOL)_isPeopleValueCellAtIndexPath:(id)path
{
  pathCopy = path;
  _indexPathForPeopleValue = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  section = [pathCopy section];
  if (section == [_indexPathForPeopleValue section])
  {
    v7 = [pathCopy row];
    v8 = v7 == [_indexPathForPeopleValue row];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isLocationPickerCellAtIndexPath:(id)path
{
  pathCopy = path;
  _indexPathForLocationPicker = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForLocationPicker];
  section = [pathCopy section];
  if (section == [_indexPathForLocationPicker section])
  {
    v7 = [pathCopy row];
    v8 = v7 == [_indexPathForLocationPicker row];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isDatePickerCellAtIndexPath:(id)path
{
  pathCopy = path;
  _indexPathForDatePicker = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForDatePicker];
  section = [pathCopy section];
  if (section == [_indexPathForDatePicker section])
  {
    v7 = [pathCopy row];
    v8 = v7 == [_indexPathForDatePicker row];
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
  _sectionForLocation = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForLocation];

  return [v2 indexPathForRow:1 inSection:_sectionForLocation];
}

- (id)_indexPathForDatePicker
{
  v2 = MEMORY[0x1E696AC88];
  _sectionForDate = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForDate];

  return [v2 indexPathForRow:1 inSection:_sectionForDate];
}

- (id)_indexPathForPeopleValue
{
  v2 = MEMORY[0x1E696AC88];
  _sectionForPeople = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForPeople];

  return [v2 indexPathForRow:0 inSection:_sectionForPeople];
}

- (id)_indexPathForLocationValue
{
  v2 = MEMORY[0x1E696AC88];
  _sectionForLocation = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForLocation];

  return [v2 indexPathForRow:0 inSection:_sectionForLocation];
}

- (id)_indexPathForDateValue
{
  v2 = MEMORY[0x1E696AC88];
  _sectionForDate = [(PXContextualMemoriesSettingsTableViewController *)self _sectionForDate];

  return [v2 indexPathForRow:0 inSection:_sectionForDate];
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

- (void)_reloadRowAndRestoreSelectionIfNeededAtIndexPath:(id)path
{
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  tableView = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  tableView2 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  v20[0] = pathCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [tableView2 reloadRowsAtIndexPaths:v8 withRowAnimation:5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = indexPathsForSelectedRows;
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

        if ([*(*(&v15 + 1) + 8 * v13) isEqual:{pathCopy, v15}])
        {
          tableView3 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
          [tableView3 selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (int64_t)_sectionForSettingOfClass:(Class)class
{
  settings = [(PXContextualMemoriesSettings *)self->_settings settings];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PXContextualMemoriesSettingsTableViewController__sectionForSettingOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e46_B32__0___PXContextualMemoriesSetting__8Q16_B24lu32l8;
  v7[4] = class;
  v5 = [settings indexOfObjectPassingTest:v7];

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
  tableView = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView beginUpdates];

  self->_showsLocationPicker ^= 1u;
  tableView2 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  _indexPathForLocationPicker = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForLocationPicker];
  v7 = _indexPathForLocationPicker;
  if (showsLocationPicker)
  {
    v11[0] = _indexPathForLocationPicker;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [tableView2 deleteRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  else
  {
    v10 = _indexPathForLocationPicker;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [tableView2 insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  tableView3 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView3 endUpdates];
}

- (void)_updateDatePickerHidden
{
  v11[1] = *MEMORY[0x1E69E9840];
  showsDatePicker = self->_showsDatePicker;
  tableView = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView beginUpdates];

  self->_showsDatePicker ^= 1u;
  tableView2 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  _indexPathForDatePicker = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForDatePicker];
  v7 = _indexPathForDatePicker;
  if (showsDatePicker)
  {
    v11[0] = _indexPathForDatePicker;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [tableView2 deleteRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  else
  {
    v10 = _indexPathForDatePicker;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [tableView2 insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  tableView3 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView3 endUpdates];
}

- (void)_tableView:(id)view selectionDidUpdateForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _indexPathForDateValue = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForDateValue];
  _indexPathForLocationValue = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForLocationValue];
  _indexPathForPeopleValue = [(PXContextualMemoriesSettingsTableViewController *)self _indexPathForPeopleValue];
  if ([_indexPathForDateValue isEqual:pathCopy])
  {
    [(PXContextualMemoriesSettingsTableViewController *)self _updateDatePickerHidden];
  }

  else if ([_indexPathForLocationValue isEqual:pathCopy])
  {
    [(PXContextualMemoriesSettingsTableViewController *)self _updateLocationPickerHidden];
  }

  else if ([_indexPathForPeopleValue isEqual:pathCopy])
  {
    [(PXContextualMemoriesSettingsTableViewController *)self _showContactsPicker];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PXContextualMemoriesSettingsTableViewController *)self _isDatePickerCellAtIndexPath:pathCopy])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(PXContextualMemoriesSettingsTableViewController *)self _isLocationPickerCellAtIndexPath:pathCopy];
  }

  return v6;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PXContextualMemoriesSettingsTableViewController *)self _isDatePickerCellAtIndexPath:pathCopy])
  {
    v8 = 200.0;
  }

  else if ([(PXContextualMemoriesSettingsTableViewController *)self _isLocationPickerCellAtIndexPath:pathCopy])
  {
    v8 = 250.0;
  }

  else
  {
    [viewCopy rowHeight];
    v8 = v9;
  }

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  settings = [(PXContextualMemoriesSettings *)self->_settings settings];
  v6 = [settings objectAtIndexedSubscript:section];

  headerTitle = [v6 headerTitle];

  return headerTitle;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PXContextualMemoriesSettingsTableViewController *)self _isDatePickerCellAtIndexPath:pathCopy];
  v9 = [(PXContextualMemoriesSettingsTableViewController *)self _isLocationPickerCellAtIndexPath:pathCopy];
  if (v8)
  {
    v10 = @"PXContextualMemoriesSettingsDatePickerTableViewCell";
    v11 = @"PXContextualMemoriesSettingsDatePickerTableViewCell";
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PXContextualMemoriesSettingsDatePickerTableViewCell" forIndexPath:pathCopy];
    datePicker = [v12 datePicker];
    timeSetting = [(PXContextualMemoriesSettings *)self->_settings timeSetting];
    date = [timeSetting date];
    [datePicker setDate:date animated:0];

    datePicker2 = [v12 datePicker];

    [datePicker2 addTarget:self action:sel__didChangeDatePicker_ forControlEvents:4096];
  }

  else if (v9)
  {
    v17 = @"PXContextualMemoriesSettingsLocationPickerTableViewCell";
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PXContextualMemoriesSettingsLocationPickerTableViewCell" forIndexPath:pathCopy];
    mapView = [v12 mapView];
    [mapView setMapViewDelegate:self];
    v19 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
    [mapView addGestureRecognizer:v19];
    locationSetting = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
    [mapView addAnnotation:locationSetting];

    locationSetting2 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
    [locationSetting2 coordinate];
    v23 = v22;
    v25 = v24;

    v39.latitude = v23;
    v39.longitude = v25;
    if (CLLocationCoordinate2DIsValid(v39))
    {
      [(PXContextualMemoriesSettingsTableViewController *)self _regionForLocationCoordinate:v23, v25];
      [mapView setRegion:0 animated:?];
    }

    v10 = @"PXContextualMemoriesSettingsLocationPickerTableViewCell";
  }

  else
  {
    v26 = @"PXContextualMemoriesSettingsValueTableViewCell";
    v27 = [viewCopy dequeueReusableCellWithIdentifier:@"PXContextualMemoriesSettingsValueTableViewCell" forIndexPath:pathCopy];
    settings = [(PXContextualMemoriesSettings *)self->_settings settings];
    v29 = [settings objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    v12 = v27;
    title = [v29 title];
    v31 = [title length];
    if (v31)
    {
      title2 = [v29 title];
    }

    else
    {
      title2 = @" ";
    }

    valueLabel = [v12 valueLabel];
    [valueLabel setText:title2];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  settings = [(PXContextualMemoriesSettings *)self->_settings settings];
  v7 = [settings objectAtIndexedSubscript:section];

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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  settings = [(PXContextualMemoriesSettings *)self->_settings settings];
  v4 = [settings count];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PXContextualMemoriesSettingsTableViewController;
  [(PXContextualMemoriesSettingsTableViewController *)&v6 viewWillAppear:appear];
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Reset all" value:&stru_1F1741150 table:0];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__didPressResetAll_];
  navigationItem = [(PXContextualMemoriesSettingsTableViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  v8 = *MEMORY[0x1E69DE3D0];
  tableView = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView setRowHeight:v8];

  tableView2 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  tableView3 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView3 setAllowsMultipleSelection:1];

  tableView4 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXContextualMemoriesSettingsValueTableViewCell"];

  tableView5 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXContextualMemoriesSettingsDatePickerTableViewCell"];

  tableView6 = [(PXContextualMemoriesSettingsTableViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXContextualMemoriesSettingsLocationPickerTableViewCell"];
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
  widthAnchor = [v3 widthAnchor];
  widthAnchor2 = [v27 widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v7 setActive:1];

  centerXAnchor = [v3 centerXAnchor];
  centerXAnchor2 = [v27 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v10 setActive:1];

  centerYAnchor = [v3 centerYAnchor];
  centerYAnchor2 = [v27 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v13 setActive:1];

  view = [(PXContextualMemoriesSettingsTableViewController *)self view];
  [view addSubview:v27];
  widthAnchor3 = [v27 widthAnchor];
  widthAnchor4 = [view widthAnchor];
  v17 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v17 setActive:1];

  heightAnchor = [v27 heightAnchor];
  heightAnchor2 = [view heightAnchor];
  v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v20 setActive:1];

  centerXAnchor3 = [v27 centerXAnchor];
  centerXAnchor4 = [view centerXAnchor];
  v23 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v23 setActive:1];

  centerYAnchor3 = [v27 centerYAnchor];
  centerYAnchor4 = [view centerYAnchor];
  v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v26 setActive:1];
}

- (void)dealloc
{
  timeSetting = [(PXContextualMemoriesSettings *)self->_settings timeSetting];
  [timeSetting removeObserver:self forKeyPath:@"date" context:&kPXContextualMemoriesSettingsKVOContextKeyDate];

  locationSetting = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
  [locationSetting removeObserver:self forKeyPath:@"coordinate" context:&kPXContextualMemoriesSettingsKVOContextKeyCoordinate];

  locationSetting2 = [(PXContextualMemoriesSettings *)self->_settings locationSetting];
  [locationSetting2 removeObserver:self forKeyPath:@"placemark" context:&kPXContextualMemoriesSettingsKVOContextKeyPlacemark];

  peopleSetting = [(PXContextualMemoriesSettings *)self->_settings peopleSetting];
  [peopleSetting removeObserver:self forKeyPath:@"peopleNames" context:&kPXContextualMemoriesSettingsKVOContextKeyPeople];

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
    title = [objc_opt_class() title];
    [(PXContextualMemoriesSettingsTableViewController *)v2 setTitle:title];
  }

  return v2;
}

+ (id)title
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Contextual Settings" value:&stru_1F1741150 table:0];

  return v3;
}

@end