@interface DBSDisplayZoomSelectionListController
- (CGSize)preferredContentSize;
- (id)confirmationDictForCurrentSelectedScale;
- (id)specifiers;
- (id)supportedDisplayZoomOptions;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_updateNavigationButtonStateWithNewOption:(unint64_t)a3;
- (void)_userDidConfirmDisplayZoomModeWithSpecifier:(id)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateNavigationButtonStateWithCurrentState;
- (void)userDidTapCancel:(id)a3;
- (void)userDidTapDone:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DBSDisplayZoomSelectionListController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = DBSDisplayZoomSelectionListController;
  [(DBSDisplayZoomSelectionListController *)&v17 viewDidLoad];
  if (DBSReverseZoomEnabled())
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 sf_isiPad];

    if (v4)
    {
      v5 = [(DBSDisplayZoomSelectionListController *)self table];
      [v5 _setTopPadding:0.0];

      v6 = [(DBSDisplayZoomSelectionListController *)self table];
      [v6 _setBottomPadding:0.0];

      v7 = [(DBSDisplayZoomSelectionListController *)self table];
      [v7 setBounces:0];

      v8 = [(DBSDisplayZoomSelectionListController *)self table];
      [v8 setScrollEnabled:0];
    }
  }

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  v11 = [v9 initWithImage:v10 style:2 target:self action:sel_userDidTapDone_];
  v12 = [(DBSDisplayZoomSelectionListController *)self navigationItem];
  [v12 setRightBarButtonItem:v11];

  v13 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v10) = [v13 sf_isiPad];

  if (v10)
  {
    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidTapCancel_];
    v15 = [(DBSDisplayZoomSelectionListController *)self navigationItem];
    [v15 setLeftBarButtonItem:v14];
  }

  [(DBSDisplayZoomSelectionListController *)self updateNavigationButtonStateWithCurrentState];
  v16 = DBS_LocalizedStringForMagnify(@"DISPLAY_ZOOM");
  [(DBSDisplayZoomSelectionListController *)self setTitle:v16];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSDisplayZoomSelectionListController;
  [(DBSDisplayZoomSelectionListController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/MAGNIFY"];
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
    v14 = [v10 initWithKey:@"DISPLAY_ZOOM" defaultValue:0 table:@"Magnify" locale:v11 bundleURL:v13];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSDisplayZoomSelectionListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)updateNavigationButtonStateWithCurrentState
{
  v4 = +[DBSDisplayZoomConfigurationController defaultController];
  v3 = [v4 currentDisplayZoomMode];
  -[DBSDisplayZoomSelectionListController _updateNavigationButtonStateWithNewOption:](self, "_updateNavigationButtonStateWithNewOption:", [v3 displayZoomOption]);
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    if ((DBSReverseZoomEnabled() & 1) == 0)
    {
      v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v6 setIdentifier:@"DISPLAY_ZOOM_SECTION"];
      v7 = DBS_LocalizedStringForMagnify(@"DISPLAY_ZOOM");
      [v6 setName:v7];

      [v5 addObject:v6];
    }

    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v8 setIdentifier:@"DISPLAY_ZOOM_SELECTION"];
    [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v5 addObject:v8];
    v9 = [v5 copy];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBSDisplayZoomSelectionListController;
  v5 = [(DBSDisplayZoomSelectionListController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
    [v5 setSelectionStyle:0];
    [v5 configureView];
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 performSelector:sel_startAnimation withObject:0 afterDelay:2.0];
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 performSelector:sel_stopAnimation withObject:0 afterDelay:0.0];
  }
}

- (CGSize)preferredContentSize
{
  if (DBSReverseZoomEnabled() && ([MEMORY[0x277D75418] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "sf_isiPad"), v2, (v3 & 1) != 0))
  {
    v4 = 282.0;
    v5 = 600.0;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v4 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (id)confirmationDictForCurrentSelectedScale
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = DBS_LocalizedStringForMagnify(@"CONFIRMATION_PROMPT");
  [v3 setObject:v4 forKey:*MEMORY[0x277D3FE90]];

  v5 = DBS_LocalizedStringForMagnify(@"CONFIRMATION_CANCEL");
  [v3 setObject:v5 forKey:*MEMORY[0x277D3FE78]];

  v6 = [(DBSDisplayZoomSelectionListController *)self selectedDisplayZoomOption];
  if (v6 <= 3)
  {
    v7 = off_278459930[v6];
    v8 = DBS_LocalizedStringForMagnify(off_278459910[v6]);
    [v3 setObject:v8 forKey:*MEMORY[0x277D3FE98]];

    v9 = DBS_LocalizedStringForMagnify(v7);
    [v3 setObject:v9 forKey:*MEMORY[0x277D3FE88]];
  }

  return v3;
}

- (void)userDidTapDone:(id)a3
{
  v12 = objc_alloc_init(MEMORY[0x277D3F9C8]);
  v4 = +[DBSDisplayZoomConfigurationController defaultController];
  v5 = [v4 currentDisplayZoomMode];
  v6 = [v5 displayZoomOption];

  if ([(DBSDisplayZoomSelectionListController *)self selectedDisplayZoomOption]== v6)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 sf_isiPad];

    if (v8)
    {
      v9 = [(DBSDisplayZoomSelectionListController *)self navigationController];
      [v9 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(UIViewController *)self dbs_popViewController];
    }
  }

  else
  {
    v10 = [(DBSDisplayZoomSelectionListController *)self confirmationDictForCurrentSelectedScale];
    [v12 setupWithDictionary:v10];
    [v12 setTarget:self];
    [v12 setConfirmationAction:sel__userDidConfirmDisplayZoomModeWithSpecifier_];
    v11 = [MEMORY[0x277D75418] currentDevice];
    -[DBSDisplayZoomSelectionListController showConfirmationViewForSpecifier:useAlert:](self, "showConfirmationViewForSpecifier:useAlert:", v12, [v11 sf_isiPad]);
  }
}

- (void)userDidTapCancel:(id)a3
{
  v3 = [(DBSDisplayZoomSelectionListController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateNavigationButtonStateWithNewOption:(unint64_t)a3
{
  v5 = +[DBSDisplayZoomConfigurationController defaultController];
  v6 = [v5 currentDisplayZoomMode];
  [v6 displayZoomOption];

  [(DBSDisplayZoomSelectionListController *)self setSelectedDisplayZoomOption:a3];
}

- (void)_userDidConfirmDisplayZoomModeWithSpecifier:(id)a3
{
  v3 = [(DBSDisplayZoomSelectionListController *)self selectedDisplayZoomOption];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v13 = [v4 stringWithFormat:@"display-zoom-change-%@", v5];

  v6 = [MEMORY[0x277CEC590] sharedAggregateDictionary];
  [v6 addValue:1 forKey:v13];

  v7 = +[DBSDisplayZoomConfigurationController defaultController];
  v8 = [v7 displayZoomModes];
  v9 = DBSStringForDisplayZoomOption(v3);
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = +[DBSDisplayZoomConfigurationController defaultController];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/MAGNIFY"];
  [v11 setDisplayZoomMode:v10 withRelaunchURL:v12];
}

- (id)supportedDisplayZoomOptions
{
  v2 = +[DBSDisplayZoomConfigurationController defaultController];
  v3 = [v2 displayZoomModes];

  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__DBSDisplayZoomSelectionListController_supportedDisplayZoomOptions__block_invoke;
  v7[3] = &unk_2784598C8;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __68__DBSDisplayZoomSelectionListController_supportedDisplayZoomOptions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "displayZoomOption")}];
  [v3 addObject:v4];
}

@end