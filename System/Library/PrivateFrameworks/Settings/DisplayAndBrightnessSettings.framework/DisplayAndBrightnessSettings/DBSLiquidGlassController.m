@interface DBSLiquidGlassController
- (DBSLiquidGlassController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)changeGlassLegibilitySetting:(int64_t)a3;
- (void)dealloc;
- (void)jumpToAccessibilitySettings:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation DBSLiquidGlassController

- (DBSLiquidGlassController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBSLiquidGlassController;
  v4 = [(DBSLiquidGlassController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = DBS_LocalizedStringForDisplays(@"LIQUID_GLASS");
    [(DBSLiquidGlassController *)v4 setTitle:v5];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel_accessibilityOptionDidChange_ name:*MEMORY[0x277D764C8] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel_accessibilityOptionDidChange_ name:*MEMORY[0x277D76460] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSLiquidGlassController;
  [(DBSLiquidGlassController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSLiquidGlassController;
  [(DBSLiquidGlassController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/LIQUID_GLASS"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v8 = [v7 bundleURL];
    v9 = [v5 initWithKey:@"DISPLAY_AND_BRIGHTNESS" defaultValue:0 table:@"Display" locale:v6 bundleURL:v8];

    v10 = objc_alloc(MEMORY[0x277CCAEB8]);
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v13 = [v12 bundleURL];
    v14 = [v10 initWithKey:@"LIQUID_GLASS" defaultValue:0 table:@"Display" locale:v11 bundleURL:v13];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSLiquidGlassController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v40 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(DBSLiquidGlassController *)self canChangeSetting];
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v6 setIdentifier:@"LIQUID_GLASS_PREVIEW"];
    v7 = objc_opt_self();
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FE58]];

    v39 = v6;
    [v4 addObject:v6];
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LIQUID_GLASS"];
    [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    if (v5)
    {
      v9 = DBS_LocalizedStringForDisplays(@"LIQUID_GLASS_SETTING_FOOTER");
      [v8 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      v9 = DBS_LocalizedStringForDisplays(@"LIQUID_GLASS_SETTING_ACCESSIBILITY_FOOTER");
      [v8 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
      v10 = DBS_LocalizedStringForDisplays(@"LIQUID_GLASS_SETTING_ACCESSIBILITY_LINK_FOOTER");
      v11 = [v9 rangeOfString:v10];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v11;
        v14 = v12;
        v15 = objc_opt_class();
        NSStringFromClass(v15);
        v16 = v4;
        v18 = v17 = v5;
        [v8 setProperty:v18 forKey:*MEMORY[0x277D3FF48]];

        v5 = v17;
        v4 = v16;
        v42.location = v13;
        v42.length = v14;
        v19 = NSStringFromRange(v42);
        [v8 setProperty:v19 forKey:*MEMORY[0x277D3FF58]];

        v20 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v8 setProperty:v20 forKey:*MEMORY[0x277D3FF68]];

        v21 = NSStringFromSelector(sel_jumpToAccessibilitySettings_);
        [v8 setProperty:v21 forKey:*MEMORY[0x277D3FF50]];
      }
    }

    [(DBSLiquidGlassController *)self setRadioGroup:v8];
    [v4 addObject:v8];
    v22 = MEMORY[0x277D3FAD8];
    v23 = DBS_LocalizedStringForDisplays(@"CLEAR");
    v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v25 = *MEMORY[0x277D401A8];
    [v24 setProperty:&unk_28349F568 forKey:*MEMORY[0x277D401A8]];
    [v24 setIdentifier:@"CLEAR"];
    [MEMORY[0x277CCABB0] numberWithBool:v5];
    v38 = v8;
    v27 = v26 = v5;
    v28 = *MEMORY[0x277D3FF38];
    [v24 setProperty:v27 forKey:*MEMORY[0x277D3FF38]];

    [v4 addObject:v24];
    v29 = MEMORY[0x277D3FAD8];
    v30 = DBS_LocalizedStringForDisplays(@"TINTED");
    v31 = [v29 preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v31 setProperty:&unk_28349F580 forKey:v25];
    [v31 setIdentifier:@"TINTED"];
    v32 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    [v31 setProperty:v32 forKey:v28];

    [v4 addObject:v31];
    if ([objc_opt_class() glassLegibilitySetting])
    {
      v33 = v31;
    }

    else
    {
      v33 = v24;
    }

    [v38 setProperty:v33 forKey:*MEMORY[0x277D40090]];
    v34 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LIQUID_GLASS_PREVIEW"];
    [v4 addObject:v34];

    v35 = [v4 copy];
    v36 = *(&self->super.super.super.super.super.isa + v40);
    *(&self->super.super.super.super.super.isa + v40) = v35;

    v3 = *(&self->super.super.super.super.super.isa + v40);
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v7 setGlassLegibilitySetting:{objc_msgSend(objc_opt_class(), "glassLegibilitySetting")}];
    [v7 setSelectionStyle:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DBSLiquidGlassController *)self specifierAtIndexPath:v7];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:@"CLEAR"];

  if (v10)
  {
    v11 = 0;
LABEL_5:
    [(DBSLiquidGlassController *)self changeGlassLegibilitySetting:v11];
    goto LABEL_6;
  }

  v12 = [v8 identifier];
  v13 = [v12 isEqualToString:@"TINTED"];

  if (v13)
  {
    v11 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = DBSLiquidGlassController;
  [(DBSLiquidGlassController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)changeGlassLegibilitySetting:(int64_t)a3
{
  [objc_opt_class() setGlassLegibilitySetting:a3];
  v5 = [(DBSLiquidGlassController *)self specifierForID:@"LIQUID_GLASS_PREVIEW"];
  if (v5)
  {
    v6 = [(DBSLiquidGlassController *)self indexPathForSpecifier:v5];
    if (v6)
    {
      v7 = [(DBSLiquidGlassController *)self cachedCellForSpecifierID:@"LIQUID_GLASS_PREVIEW"];
      [v7 setGlassLegibilitySetting:a3];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)jumpToAccessibilitySettings:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ACCESSIBILITY&path=DISPLAY_AND_TEXT"];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

@end