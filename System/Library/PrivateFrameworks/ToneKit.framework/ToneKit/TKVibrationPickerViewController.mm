@interface TKVibrationPickerViewController
- ($96EE1C12479E9B303E9C2794B92A11A2)_cellAccessoriesDescriptorForRowAtIndexPath:(id)a3;
- (BOOL)_showsOnlyEditableSections;
- (TKVibrationPickerViewControllerDelegate)_additionalDelegate;
- (TKVibrationPickerViewControllerDelegate)delegate;
- (TKVibrationPickerViewControllerDismissalDelegate)_dismissalDelegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_adjustedNameForVibrationWithDesiredName:(id)a3 vibrationIdentifier:(id)a4;
- (id)_customHeaderViewForHeaderInSection:(int64_t)a3;
- (id)_identifierOfVibrationAtIndexPath:(id)a3;
- (id)_indexPathForVibrationWithIdentifier:(id)a3;
- (id)_initWithAlertType:(int64_t)a3 tableViewStyle:(int64_t)a4;
- (id)_localizationIdentifierForHeaderInSection:(int64_t)a3;
- (id)_navigationItem;
- (id)_sanitizeVibrationIdentifierForPlayback:(id)a3;
- (id)_sanitizedCorrespondingToneIdentifier;
- (id)_sanitizedDefaultVibrationIdentifier;
- (id)_sortedArrayWithVibrationIdentifiers:(id)a3 allowsDuplicateVibrationNames:(BOOL)a4;
- (id)_sortedUserGeneratedVibrationIdentifiers;
- (id)_sortedVibrationIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_numberOfRowsInVibrationPickerSection:(int64_t)a3;
- (int64_t)_sectionForDefaultGroup;
- (int64_t)_sectionForNoneGroup;
- (int64_t)_sectionForSynchronizedGroup;
- (int64_t)_sectionForSystemGroup;
- (int64_t)_sectionForUserGeneratedGroup;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)_handleUserGeneratedVibrationsDidChangeNotification;
- (void)_presentVibrationRecorderViewController;
- (void)_processCurrentVibrationSelection;
- (void)_startVibratingWithVibrationIdentifier:(id)a3;
- (void)_updateCheckedStateOfAllVisibleCells;
- (void)_updateEditButtonItem;
- (void)_updateSectionVisibilityFlagToValue:(BOOL)a3 usingBlock:(id)a4 sectionIndexGetter:(id)a5;
- (void)_updateSelectionStyleForCell:(id)a3 indexPath:(id)a4;
- (void)_updateStyleOfTableView:(id)a3 forStyleProvider:(id)a4;
- (void)_updateVisibilityOfSynchronizedGroup;
- (void)dealloc;
- (void)setCorrespondingToneIdentifier:(id)a3;
- (void)setDefaultVibrationIdentifier:(id)a3;
- (void)setNoneString:(id)a3;
- (void)setSelectedVibrationIdentifier:(id)a3;
- (void)setShowsDefault:(BOOL)a3;
- (void)setShowsEditButtonInNavigationBar:(BOOL)a3;
- (void)setShowsNone:(BOOL)a3;
- (void)setShowsNothingSelected:(BOOL)a3;
- (void)setShowsUserGenerated:(BOOL)a3;
- (void)setStyleProvider:(id)a3;
- (void)setTopic:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)vibrationPickerTableViewCell:(id)a3 endedEditingWithText:(id)a4;
- (void)vibrationRecorderViewController:(id)a3 didFinishRecordingVibrationPattern:(id)a4 name:(id)a5;
- (void)vibrationRecorderViewControllerWasDismissedWithoutSavingRecordedVibrationPattern:(id)a3;
- (void)viewDidLoad;
@end

@implementation TKVibrationPickerViewController

- (id)_initWithAlertType:(int64_t)a3 tableViewStyle:(int64_t)a4
{
  v17.receiver = self;
  v17.super_class = TKVibrationPickerViewController;
  v5 = [(TKVibrationPickerViewController *)&v17 initWithStyle:a4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D71F88]);
    vibrationManager = v5->_vibrationManager;
    v5->_vibrationManager = v6;

    v8 = objc_alloc_init(TKVibratorController);
    vibratorController = v5->_vibratorController;
    v5->_vibratorController = v8;

    v5->_alertType = a3;
    v5->_showsDefault = 0;
    v10 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v5->_showsUserGenerated = [v10 hasUserGeneratedVibrationsCapability];

    v5->_showsNone = 1;
    v11 = [(TLVibrationManager *)v5->_vibrationManager currentVibrationIdentifierForAlertType:a3];
    v12 = [v11 copy];
    defaultVibrationIdentifier = v5->_defaultVibrationIdentifier;
    v5->_defaultVibrationIdentifier = v12;

    v14 = TLLocalizedString();
    [(TKVibrationPickerViewController *)v5 setTitle:v14];

    if (v5->_showsUserGenerated)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _TKVibrationPickerViewControllerHandleUserGeneratedVibrationsDidChangeNotification, *MEMORY[0x277D72078], 0, 1026);
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self->_showsUserGenerated)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D72078], 0);
  }

  [(TKVibrationPickerViewController *)self _stopVibrating];
  v4.receiver = self;
  v4.super_class = TKVibrationPickerViewController;
  [(TKVibrationPickerViewController *)&v4 dealloc];
}

- (void)setTopic:(id)a3
{
  v4 = a3;
  topic = self->_topic;
  if (topic != v4)
  {
    v8 = v4;
    topic = [topic isEqualToString:v4];
    v4 = v8;
    if ((topic & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_topic;
      self->_topic = v6;

      if (!self->_defaultVibrationIdentifierWasExplicitlySet)
      {
        [(TKVibrationPickerViewController *)self setDefaultVibrationIdentifier:0];
      }

      topic = [(TKVibrationPickerViewController *)self _updateVisibilityOfSynchronizedGroup];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](topic, v4);
}

- (void)setShowsDefault:(BOOL)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_showsDefault != a3)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __51__TKVibrationPickerViewController_setShowsDefault___block_invoke;
    v17 = &unk_278316528;
    v18 = self;
    v19 = a3;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __51__TKVibrationPickerViewController_setShowsDefault___block_invoke_2;
    v12 = &unk_278316878;
    v13 = self;
    [TKVibrationPickerViewController _updateSectionVisibilityFlagToValue:"_updateSectionVisibilityFlagToValue:usingBlock:sectionIndexGetter:" usingBlock:? sectionIndexGetter:?];
    if ([(TKVibrationPickerViewController *)self isViewLoaded])
    {
      v4 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
      v5 = [(TKVibrationPickerViewController *)self _indexPathForVibrationWithIdentifier:v4];

      if (v5)
      {
        v6 = [(TKVibrationPickerViewController *)self tableView];
        v20[0] = v5;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        [v6 reloadRowsAtIndexPaths:v7 withRowAnimation:5];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDefaultVibrationIdentifier:(id)a3
{
  v20 = a3;
  v4 = [v20 length];
  v5 = v20;
  if (!v4)
  {
    vibrationManager = self->_vibrationManager;
    v7 = [(TKVibrationPickerViewController *)self alertType];
    v8 = [(TKVibrationPickerViewController *)self topic];
    v5 = [(TLVibrationManager *)vibrationManager currentVibrationIdentifierForAlertType:v7 topic:v8];
  }

  v9 = self->_defaultVibrationIdentifier;
  v10 = v9;
  if (v9 != v5 && ![(NSString *)v9 isEqualToString:v5])
  {
    v11 = [(NSString *)v5 copy];
    defaultVibrationIdentifier = self->_defaultVibrationIdentifier;
    self->_defaultVibrationIdentifier = v11;

    self->_defaultVibrationIdentifierWasExplicitlySet = v4 != 0;
    if ([(TKVibrationPickerViewController *)self isViewLoaded])
    {
      v13 = [(TKVibrationPickerViewController *)self _sectionForDefaultGroup];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = 0;
      }

      else
      {
        v14 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v13];
      }

      v15 = MEMORY[0x277CBEA60];
      v16 = [(TKVibrationPickerViewController *)self _indexPathForVibrationWithIdentifier:v5];
      v17 = [(TKVibrationPickerViewController *)self _indexPathForVibrationWithIdentifier:v10];
      v18 = [v15 arrayWithObjects:{v16, v17, v14, 0}];

      v19 = [(TKVibrationPickerViewController *)self tableView];
      [v19 reloadRowsAtIndexPaths:v18 withRowAnimation:5];
    }
  }
}

- (void)setCorrespondingToneIdentifier:(id)a3
{
  v5 = a3;
  correspondingToneIdentifier = self->_correspondingToneIdentifier;
  v7 = v5;
  if (correspondingToneIdentifier != v5 && ![(NSString *)correspondingToneIdentifier isEqualToString:v5])
  {
    objc_storeStrong(&self->_correspondingToneIdentifier, a3);
  }

  [(TKVibrationPickerViewController *)self _updateVisibilityOfSynchronizedGroup];
}

- (void)setShowsUserGenerated:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v5 = [v4 hasUserGeneratedVibrationsCapability];

    if (self->_showsUserGenerated == v5)
    {
      return;
    }

    if (v5)
    {
      goto LABEL_8;
    }
  }

  else if (!self->_showsUserGenerated)
  {
    return;
  }

  if ([(TKVibrationPickerViewController *)self isEditing])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Hiding the user generated section of the vibration picker while in editing mode is invalid."];
  }

LABEL_8:
  [TKVibrationPickerViewController _updateSectionVisibilityFlagToValue:"_updateSectionVisibilityFlagToValue:usingBlock:sectionIndexGetter:" usingBlock:? sectionIndexGetter:?];
  sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
  self->_sortedUserGeneratedVibrationIdentifiers = 0;

  [(TKVibrationPickerViewController *)self canEnterEditingMode];
}

- (void)setShowsNone:(BOOL)a3
{
  if (self->_showsNone != a3)
  {
    [TKVibrationPickerViewController _updateSectionVisibilityFlagToValue:"_updateSectionVisibilityFlagToValue:usingBlock:sectionIndexGetter:" usingBlock:? sectionIndexGetter:?];
  }
}

- (void)setNoneString:(id)a3
{
  v4 = a3;
  noneString = self->_noneString;
  v13 = v4;
  if (noneString != v4 && ![(NSString *)noneString isEqualToString:v4])
  {
    v6 = [(NSString *)v13 copy];
    v7 = self->_noneString;
    self->_noneString = v6;
  }

  if ([(TKVibrationPickerViewController *)self isViewLoaded])
  {
    v8 = [(TKVibrationPickerViewController *)self _sectionForNoneGroup];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v8];
      v10 = [(TKVibrationPickerViewController *)self tableView];
      v11 = [v10 cellForRowAtIndexPath:v9];

      if (v11)
      {
        if (v13)
        {
          [v11 setLabelText:?];
        }

        else
        {
          v12 = [(TLVibrationManager *)self->_vibrationManager noneVibrationName];
          [v11 setLabelText:v12];
        }
      }
    }
  }
}

- (void)setShowsNothingSelected:(BOOL)a3
{
  if (self->_showsNothingSelected != a3)
  {
    self->_showsNothingSelected = a3;
    [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
  }
}

- (void)setShowsEditButtonInNavigationBar:(BOOL)a3
{
  if (self->_showsEditButtonInNavigationBar != a3)
  {
    self->_showsEditButtonInNavigationBar = a3;
    [(TKVibrationPickerViewController *)self _updateEditButtonItem];
  }
}

- (void)setSelectedVibrationIdentifier:(id)a3
{
  v4 = a3;
  selectedVibrationIdentifier = self->_selectedVibrationIdentifier;
  if (selectedVibrationIdentifier != v4)
  {
    v8 = v4;
    selectedVibrationIdentifier = [selectedVibrationIdentifier isEqualToString:v4];
    v4 = v8;
    if ((selectedVibrationIdentifier & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_selectedVibrationIdentifier;
      self->_selectedVibrationIdentifier = v6;

      selectedVibrationIdentifier = [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](selectedVibrationIdentifier, v4);
}

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    if ([(TKVibrationPickerViewController *)self isViewLoaded])
    {
      v6 = [(TKVibrationPickerViewController *)self tableView];
      [(TKVibrationPickerViewController *)self _updateStyleOfTableView:v6 forStyleProvider:v7];
      [v6 reloadData];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_updateStyleOfTableView:(id)a3 forStyleProvider:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  if ([v5 vibrationPickerUsesOpaqueBackground])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [v6 vibrationPickerCustomBackgroundColor];
    [v10 setBackgroundView:0];
  }

  else
  {
    [v10 setBackgroundView:0];
    v7 = [MEMORY[0x277D75348] clearColor];
  }

  [v10 setBackgroundColor:v7];

LABEL_7:
  [v10 setSeparatorStyle:{objc_msgSend(v6, "vibrationPickerTableViewSeparatorStyle")}];
  if (objc_opt_respondsToSelector())
  {
    v8 = UIBackdropViewOverlayBlendModeFromTKBackdropViewOverlayBlendMode([v6 vibrationPickerCustomTableSeparatorBackdropOverlayBlendMode]);
    if (v8)
    {
      [v10 _setSeparatorBackdropOverlayBlendMode:v8];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 vibrationPickerCustomTableSeparatorColor];
    if (v9)
    {
      [v10 setSeparatorColor:v9];
    }
  }

LABEL_14:
}

- (BOOL)_showsOnlyEditableSections
{
  if (self->_swipeToDeleteMode)
  {
    return 0;
  }

  else
  {
    return [(TKVibrationPickerViewController *)self isEditing];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TKVibrationPickerViewController;
  [(TKVibrationPickerViewController *)&v4 viewDidLoad];
  v3 = [(TKVibrationPickerViewController *)self tableView];
  [(TKVibrationPickerViewController *)self _updateStyleOfTableView:v3 forStyleProvider:self->_styleProvider];
}

- ($96EE1C12479E9B303E9C2794B92A11A2)_cellAccessoriesDescriptorForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];
  if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]== v5 && v6 == [(TKVibrationPickerViewController *)self _numberOfRowsInVibrationPickerSection:v5]- 1)
  {
    v7 = 0;
    v8 = 256;
  }

  else
  {
    if (self->_showsNothingSelected)
    {
      v7 = 0;
    }

    else
    {
      v9 = [(TKVibrationPickerViewController *)self _selectedVibrationIndexPath];
      v7 = [v9 isEqual:v4];
    }

    v8 = 0;
  }

  return (v8 | v7);
}

- (id)_sanitizedCorrespondingToneIdentifier
{
  v3 = self->_correspondingToneIdentifier;
  if (![(NSString *)v3 length])
  {
    v4 = [MEMORY[0x277D71F78] sharedToneManager];
    v5 = [(TKVibrationPickerViewController *)self alertType];
    v6 = [(TKVibrationPickerViewController *)self topic];
    v7 = [v4 currentToneIdentifierForAlertType:v5 topic:v6];

    v3 = v7;
  }

  return v3;
}

- (id)_sanitizedDefaultVibrationIdentifier
{
  vibrationManager = self->_vibrationManager;
  defaultVibrationIdentifier = self->_defaultVibrationIdentifier;
  v5 = [(TKVibrationPickerViewController *)self alertType];
  v6 = [(TKVibrationPickerViewController *)self topic];
  v7 = [(TLVibrationManager *)vibrationManager _sanitizeVibrationIdentifier:defaultVibrationIdentifier forAlertType:v5 topic:v6 targetDevice:0 correspondingToneIdentifier:self->_correspondingToneIdentifier didFallbackToCurrentVibrationIdentifier:0];

  return v7;
}

- (id)_sanitizeVibrationIdentifierForPlayback:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
  }

  v6 = v5;

  return v6;
}

- (id)_sortedArrayWithVibrationIdentifiers:(id)a3 allowsDuplicateVibrationNames:(BOOL)a4
{
  v4 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = [(TLVibrationManager *)self->_vibrationManager nameOfVibrationWithIdentifier:v12];
        if (v13)
        {
          if (v4)
          {
            v14 = [v7 objectForKey:v13];
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v7 setObject:v14 forKey:v13];
            }

            [v14 addObject:v12];
          }

          else
          {
            [v7 setObject:v12 forKey:v13];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v9);
  }

  v15 = [v7 allKeys];
  v16 = [v15 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = v16;
  v18 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v31);
        }

        v22 = [v7 objectForKey:*(*(&v37 + 1) + 8 * j)];
        v23 = v22;
        if (v4)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v24 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v34;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v34 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [v17 addObject:*(*(&v33 + 1) + 8 * k)];
              }

              v25 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
            }

            while (v25);
          }
        }

        else
        {
          [v17 addObject:v22];
        }
      }

      v19 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v19);
  }

  v28 = [v17 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_sortedVibrationIdentifiers
{
  sortedVibrationIdentifiers = self->_sortedVibrationIdentifiers;
  if (!sortedVibrationIdentifiers)
  {
    v4 = [(TLVibrationManager *)self->_vibrationManager allUserSelectableSystemVibrationIdentifiers];
    v5 = [(TKVibrationPickerViewController *)self _sortedArrayWithVibrationIdentifiers:v4 allowsDuplicateVibrationNames:0];
    v6 = self->_sortedVibrationIdentifiers;
    self->_sortedVibrationIdentifiers = v5;

    sortedVibrationIdentifiers = self->_sortedVibrationIdentifiers;
  }

  return sortedVibrationIdentifiers;
}

- (id)_sortedUserGeneratedVibrationIdentifiers
{
  sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
  if (!sortedUserGeneratedVibrationIdentifiers)
  {
    v4 = [(TLVibrationManager *)self->_vibrationManager allUserGeneratedVibrationIdentifiers];
    v5 = [(TKVibrationPickerViewController *)self _sortedArrayWithVibrationIdentifiers:v4 allowsDuplicateVibrationNames:1];
    v6 = self->_sortedUserGeneratedVibrationIdentifiers;
    self->_sortedUserGeneratedVibrationIdentifiers = v5;

    if ([(NSArray *)self->_sortedUserGeneratedVibrationIdentifiers count])
    {
      v7 = [(TKVibrationPickerViewController *)self showsUserGenerated];
    }

    else
    {
      v7 = 0;
    }

    if (self->_canEnterEditingMode != v7)
    {
      v8 = NSStringFromSelector(sel_canEnterEditingMode);
      [(TKVibrationPickerViewController *)self willChangeValueForKey:v8];
      self->_canEnterEditingMode = v7;
      [(TKVibrationPickerViewController *)self didChangeValueForKey:v8];
      if ([(TKVibrationPickerViewController *)self showsEditButtonInNavigationBar])
      {
        [(TKVibrationPickerViewController *)self _updateEditButtonItem];
      }

      if (!v7 && [(TKVibrationPickerViewController *)self isEditing])
      {
        [(TKVibrationPickerViewController *)self setEditing:0 animated:self->_viewHasAppearedAtLeastOnce];
      }
    }

    sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
  }

  return sortedUserGeneratedVibrationIdentifiers;
}

- (id)_identifierOfVibrationAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = [v4 section], v7 = objc_msgSend(v5, "row"), -[TKVibrationPickerViewController _sectionForDefaultGroup](self, "_sectionForDefaultGroup") == v6) && !v7)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSynchronizedGroup]== v6 && !v7)
  {
    v8 = self->_synchronizedVibrationIdentifier;
    if (self->_showsDefault || (-[TKVibrationPickerViewController _sanitizedDefaultVibrationIdentifier](self, "_sanitizedDefaultVibrationIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEqualToString:v8], v9, (v10 & 1) == 0))
    {
      v11 = v8;
      v8 = v11;
LABEL_10:
      v12 = v11;
LABEL_24:

      v8 = v12;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSystemGroup]== v6)
  {
    v8 = [(TKVibrationPickerViewController *)self _sortedVibrationIdentifiers];
    if (v7 < [(NSString *)v8 count])
    {
      v12 = [(NSString *)v8 objectAtIndex:v7];
      if (self->_showsDefault)
      {
        goto LABEL_24;
      }

      v13 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
      v14 = [v13 isEqualToString:v12];

      if (!v14)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]== v6)
  {
    v8 = [(TKVibrationPickerViewController *)self _sortedUserGeneratedVibrationIdentifiers];
    if (v7 < [(NSString *)v8 count])
    {
      v11 = [(NSString *)v8 objectAtIndex:v7];
      goto LABEL_10;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v8 = 0;
  if ([(TKVibrationPickerViewController *)self _sectionForNoneGroup]== v6 && !v7)
  {
    v8 = *MEMORY[0x277D72070];
    if (!self->_showsDefault)
    {
      v15 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
      v16 = [v15 isEqualToString:v8];

      if (v16)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_25:

  return v8;
}

- (id)_indexPathForVibrationWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length] && (-[TLVibrationManager vibrationWithIdentifierIsValid:](self->_vibrationManager, "vibrationWithIdentifierIsValid:", v4) & 1) != 0)
  {
LABEL_5:
    v7 = v4;
    vibrationManager = self->_vibrationManager;
    v9 = [(TKVibrationPickerViewController *)self alertType];
    v10 = [(TKVibrationPickerViewController *)self topic];
    v4 = [(TLVibrationManager *)vibrationManager _sanitizeVibrationIdentifier:v7 forAlertType:v9 topic:v10 targetDevice:0 correspondingToneIdentifier:self->_correspondingToneIdentifier didFallbackToCurrentVibrationIdentifier:0];

    v11 = [(TKVibrationPickerViewController *)self _sectionForSynchronizedGroup];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      if ([v4 isEqualToString:self->_synchronizedVibrationIdentifier])
      {
        v13 = MEMORY[0x277CCAA70];
        v14 = 0;
LABEL_18:
        v15 = v12;
        goto LABEL_19;
      }
    }

    if ([v4 isEqualToString:*MEMORY[0x277D72070]])
    {
      v5 = [(TKVibrationPickerViewController *)self _sectionForNoneGroup];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [(TKVibrationPickerViewController *)self _sectionForSystemGroup];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v16;
        v17 = [(TKVibrationPickerViewController *)self _sortedVibrationIdentifiers];
        v18 = [v17 indexOfObject:v4];

        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = MEMORY[0x277CCAA70];
          v14 = v18;
          goto LABEL_18;
        }
      }

      v19 = [(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v19;
        v20 = [(TKVibrationPickerViewController *)self _sortedUserGeneratedVibrationIdentifiers];
        v21 = [v20 indexOfObject:v4];

        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = MEMORY[0x277CCAA70];
          v14 = v21;
          goto LABEL_18;
        }
      }
    }

    v22 = 0;
    goto LABEL_20;
  }

  v5 = [(TKVibrationPickerViewController *)self _sectionForDefaultGroup];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];

    v4 = v6;
    goto LABEL_5;
  }

LABEL_10:
  v15 = v5;
  v13 = MEMORY[0x277CCAA70];
  v14 = 0;
LABEL_19:
  v22 = [v13 indexPathForRow:v14 inSection:v15];
LABEL_20:

  return v22;
}

- (void)_processCurrentVibrationSelection
{
  v5 = self->_selectedVibrationIdentifier;
  v3 = [(TKVibrationPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 vibrationPickerViewController:self selectedVibrationWithIdentifier:v5];
  }

  v4 = [(TKVibrationPickerViewController *)self _additionalDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 vibrationPickerViewController:self selectedVibrationWithIdentifier:v5];
  }
}

- (id)_navigationItem
{
  if (![(TKVibrationPickerViewController *)self isViewLoaded])
  {
    goto LABEL_5;
  }

  v3 = [(TKVibrationPickerViewController *)self view];
  v4 = [v3 superview];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(TKVibrationPickerViewController *)self parentViewController];
  v6 = [v5 view];

  if (v4 != v6)
  {

LABEL_5:
    v7 = [(TKVibrationPickerViewController *)self navigationItem];
    goto LABEL_6;
  }

  v7 = [v5 navigationItem];

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (void)_updateEditButtonItem
{
  if ([(TKVibrationPickerViewController *)self isViewLoaded])
  {
    viewHasAppearedAtLeastOnce = self->_viewHasAppearedAtLeastOnce;
  }

  else
  {
    viewHasAppearedAtLeastOnce = 0;
  }

  [(TKVibrationPickerViewController *)self _updateEditButtonItemWithAnimation:viewHasAppearedAtLeastOnce];
}

- (void)_updateSelectionStyleForCell:(id)a3 indexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    if ([(TKVibrationPickerViewController *)self isEditing])
    {
      if ([(TKVibrationPickerViewController *)self isViewLoaded])
      {
        v7 = [(TKVibrationPickerViewController *)self tableView];
        v11 = (v6 || ([v7 indexPathForCell:v12], (v6 = v8 = v7;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    [v12 setSelectionStyle:v11];
  }
}

- (id)_adjustedNameForVibrationWithDesiredName:(id)a3 vibrationIdentifier:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v9 = [v6 stringByTrimmingCharactersInSet:v8];

  if (![v9 length])
  {
    v10 = TLLocalizedString();

    v9 = v10;
  }

  v11 = [(TKVibrationPickerViewController *)self _sortedUserGeneratedVibrationIdentifiers];
  v12 = [v11 count];
  if (v12)
  {
    __base = malloc_type_malloc(8 * v12, 0x100004000313F17uLL);
    if (__base)
    {
      v13 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v44 = [v13 invertedSet];

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", v9];
      v43 = [v14 length];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v16)
      {
        v17 = v16;
        v38 = v11;
        v39 = v6;
        v18 = 0;
        __nel = 0;
        v42 = v15;
        v19 = *v46;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v45 + 1) + 8 * i);
            if (![v7 length] || (objc_msgSend(v21, "isEqualToString:", v7) & 1) == 0)
            {
              v22 = [(TLVibrationManager *)self->_vibrationManager nameOfVibrationWithIdentifier:v21];
              v23 = v22;
              if (v22)
              {
                if ([v22 isEqualToString:v9])
                {
                  v18 = 1;
                }

                else if ([v23 hasPrefix:v14])
                {
                  v24 = self;
                  v25 = v18;
                  v26 = v14;
                  v27 = v9;
                  v28 = [v23 stringByReplacingCharactersInRange:0 withString:{v43, &stru_282E32280}];
                  if ([v28 rangeOfCharacterFromSet:v44] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v29 = [v28 integerValue];
                    if (v29 >= 2)
                    {
                      __base[__nel++] = v29;
                    }
                  }

                  v9 = v27;
                  v14 = v26;
                  v18 = v25;
                  self = v24;
                  v15 = v42;
                }
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v17);

        v6 = v39;
        if ((v18 & 1) == 0)
        {
          v11 = v38;
LABEL_33:
          free(__base);

          goto LABEL_34;
        }

        v30 = __nel;
        if (__nel)
        {
          v31 = __base;
          qsort_b(__base, __nel, 8uLL, &__block_literal_global_1);
          v32 = 2;
          v11 = v38;
          v33 = 0x277CCA000;
          while (1)
          {
            v34 = *v31++;
            if (v32 != v34)
            {
              break;
            }

            ++v32;
            if (!--v30)
            {
              v32 = __nel + 2;
              break;
            }
          }
        }

        else
        {
          v32 = 2;
          v11 = v38;
          v33 = 0x277CCA000uLL;
        }

        v15 = [*(v33 + 3240) localizedStringWithFormat:@" %ld", v32];
        v35 = [v9 stringByAppendingString:v15];

        v9 = v35;
      }

      goto LABEL_33;
    }
  }

LABEL_34:

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __96__TKVibrationPickerViewController__adjustedNameForVibrationWithDesiredName_vibrationIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)_handleUserGeneratedVibrationsDidChangeNotification
{
  if (self->_skipNextUserGeneratedVibrationsDidChangeNotification)
  {
    self->_skipNextUserGeneratedVibrationsDidChangeNotification = 0;
  }

  else
  {
    v3 = [(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v3;
      sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
      self->_sortedUserGeneratedVibrationIdentifiers = 0;

      if ([(TKVibrationPickerViewController *)self isViewLoaded])
      {
        v6 = [(TKVibrationPickerViewController *)self tableView];
        v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:v4];
        [v6 reloadSections:v7 withRowAnimation:100];

        [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
      }
    }
  }
}

- (void)_updateSectionVisibilityFlagToValue:(BOOL)a3 usingBlock:(id)a4 sectionIndexGetter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v8[2](v8);
    v11 = v10[2](v10);
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v9[2](v9);
    v8[2](v8);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(TKVibrationPickerViewController *)self isViewLoaded])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__TKVibrationPickerViewController__updateSectionVisibilityFlagToValue_usingBlock_sectionIndexGetter___block_invoke;
    v13[3] = &unk_2783168C0;
    v14 = a3;
    v13[4] = self;
    v13[5] = v11;
    v13[6] = v12;
    [MEMORY[0x277D75D18] performWithoutAnimation:v13];
    [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
  }
}

void __101__TKVibrationPickerViewController__updateSectionVisibilityFlagToValue_usingBlock_sectionIndexGetter___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 40) == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v3 = [*(a1 + 32) tableView];
    v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(a1 + 40)];
    [v3 insertSections:v2 withRowAnimation:5];
  }

  else
  {
    if (*(a1 + 48) == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v3 = [*(a1 + 32) tableView];
    v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(a1 + 48)];
    [v3 deleteSections:v2 withRowAnimation:5];
  }
}

- (void)_updateCheckedStateOfAllVisibleCells
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(TKVibrationPickerViewController *)self isViewLoaded])
  {
    v3 = [(TKVibrationPickerViewController *)self tableView];
    v4 = [v3 indexPathsForVisibleRows];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v3 cellForRowAtIndexPath:v9];
          v11 = [(TKVibrationPickerViewController *)self _cellAccessoriesDescriptorForRowAtIndexPath:v9];
          if ((*&v11 & 0x100) == 0)
          {
            [v10 setChecked:v11.var0];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateVisibilityOfSynchronizedGroup
{
  vibrationManager = self->_vibrationManager;
  v4 = [(TKVibrationPickerViewController *)self alertType];
  v5 = [(TKVibrationPickerViewController *)self topic];
  LODWORD(vibrationManager) = [(TLVibrationManager *)vibrationManager _areSynchronizedVibrationsAllowedForAlertType:v4 topic:v5];

  if (vibrationManager)
  {
    v6 = self->_vibrationManager;
    v7 = [(TKVibrationPickerViewController *)self _sanitizedCorrespondingToneIdentifier];
    v8 = [(TLVibrationManager *)v6 _synchronizedVibrationIdentifierForToneIdentifier:v7 targetDevice:0];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (self->_showsSynchronized != v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__TKVibrationPickerViewController__updateVisibilityOfSynchronizedGroup__block_invoke;
    v11[3] = &unk_2783168E8;
    v11[4] = self;
    v13 = v9;
    v12 = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__TKVibrationPickerViewController__updateVisibilityOfSynchronizedGroup__block_invoke_2;
    v10[3] = &unk_278316878;
    v10[4] = self;
    [(TKVibrationPickerViewController *)self _updateSectionVisibilityFlagToValue:v9 usingBlock:v11 sectionIndexGetter:v10];
  }
}

uint64_t __71__TKVibrationPickerViewController__updateVisibilityOfSynchronizedGroup__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1070) = *(a1 + 48);
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1072);
  *(v3 + 1072) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)_localizationIdentifierForHeaderInSection:(int64_t)a3
{
  if ([(TKVibrationPickerViewController *)self _sectionForDefaultGroup]== a3)
  {
    return @"VIBRATION_PICKER_GROUP_TITLE_DEFAULT";
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSynchronizedGroup]== a3)
  {
    return 0;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSystemGroup]== a3)
  {
    return @"VIBRATION_PICKER_GROUP_TITLE_STANDARD";
  }

  if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]== a3)
  {
    return @"VIBRATION_PICKER_GROUP_TITLE_USER_GENERATED";
  }

  return 0;
}

- (id)_customHeaderViewForHeaderInSection:(int64_t)a3
{
  v4 = [(TKVibrationPickerViewController *)self _localizationIdentifierForHeaderInSection:a3];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [(NSMutableDictionary *)self->_sectionHeaderViews objectForKey:v4];
  if (v5)
  {
    goto LABEL_11;
  }

  if ([(TKVibrationPickerStyleProvider *)self->_styleProvider wantsCustomVibrationPickerHeaderView])
  {
    v6 = TLLocalizedString();
    v5 = objc_alloc_init(TKLabelContainerView);
    v7 = v6;
    styleProvider = self->_styleProvider;
    v9 = v7;
    if (objc_opt_respondsToSelector())
    {
      v9 = v7;
      if ([(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerHeaderTextShouldBeUppercase])
      {
        v10 = [MEMORY[0x277CBEAF8] currentLocale];
        v9 = [v7 uppercaseStringWithLocale:v10];
      }
    }

    [(TKLabelContainerView *)v5 setLabelText:v9];
    v11 = [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerHeaderTextFont];
    [(TKLabelContainerView *)v5 setLabelFont:v11];

    v12 = [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerHeaderTextColor];
    [(TKLabelContainerView *)v5 setLabelTextColor:v12];

    v13 = [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerHeaderTextShadowColor];
    [(TKLabelContainerView *)v5 setLabelShadowColor:v13];

    [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerHeaderTextShadowOffset];
    [(TKLabelContainerView *)v5 setLabelShadowOffset:?];
    [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerHeaderTextPaddingInsets];
    [(TKLabelContainerView *)v5 setLabelPaddingInsets:?];
    sectionHeaderViews = self->_sectionHeaderViews;
    if (!sectionHeaderViews)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = self->_sectionHeaderViews;
      self->_sectionHeaderViews = v15;

      sectionHeaderViews = self->_sectionHeaderViews;
    }

    [(NSMutableDictionary *)sectionHeaderViews setObject:v5 forKey:v4];
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (int64_t)_sectionForDefaultGroup
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (self->_showsDefault && ![(TKVibrationPickerViewController *)self _showsOnlyEditableSections])
  {
    return 0;
  }

  return v2;
}

- (int64_t)_sectionForSynchronizedGroup
{
  if (!self->_showsSynchronized)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(TKVibrationPickerViewController *)self _showsOnlyEditableSections])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_showsDefault)
  {
    return [(TKVibrationPickerViewController *)self _sectionForDefaultGroup]+ 1;
  }

  return 0;
}

- (int64_t)_sectionForSystemGroup
{
  if ([(TKVibrationPickerViewController *)self _showsOnlyEditableSections])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!self->_showsSynchronized || (result = [(TKVibrationPickerViewController *)self _sectionForSynchronizedGroup]+ 1, result == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (self->_showsDefault)
    {
      return [(TKVibrationPickerViewController *)self _sectionForDefaultGroup]+ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_sectionForUserGeneratedGroup
{
  if (!self->_showsUserGenerated)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(TKVibrationPickerViewController *)self _showsOnlyEditableSections])
  {
    return 0;
  }

  return [(TKVibrationPickerViewController *)self _sectionForSystemGroup]+ 1;
}

- (int64_t)_sectionForNoneGroup
{
  if (!self->_showsNone)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(TKVibrationPickerViewController *)self _showsOnlyEditableSections])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_showsUserGenerated)
  {
    v4 = [(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup];
  }

  else
  {
    v4 = [(TKVibrationPickerViewController *)self _sectionForSystemGroup];
  }

  return v4 + 1;
}

- (int64_t)_numberOfRowsInVibrationPickerSection:(int64_t)a3
{
  if ([(TKVibrationPickerViewController *)self _sectionForDefaultGroup]== a3 || [(TKVibrationPickerViewController *)self _sectionForSynchronizedGroup]== a3)
  {
    return 1;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSystemGroup]!= a3)
  {
    if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]!= a3)
    {
      return [(TKVibrationPickerViewController *)self _sectionForNoneGroup]== a3;
    }

    v9 = [(TKVibrationPickerViewController *)self _sortedUserGeneratedVibrationIdentifiers];
    v5 = [v9 count] + 1;

    return v5;
  }

  v7 = [(TKVibrationPickerViewController *)self _sortedVibrationIdentifiers];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TKVibrationPickerViewController *)self _cellAccessoriesDescriptorForRowAtIndexPath:v7];
  v9 = @"_TLVibrationPickerViewTableCellWithDisclosureIndicatorIdentifier";
  if ((*&v8 & 0x100) == 0)
  {
    v9 = @"_TLVibrationPickerViewTableCellDefaultIdentifier";
  }

  v10 = v9;
  v11 = [v6 dequeueReusableCellWithIdentifier:v10];
  if (!v11)
  {
    v11 = [[TKVibrationPickerTableViewCell alloc] initWithReuseIdentifier:v10];
    [(TKVibrationPickerTableViewCell *)v11 setDelegate:self];
    if ((*&v8 & 0x100) != 0)
    {
      [(TKVibrationPickerTableViewCell *)v11 setAccessoryType:1];
      [(TKVibrationPickerTableViewCell *)v11 setEditingAccessoryType:1];
    }

    styleProvider = self->_styleProvider;
    if (styleProvider)
    {
      v13 = [(TKVibrationPickerStyleProvider *)styleProvider vibrationPickerCellTextFont];
      [(TKVibrationPickerTableViewCell *)v11 setRegularTextFont:v13];

      v14 = [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerCellTextColor];
      [(TKVibrationPickerTableViewCell *)v11 setRegularTextColor:v14];

      v15 = [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerCellHighlightedTextColor];
      [(TKVibrationPickerTableViewCell *)v11 setHighlightedTextColor:v15];

      v16 = [(TKVibrationPickerStyleProvider *)self->_styleProvider vibrationPickerCellBackgroundColor];
      [(TKVibrationPickerTableViewCell *)v11 setBackgroundColor:v16];

      v17 = [(TKVibrationPickerStyleProvider *)self->_styleProvider newBackgroundViewForSelectedVibrationPickerCell:0];
      if (v17)
      {
        [(TKVibrationPickerTableViewCell *)v11 setBackgroundView:v17];
      }

      v18 = [(TKVibrationPickerStyleProvider *)self->_styleProvider newBackgroundViewForSelectedVibrationPickerCell:1];
      if (v18)
      {
        [(TKVibrationPickerTableViewCell *)v11 setSelectedBackgroundView:v18];
      }

      if ((*&v8 & 0x100) != 0)
      {
        [(TKVibrationPickerTableViewCell *)v11 setAccessoryType:1];
        [(TKVibrationPickerTableViewCell *)v11 setEditingAccessoryType:1];
        v19 = [(TKVibrationPickerStyleProvider *)self->_styleProvider newAccessoryDisclosureIndicatorViewForVibrationPickerCell];
        if (v19)
        {
          [(TKVibrationPickerTableViewCell *)v11 setAccessoryView:v19];
        }

        v20 = [(TKVibrationPickerStyleProvider *)self->_styleProvider newAccessoryDisclosureIndicatorViewForVibrationPickerCell];
        if (v20)
        {
          [(TKVibrationPickerTableViewCell *)v11 setEditingAccessoryView:v20];
        }
      }
    }
  }

  v21 = [v7 section];
  v22 = [v7 row];
  if ([(TKVibrationPickerViewController *)self _sectionForDefaultGroup]== v21)
  {
    if (!v22)
    {
      vibrationManager = self->_vibrationManager;
      v24 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
      v25 = [(TLVibrationManager *)vibrationManager nameOfVibrationWithIdentifier:v24];
LABEL_21:

LABEL_22:
      v26 = 0;
LABEL_41:
      v27 = 0;
      goto LABEL_42;
    }

LABEL_25:
    v26 = 0;
    v27 = 0;
    v25 = 0;
    goto LABEL_42;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSynchronizedGroup]== v21)
  {
    if (v22)
    {
      goto LABEL_25;
    }

    v24 = self->_synchronizedVibrationIdentifier;
    v25 = [(TLVibrationManager *)self->_vibrationManager nameOfVibrationWithIdentifier:v24];
    if (self->_showsDefault)
    {
      goto LABEL_21;
    }

    v34 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
    v35 = [v34 isEqualToString:v24];

    v26 = 0;
    if ((v35 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_53;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForSystemGroup]== v21)
  {
    v28 = [(TKVibrationPickerViewController *)self _sortedVibrationIdentifiers];
    if (v22 >= [v28 count])
    {
      v26 = 0;
      v25 = 0;
    }

    else
    {
      v26 = [v28 objectAtIndex:v22];
      v25 = [(TLVibrationManager *)self->_vibrationManager nameOfVibrationWithIdentifier:v26];
      if (!self->_showsDefault)
      {
        v29 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
        v44 = [v29 isEqualToString:v26];

        if ((v44 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_53:
        v40 = MEMORY[0x277CCACA8];
        v41 = TLLocalizedString();
        v42 = [v40 stringWithFormat:@"%@ (%@)", v25, v41];

        v27 = 0;
        v25 = v42;
        goto LABEL_42;
      }
    }

    goto LABEL_41;
  }

  if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]== v21)
  {
    v30 = [(TKVibrationPickerViewController *)self tableView:v6 numberOfRowsInSection:v21]- 1;
    if (v22 >= v30)
    {
      if (v22 == v30)
      {
        v25 = TLLocalizedString();
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    v31 = [(TKVibrationPickerViewController *)self _sortedUserGeneratedVibrationIdentifiers];
    v32 = [v31 count];
    v27 = v22 < v32;
    if (v22 < v32)
    {
      v26 = [v31 objectAtIndex:v22];
      v33 = [(TLVibrationManager *)self->_vibrationManager nameOfVibrationWithIdentifier:v26];
      v43 = v31;
      v25 = v33;
    }

    else
    {
      v26 = 0;
      v43 = v31;
      v25 = 0;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
    if ([(TKVibrationPickerViewController *)self _sectionForNoneGroup]== v21)
    {
      v25 = 0;
      if (v22)
      {
        goto LABEL_42;
      }

      v25 = [(TKVibrationPickerViewController *)self noneString];
      if (!v25)
      {
        v25 = [(TLVibrationManager *)self->_vibrationManager noneVibrationName];
      }

      if (self->_showsDefault)
      {
        goto LABEL_22;
      }

      v38 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
      v39 = [v38 isEqualToString:*MEMORY[0x277D72070]];

      v26 = 0;
      if (!v39)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    }

    v25 = 0;
  }

LABEL_42:
  [(TKVibrationPickerTableViewCell *)v11 setEditable:v27];
  [(TKVibrationPickerTableViewCell *)v11 setLabelText:v25];
  v36 = TLLocalizedString();
  [(TKVibrationPickerTableViewCell *)v11 setPlaceholderText:v36];

  if ((*&v8 & 0x100) == 0)
  {
    [(TKVibrationPickerTableViewCell *)v11 setChecked:v8.var0];
  }

  [(TKVibrationPickerViewController *)self _updateSelectionStyleForCell:v11 indexPath:v7];

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(TKVibrationPickerViewController *)self _showsOnlyEditableSections];
  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  if (self->_showsDefault)
  {
    v6 = v5;
  }

  else
  {
    v6 = !v4;
  }

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (self->_showsSynchronized)
  {
    v6 = v7;
  }

  return v6 + self->_showsUserGenerated + (self->_showsNone && !v4);
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = [(TKVibrationPickerViewController *)self _identifierOfVibrationAtIndexPath:v9];
    if ([v10 length])
    {
      v11 = [(TKVibrationPickerViewController *)self _selectedVibrationIndexPath];
      self->_skipNextUserGeneratedVibrationsDidChangeNotification = 1;
      vibrationManager = self->_vibrationManager;
      v22 = 0;
      v13 = [(TLVibrationManager *)vibrationManager deleteUserGeneratedVibrationPatternWithIdentifier:v10 error:&v22];
      v14 = v22;
      v15 = v14;
      if ((v13 & 1) == 0 && v14)
      {
        [(TKVibrationPickerViewController *)self _handleError:v14];
      }

      v16 = [v11 isEqual:v9];
      if (v16)
      {
        selectedVibrationIdentifier = self->_selectedVibrationIdentifier;
        self->_selectedVibrationIdentifier = 0;
      }

      sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
      self->_sortedUserGeneratedVibrationIdentifiers = 0;

      objc_storeStrong(&self->_indexPathOfCellBeingDeleted, a5);
      [v8 beginUpdates];
      [(TKVibrationPickerViewController *)self canEnterEditingMode];
      v23[0] = v9;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [v8 deleteRowsAtIndexPaths:v19 withRowAnimation:100];

      [v8 endUpdates];
      [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
      indexPathOfCellBeingDeleted = self->_indexPathOfCellBeingDeleted;
      self->_indexPathOfCellBeingDeleted = 0;

      if (v16)
      {
        [(TKVibrationPickerViewController *)self _processCurrentVibrationSelection];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(TKVibrationPickerStyleProvider *)self->_styleProvider wantsCustomVibrationPickerHeaderView])
  {
    v6 = [(TKVibrationPickerViewController *)self _customHeaderViewForHeaderInSection:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (([(TKVibrationPickerStyleProvider *)self->_styleProvider wantsCustomVibrationPickerHeaderView]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(TKVibrationPickerViewController *)self _localizationIdentifierForHeaderInSection:a4];
    v6 = TLLocalizedString();
  }

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(TKVibrationPickerStyleProvider *)self->_styleProvider wantsCustomVibrationPickerHeaderView])
  {
    v7 = [(TKVibrationPickerViewController *)self tableView:v6 viewForHeaderInSection:a4];
    v8 = v7;
    if (v7)
    {
      [v7 sizeToFit];
      [v8 frame];
      Height = CGRectGetHeight(v11);
    }

    else
    {
      Height = 0.0;
    }
  }

  else
  {
    Height = *MEMORY[0x277D76F30];
  }

  return Height;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ([(TKVibrationPickerViewController *)self isEditing])
  {
    v9 = [v7 section];
    v10 = [v7 row];
    if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]!= v9 || (v11 = [(TKVibrationPickerViewController *)self tableView:v6 numberOfRowsInSection:v9], v8 = v7, v10 != v11 - 1))
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [v7 row];
  v10 = [(TKVibrationPickerViewController *)self isEditing];
  if ([(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup]== v8 && v9 == [(TKVibrationPickerViewController *)self tableView:v6 numberOfRowsInSection:v8]- 1)
  {
    if (v10)
    {
      v11 = [v6 visibleCells];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          v15 = 0;
          do
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v26 + 1) + 8 * v15++) makeTextFieldResignFirstResponderIfNeeded];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }
    }

    [(TKVibrationPickerViewController *)self _stopVibrating];
    v16 = [[TKVibrationRecorderViewController alloc] initWithVibratorController:self->_vibratorController];
    [(TKVibrationRecorderViewController *)v16 setVibrationRecorderViewControllerDelegate:self];
    [(TKVibrationRecorderViewController *)v16 setDelegate:self];
    [(TKVibrationRecorderViewController *)v16 setModalPresentationStyle:0];
    [(TKVibrationPickerViewController *)self presentViewController:v16 animated:1 completion:0];
    [v6 deselectRowAtIndexPath:v7 animated:1];
    goto LABEL_29;
  }

  if ((v10 & 1) == 0)
  {
    self->_showsNothingSelected = 0;
    v16 = self->_selectedVibrationIdentifier;
    v17 = [(TKVibrationPickerViewController *)self _identifierOfVibrationAtIndexPath:v7];
    v18 = [(TKVibrationPickerViewController *)self _sanitizeVibrationIdentifierForPlayback:v17];
    if ([(TKVibrationRecorderViewController *)v18 isEqualToString:*MEMORY[0x277D72070]])
    {
      [(TKVibrationPickerViewController *)self _stopVibrating];
      goto LABEL_24;
    }

    v19 = [(TKVibrationPickerViewController *)self _sanitizeVibrationIdentifierForPlayback:v16];
    v20 = v19;
    if (v19 == v18 || ([(TKVibrationRecorderViewController *)v19 isEqualToString:v18]& 1) != 0)
    {
      if ([(TKVibratorController *)self->_vibratorController vibratorState]== 1)
      {
        [(TKVibrationPickerViewController *)self _stopVibrating];
LABEL_23:

LABEL_24:
        if (v16 == v17 || ([(TKVibrationRecorderViewController *)v16 isEqualToString:v17]& 1) != 0)
        {
          [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
          [v6 deselectRowAtIndexPath:v7 animated:1];
        }

        else
        {
          v23 = [(TKVibrationRecorderViewController *)v17 copy];
          selectedVibrationIdentifier = self->_selectedVibrationIdentifier;
          self->_selectedVibrationIdentifier = v23;

          [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
          [v6 deselectRowAtIndexPath:v7 animated:1];
          [(TKVibrationPickerViewController *)self _processCurrentVibrationSelection];
        }

LABEL_29:
        goto LABEL_30;
      }

      v21 = self;
      v22 = v17;
    }

    else
    {
      v21 = self;
      v22 = v18;
    }

    [(TKVibrationPickerViewController *)v21 _startVibratingWithVibrationIdentifier:v22];
    goto LABEL_23;
  }

LABEL_30:

  v25 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == -[TKVibrationPickerViewController _sectionForUserGeneratedGroup](self, "_sectionForUserGeneratedGroup") && (v9 = [v7 row], v9 < -[TKVibrationPickerViewController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v6, v8) - 1))
  {
    if (self->_allowsDeletingDefaultVibration)
    {
      v10 = 1;
    }

    else
    {
      v12 = [(TKVibrationPickerViewController *)self _identifierOfVibrationAtIndexPath:v7];
      v13 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];
      v14 = [v12 isEqualToString:v13];

      v10 = v14 ^ 1u;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)vibrationRecorderViewController:(id)a3 didFinishRecordingVibrationPattern:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(TKVibrationPickerViewController *)self _adjustedNameForVibrationWithDesiredName:v10 vibrationIdentifier:0];
    v12 = v11;
    if (v9 && v11)
    {
      self->_skipNextUserGeneratedVibrationsDidChangeNotification = 1;
      vibrationManager = self->_vibrationManager;
      v22 = 0;
      v14 = [(TLVibrationManager *)vibrationManager addUserGeneratedVibrationPattern:v9 name:v12 error:&v22];
      v15 = v22;
      if ([v14 length])
      {
        sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
        self->_sortedUserGeneratedVibrationIdentifiers = 0;

        v17 = [v14 copy];
        selectedVibrationIdentifier = self->_selectedVibrationIdentifier;
        self->_selectedVibrationIdentifier = v17;

        [(TKVibrationPickerViewController *)self _processCurrentVibrationSelection];
        v19 = [(TKVibrationPickerViewController *)self _indexPathForVibrationWithIdentifier:v14];
        v20 = [(TKVibrationPickerViewController *)self tableView];
        [v20 beginUpdates];
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:{v19, 0}];
        [v20 insertRowsAtIndexPaths:v21 withRowAnimation:4];

        [v20 endUpdates];
        [(TKVibrationPickerViewController *)self _updateCheckedStateOfAllVisibleCells];
      }

      else if (v15)
      {
        [(TKVibrationPickerViewController *)self _handleError:v15];
      }
    }
  }

  else
  {
    v12 = 0;
  }
}

- (void)vibrationRecorderViewControllerWasDismissedWithoutSavingRecordedVibrationPattern:(id)a3
{
  v4 = [(TKVibrationPickerViewController *)self tableView];
  v3 = [v4 indexPathForSelectedRow];
  if (v3)
  {
    [v4 deselectRowAtIndexPath:v3 animated:1];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = [(TKVibrationPickerViewController *)self parentViewController];
  if (!v3)
  {
    return 30;
  }

  v4 = v3;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v5 = [v4 parentViewController];

    v4 = v5;
    if (!v5)
    {
      return 30;
    }
  }

  v7 = [v4 supportedInterfaceOrientations];

  return v7;
}

- (void)_startVibratingWithVibrationIdentifier:(id)a3
{
  v4 = a3;
  if ([(TKVibratorController *)self->_vibratorController vibratorState]== 1)
  {
    [(TKVibrationPickerViewController *)self _stopVibrating];
    v5 = dispatch_time(0, 200000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__TKVibrationPickerViewController__startVibratingWithVibrationIdentifier___block_invoke;
    v8[3] = &unk_2783165C8;
    v8[4] = self;
    v4 = v4;
    v9 = v4;
    dispatch_after(v5, MEMORY[0x277D85CD0], v8);
  }

  else
  {
    if (![v4 length])
    {
      v6 = [(TKVibrationPickerViewController *)self _sanitizedDefaultVibrationIdentifier];

      v4 = v6;
    }

    [(TKVibrationPickerViewController *)self _stopVibrating];
    v7 = [(TLVibrationManager *)self->_vibrationManager patternForVibrationWithIdentifier:v4];
    [(TKVibratorController *)self->_vibratorController turnOnWithVibrationPattern:v7];
  }
}

- (void)vibrationPickerTableViewCell:(id)a3 endedEditingWithText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TKVibrationPickerViewController *)self tableView];
  v9 = [v8 indexPathForCell:v6];
  if (v9)
  {
    v10 = [(TKVibrationPickerViewController *)self _identifierOfVibrationAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TKVibrationPickerViewController *)self _adjustedNameForVibrationWithDesiredName:v7 vibrationIdentifier:v10];
  if (v11 && ([(NSIndexPath *)self->_indexPathOfCellBeingDeleted isEqual:v9]& 1) == 0)
  {
    [v6 setLabelText:v11];
    if ([v10 length])
    {
      v12 = [(TLVibrationManager *)self->_vibrationManager nameOfVibrationWithIdentifier:v10];
      v24 = v11;
      v13 = v12;
      if (v13)
      {
        v14 = v13;
        v15 = v24;
        if (v24 == v13)
        {

LABEL_20:
LABEL_21:

          goto LABEL_22;
        }

        v23 = [v24 isEqualToString:v13];

        if (v23)
        {
          goto LABEL_21;
        }

LABEL_13:
        self->_skipNextUserGeneratedVibrationsDidChangeNotification = 1;
        vibrationManager = self->_vibrationManager;
        v25 = 0;
        v18 = [(TLVibrationManager *)vibrationManager setName:v11 forUserGeneratedVibrationWithIdentifier:v10 error:&v25];
        v19 = v25;
        v15 = v19;
        if ((v18 & 1) == 0 && v19)
        {
          [(TKVibrationPickerViewController *)self _handleError:v19];
        }

        sortedUserGeneratedVibrationIdentifiers = self->_sortedUserGeneratedVibrationIdentifiers;
        self->_sortedUserGeneratedVibrationIdentifiers = 0;

        v21 = [(TKVibrationPickerViewController *)self _indexPathForVibrationWithIdentifier:v10];
        v22 = v21;
        if (v21 && ([v21 isEqual:v9] & 1) == 0)
        {
          [v8 beginUpdates];
          [v8 moveRowAtIndexPath:v9 toIndexPath:v22];
          [v8 endUpdates];
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = v11;
    }

    v14 = 0;
    goto LABEL_13;
  }

LABEL_22:
}

- (void)_presentVibrationRecorderViewController
{
  v3 = [(TKVibrationPickerViewController *)self _sectionForUserGeneratedGroup];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v7 = [(TKVibrationPickerViewController *)self tableView];
    v5 = [(TKVibrationPickerViewController *)self tableView:v7 numberOfRowsInSection:v4];
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:v5 - 1 inSection:v4];
    [(TKVibrationPickerViewController *)self tableView:v7 didSelectRowAtIndexPath:v6];
  }
}

void __55__TKVibrationPickerViewController_setEditing_animated___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 viewControllers];

  if ([v3 count] >= 2)
  {
    v4 = [v3 lastObject];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      v6 = [*(a1 + 32) _navigationItem];
      v7 = v6;
      if (*(a1 + 40) == 1)
      {
        v8 = *(*(a1 + 32) + 1067) ^ 1;
      }

      else
      {
        v8 = 0;
      }

      [v6 setHidesBackButton:v8 & 1 animated:*(a1 + 41)];
    }
  }

  if (![*(a1 + 32) isViewLoaded] || (v9 = *(a1 + 32), (v9[1067] & 1) != 0))
  {
    v10 = 0;
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v10 = [v9 tableView];
  v38 = [v10 visibleCells];
  v39 = [v38 copy];

  if ((*(a1 + 40) & 1) == 0)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v39;
    v41 = [v40 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v52;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v52 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [*(*(&v51 + 1) + 8 * i) makeTextFieldResignFirstResponderIfNeeded];
        }

        v42 = [v40 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v42);
    }
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  [v10 beginUpdates];
  v11 = 0;
LABEL_11:
  if (*(a1 + 40) == 1)
  {
    v12 = [*(a1 + 32) _sectionForDefaultGroup];
    v13 = [*(a1 + 32) _sectionForSynchronizedGroup];
    v14 = [*(a1 + 32) _sectionForSystemGroup];
    v15 = [*(a1 + 32) _sectionForNoneGroup];
    v16 = *(a1 + 40);
    v17 = *(a1 + 41);
    v50.receiver = *(a1 + 32);
    v50.super_class = TKVibrationPickerViewController;
    objc_msgSendSuper2(&v50, sel_setEditing_animated_, v16, v17);
    if ((v11 & 1) == 0)
    {
      v18 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v19 = v18;
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v18 addIndex:v12];
      }

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addIndex:v13];
      }

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addIndex:v14];
      }

      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addIndex:v15];
      }

      if ([v19 count])
      {
        [v10 deleteSections:v19 withRowAnimation:0];
      }
    }

    [*(a1 + 32) _stopVibrating];
    if (v11)
    {
      goto LABEL_47;
    }

LABEL_39:
    [v10 endUpdates];
    v27 = [v10 visibleCells];
    v28 = [v27 copy];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v45 + 1) + 8 * j);
          v35 = *(a1 + 32);
          v36 = [v10 indexPathForCell:{v34, v45}];
          [v35 _updateSelectionStyleForCell:v34 indexPath:v36];
        }

        v31 = [v29 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v31);
    }

    goto LABEL_47;
  }

  v20 = *(a1 + 41);
  v49.receiver = *(a1 + 32);
  v49.super_class = TKVibrationPickerViewController;
  objc_msgSendSuper2(&v49, sel_setEditing_animated_, 0, v20);
  if ((v11 & 1) == 0)
  {
    v21 = [*(a1 + 32) _sectionForDefaultGroup];
    v22 = [*(a1 + 32) _sectionForSynchronizedGroup];
    v23 = [*(a1 + 32) _sectionForSystemGroup];
    v24 = [*(a1 + 32) _sectionForNoneGroup];
    v25 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v26 = v25;
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v25 addIndex:v21];
    }

    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v26 addIndex:v22];
    }

    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v26 addIndex:v23];
    }

    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v26 addIndex:v24];
    }

    if ([v26 count])
    {
      [v10 insertSections:v26 withRowAnimation:0];
    }
  }

  *(*(a1 + 32) + 1067) = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_47:

  v37 = *MEMORY[0x277D85DE8];
}

- (TKVibrationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TKVibrationPickerViewControllerDelegate)_additionalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__additionalDelegate);

  return WeakRetained;
}

- (TKVibrationPickerViewControllerDismissalDelegate)_dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__dismissalDelegate);

  return WeakRetained;
}

@end