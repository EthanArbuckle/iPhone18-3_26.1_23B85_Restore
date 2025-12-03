@interface PSPhotosPickerOptionsController
- (id)_metadataSetting:(id)setting;
- (id)specifiers;
- (unint64_t)_formatSetting;
- (void)_setFormatSetting:(unint64_t)setting;
- (void)_setMetadataSetting:(id)setting specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PSPhotosPickerOptionsController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PSPhotosPickerOptionsController;
  [(PSListController *)&v2 viewDidLoad];
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSPhotosPickerOptionsController;
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
  if (!selfCopy->super._specifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_METADATA_TITLE");
    v5 = [PSSpecifier groupSpecifierWithName:v4];

    [v5 setIdentifier:@"metadataGroupID"];
    [v5 setProperty:@"metadataGroupID" forKey:@"id"];
    [array addObject:v5];
    v6 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_METADATA_LOCATION");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:selfCopy set:sel__setMetadataSetting_specifier_ get:sel__metadataSetting_ detail:0 cell:6 edit:0];

    [v7 setProperty:@"pickerShouldStripLocation" forKey:@"pickerOptionsPropertyKey"];
    [array addObject:v7];
    v8 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_METADATA_CAPTION");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:selfCopy set:sel__setMetadataSetting_specifier_ get:sel__metadataSetting_ detail:0 cell:6 edit:0];

    [v9 setProperty:@"pickerShouldStripCaption" forKey:@"pickerOptionsPropertyKey"];
    [array addObject:v9];
    v10 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_FORMAT_TITLE");
    v11 = [PSSpecifier groupSpecifierWithName:v10];

    [v11 setIdentifier:@"formatGroupID"];
    [v11 setProperty:@"formatGroupID" forKey:@"id"];
    [v11 setProperty:MEMORY[0x1E695E118] forKey:@"isRadioGroup"];
    v12 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_FORMAT_FOOTER");
    [v11 setProperty:v12 forKey:@"footerText"];

    [array addObject:v11];
    v13 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_FORMAT_AUTOMATIC");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setIdentifier:@"PhotosPickerFormatOptionAutomatic"];
    [v14 setProperty:&unk_1EFE65A60 forKey:@"pickerFormatOptionPropertyKey"];
    [array addObject:v14];
    v15 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_FORMAT_CURRENT");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setIdentifier:@"PhotosPickerFormatOptionCurrent"];
    [v16 setProperty:&unk_1EFE65A78 forKey:@"pickerFormatOptionPropertyKey"];
    [array addObject:v16];
    v17 = PS_LocalizedStringForSystemPolicy(@"PHOTOS_PICKER_OPTIONS_FORMAT_COMPATIBLE");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    [v18 setIdentifier:@"PhotosPickerFormatOptionCompatible"];
    [v18 setProperty:&unk_1EFE65A90 forKey:@"pickerFormatOptionPropertyKey"];
    [array addObject:v18];
    _formatSetting = [(PSPhotosPickerOptionsController *)selfCopy _formatSetting];
    v20 = v14;
    if (_formatSetting)
    {
      v20 = v16;
      if (_formatSetting != 1)
      {
        if (_formatSetting != 2)
        {
LABEL_7:
          v21 = [array copy];
          specifiers = selfCopy->super._specifiers;
          selfCopy->super._specifiers = v21;

          goto LABEL_8;
        }

        v20 = v18;
      }
    }

    [v11 setProperty:v20 forKey:@"radioGroupCheckedSpecifier"];
    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(selfCopy);

  v23 = selfCopy->super._specifiers;

  return v23;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [(PSListController *)self indexForIndexPath:pathCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v15 = [(PSListController *)self specifierAtIndex:v7];
  identifier = [v15 identifier];
  if (([identifier isEqualToString:@"PhotosPickerFormatOptionAutomatic"] & 1) == 0)
  {
    identifier2 = [v15 identifier];
    if (![identifier2 isEqualToString:@"PhotosPickerFormatOptionCurrent"])
    {
      identifier3 = [v15 identifier];
      v14 = [identifier3 isEqualToString:@"PhotosPickerFormatOptionCompatible"];

      if ((v14 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v10 = [v15 propertyForKey:@"pickerFormatOptionPropertyKey"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  [(PSPhotosPickerOptionsController *)self _setFormatSetting:unsignedIntegerValue];
  v12 = [(PSListController *)self specifierForID:@"formatGroupID"];
  [v12 setProperty:v15 forKey:@"radioGroupCheckedSpecifier"];
  [(PSListController *)self reloadSpecifier:v12 animated:1];

LABEL_7:
}

- (void)_setMetadataSetting:(id)setting specifier:(id)specifier
{
  v6 = MEMORY[0x1E695E000];
  specifierCopy = specifier;
  settingCopy = setting;
  v22 = [[v6 alloc] initWithSuiteName:@"com.apple.photos.picker"];
  v9 = [v22 dictionaryForKey:@"metadata"];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F8];
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v12 = [v9 mutableCopy];

  v13 = [v12 objectForKeyedSubscript:self->_clientIdentifier];
  v14 = v13;
  if (!v13)
  {
    v13 = v11;
  }

  v15 = [v13 mutableCopy];

  v16 = [specifierCopy propertyForKey:@"pickerOptionsPropertyKey"];

  v17 = MEMORY[0x1E696AD98];
  bOOLValue = [settingCopy BOOLValue];

  v19 = [v17 numberWithInt:bOOLValue ^ 1u];
  [v15 setObject:v19 forKeyedSubscript:v16];

  [v12 setObject:v15 forKeyedSubscript:self->_clientIdentifier];
  [v22 setObject:v12 forKey:@"metadata"];
  parentController = [(PSViewController *)self parentController];
  objc_opt_class();
  LOBYTE(v19) = objc_opt_isKindOfClass();

  if (v19)
  {
    parentController2 = [(PSViewController *)self parentController];
    [parentController2 reloadSpecifiers];
  }
}

- (id)_metadataSetting:(id)setting
{
  v4 = MEMORY[0x1E695E000];
  settingCopy = setting;
  v6 = [[v4 alloc] initWithSuiteName:@"com.apple.photos.picker"];
  v7 = [v6 dictionaryForKey:@"metadata"];
  v8 = [v7 objectForKeyedSubscript:self->_clientIdentifier];
  v9 = [settingCopy propertyForKey:@"pickerOptionsPropertyKey"];

  v10 = [v8 objectForKeyedSubscript:v9];
  bOOLValue = [v10 BOOLValue];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue ^ 1u];

  return v12;
}

- (void)_setFormatSetting:(unint64_t)setting
{
  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.photos.picker"];
  v5 = [v9 dictionaryForKey:@"format"];
  v6 = v5;
  if (!v5)
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v7 = [v5 mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:setting];
  [v7 setObject:v8 forKeyedSubscript:self->_clientIdentifier];

  [v9 setObject:v7 forKey:@"format"];
}

- (unint64_t)_formatSetting
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.photos.picker"];
  v4 = [v3 dictionaryForKey:@"format"];
  v5 = [v4 objectForKeyedSubscript:self->_clientIdentifier];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = unsignedIntegerValue;
  }

  return v7;
}

@end