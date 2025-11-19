@interface DBSLargeTextController
- (DBSLargeTextController)init;
- (id)readPreferredContentSizeCategoryName;
- (id)specifiers;
- (void)dealloc;
- (void)loadView;
- (void)savePreferredContentSizeCategoryName:(id)a3;
- (void)saveUsesExtendedRange:(BOOL)a3;
- (void)setShowsExtendedRangeSwitch:(BOOL)a3;
- (void)setShowsResetSliderButton:(BOOL)a3;
- (void)setUsesExtendedRange:(id)a3 forSpecifier:(id)a4;
- (void)sizeCategoryDidChange:(id)a3;
- (void)updateSlider;
- (void)updateSlidersForNewUsesExtendedRangeValue:(BOOL)a3;
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
    v8 = [(DBSLargeTextController *)v2 readUsesExtendedRange];
    v2->_usesExtendedRange = v8;
    if (v8)
    {
      v9 = 1464;
    }

    else
    {
      v9 = 1456;
    }

    v10 = *(&v2->super.super.super.super.super.isa + v9);
    [(DBSLargeTextController *)v2 addChildViewController:v10];
    v11 = [(DBSLargeTextController *)v2 view];
    v12 = [v10 view];
    [v11 addSubview:v12];

    [v10 didMoveToParentViewController:v2];
    v13 = [MEMORY[0x277D75418] currentDevice];
    LOBYTE(v12) = [v13 sf_isiPhone];

    if ((v12 & 1) == 0)
    {
      [*(&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setClipsToBounds:1];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSLargeTextController;
  [(DBSLargeTextController *)&v4 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = DBSLargeTextController;
  [(DBSLargeTextController *)&v4 loadView];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
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
  v5 = [v4 table];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v7 = [v5 cellForRowAtIndexPath:v6];

  v8 = [MEMORY[0x277D75418] currentDevice];
  LOBYTE(v6) = [v8 sf_isiPhone];

  if (v6)
  {
    v9 = [v4 table];
    [v9 contentSize];
    v11 = v10;
    v13 = v12;

    v14 = [(DBSLargeTextController *)self interfaceOrientation];
    v15 = [v4 table];
    [v15 _bottomPadding];
    v17 = v16;

    v18 = v7;
    if (self->_showsResetSliderButton)
    {
      v19 = [v4 table];
      v20 = [v19 numberOfSections];

      if (v20 == 2)
      {
        v21 = [v4 table];
        v22 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
        v23 = [v21 cellForRowAtIndexPath:v22];

        v18 = v23;
      }
    }

    if (v18)
    {
      if (v17 <= 0.0 && (v14 - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        [v18 frame];
        MaxY = CGRectGetMaxY(v57);
        v26 = [v4 table];
        [v26 frame];
        v13 = MaxY - CGRectGetMinY(v58);
      }
    }
  }

  else
  {
    v27 = [(DBSLargeTextController *)self table];
    [v27 frame];
    v11 = v28;
    v30 = v29;

    v13 = v30 * 0.55;
    if (![v4 showsLargerSizesHelpText])
    {
      goto LABEL_18;
    }

    [v7 frame];
    MinY = CGRectGetMinY(v59);
    v18 = [v4 table];
    [v18 frame];
    v13 = v13 + MinY - CGRectGetMinY(v60);
  }

LABEL_18:
  v32 = [v4 table];
  [v32 frame];
  v34 = v33;
  v36 = v35;

  v37 = [v4 table];
  [v37 setFrame:{v34, v36, v11, v13}];

  v38 = [v4 view];
  [v38 frame];

  v39 = [(DBSLargeTextController *)self view];
  [v39 frame];
  CGRectGetHeight(v61);
  PSRoundToPixel();
  v41 = v40;

  v42 = [v4 view];
  [v42 setFrame:{0.0, v41, v11, v13}];

  v43 = [(DBSLargeTextController *)self table];
  [v43 frame];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = v51 - v13;
  v53 = [MEMORY[0x277D75418] currentDevice];
  v54 = [v53 sf_isiPhone];

  if (!v54)
  {
    v52 = v52 + -20.0;
  }

  v55 = [(DBSLargeTextController *)self table];
  [v55 setFrame:{v45, v47, v49, v52}];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 sf_isiPhone];

    if (v8)
    {
      [v6 setProperty:@"DBSLargeTextExplanationView" forKey:*MEMORY[0x277D3FF48]];
    }

    [v5 addObject:v6];
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

- (void)sizeCategoryDidChange:(id)a3
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
  v6 = [v5 contentSizeCategories];
  v7 = [v5 selectedCategoryIndex];

  v9 = [v6 objectAtIndexedSubscript:v7];

  [DBSAnalytics logTextSizeEvent:v9];
  v8 = [(DBSLargeTextController *)self view];
  [v8 setNeedsLayout];
}

- (void)setShowsExtendedRangeSwitch:(BOOL)a3
{
  v3 = a3;
  self->_showsExtendedRangeSwitch = a3;
  [(DBSLargeTextSliderListController *)self->_sliderListController setShowsExtendedRangeSwitch:?];
  [(DBSLargeTextSliderListController *)self->_extendedRangeSliderListController setShowsExtendedRangeSwitch:v3];
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    [(DBSLargeTextController *)self reloadSpecifiers];
  }

  v5 = @"LARGER_TEXT";
  if (!v3 && !self->_showsResetSliderButton)
  {
    v5 = @"TEXT_SIZE";
  }

  v6 = DBS_LocalizedStringForDisplays(v5);
  [(DBSLargeTextController *)self setTitle:v6];
}

- (void)setUsesExtendedRange:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  if (self->_usesExtendedRange != v5)
  {
    v6 = v5;
    [(DBSLargeTextController *)self updateSlidersForNewUsesExtendedRangeValue:v5];

    [(DBSLargeTextController *)self saveUsesExtendedRange:v6];
  }
}

- (void)updateSlidersForNewUsesExtendedRangeValue:(BOOL)a3
{
  v3 = a3;
  if (self->_usesExtendedRange)
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v5 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v22 = *(&self->super.super.super.super.super.isa + *v5);
  v6 = [v22 view];
  [v6 removeFromSuperview];

  [v22 removeFromParentViewController];
  [v22 didMoveToParentViewController:0];
  if (v3)
  {
    v7 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v7 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v8 = *(&self->super.super.super.super.super.isa + *v7);
  [(DBSLargeTextController *)self addChildViewController:v8];
  v9 = [(DBSLargeTextController *)self view];
  v10 = [v8 view];
  [v9 addSubview:v10];

  [v8 didMoveToParentViewController:self];
  [v8 setSelectedCategoryIndex:{objc_msgSend(v22, "selectedCategoryIndex")}];
  v11 = [v22 view];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v8 view];

  [v20 setFrame:{v13, v15, v17, v19}];
  v21 = [(DBSLargeTextController *)self view];
  [v21 setNeedsLayout];

  self->_usesExtendedRange = v3;
}

- (void)setShowsResetSliderButton:(BOOL)a3
{
  v3 = a3;
  self->_showsResetSliderButton = a3;
  [(DBSLargeTextSliderListController *)self->_sliderListController setShowsResetSliderButton:?];
  [(DBSLargeTextSliderListController *)self->_extendedRangeSliderListController setShowsResetSliderButton:v3];
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
  if (!v3 && !self->_showsExtendedRangeSwitch)
  {
    v6 = @"TEXT_SIZE";
  }

  v7 = DBS_LocalizedStringForDisplays(v6);
  [(DBSLargeTextController *)self setTitle:v7];
}

- (void)updateSlider
{
  v3 = [(DBSLargeTextController *)self readUsesExtendedRange];
  usesExtendedRange = self->_usesExtendedRange;
  if (usesExtendedRange != v3)
  {
    [(DBSLargeTextController *)self updateSlidersForNewUsesExtendedRangeValue:v3];
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

  v6 = [*(&self->super.super.super.super.super.isa + *v5) contentSizeCategories];
  v7 = [v6 containsObject:v4];

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

- (void)savePreferredContentSizeCategoryName:(id)a3
{
  v11 = a3;
  if (self->_usesExtendedRange)
  {
    v4 = &OBJC_IVAR___DBSLargeTextController__extendedRangeSliderListController;
  }

  else
  {
    v4 = &OBJC_IVAR___DBSLargeTextController__sliderListController;
  }

  v5 = [*(&self->super.super.super.super.super.isa + *v4) contentSizeCategories];
  v6 = [v5 containsObject:v11];

  if (v6)
  {
    v7 = v11;
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

- (void)saveUsesExtendedRange:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"largeTextUsesExtendedRange", *v3, @"com.apple.preferences-framework");

  CFPreferencesAppSynchronize(@"com.apple.preferences-framework");
}

@end