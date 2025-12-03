@interface DBSAlwaysOnViewController
+ (BOOL)isAlwaysOnEnabledByDefault;
+ (id)alwaysOnSpecifierNamed:(id)named;
+ (id)isAlwaysOnEnabled:(id)enabled;
- (id)_alwaysOnDisplaySpecifier;
- (id)_blurPhotosWallpaperSpecifier;
- (id)_showNotificationsSpecifier;
- (id)_showWallpaperSpecifier;
- (id)_updatesForSpecifiers:(id)specifiers isAlwaysOnEnabled:(BOOL)enabled animated:(BOOL)animated;
- (id)specifiers;
- (void)setAlwaysOnDisplayEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation DBSAlwaysOnViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DBSAlwaysOnViewController;
  [(DBSAlwaysOnViewController *)&v4 viewDidLoad];
  v3 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_DISPLAY");
  [(DBSAlwaysOnViewController *)self setTitle:v3];
}

+ (id)alwaysOnSpecifierNamed:(id)named
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3FAD8];
  namedCopy = named;
  v6 = [v4 preferenceSpecifierNamed:namedCopy target:self set:0 get:sel_isAlwaysOnEnabled_ detail:objc_opt_class() cell:2 edit:0];

  [v6 setProperty:@"j8/Omm6s1lsmTDFsXjsBfA" forKey:*MEMORY[0x277D400A0]];
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_DISABLED");
  v13[0] = v8;
  v9 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_ENABLED");
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v7 initWithArray:v10];

  [v6 setValues:&unk_28349F5E0 titles:v11];

  return v6;
}

+ (BOOL)isAlwaysOnEnabledByDefault
{
  v2 = MGCopyAnswer();
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (id)isAlwaysOnEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBEnableAlwaysOn", @"com.apple.springboard", &keyExistsAndHasValidFormat);
  isAlwaysOnEnabledByDefault = [self isAlwaysOnEnabledByDefault];
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue != 0;
  }

  else
  {
    v6 = isAlwaysOnEnabledByDefault;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ALWAYS_ON_DESCRIPTION_GROUP"];
    v7 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_DESCRIPTION");
    v8 = *MEMORY[0x277D3FF88];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ALWAYS_ON_SECONDARY_DESCRIPTION_GROUP"];
    v10 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_SECONDARY_DESCRIPTION");
    [v9 setProperty:v10 forKey:v8];

    [v5 addObject:v9];
    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ALWAYS_ON_DISPLAY_GROUP"];
    [v5 addObject:v11];
    _alwaysOnDisplaySpecifier = [(DBSAlwaysOnViewController *)self _alwaysOnDisplaySpecifier];
    [v5 addObject:_alwaysOnDisplaySpecifier];
    performGetter = [_alwaysOnDisplaySpecifier performGetter];
    bOOLValue = [performGetter BOOLValue];

    v15 = [(DBSAlwaysOnViewController *)self _updatesForSpecifiers:v5 isAlwaysOnEnabled:bOOLValue animated:0];
    currentSpecifiers = [v15 currentSpecifiers];
    [v5 setArray:currentSpecifiers];

    v17 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_alwaysOnDisplaySpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_DISPLAY");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setAlwaysOnDisplayEnabled_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

  [v5 setProperty:@"ALWAYS_ON_DISPLAY" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:@"com.apple.springboard" forKey:*MEMORY[0x277D3FEF8]];
  [v5 setProperty:@"SBEnableAlwaysOn" forKey:*MEMORY[0x277D3FFF0]];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "isAlwaysOnEnabledByDefault")}];
  [v5 setProperty:v6 forKey:*MEMORY[0x277D3FEF0]];

  return v5;
}

- (id)_showWallpaperSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_SHOW_WALLPAPER");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

  [v5 setProperty:@"ALWAYS_ON_SHOW_WALLPAPER" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:@"com.apple.springboard" forKey:*MEMORY[0x277D3FEF8]];
  [v5 setProperty:@"SBShowWallpaperInAlwaysOn" forKey:*MEMORY[0x277D3FFF0]];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];

  return v5;
}

- (id)_blurPhotosWallpaperSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_BLUR_WALLPAPER_PHOTO");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

  [v5 setProperty:@"ALWAYS_ON_BLUR_WALLPAPER_PHOTO" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:@"com.apple.springboard" forKey:*MEMORY[0x277D3FEF8]];
  [v5 setProperty:@"SBBlurPhotosWallpaperInAlwaysOn" forKey:*MEMORY[0x277D3FFF0]];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];

  return v5;
}

- (id)_showNotificationsSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_SHOW_NOTIFICATIONS");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

  [v5 setProperty:@"ALWAYS_ON_SHOW_NOTIFICATIONS" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:@"j8/Omm6s1lsmTDFsXjsBfA" forKey:*MEMORY[0x277D400A0]];
  [v5 setProperty:@"com.apple.springboard" forKey:*MEMORY[0x277D3FEF8]];
  [v5 setProperty:@"SBShowNotificationsInAlwaysOn" forKey:*MEMORY[0x277D3FFF0]];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];

  return v5;
}

- (id)_updatesForSpecifiers:(id)specifiers isAlwaysOnEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  specifiersCopy = specifiers;
  v9 = [MEMORY[0x277D3FAE8] updatesWithSpecifiers:specifiersCopy];
  v10 = [specifiersCopy specifierForID:@"ALWAYS_ON_DISPLAY_GROUP"];
  if (enabledCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = MEMORY[0x277D3FAD8];
    v13 = DBS_LocalizedStringForDisplays(@"CUSTOMIZE_HEADER");
    v14 = [v12 groupSpecifierWithID:@"ALWAYS_ON_CONFIGURATION_GROUP" name:v13];

    [v11 addObject:v14];
    _showWallpaperSpecifier = [(DBSAlwaysOnViewController *)self _showWallpaperSpecifier];
    [v11 addObject:_showWallpaperSpecifier];

    _blurPhotosWallpaperSpecifier = [(DBSAlwaysOnViewController *)self _blurPhotosWallpaperSpecifier];
    [v11 addObject:_blurPhotosWallpaperSpecifier];

    _showNotificationsSpecifier = [(DBSAlwaysOnViewController *)self _showNotificationsSpecifier];
    [v11 addObject:_showNotificationsSpecifier];

    v18 = DBS_LocalizedStringForDisplays(@"ALWAYS_ON_FOOTER");
    [v10 setProperty:v18 forKey:*MEMORY[0x277D3FF88]];

    [v9 insertContiguousSpecifiers:v11 atIndex:2];
  }

  else
  {
    v19 = [specifiersCopy indexOfSpecifierWithID:@"ALWAYS_ON_CONFIGURATION_GROUP"];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v19;
      [v10 removePropertyForKey:*MEMORY[0x277D3FF88]];
      [v9 removeSpecifiersInRange:{v20, v20 + 1}];
    }
  }

  context = [v9 context];
  [context setAnimated:animatedCopy];

  return v9;
}

- (void)setAlwaysOnDisplayEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  CFPreferencesSetAppValue(@"SBEnableAlwaysOn", enabledCopy, @"com.apple.springboard");
  v6 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  bOOLValue = [enabledCopy BOOLValue];

  v8 = [(DBSAlwaysOnViewController *)self _updatesForSpecifiers:v6 isAlwaysOnEnabled:bOOLValue animated:1];
  [(DBSAlwaysOnViewController *)self reloadSpecifierID:@"ALWAYS_ON_DISPLAY_GROUP"];
  [(DBSAlwaysOnViewController *)self performSpecifierUpdates:v8];
}

@end