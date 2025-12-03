@interface DBSDisplayZoomSelectionListController
- (CGSize)preferredContentSize;
- (id)confirmationDictForCurrentSelectedScale;
- (id)specifiers;
- (id)supportedDisplayZoomOptions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_updateNavigationButtonStateWithNewOption:(unint64_t)option;
- (void)_userDidConfirmDisplayZoomModeWithSpecifier:(id)specifier;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateNavigationButtonStateWithCurrentState;
- (void)userDidTapCancel:(id)cancel;
- (void)userDidTapDone:(id)done;
- (void)viewDidAppear:(BOOL)appear;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];

    if (sf_isiPad)
    {
      table = [(DBSDisplayZoomSelectionListController *)self table];
      [table _setTopPadding:0.0];

      table2 = [(DBSDisplayZoomSelectionListController *)self table];
      [table2 _setBottomPadding:0.0];

      table3 = [(DBSDisplayZoomSelectionListController *)self table];
      [table3 setBounces:0];

      table4 = [(DBSDisplayZoomSelectionListController *)self table];
      [table4 setScrollEnabled:0];
    }
  }

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  v11 = [v9 initWithImage:v10 style:2 target:self action:sel_userDidTapDone_];
  navigationItem = [(DBSDisplayZoomSelectionListController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v11];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v10) = [currentDevice2 sf_isiPad];

  if (v10)
  {
    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidTapCancel_];
    navigationItem2 = [(DBSDisplayZoomSelectionListController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v14];
  }

  [(DBSDisplayZoomSelectionListController *)self updateNavigationButtonStateWithCurrentState];
  v16 = DBS_LocalizedStringForMagnify(@"DISPLAY_ZOOM");
  [(DBSDisplayZoomSelectionListController *)self setTitle:v16];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSDisplayZoomSelectionListController;
  [(DBSDisplayZoomSelectionListController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/MAGNIFY"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    bundleURL = [v7 bundleURL];
    v9 = [v5 initWithKey:@"DISPLAY_AND_BRIGHTNESS" defaultValue:0 table:@"Display" locale:currentLocale bundleURL:bundleURL];

    v10 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    bundleURL2 = [v12 bundleURL];
    v14 = [v10 initWithKey:@"DISPLAY_ZOOM" defaultValue:0 table:@"Magnify" locale:currentLocale2 bundleURL:bundleURL2];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSDisplayZoomSelectionListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)updateNavigationButtonStateWithCurrentState
{
  v4 = +[DBSDisplayZoomConfigurationController defaultController];
  currentDisplayZoomMode = [v4 currentDisplayZoomMode];
  -[DBSDisplayZoomSelectionListController _updateNavigationButtonStateWithNewOption:](self, "_updateNavigationButtonStateWithNewOption:", [currentDisplayZoomMode displayZoomOption]);
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    if ((DBSReverseZoomEnabled() & 1) == 0)
    {
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [emptyGroupSpecifier setIdentifier:@"DISPLAY_ZOOM_SECTION"];
      v7 = DBS_LocalizedStringForMagnify(@"DISPLAY_ZOOM");
      [emptyGroupSpecifier setName:v7];

      [array addObject:emptyGroupSpecifier];
    }

    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v8 setIdentifier:@"DISPLAY_ZOOM_SELECTION"];
    [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [array addObject:v8];
    v9 = [array copy];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = DBSDisplayZoomSelectionListController;
  v5 = [(DBSDisplayZoomSelectionListController *)&v7 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
    [v5 setSelectionStyle:0];
    [v5 configureView];
  }

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy performSelector:sel_startAnimation withObject:0 afterDelay:2.0];
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy performSelector:sel_stopAnimation withObject:0 afterDelay:0.0];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = DBS_LocalizedStringForMagnify(@"CONFIRMATION_PROMPT");
  [dictionary setObject:v4 forKey:*MEMORY[0x277D3FE90]];

  v5 = DBS_LocalizedStringForMagnify(@"CONFIRMATION_CANCEL");
  [dictionary setObject:v5 forKey:*MEMORY[0x277D3FE78]];

  selectedDisplayZoomOption = [(DBSDisplayZoomSelectionListController *)self selectedDisplayZoomOption];
  if (selectedDisplayZoomOption <= 3)
  {
    v7 = off_278459930[selectedDisplayZoomOption];
    v8 = DBS_LocalizedStringForMagnify(off_278459910[selectedDisplayZoomOption]);
    [dictionary setObject:v8 forKey:*MEMORY[0x277D3FE98]];

    v9 = DBS_LocalizedStringForMagnify(v7);
    [dictionary setObject:v9 forKey:*MEMORY[0x277D3FE88]];
  }

  return dictionary;
}

- (void)userDidTapDone:(id)done
{
  v12 = objc_alloc_init(MEMORY[0x277D3F9C8]);
  v4 = +[DBSDisplayZoomConfigurationController defaultController];
  currentDisplayZoomMode = [v4 currentDisplayZoomMode];
  displayZoomOption = [currentDisplayZoomMode displayZoomOption];

  if ([(DBSDisplayZoomSelectionListController *)self selectedDisplayZoomOption]== displayZoomOption)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];

    if (sf_isiPad)
    {
      navigationController = [(DBSDisplayZoomSelectionListController *)self navigationController];
      [navigationController dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(UIViewController *)self dbs_popViewController];
    }
  }

  else
  {
    confirmationDictForCurrentSelectedScale = [(DBSDisplayZoomSelectionListController *)self confirmationDictForCurrentSelectedScale];
    [v12 setupWithDictionary:confirmationDictForCurrentSelectedScale];
    [v12 setTarget:self];
    [v12 setConfirmationAction:sel__userDidConfirmDisplayZoomModeWithSpecifier_];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    -[DBSDisplayZoomSelectionListController showConfirmationViewForSpecifier:useAlert:](self, "showConfirmationViewForSpecifier:useAlert:", v12, [currentDevice2 sf_isiPad]);
  }
}

- (void)userDidTapCancel:(id)cancel
{
  navigationController = [(DBSDisplayZoomSelectionListController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateNavigationButtonStateWithNewOption:(unint64_t)option
{
  v5 = +[DBSDisplayZoomConfigurationController defaultController];
  currentDisplayZoomMode = [v5 currentDisplayZoomMode];
  [currentDisplayZoomMode displayZoomOption];

  [(DBSDisplayZoomSelectionListController *)self setSelectedDisplayZoomOption:option];
}

- (void)_userDidConfirmDisplayZoomModeWithSpecifier:(id)specifier
{
  selectedDisplayZoomOption = [(DBSDisplayZoomSelectionListController *)self selectedDisplayZoomOption];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selectedDisplayZoomOption];
  v13 = [v4 stringWithFormat:@"display-zoom-change-%@", v5];

  mEMORY[0x277CEC590] = [MEMORY[0x277CEC590] sharedAggregateDictionary];
  [mEMORY[0x277CEC590] addValue:1 forKey:v13];

  v7 = +[DBSDisplayZoomConfigurationController defaultController];
  displayZoomModes = [v7 displayZoomModes];
  v9 = DBSStringForDisplayZoomOption(selectedDisplayZoomOption);
  v10 = [displayZoomModes objectForKeyedSubscript:v9];

  v11 = +[DBSDisplayZoomConfigurationController defaultController];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/MAGNIFY"];
  [v11 setDisplayZoomMode:v10 withRelaunchURL:v12];
}

- (id)supportedDisplayZoomOptions
{
  v2 = +[DBSDisplayZoomConfigurationController defaultController];
  displayZoomModes = [v2 displayZoomModes];

  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__DBSDisplayZoomSelectionListController_supportedDisplayZoomOptions__block_invoke;
  v7[3] = &unk_2784598C8;
  v5 = v4;
  v8 = v5;
  [displayZoomModes enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __68__DBSDisplayZoomSelectionListController_supportedDisplayZoomOptions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "displayZoomOption")}];
  [v3 addObject:v4];
}

@end