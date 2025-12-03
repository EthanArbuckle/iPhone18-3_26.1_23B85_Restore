@interface PSPhotoServicesAuthorizationLevelController
- (id)_limitedLibrarySectionSpecifiers;
- (id)_locationSetting:(id)setting;
- (id)_parentTCCSpecifiers;
- (id)_pickerUsageSectionSpecifiers;
- (id)footerStringForSpecifiers:(id)specifiers;
- (id)specifiers;
- (unint64_t)_currentTCCAuthorizationRight;
- (void)_addLimitedLibrarySection;
- (void)_addPickerUsageSectionIfNeeded;
- (void)_handleUpgradePromptNotification:(id)notification;
- (void)_presentImagePickerForModifyingSelection;
- (void)_removeLimitedLibrarySectionIfPresent;
- (void)_removePickerUsageSectionIfPresent;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PSPhotoServicesAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSPhotoServicesAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PUIPhotosPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PUIPhotosPrivacyUpgradePromptAppIdentifierKey"];
  v6 = [v5 isEqualToString:self->_clientIdentifier];

  if (v6)
  {
    v7 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PSPhotoServicesAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_1E71DBE20;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }
}

- (id)_parentTCCSpecifiers
{
  v45 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PSPhotoServicesAuthorizationLevelController;
  specifiers = [(PSListItemsController *)&v42 specifiers];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(specifiers, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = specifiers;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v6 = *v39;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        if (v8[7] == 3)
        {
          identifier = [v8 identifier];
          intValue = [identifier intValue];

          if (intValue == 4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (!v12)
  {
    goto LABEL_44;
  }

  v13 = v12;
  v14 = *v35;
  v15 = v5 ^ 1;
  v32 = v3;
  do
  {
    v16 = 0;
    do
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v34 + 1) + 8 * v16);
      identifier2 = [v17 identifier];
      intValue2 = [identifier2 intValue];

      v20 = v17[7];
      if (v20 != 3 || intValue2 != 4)
      {
        if (v20 == 3)
        {
          v22 = v15;
        }

        else
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0 && !intValue2)
        {
          limitedLibraryRowSpecifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 4];
          [v17 setIdentifier:limitedLibraryRowSpecifier];
          goto LABEL_27;
        }

        if (v20 == 3 && (intValue2 & 0xFFFFFFFE) == 2)
        {
          [v17 setProperty:objc_opt_class() forKey:@"cellClass"];
          v25 = PhotosUICoreLibraryCore();
          if (intValue2 == 2)
          {
            if (!v25 || !getPXTCCSettingsFullAccessSubtitleSymbolLoc())
            {
              goto LABEL_32;
            }

            PXTCCSettingsFullAccessSubtitleSymbolLoc = getPXTCCSettingsFullAccessSubtitleSymbolLoc();
            if (!PXTCCSettingsFullAccessSubtitleSymbolLoc)
            {
              [PSContactsAuthorizationLevelController dealloc];
            }

            limitedLibraryRowSpecifier = PXTCCSettingsFullAccessSubtitleSymbolLoc();
            [v17 setProperty:limitedLibraryRowSpecifier forKey:@"cellSubtitleText"];
          }

          else
          {
            if (!v25 || !getPXTCCSettingsLimitedAccessSubtitleSymbolLoc())
            {
              goto LABEL_32;
            }

            v27 = PSPXTCCSettingsLimitedAccessSubtitle(self->_clientIdentifier);
            [v17 setProperty:v27 forKey:@"cellSubtitleText"];

            v28 = v17;
            limitedLibraryRowSpecifier = self->_limitedLibraryRowSpecifier;
            self->_limitedLibraryRowSpecifier = v28;
            v3 = v32;
          }

LABEL_27:
        }

LABEL_32:
        [v3 addObject:v17];
      }

      ++v16;
    }

    while (v13 != v16);
    v29 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
    v13 = v29;
  }

  while (v29);
LABEL_44:

  v30 = [v3 copy];

  return v30;
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSPhotoServicesAuthorizationLevelController;
  specifierCopy = specifier;
  [(PSListController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"appBundleID", v7.receiver, v7.super_class}];

  clientIdentifier = self->_clientIdentifier;
  self->_clientIdentifier = v5;
}

- (id)specifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->super.super._specifiers)
  {
    _currentTCCAuthorizationRight = [(PSPhotoServicesAuthorizationLevelController *)selfCopy _currentTCCAuthorizationRight];
    specifier = [(PSListController *)selfCopy specifier];
    v5 = [specifier propertyForKey:@"hasPickerInfo"];
    bOOLValue = [v5 BOOLValue];
    if (_currentTCCAuthorizationRight == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = bOOLValue;
    }

    specifier2 = [(PSListController *)selfCopy specifier];
    v9 = [specifier2 propertyForKey:@"hasTCCOptions"];
    bOOLValue2 = [v9 BOOLValue];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (bOOLValue2)
    {
      _parentTCCSpecifiers = [(PSPhotoServicesAuthorizationLevelController *)selfCopy _parentTCCSpecifiers];
      [(NSArray *)v11 addObjectsFromArray:_parentTCCSpecifiers];
      firstObject = [_parentTCCSpecifiers firstObject];
      v14 = [(PSPhotoServicesAuthorizationLevelController *)selfCopy footerStringForSpecifiers:v11];
      [firstObject setProperty:v14 forKey:@"footerText"];
      _limitedLibrarySectionSpecifiers = [(PSPhotoServicesAuthorizationLevelController *)selfCopy _limitedLibrarySectionSpecifiers];
      [(NSArray *)v11 addObjectsFromArray:_limitedLibrarySectionSpecifiers];
    }

    _pickerUsageSectionSpecifiers = [(PSPhotoServicesAuthorizationLevelController *)selfCopy _pickerUsageSectionSpecifiers];
    v17 = _pickerUsageSectionSpecifiers;
    if (v7)
    {
      if ((bOOLValue2 & 1) == 0)
      {
        firstObject2 = [_pickerUsageSectionSpecifiers firstObject];
        v19 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_AUTH_ONGOING_HEADER");
        [firstObject2 setName:v19];
      }

      [(NSArray *)v11 addObjectsFromArray:v17];
    }

    specifiers = selfCopy->super.super._specifiers;
    selfCopy->super.super._specifiers = v11;
  }

  objc_sync_exit(selfCopy);

  v21 = selfCopy->super.super._specifiers;

  return v21;
}

- (id)footerStringForSpecifiers:(id)specifiers
{
  v19 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [specifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        values = [*(*(&v14 + 1) + 8 * i) values];
        firstObject = [values firstObject];
        intValue = [firstObject intValue];

        if (intValue == 3)
        {
          v12 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_AUTH_FOOTER");

          v6 = v12;
        }
      }

      v5 = [specifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_presentImagePickerForModifyingSelection
{
  v20[1] = *MEMORY[0x1E69E9840];
  clientIdentifier = self->_clientIdentifier;
  v19 = @"PHLimitedLibraryPickerClientApplicationIdentifier";
  v20[0] = clientIdentifier;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v5 = NSClassFromString(&cfstr_Phlimitedlibra_0.isa);
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      v7 = self->_limitedLibraryRowSpecifier;
      v8 = self->_clientIdentifier;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __87__PSPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke;
      v15 = &unk_1E71DC088;
      v16 = v7;
      v17 = v8;
      selfCopy = self;
      v9 = v8;
      v10 = v7;
      v11 = _Block_copy(&v12);
      [(objc_class *)v6 presentLimitedLibraryPickerFromViewController:self options:v4 completionHandler:v11, v12, v13, v14, v15];
    }

    else
    {
      [(objc_class *)v6 presentLimitedLibraryPickerFromViewController:self options:v4];
    }
  }
}

void __87__PSPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PSPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke_2;
  block[3] = &unk_1E71DBCE8;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __87__PSPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PSPXTCCSettingsLimitedAccessSubtitle(*(a1 + 40));
  [v2 setProperty:v3 forKey:@"cellSubtitleText"];

  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v4 reloadSpecifier:v5];
}

- (id)_locationSetting:(id)setting
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.photos.picker"];
  v5 = [v4 dictionaryForKey:@"metadata"];
  v6 = [v5 objectForKeyedSubscript:self->_clientIdentifier];
  v7 = [v6 objectForKeyedSubscript:@"pickerShouldStripLocation"];
  bOOLValue = [v7 BOOLValue];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue ^ 1u];

  return v9;
}

- (id)_pickerUsageSectionSpecifiers
{
  selfCopy = self;
  v49 = *MEMORY[0x1E69E9840];
  v3 = 0x1EA9B0000;
  if (!self->_pickerUsageSectionSpecifiers)
  {
    v4 = NSClassFromString(&cfstr_Psphotospicker.isa);
    if (v4)
    {
      v5 = v4;
      v6 = [PSSpecifier groupSpecifierWithName:0];
      [v6 setProperty:@"PHOTOS_PICKER_INFO_GROUP" forKey:@"id"];
      v7 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:-1 edit:0];
      [v7 setProperty:@"PHOTOS_PICKER_INFO_CELL" forKey:@"id"];
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
      [v7 setProperty:v8 forKey:@"height"];

      [v7 setProperty:v5 forKey:@"cellClass"];
      v39 = v7;
      v40 = v6;
      v47[0] = v6;
      v47[1] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      pickerUsageSectionSpecifiers = selfCopy->_pickerUsageSectionSpecifiers;
      v41 = selfCopy;
      selfCopy->_pickerUsageSectionSpecifiers = v9;

      v11 = [MEMORY[0x1E695DFA8] set];
      sharedInstance = [getPLPrivacyClass() sharedInstance];
      photosPickerPresentedLibraryLogsByClient = [sharedInstance photosPickerPresentedLibraryLogsByClient];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v14 = photosPickerPresentedLibraryLogsByClient;
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v43;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v42 + 1) + 8 * i);
            v20 = getPLPhotosPickerLogClientBundleIdentifierKey();
            v21 = [v19 objectForKeyedSubscript:v20];

            v22 = getPLPhotosPickerLogPresentedTimestampKey();
            v23 = [v19 objectForKeyedSubscript:v22];

            v24 = [v19 objectForKeyedSubscript:@"pickerUsesOptions"];
            [v23 timeIntervalSinceNow];
            if (v25 <= 0.0 && v25 > -2592000.0 && [v24 BOOLValue])
            {
              [v11 addObject:v21];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v16);
      }

      v26 = [v11 copy];
      v3 = 0x1EA9B0000uLL;
      selfCopy = v41;
      v27 = [v26 containsObject:v41->_clientIdentifier];

      if (v27)
      {
        v28 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_CELL_TITLE");
        v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:v41 set:0 get:sel__locationSetting_ detail:objc_opt_class() cell:2 edit:0];

        [v29 setIdentifier:@"PHOTOS_PICKER_OPTIONS_CELL"];
        [v29 setProperty:v41->_clientIdentifier forKey:@"appBundleID"];
        v30 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_CELL_NO_LOCATION");
        v46[0] = v30;
        v31 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_CELL_LOCATION");
        v46[1] = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
        [v29 setValues:&unk_1EFE65E98 titles:v32];

        v33 = [(NSArray *)v41->_pickerUsageSectionSpecifiers arrayByAddingObject:v29];
        v34 = v41->_pickerUsageSectionSpecifiers;
        v41->_pickerUsageSectionSpecifiers = v33;
      }
    }
  }

  v35 = PSPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
  v36 = [v35 containsObject:*(&selfCopy->super.super.super.super.super.super.isa + *(v3 + 532))];

  if (v36)
  {
    v37 = selfCopy->_pickerUsageSectionSpecifiers;
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  return v37;
}

- (id)_limitedLibrarySectionSpecifiers
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!self->_limitedLibrarySectionSpecifiers)
  {
    v3 = +[PSSpecifier emptyGroupSpecifier];
    [v3 setProperty:@"PHOTOS_MANUAL_SELECTION_GROUP" forKey:@"id"];
    v4 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_MANUAL_SELECTION_BUTTON");
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v5 setProperty:v6 forKey:@"enabled"];

    [v5 setProperty:@"PHOTOS_MANUAL_SELECTION_BUTTON" forKey:@"id"];
    [v5 setButtonAction:sel__presentImagePickerForModifyingSelection];
    v11[0] = v3;
    v11[1] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    limitedLibrarySectionSpecifiers = self->_limitedLibrarySectionSpecifiers;
    self->_limitedLibrarySectionSpecifiers = v7;
  }

  if ([(PSPhotoServicesAuthorizationLevelController *)self _currentTCCAuthorizationRight]== 3)
  {
    v9 = self->_limitedLibrarySectionSpecifiers;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PSListController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(PSListController *)self specifierAtIndex:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 propertyForKey:@"id"];
      v12 = [v11 isEqual:@"PHOTOS_MANUAL_SELECTION_BUTTON"];

      if (v12)
      {
        [v10 performButtonAction];
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      }

      else
      {
        identifier = [v10 identifier];
        v14 = [identifier isEqualToString:@"PHOTOS_PICKER_OPTIONS_CELL"];

        if (v14)
        {
          [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
          v15 = [(PSListController *)self selectSpecifier:v10];
          if (v15)
          {
            null = [MEMORY[0x1E695DFB0] null];

            if (v15 != null)
            {
              [(PSListController *)self showController:v15];
            }
          }
        }

        else
        {
          v22.receiver = self;
          v22.super_class = PSPhotoServicesAuthorizationLevelController;
          [(PSListItemsController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
          values = [v10 values];
          firstObject = [values firstObject];
          intValue = [firstObject intValue];

          if (intValue == 2)
          {
            [(PSPhotoServicesAuthorizationLevelController *)self _removeLimitedLibrarySectionIfPresent];
            [(PSPhotoServicesAuthorizationLevelController *)self _removePickerUsageSectionIfPresent];
          }

          else if (intValue == 3)
          {
            firstObject2 = [(NSArray *)self->_limitedLibrarySectionSpecifiers firstObject];
            v21 = [(PSListController *)self containsSpecifier:firstObject2];

            if (!v21)
            {
              [(PSPhotoServicesAuthorizationLevelController *)self _addLimitedLibrarySection];
              [(PSPhotoServicesAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
              [(PSPhotoServicesAuthorizationLevelController *)self _presentImagePickerForModifyingSelection];
            }
          }

          else
          {
            [(PSPhotoServicesAuthorizationLevelController *)self _removeLimitedLibrarySectionIfPresent];
            [(PSPhotoServicesAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
          }
        }
      }
    }
  }
}

- (void)_addLimitedLibrarySection
{
  if ([(NSArray *)self->_pickerUsageSectionSpecifiers count]&& ([(NSArray *)self->_pickerUsageSectionSpecifiers firstObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(PSListController *)self containsSpecifier:v3], v3, v4))
  {
    firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
    v6 = [(PSListController *)self indexOfSpecifier:firstObject];

    limitedLibrarySectionSpecifiers = self->_limitedLibrarySectionSpecifiers;

    [(PSListController *)self insertContiguousSpecifiers:limitedLibrarySectionSpecifiers atIndex:v6 animated:1];
  }

  else
  {
    v8 = self->_limitedLibrarySectionSpecifiers;

    [(PSListController *)self addSpecifiersFromArray:v8 animated:1];
  }
}

- (void)_removeLimitedLibrarySectionIfPresent
{
  firstObject = [(NSArray *)self->_limitedLibrarySectionSpecifiers firstObject];
  v4 = [(PSListController *)self containsSpecifier:firstObject];

  if (v4)
  {
    limitedLibrarySectionSpecifiers = self->_limitedLibrarySectionSpecifiers;

    [(PSListController *)self removeContiguousSpecifiers:limitedLibrarySectionSpecifiers animated:1];
  }
}

- (void)_addPickerUsageSectionIfNeeded
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  if ([(PSListController *)self containsSpecifier:?])
  {
  }

  else
  {
    v3 = PSPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
    v4 = [v3 containsObject:self->_clientIdentifier];

    if (v4)
    {
      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

      [(PSListController *)self addSpecifiersFromArray:pickerUsageSectionSpecifiers animated:1];
    }
  }
}

- (void)_removePickerUsageSectionIfPresent
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  v4 = [(PSListController *)self containsSpecifier:firstObject];

  if (v4)
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

    [(PSListController *)self removeContiguousSpecifiers:pickerUsageSectionSpecifiers animated:1];
  }
}

- (unint64_t)_currentTCCAuthorizationRight
{
  if (_currentTCCAuthorizationRight_onceToken_0 != -1)
  {
    [PSPhotoServicesAuthorizationLevelController _currentTCCAuthorizationRight];
  }

  [(NSString *)self->_clientIdentifier cStringUsingEncoding:4];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5 = tcc_identity_create();
  tcc_server_message_get_authorization_records_by_identity();
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __76__PSPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke()
{
  v0 = tcc_server_create();
  v1 = _currentTCCAuthorizationRight_tccServer_0;
  _currentTCCAuthorizationRight_tccServer_0 = v0;
}

void __76__PSPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_service();
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:tcc_service_get_name() encoding:4];
    if ([v7 isEqualToString:@"kTCCServicePhotos"])
    {
      *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right();
    }
  }

  else
  {
    v8 = _PSLoggingFacility();
    v6 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __76__PSPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for identity: %@", &v10, 0xCu);
    }
  }
}

@end