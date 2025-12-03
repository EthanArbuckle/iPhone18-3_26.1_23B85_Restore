@interface DBSLargeTextController
- (DBSLargeTextController)init;
- (id)readPreferredContentSizeCategoryName;
- (id)specifiers;
- (void)dealloc;
- (void)loadView;
- (void)savePreferredContentSizeCategoryName:(id)name;
- (void)saveUsesExtendedRange:(BOOL)range;
- (void)setShowsExtendedRangeSwitch:(BOOL)switch;
- (void)setShowsResetSliderButton:(BOOL)button;
- (void)setUsesExtendedRange:(id)range forSpecifier:(id)specifier;
- (void)sizeCategoryDidChange:(id)change;
- (void)updateSlider;
- (void)updateSlidersForNewUsesExtendedRangeValue:(BOOL)value;
- (void)viewDidLayoutSubviews;
@end

@implementation DBSLargeTextController

- (DBSLargeTextController)init
{
  v15.receiver = self;
  v15.super_class = DBSLargeTextController;
  v2 = [(DBSLargeTextController *)&v15 init];
  if (v2)
  {
    v3 = DBS_LocalizedStringForDisplays(@"TEXT_SIZE");
    [(DBSLargeTextController *)v2 setTitle:v3];

    v4 = objc_opt_new();
    sliderListController = v2->_sliderListController;
    v2->_sliderListController = v4;

    [(DBSLargeTextSliderListController *)v2->_sliderListController setUsesExtendedRange:0];
    [(DBSLargeTextSliderListController *)v2->_sliderListController setShowsResetSliderButton:v2->_showsResetSliderButton];
    [(DBSLargeTextSliderListController *)v2->_sliderListController setLargeTextController:v2];
    v6 = objc_opt_new();
    extendedRangeSliderListController = v2->_extendedRangeSliderListController;
    v2->_extendedRangeSliderListController = v6;

    [(DBSLargeTextSliderListController *)v2->_extendedRangeSliderListController setUsesExtendedRange:1];
    [(DBSLargeTextSliderListController *)v2->_extendedRangeSliderListController setShowsResetSliderButton:v2->_showsResetSliderButton];
    [(DBSLargeTextSliderListController *)v2->_extendedRangeSliderListController setLargeTextController:v2];
    readUsesExtendedRange = [(DBSLargeTextController *)v2 readUsesExtendedRange];
    v2->_usesExtendedRange = readUsesExtendedRange;
    if (readUsesExtendedRange)
    {
      v9 = 1464;
    }

    else
    {
      v9 = 1456;
    }

    v10 = *(&v2->super.super.super.super.super.isa + v9);
    [(DBSLargeTextController *)v2 addChildViewController:v10];
    view = [(DBSLargeTextController *)v2 view];
    view2 = [v10 view];
    [view addSubview:view2];

    [v10 didMoveToParentViewController:v2];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    LOBYTE(view2) = [currentDevice sf_isiPhone];

    if ((view2 & 1) == 0)
    {
      [*(&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setClipsToBounds:1];
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSLargeTextController;
  [(DBSLargeTextController *)&v4 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = DBSLargeTextController;
  [(DBSLargeTextController *)&v4 loadView];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
}

- (void)viewDidLayoutSubviews
{
  v56.receiver = self;
  v56.super_class = DBSLargeTextController;
  [(DBSLargeTextController *)&v56 viewDidLayoutSubviews];
  if (self->_usesExtendedRange)
  {
    v3 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v3 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v4 = *(&self->super.super.super.super.super.isa + *v3);
  table = [v4 table];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v7 = [table cellForRowAtIndexPath:v6];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  LOBYTE(v6) = [currentDevice sf_isiPhone];

  if (v6)
  {
    table2 = [v4 table];
    [table2 contentSize];
    v11 = v10;
    v13 = v12;

    interfaceOrientation = [(DBSLargeTextController *)self interfaceOrientation];
    table3 = [v4 table];
    [table3 _bottomPadding];
    v17 = v16;

    table8 = v7;
    if (self->_showsResetSliderButton)
    {
      table4 = [v4 table];
      numberOfSections = [table4 numberOfSections];

      if (numberOfSections == 2)
      {
        table5 = [v4 table];
        v22 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v23 = [table5 cellForRowAtIndexPath:v22];

        table8 = v23;
      }
    }

    if (table8)
    {
      if (v17 <= 0.0 && (interfaceOrientation - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        [table8 frame];
        MaxY = CGRectGetMaxY(v57);
        table6 = [v4 table];
        [table6 frame];
        v13 = MaxY - CGRectGetMinY(v58);
      }
    }
  }

  else
  {
    table7 = [(DBSLargeTextController *)self table];
    [table7 frame];
    v11 = v28;
    v30 = v29;

    v13 = v30 * 0.55;
    if (![v4 showsLargerSizesHelpText])
    {
      goto LABEL_18;
    }

    [v7 frame];
    MinY = CGRectGetMinY(v59);
    table8 = [v4 table];
    [table8 frame];
    v13 = v13 + MinY - CGRectGetMinY(v60);
  }

LABEL_18:
  table9 = [v4 table];
  [table9 frame];
  v34 = v33;
  v36 = v35;

  table10 = [v4 table];
  [table10 setFrame:{v34, v36, v11, v13}];

  view = [v4 view];
  [view frame];

  view2 = [(DBSLargeTextController *)self view];
  [view2 frame];
  CGRectGetHeight(v61);
  PSRoundToPixel();
  v41 = v40;

  view3 = [v4 view];
  [view3 setFrame:{0.0, v41, v11, v13}];

  table11 = [(DBSLargeTextController *)self table];
  [table11 frame];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = v51 - v13;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  sf_isiPhone = [currentDevice2 sf_isiPhone];

  if (!sf_isiPhone)
  {
    v52 = v52 + -20.0;
  }

  table12 = [(DBSLargeTextController *)self table];
  [table12 setFrame:{v45, v47, v49, v52}];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPhone = [currentDevice sf_isiPhone];

    if (sf_isiPhone)
    {
      [emptyGroupSpecifier setProperty:@"DBSLargeTextExplanationView" forKey:*MEMORY[0x277D3FF48]];
    }

    [v5 addObject:emptyGroupSpecifier];
    if (self->_showsExtendedRangeSwitch)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = DBS_LocalizedStringForLargeFontSettings(@"LARGER_DYNAMIC_TYPE");
      v11 = [v9 preferenceSpecifierNamed:v10 target:self set:sel_setUsesExtendedRange_forSpecifier_ get:sel_usesExtendedRangeForSpecifier_ detail:0 cell:6 edit:0];

      [v11 setIdentifier:@"LARGER_DYNAMIC_TYPE_SWITCH"];
      [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
      [v5 addObject:v11];
    }

    v12 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)sizeCategoryDidChange:(id)change
{
  if (self->_usesExtendedRange)
  {
    v4 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v4 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v5 = *(&self->super.super.super.super.super.isa + *v4);
  contentSizeCategories = [v5 contentSizeCategories];
  selectedCategoryIndex = [v5 selectedCategoryIndex];

  v9 = [contentSizeCategories objectAtIndexedSubscript:selectedCategoryIndex];

  [DBSAnalytics logTextSizeEvent:v9];
  view = [(DBSLargeTextController *)self view];
  [view setNeedsLayout];
}

- (void)setShowsExtendedRangeSwitch:(BOOL)switch
{
  switchCopy = switch;
  self->_showsExtendedRangeSwitch = switch;
  [(DBSLargeTextSliderListController *)self->_sliderListController setShowsExtendedRangeSwitch:?];
  [(DBSLargeTextSliderListController *)self->_extendedRangeSliderListController setShowsExtendedRangeSwitch:switchCopy];
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    [(DBSLargeTextController *)self reloadSpecifiers];
  }

  v5 = @"LARGER_TEXT";
  if (!switchCopy && !self->_showsResetSliderButton)
  {
    v5 = @"TEXT_SIZE";
  }

  v6 = DBS_LocalizedStringForDisplays(v5);
  [(DBSLargeTextController *)self setTitle:v6];
}

- (void)setUsesExtendedRange:(id)range forSpecifier:(id)specifier
{
  bOOLValue = [range BOOLValue];
  if (self->_usesExtendedRange != bOOLValue)
  {
    v6 = bOOLValue;
    [(DBSLargeTextController *)self updateSlidersForNewUsesExtendedRangeValue:bOOLValue];

    [(DBSLargeTextController *)self saveUsesExtendedRange:v6];
  }
}

- (void)updateSlidersForNewUsesExtendedRangeValue:(BOOL)value
{
  valueCopy = value;
  if (self->_usesExtendedRange)
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v22 = *(&self->super.super.super.super.super.isa + *v5);
  view = [v22 view];
  [view removeFromSuperview];

  [v22 removeFromParentViewController];
  [v22 didMoveToParentViewController:0];
  if (valueCopy)
  {
    v7 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v7 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v8 = *(&self->super.super.super.super.super.isa + *v7);
  [(DBSLargeTextController *)self addChildViewController:v8];
  view2 = [(DBSLargeTextController *)self view];
  view3 = [v8 view];
  [view2 addSubview:view3];

  [v8 didMoveToParentViewController:self];
  [v8 setSelectedCategoryIndex:{objc_msgSend(v22, "selectedCategoryIndex")}];
  view4 = [v22 view];
  [view4 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view5 = [v8 view];

  [view5 setFrame:{v13, v15, v17, v19}];
  view6 = [(DBSLargeTextController *)self view];
  [view6 setNeedsLayout];

  self->_usesExtendedRange = valueCopy;
}

- (void)setShowsResetSliderButton:(BOOL)button
{
  buttonCopy = button;
  self->_showsResetSliderButton = button;
  [(DBSLargeTextSliderListController *)self->_sliderListController setShowsResetSliderButton:?];
  [(DBSLargeTextSliderListController *)self->_extendedRangeSliderListController setShowsResetSliderButton:buttonCopy];
  if (self->_usesExtendedRange)
  {
    v5 = 1464;
  }

  else
  {
    v5 = 1456;
  }

  [*(&self->super.super.super.super.super.isa + v5) reloadSpecifiers];
  v6 = @"LARGER_TEXT";
  if (!buttonCopy && !self->_showsExtendedRangeSwitch)
  {
    v6 = @"TEXT_SIZE";
  }

  v7 = DBS_LocalizedStringForDisplays(v6);
  [(DBSLargeTextController *)self setTitle:v7];
}

- (void)updateSlider
{
  readUsesExtendedRange = [(DBSLargeTextController *)self readUsesExtendedRange];
  usesExtendedRange = self->_usesExtendedRange;
  if (usesExtendedRange != readUsesExtendedRange)
  {
    [(DBSLargeTextController *)self updateSlidersForNewUsesExtendedRangeValue:readUsesExtendedRange];
    LOBYTE(usesExtendedRange) = self->_usesExtendedRange;
  }

  if (usesExtendedRange)
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v6 = *(&self->super.super.super.super.super.isa + *v5);

  [v6 updateSliderValue];
}

- (id)readPreferredContentSizeCategoryName
{
  v3 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
  v4 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v3);
  if (self->_usesExtendedRange)
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  contentSizeCategories = [*(&self->super.super.super.super.super.isa + *v5) contentSizeCategories];
  v7 = [contentSizeCategories containsObject:v4];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = *MEMORY[0x277D76838];
  }

  v9 = v8;

  return v8;
}

- (void)savePreferredContentSizeCategoryName:(id)name
{
  nameCopy = name;
  if (self->_usesExtendedRange)
  {
    v4 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v4 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  contentSizeCategories = [*(&self->super.super.super.super.super.isa + *v4) contentSizeCategories];
  v6 = [contentSizeCategories containsObject:nameCopy];

  if (v6)
  {
    v7 = nameCopy;
  }

  else
  {
    v7 = *MEMORY[0x277D76838];
  }

  v8 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
  CFPreferencesSetAppValue(@"UIPreferredContentSizeCategoryName", v7, v8);
  v9 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
  CFPreferencesAppSynchronize(v9);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ApplePreferredContentSizeCategoryChangedNotification", 0, 0, 1u);
}

- (void)saveUsesExtendedRange:(BOOL)range
{
  v3 = MEMORY[0x277CBED28];
  if (!range)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"largeTextUsesExtendedRange", *v3, @"com.apple.preferences-framework");

  CFPreferencesAppSynchronize(@"com.apple.preferences-framework");
}

@end