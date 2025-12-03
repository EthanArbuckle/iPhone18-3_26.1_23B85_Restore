@interface DBSLargeTextSliderListController
- (DBSLargeTextController)largeTextController;
- (id)getDynamicTypeValueForSpecifier:(id)specifier;
- (id)initUsingExtendedRange:(BOOL)range;
- (id)specifiers;
- (void)loadView;
- (void)resetSliderValue;
- (void)setDynamicTypeValue:(id)value forSpecifier:(id)specifier;
- (void)setSelectedCategoryIndex:(int64_t)index;
- (void)updateSliderValue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation DBSLargeTextSliderListController

- (id)initUsingExtendedRange:(BOOL)range
{
  v5.receiver = self;
  v5.super_class = DBSLargeTextSliderListController;
  result = [(DBSLargeTextSliderListController *)&v5 init];
  if (result)
  {
    *(result + 1466) = range;
  }

  return result;
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = DBSLargeTextSliderListController;
  [(DBSLargeTextSliderListController *)&v13 loadView];
  v3 = objc_opt_new();
  [(DBSLargeTextSliderListController *)self setAppearanceProvider:v3];

  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  v5 = *MEMORY[0x277D76818];
  v6 = [v4 initWithObjects:{*MEMORY[0x277D76830], *MEMORY[0x277D76858], *MEMORY[0x277D76840], *MEMORY[0x277D76838], *MEMORY[0x277D76828], *MEMORY[0x277D76820], *MEMORY[0x277D76818], *MEMORY[0x277D76808], *MEMORY[0x277D76800], *MEMORY[0x277D767F8], *MEMORY[0x277D767F0], *MEMORY[0x277D767E8], 0}];
  [(DBSLargeTextSliderListController *)self setContentSizeCategories:v6];

  [(DBSLargeTextSliderListController *)self updateSliderValue];
  contentSizeCategories = [(DBSLargeTextSliderListController *)self contentSizeCategories];
  v8 = [contentSizeCategories indexOfObject:v5];

  v9 = ![(DBSLargeTextSliderListController *)self showsExtendedRangeSwitch]&& ![(DBSLargeTextSliderListController *)self usesExtendedRange]&& [(DBSLargeTextSliderListController *)self selectedCategoryIndex]== v8;
  [(DBSLargeTextSliderListController *)self setShowsLargerSizesHelpText:v9];
  table = [(DBSLargeTextSliderListController *)self table];
  [table setScrollEnabled:0];

  table2 = [(DBSLargeTextSliderListController *)self table];
  [table2 _setTopPadding:0.0];

  table3 = [(DBSLargeTextSliderListController *)self table];
  [table3 _setDisableReuseQueuePurgeOnTextSizeChanges:1];
}

- (void)viewSafeAreaInsetsDidChange
{
  v11.receiver = self;
  v11.super_class = DBSLargeTextSliderListController;
  [(DBSLargeTextSliderListController *)&v11 viewSafeAreaInsetsDidChange];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (([currentDevice sf_isiPhone] & 1) == 0)
  {

    goto LABEL_5;
  }

  view = [(DBSLargeTextSliderListController *)self view];
  [view safeAreaInsets];
  v6 = v5;

  if (v6 <= 0.0)
  {
LABEL_5:
    table = [(DBSLargeTextSliderListController *)self table];
    [table _setBottomPadding:0.0];
    goto LABEL_6;
  }

  table = [(DBSLargeTextSliderListController *)self view];
  [table safeAreaInsets];
  v9 = v8;
  table2 = [(DBSLargeTextSliderListController *)self table];
  [table2 _setBottomPadding:v9];

LABEL_6:
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DBSLargeTextSliderListController;
  [(DBSLargeTextSliderListController *)&v4 viewWillAppear:appear];
  self->_viewIsDisappearing = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DBSLargeTextSliderListController;
  [(DBSLargeTextSliderListController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Display/TEXT_SIZE"];
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
    v14 = [v10 initWithKey:@"TEXT_SIZE" defaultValue:0 table:@"Display" locale:currentLocale2 bundleURL:bundleURL2];

    v17[0] = v9;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(DBSLargeTextSliderListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.display" title:v14 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = DBSLargeTextSliderListController;
  [(DBSLargeTextSliderListController *)&v4 viewWillDisappear:disappear];
  self->_viewIsDisappearing = 1;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_17;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!self->_sliderGroupSpecifier)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    sliderGroupSpecifier = self->_sliderGroupSpecifier;
    self->_sliderGroupSpecifier = emptyGroupSpecifier;
  }

  showsLargerSizesHelpText = [(DBSLargeTextSliderListController *)self showsLargerSizesHelpText];
  v9 = self->_sliderGroupSpecifier;
  if (showsLargerSizesHelpText)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(PSSpecifier *)v9 setProperty:v11 forKey:*MEMORY[0x277D3FFA0]];
  }

  else
  {
    [(PSSpecifier *)self->_sliderGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FFA0]];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPhone])
  {
  }

  else
  {
    showsResetSliderButton = self->_showsResetSliderButton;

    if (!showsResetSliderButton)
    {
      v14 = self->_sliderGroupSpecifier;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [(PSSpecifier *)v14 setProperty:v16 forKey:*MEMORY[0x277D3FF48]];

      goto LABEL_12;
    }
  }

  [(PSSpecifier *)self->_sliderGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF48]];
LABEL_12:
  [v5 addObject:self->_sliderGroupSpecifier];
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setDynamicTypeValue_forSpecifier_ get:sel_getDynamicTypeValueForSpecifier_ detail:0 cell:5 edit:0];
  [v17 setIdentifier:@"DYNAMIC_TYPE_SLIDER"];
  [v17 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v18 = MEMORY[0x277CBEC38];
  [v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D400C0]];
  [v17 setProperty:v18 forKey:*MEMORY[0x277D400C8]];
  [v17 setProperty:&unk_28349F4D8 forKey:*MEMORY[0x277D3FEC0]];
  [v17 setProperty:&unk_28349F6D8 forKey:*MEMORY[0x277D40140]];
  contentSizeCategories = [(DBSLargeTextSliderListController *)self contentSizeCategories];
  usesExtendedRange = [(DBSLargeTextSliderListController *)self usesExtendedRange];
  v21 = MEMORY[0x277D767E8];
  if (!usesExtendedRange)
  {
    v21 = MEMORY[0x277D76818];
  }

  v22 = [contentSizeCategories indexOfObject:*v21];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [v17 setProperty:v23 forKey:*MEMORY[0x277D3FEB8]];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[DBSLargeTextSliderListController usesExtendedRange](self, "usesExtendedRange")}];
  [v17 setProperty:v24 forKey:@"largeTextUsesExtendedRange"];

  [v5 addObject:v17];
  if (self->_showsResetSliderButton)
  {
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:emptyGroupSpecifier2];
    v26 = MEMORY[0x277D3FAD8];
    v27 = DBS_LocalizedStringForLargeFontSettings(@"RESET_BUTTON_TEXT");
    v28 = [v26 preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v28 setButtonAction:sel_resetSliderValue];
    [v28 setObject:&unk_28349F4F0 forKeyedSubscript:*MEMORY[0x277D3FD78]];
    [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [v5 addObject:v28];
  }

  v29 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v5;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_17:

  return v4;
}

- (void)setSelectedCategoryIndex:(int64_t)index
{
  if (![(DBSLargeTextSliderListController *)self usesExtendedRange])
  {
    contentSizeCategories = [(DBSLargeTextSliderListController *)self contentSizeCategories];
    v6 = [contentSizeCategories indexOfObject:*MEMORY[0x277D76818]];

    if (v6 < index)
    {
      index = v6;
    }
  }

  self->_selectedCategoryIndex = index;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [(DBSLargeTextSliderListController *)self setDynamicTypeValue:v7 forSpecifier:0];
}

- (void)setDynamicTypeValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  if (!self->_viewIsDisappearing)
  {
    integerValue = [valueCopy integerValue];
    if (integerValue != [(DBSLargeTextSliderListController *)self selectedCategoryIndex]|| !specifierCopy && *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      contentSizeCategories = [(DBSLargeTextSliderListController *)self contentSizeCategories];
      v10 = [contentSizeCategories indexOfObject:*MEMORY[0x277D76818]];

      showsLargerSizesHelpText = [(DBSLargeTextSliderListController *)self showsLargerSizesHelpText];
      self->_selectedCategoryIndex = [valueCopy integerValue];
      view = [(DBSLargeTextSliderListController *)self view];
      [view setNeedsLayout];

      v13 = ![(DBSLargeTextSliderListController *)self showsExtendedRangeSwitch]&& ![(DBSLargeTextSliderListController *)self usesExtendedRange]&& [(DBSLargeTextSliderListController *)self selectedCategoryIndex]== v10;
      [(DBSLargeTextSliderListController *)self setShowsLargerSizesHelpText:v13];
      if (showsLargerSizesHelpText != [(DBSLargeTextSliderListController *)self showsLargerSizesHelpText])
      {
        showsLargerSizesHelpText2 = [(DBSLargeTextSliderListController *)self showsLargerSizesHelpText];
        sliderGroupSpecifier = self->_sliderGroupSpecifier;
        if (showsLargerSizesHelpText2)
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          [(PSSpecifier *)sliderGroupSpecifier setProperty:v17 forKey:*MEMORY[0x277D3FFA0]];
        }

        else
        {
          [(PSSpecifier *)self->_sliderGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FFA0]];
        }
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __69__DBSLargeTextSliderListController_setDynamicTypeValue_forSpecifier___block_invoke;
      v18[3] = &unk_2784594B8;
      v19 = specifierCopy;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v18);
    }
  }
}

void __69__DBSLargeTextSliderListController_setDynamicTypeValue_forSpecifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) || ([*(a1 + 40) largeTextController], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "savesCategoryNameOnlyOnSliderEvent"), v2, (v3 & 1) == 0))
  {
    v4 = [*(a1 + 40) contentSizeCategories];
    v5 = [v4 objectAtIndex:{objc_msgSend(*(a1 + 40), "selectedCategoryIndex")}];

    v6 = [*(a1 + 40) largeTextController];
    [v6 savePreferredContentSizeCategoryName:v5];
  }

  v7 = MEMORY[0x277D85CD0];

  dispatch_async(v7, &__block_literal_global_6);
}

void __69__DBSLargeTextSliderListController_setDynamicTypeValue_forSpecifier___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"DidPostContentSizeChanged" object:0];
}

- (id)getDynamicTypeValueForSpecifier:(id)specifier
{
  largeTextController = [(DBSLargeTextSliderListController *)self largeTextController];
  readPreferredContentSizeCategoryName = [largeTextController readPreferredContentSizeCategoryName];

  v6 = MEMORY[0x277CCABB0];
  if (readPreferredContentSizeCategoryName)
  {
    contentSizeCategories = [(DBSLargeTextSliderListController *)self contentSizeCategories];
    v8 = [v6 numberWithInteger:{objc_msgSend(contentSizeCategories, "indexOfObject:", readPreferredContentSizeCategoryName)}];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DBSLargeTextSliderListController selectedCategoryIndex](self, "selectedCategoryIndex")}];
  }

  return v8;
}

- (void)updateSliderValue
{
  largeTextController = [(DBSLargeTextSliderListController *)self largeTextController];
  readPreferredContentSizeCategoryName = [largeTextController readPreferredContentSizeCategoryName];

  contentSizeCategories = [(DBSLargeTextSliderListController *)self contentSizeCategories];
  if (readPreferredContentSizeCategoryName)
  {
    v5 = readPreferredContentSizeCategoryName;
  }

  else
  {
    v5 = *MEMORY[0x277D76838];
  }

  -[DBSLargeTextSliderListController setSelectedCategoryIndex:](self, "setSelectedCategoryIndex:", [contentSizeCategories indexOfObject:v5]);
}

- (void)resetSliderValue
{
  largeTextController = [(DBSLargeTextSliderListController *)self largeTextController];
  [largeTextController resetContentSizeCategoryName];

  [(DBSLargeTextSliderListController *)self reloadSpecifiers];
}

- (DBSLargeTextController)largeTextController
{
  WeakRetained = objc_loadWeakRetained(&self->_largeTextController);

  return WeakRetained;
}

@end