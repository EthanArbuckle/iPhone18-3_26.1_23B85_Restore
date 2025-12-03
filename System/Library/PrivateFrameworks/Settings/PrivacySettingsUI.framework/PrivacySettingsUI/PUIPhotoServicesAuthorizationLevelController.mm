@interface PUIPhotoServicesAuthorizationLevelController
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

@implementation PUIPhotoServicesAuthorizationLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUIPhotoServicesAuthorizationLevelController;
  [(PSListItemsController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PUIPhotosPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PUIPhotosPrivacyUpgradePromptAppIdentifierKey"];
  serviceKey = [(PUIPhotoServicesAuthorizationLevelController *)self serviceKey];
  v7 = [v5 isEqualToString:serviceKey];

  if (v7)
  {
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__PUIPhotoServicesAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_279BA0B28;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

- (id)_parentTCCSpecifiers
{
  v49 = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = PUIPhotoServicesAuthorizationLevelController;
  specifiers = [(PSListItemsController *)&v46 specifiers];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(specifiers, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = specifiers;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
  v6 = MEMORY[0x277D3FC90];
  if (v5)
  {
    v7 = *v43;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v42 + 1) + 8 * i);
        if (*&v9[*v6] == 3)
        {
          identifier = [v9 identifier];
          intValue = [identifier intValue];

          if (intValue == 5)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (!v13)
  {
    goto LABEL_44;
  }

  v14 = v13;
  v15 = *v39;
  v37 = *MEMORY[0x277D3FE58];
  v36 = *MEMORY[0x277D3FE18];
  v16 = v5 ^ 1;
  v34 = v3;
  do
  {
    v17 = 0;
    do
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v38 + 1) + 8 * v17);
      identifier2 = [v18 identifier];
      intValue2 = [identifier2 intValue];

      v21 = *&v18[*v6];
      if (v21 != 3 || intValue2 != 5)
      {
        if (v21 == 3)
        {
          v23 = v16;
        }

        else
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0 && !intValue2)
        {
          limitedLibraryRowSpecifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 5];
          [v18 setIdentifier:limitedLibraryRowSpecifier];
          goto LABEL_27;
        }

        if (v21 == 3 && (intValue2 & 0xFFFFFFFE) == 2)
        {
          [v18 setProperty:objc_opt_class() forKey:v37];
          v26 = PhotosUICoreLibraryCore();
          if (intValue2 == 2)
          {
            if (!v26 || !getPXTCCSettingsFullAccessSubtitleSymbolLoc())
            {
              goto LABEL_32;
            }

            PXTCCSettingsFullAccessSubtitleSymbolLoc = getPXTCCSettingsFullAccessSubtitleSymbolLoc();
            if (!PXTCCSettingsFullAccessSubtitleSymbolLoc)
            {
              [PUILockdownModeController getEligibleDevicesWithCompletion:];
            }

            limitedLibraryRowSpecifier = PXTCCSettingsFullAccessSubtitleSymbolLoc();
            [v18 setProperty:limitedLibraryRowSpecifier forKey:v36];
          }

          else
          {
            if (!v26 || !getPXTCCSettingsLimitedAccessSubtitleSymbolLoc())
            {
              goto LABEL_32;
            }

            v28 = PSPXTCCSettingsLimitedAccessSubtitle(self->_serviceKey);
            [v18 setProperty:v28 forKey:v36];

            v29 = v18;
            limitedLibraryRowSpecifier = self->_limitedLibraryRowSpecifier;
            self->_limitedLibraryRowSpecifier = v29;
            v3 = v34;
          }

LABEL_27:
        }

LABEL_32:
        [v3 addObject:v18];
      }

      ++v17;
    }

    while (v14 != v17);
    v30 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
    v14 = v30;
  }

  while (v30);
LABEL_44:

  v31 = [v3 copy];
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PUIPhotoServicesAuthorizationLevelController;
  specifierCopy = specifier;
  [(PUIPhotoServicesAuthorizationLevelController *)&v7 setSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];

  serviceKey = self->_serviceKey;
  self->_serviceKey = identifier;
}

- (id)specifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&selfCopy->super.super.super.super.super.super.isa + v3))
  {
    _currentTCCAuthorizationRight = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy _currentTCCAuthorizationRight];
    specifier = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy specifier];
    v6 = [specifier propertyForKey:@"hasPickerInfo"];
    bOOLValue = [v6 BOOLValue];
    if (_currentTCCAuthorizationRight == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = bOOLValue;
    }

    specifier2 = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy specifier];
    v10 = [specifier2 propertyForKey:@"hasTCCOptions"];
    bOOLValue2 = [v10 BOOLValue];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (bOOLValue2)
    {
      _parentTCCSpecifiers = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy _parentTCCSpecifiers];
      [v12 addObjectsFromArray:_parentTCCSpecifiers];
      firstObject = [_parentTCCSpecifiers firstObject];
      v15 = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy footerStringForSpecifiers:v12];
      if (v15)
      {
        [firstObject setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
      }

      _limitedLibrarySectionSpecifiers = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy _limitedLibrarySectionSpecifiers];
      [v12 addObjectsFromArray:_limitedLibrarySectionSpecifiers];
    }

    _pickerUsageSectionSpecifiers = [(PUIPhotoServicesAuthorizationLevelController *)selfCopy _pickerUsageSectionSpecifiers];
    v18 = _pickerUsageSectionSpecifiers;
    if (v8)
    {
      if ((bOOLValue2 & 1) == 0)
      {
        firstObject2 = [_pickerUsageSectionSpecifiers firstObject];
        v20 = PUI_LocalizedStringForPrivacy(@"PHOTOS_AUTH_ONGOING_HEADER");
        [firstObject2 setName:v20];
      }

      [v12 addObjectsFromArray:v18];
    }

    v21 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
    *(&selfCopy->super.super.super.super.super.super.isa + v3) = v12;
  }

  objc_sync_exit(selfCopy);

  v22 = *(&selfCopy->super.super.super.super.super.super.isa + v3);

  return v22;
}

- (id)footerStringForSpecifiers:(id)specifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  specifiersCopy = specifiers;
  v4 = [specifiersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        values = [v8 values];
        firstObject = [values firstObject];
        v11 = [firstObject isEqual:&unk_28772B330];

        values2 = [v8 values];
        firstObject2 = [values2 firstObject];
        v14 = [firstObject2 isEqual:&unk_28772B348];

        if ((v11 & 1) != 0 || v14)
        {

          v15 = PUI_LocalizedStringForPrivacy(@"PHOTOS_AUTH_PHOTOKIT_FOOTER");
          goto LABEL_12;
        }
      }

      v5 = [specifiersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_presentImagePickerForModifyingSelection
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = *MEMORY[0x277CD9D88];
  serviceKey = [(PUIPhotoServicesAuthorizationLevelController *)self serviceKey];
  v19[0] = serviceKey;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  if (objc_opt_respondsToSelector())
  {
    v5 = self->_limitedLibraryRowSpecifier;
    v6 = self->_serviceKey;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __88__PUIPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke;
    v14 = &unk_279BA1F10;
    v15 = v5;
    v16 = v6;
    selfCopy = self;
    v7 = v6;
    v8 = v5;
    v9 = _Block_copy(&v11);
    [MEMORY[0x277CD9D58] presentLimitedLibraryPickerFromViewController:self options:v4 completionHandler:{v9, v11, v12, v13, v14}];
  }

  else
  {
    [MEMORY[0x277CD9D58] presentLimitedLibraryPickerFromViewController:self options:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __88__PUIPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__PUIPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

uint64_t __88__PUIPhotoServicesAuthorizationLevelController__presentImagePickerForModifyingSelection__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PSPXTCCSettingsLimitedAccessSubtitle(*(a1 + 40));
  [v2 setProperty:v3 forKey:*MEMORY[0x277D3FE18]];

  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v4 reloadSpecifier:v5];
}

- (id)_pickerUsageSectionSpecifiers
{
  selfCopy = self;
  v53 = *MEMORY[0x277D85DE8];
  v3 = 0x280027000;
  if (!self->_pickerUsageSectionSpecifiers)
  {
    v4 = NSClassFromString(&cfstr_Psphotospicker.isa);
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
      v7 = *MEMORY[0x277D3FFB8];
      [v6 setProperty:@"PHOTOS_PICKER_INFO_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:-1 edit:0];
      [v8 setProperty:@"PHOTOS_PICKER_INFO_CELL" forKey:v7];
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v8 setProperty:v9 forKey:*MEMORY[0x277D40140]];

      [v8 setProperty:v5 forKey:*MEMORY[0x277D3FE58]];
      v51[0] = v6;
      v51[1] = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      pickerUsageSectionSpecifiers = selfCopy->_pickerUsageSectionSpecifiers;
      selfCopy->_pickerUsageSectionSpecifiers = v10;

      v12 = NSClassFromString(&cfstr_Psphotospicker_0.isa);
      if (v12)
      {
        v42 = v12;
        v43 = v6;
        v44 = selfCopy;
        v45 = [MEMORY[0x277CBEB58] set];
        mEMORY[0x277D3B240] = [MEMORY[0x277D3B240] sharedInstance];
        photosPickerPresentedLibraryLogsByClient = [mEMORY[0x277D3B240] photosPickerPresentedLibraryLogsByClient];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v15 = photosPickerPresentedLibraryLogsByClient;
        v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v47;
          v19 = *MEMORY[0x277D3B268];
          v20 = *MEMORY[0x277D3B270];
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v47 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(*(&v46 + 1) + 8 * i);
              v23 = [v22 objectForKeyedSubscript:v19];
              v24 = [v22 objectForKeyedSubscript:v20];
              v25 = [v22 objectForKeyedSubscript:@"pickerUsesOptions"];
              [v24 timeIntervalSinceNow];
              if (v26 <= 0.0 && v26 > -2592000.0 && [v25 BOOLValue])
              {
                [v45 addObject:v23];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v17);
        }

        v27 = [v45 copy];
        v3 = 0x280027000uLL;
        selfCopy = v44;
        v28 = [v27 containsObject:v44->_serviceKey];

        v6 = v43;
        if (v28)
        {
          v29 = MEMORY[0x277D3FAD8];
          v30 = PUI_LocalizedStringForPrivacy(@"PHOTOS_PICKER_OPTIONS_CELL_TITLE");
          v31 = [v29 preferenceSpecifierNamed:v30 target:v44 set:0 get:sel__locationSetting_ detail:v42 cell:2 edit:0];

          [v31 setIdentifier:@"PHOTOS_PICKER_OPTIONS_CELL"];
          [v31 setProperty:v44->_serviceKey forKey:@"appBundleID"];
          v32 = PUI_LocalizedStringForPrivacy(@"PHOTOS_PICKER_OPTIONS_CELL_NO_LOCATION");
          v50[0] = v32;
          v33 = PUI_LocalizedStringForPrivacy(@"PHOTOS_PICKER_OPTIONS_CELL_LOCATION");
          v50[1] = v33;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
          [v31 setValues:&unk_28772B690 titles:v34];

          v35 = [(NSArray *)v44->_pickerUsageSectionSpecifiers arrayByAddingObject:v31];
          v36 = v44->_pickerUsageSectionSpecifiers;
          v44->_pickerUsageSectionSpecifiers = v35;
        }
      }
    }
  }

  v37 = PUIPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
  v38 = [v37 containsObject:*(&selfCopy->super.super.super.super.super.super.isa + *(v3 + 1104))];

  if (v38)
  {
    v39 = selfCopy->_pickerUsageSectionSpecifiers;
  }

  else
  {
    v39 = MEMORY[0x277CBEBF8];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)_limitedLibrarySectionSpecifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (!self->_limitedLibrarySectionSpecifiers)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v4 = *MEMORY[0x277D3FFB8];
    [emptyGroupSpecifier setProperty:@"PHOTOS_MANUAL_SELECTION_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v5 = MEMORY[0x277D3FAD8];
    v6 = PUI_LocalizedStringForPrivacy(@"PHOTOS_MANUAL_SELECTION_BUTTON");
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

    [v7 setProperty:@"PHOTOS_MANUAL_SELECTION_BUTTON" forKey:v4];
    [v7 setButtonAction:sel__presentImagePickerForModifyingSelection];
    v14[0] = emptyGroupSpecifier;
    v14[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    limitedLibrarySectionSpecifiers = self->_limitedLibrarySectionSpecifiers;
    self->_limitedLibrarySectionSpecifiers = v9;
  }

  if ([(PUIPhotoServicesAuthorizationLevelController *)self _currentTCCAuthorizationRight]== 3)
  {
    v11 = self->_limitedLibrarySectionSpecifiers;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_locationSetting:(id)setting
{
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.photos.picker"];
  v5 = [v4 dictionaryForKey:@"metadata"];
  v6 = [v5 objectForKeyedSubscript:self->_serviceKey];
  v7 = [v6 objectForKeyedSubscript:@"pickerShouldStripLocation"];
  bOOLValue = [v7 BOOLValue];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:bOOLValue ^ 1u];

  return v9;
}

- (unint64_t)_currentTCCAuthorizationRight
{
  if (_currentTCCAuthorizationRight_onceToken_0 != -1)
  {
    [PUIPhotoServicesAuthorizationLevelController _currentTCCAuthorizationRight];
  }

  [(NSString *)self->_serviceKey cStringUsingEncoding:4];
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

uint64_t __77__PUIPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke()
{
  _currentTCCAuthorizationRight_tccServer_0 = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __77__PUIPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_service();
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_service_get_name() encoding:4];
    if ([v7 isEqualToString:@"kTCCServicePhotos"])
    {
      *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right();
    }
  }

  else
  {
    v8 = _PUILoggingFacility();
    v6 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __77__PUIPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1(a1);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for identity: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PUIPhotoServicesAuthorizationLevelController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(PUIPhotoServicesAuthorizationLevelController *)self specifierAtIndex:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
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
          v15 = [(PUIPhotoServicesAuthorizationLevelController *)self selectSpecifier:v10];
          if (v15)
          {
            null = [MEMORY[0x277CBEB68] null];

            if (v15 != null)
            {
              [(PUIPhotoServicesAuthorizationLevelController *)self showController:v15];
            }
          }
        }

        else
        {
          v22.receiver = self;
          v22.super_class = PUIPhotoServicesAuthorizationLevelController;
          [(PSListItemsController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
          values = [v10 values];
          firstObject = [values firstObject];
          intValue = [firstObject intValue];

          if (intValue == 2)
          {
            [(PUIPhotoServicesAuthorizationLevelController *)self _removeLimitedLibrarySectionIfPresent];
            [(PUIPhotoServicesAuthorizationLevelController *)self _removePickerUsageSectionIfPresent];
          }

          else if (intValue == 3)
          {
            firstObject2 = [(NSArray *)self->_limitedLibrarySectionSpecifiers firstObject];
            v21 = [(PUIPhotoServicesAuthorizationLevelController *)self containsSpecifier:firstObject2];

            if ((v21 & 1) == 0)
            {
              [(PUIPhotoServicesAuthorizationLevelController *)self _addLimitedLibrarySection];
              [(PUIPhotoServicesAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
              [(PUIPhotoServicesAuthorizationLevelController *)self _presentImagePickerForModifyingSelection];
            }
          }

          else
          {
            [(PUIPhotoServicesAuthorizationLevelController *)self _removeLimitedLibrarySectionIfPresent];
            [(PUIPhotoServicesAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
          }
        }
      }
    }
  }
}

- (void)_addLimitedLibrarySection
{
  if ([(NSArray *)self->_pickerUsageSectionSpecifiers count]&& ([(NSArray *)self->_pickerUsageSectionSpecifiers firstObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(PUIPhotoServicesAuthorizationLevelController *)self containsSpecifier:v3], v3, v4))
  {
    firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
    v6 = [(PUIPhotoServicesAuthorizationLevelController *)self indexOfSpecifier:firstObject];

    limitedLibrarySectionSpecifiers = self->_limitedLibrarySectionSpecifiers;

    [(PUIPhotoServicesAuthorizationLevelController *)self insertContiguousSpecifiers:limitedLibrarySectionSpecifiers atIndex:v6 animated:1];
  }

  else
  {
    v8 = self->_limitedLibrarySectionSpecifiers;

    [(PUIPhotoServicesAuthorizationLevelController *)self addSpecifiersFromArray:v8 animated:1];
  }
}

- (void)_removeLimitedLibrarySectionIfPresent
{
  firstObject = [(NSArray *)self->_limitedLibrarySectionSpecifiers firstObject];
  v4 = [(PUIPhotoServicesAuthorizationLevelController *)self containsSpecifier:firstObject];

  if (v4)
  {
    limitedLibrarySectionSpecifiers = self->_limitedLibrarySectionSpecifiers;

    [(PUIPhotoServicesAuthorizationLevelController *)self removeContiguousSpecifiers:limitedLibrarySectionSpecifiers animated:1];
  }
}

- (void)_addPickerUsageSectionIfNeeded
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  if ([(PUIPhotoServicesAuthorizationLevelController *)self containsSpecifier:?])
  {
  }

  else
  {
    v3 = PUIPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
    v4 = [v3 containsObject:self->_serviceKey];

    if (v4)
    {
      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

      [(PUIPhotoServicesAuthorizationLevelController *)self addSpecifiersFromArray:pickerUsageSectionSpecifiers animated:1];
    }
  }
}

- (void)_removePickerUsageSectionIfPresent
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  v4 = [(PUIPhotoServicesAuthorizationLevelController *)self containsSpecifier:firstObject];

  if (v4)
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

    [(PUIPhotoServicesAuthorizationLevelController *)self removeContiguousSpecifiers:pickerUsageSectionSpecifiers animated:1];
  }
}

void __77__PUIPhotoServicesAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2657FE000, v2, v3, "Error when requesting TCC for identity: %@ error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end