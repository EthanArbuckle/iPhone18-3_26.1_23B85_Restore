@interface DBSFineTuneController
- (DBSFineTuneController)init;
- (id)specifiers;
- (void)addOrRemoveTargetFooter;
- (void)openFineTuneHelpLink;
- (void)openTargetOutOfRangeHelpLink;
- (void)restoreDefaults:(id)a3;
- (void)setMeasuredLuminance:(id)a3 forSpecifier:(id)a4;
- (void)setMeasuredWhitePointX:(id)a3 forSpecifier:(id)a4;
- (void)setMeasuredWhitePointY:(id)a3 forSpecifier:(id)a4;
- (void)setTargetLuminance:(id)a3 forSpecifier:(id)a4;
- (void)setTargetWhitePointX:(id)a3 forSpecifier:(id)a4;
- (void)setTargetWhitePointY:(id)a3 forSpecifier:(id)a4;
- (void)updateTargetLuminanceValidationRange;
- (void)updateValidationRanges;
- (void)userDidTapCancel:(id)a3;
- (void)userDidTapDone:(id)a3;
- (void)validateUserAdjustment;
- (void)viewDidLoad;
@end

@implementation DBSFineTuneController

- (DBSFineTuneController)init
{
  v8.receiver = self;
  v8.super_class = DBSFineTuneController;
  v2 = [(DBSFineTuneController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    xyNumberFormatter = v2->_xyNumberFormatter;
    v2->_xyNumberFormatter = v3;

    [(NSNumberFormatter *)v2->_xyNumberFormatter setNumberStyle:1];
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    luminanceNumberFormatter = v2->_luminanceNumberFormatter;
    v2->_luminanceNumberFormatter = v5;

    [(NSNumberFormatter *)v2->_luminanceNumberFormatter setNumberStyle:1];
    [(NSNumberFormatter *)v2->_luminanceNumberFormatter setRoundingMode:2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = DBSFineTuneController;
  [(DBSFineTuneController *)&v10 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidTapCancel_];
  v4 = [(DBSFineTuneController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_userDidTapDone_];
  v6 = [(DBSFineTuneController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(DBSFineTuneController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:0];

  v9 = DBS_LocalizedStringForDisplays(@"FINE_TUNE");
  [(DBSFineTuneController *)self setTitle:v9];
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v49 = *MEMORY[0x277D3FC48];
    v4 = [(DBSFineTuneController *)self loadSpecifiersFromPlistName:@"FineTune" target:self];
    v5 = [v4 specifierForID:@"RESTORE_DEFAULTS"];
    restoreDefaultsSpecifier = self->_restoreDefaultsSpecifier;
    self->_restoreDefaultsSpecifier = v5;

    v7 = [MEMORY[0x277CD9E40] mainDisplay];
    v8 = [v7 currentPreset];
    v9 = [v8 userAdjustment];

    [v9 xDelta];
    v48 = v9;
    if (v10 == 0.0 && ([v9 yDelta], v11 == 0.0) && (objc_msgSend(v9, "luminanceScale"), v12 == 1.0))
    {
      [(PSSpecifier *)self->_restoreDefaultsSpecifier setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    else
    {
      v13 = [v4 specifierForID:@"RESTORE_DEFAULTS_GROUP"];
      v14 = NSSelectorFromString(&cfstr_Timestamp.isa);
      if (objc_opt_respondsToSelector())
      {
        v15 = MEMORY[0x277CBEAA8];
        [v9 v14];
        v16 = [v15 dateWithTimeIntervalSince1970:?];
        v17 = [MEMORY[0x277CCA968] localizedStringFromDate:v16 dateStyle:3 timeStyle:3];
        [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF88]];
      }
    }

    v18 = [v4 specifierForID:@"MEASURED_WHITE_POINT_X"];
    measuredWhitePointXSpecifier = self->_measuredWhitePointXSpecifier;
    self->_measuredWhitePointXSpecifier = v18;

    v20 = [v4 specifierForID:@"MEASURED_WHITE_POINT_Y"];
    measuredWhitePointYSpecifier = self->_measuredWhitePointYSpecifier;
    self->_measuredWhitePointYSpecifier = v20;

    v22 = [v4 specifierForID:@"MEASURED_LUMINANCE"];
    measuredLuminanceSpecifier = self->_measuredLuminanceSpecifier;
    self->_measuredLuminanceSpecifier = v22;

    v24 = [v4 specifierForID:@"TARGET_WHITE_POINT_X"];
    targetWhitePointXSpecifier = self->_targetWhitePointXSpecifier;
    self->_targetWhitePointXSpecifier = v24;

    v26 = [v4 specifierForID:@"TARGET_WHITE_POINT_Y"];
    targetWhitePointYSpecifier = self->_targetWhitePointYSpecifier;
    self->_targetWhitePointYSpecifier = v26;

    v28 = [v4 specifierForID:@"TARGET_LUMINANCE"];
    targetLuminanceSpecifier = self->_targetLuminanceSpecifier;
    self->_targetLuminanceSpecifier = v28;

    v30 = [v4 specifierForID:@"INTRODUCTION"];
    introductionSpecifier = self->_introductionSpecifier;
    self->_introductionSpecifier = v30;

    v32 = [v4 specifierForID:@"TARGET_GROUP"];
    fineTuneTargetGroupSpecifier = self->_fineTuneTargetGroupSpecifier;
    self->_fineTuneTargetGroupSpecifier = v32;

    v34 = *MEMORY[0x277D3FEC0];
    [(PSSpecifier *)self->_measuredWhitePointXSpecifier setObject:&unk_28349F678 forKeyedSubscript:*MEMORY[0x277D3FEC0]];
    v35 = *MEMORY[0x277D3FEB8];
    [(PSSpecifier *)self->_measuredWhitePointXSpecifier setObject:&unk_28349F688 forKeyedSubscript:*MEMORY[0x277D3FEB8]];
    [(PSSpecifier *)self->_measuredWhitePointYSpecifier setObject:&unk_28349F698 forKeyedSubscript:v34];
    [(PSSpecifier *)self->_measuredWhitePointYSpecifier setObject:&unk_28349F6A8 forKeyedSubscript:v35];
    [(PSSpecifier *)self->_measuredLuminanceSpecifier setObject:&unk_28349F6B8 forKeyedSubscript:v34];
    [(PSSpecifier *)self->_measuredLuminanceSpecifier setObject:&unk_28349F6C8 forKeyedSubscript:v35];
    [(PSSpecifier *)self->_targetWhitePointXSpecifier setObject:&unk_28349F678 forKeyedSubscript:v34];
    [(PSSpecifier *)self->_targetWhitePointXSpecifier setObject:&unk_28349F688 forKeyedSubscript:v35];
    [(PSSpecifier *)self->_targetWhitePointYSpecifier setObject:&unk_28349F698 forKeyedSubscript:v34];
    [(PSSpecifier *)self->_targetWhitePointYSpecifier setObject:&unk_28349F6A8 forKeyedSubscript:v35];
    [(PSSpecifier *)self->_targetLuminanceSpecifier setObject:&unk_28349F6B8 forKeyedSubscript:v34];
    [(PSSpecifier *)self->_targetLuminanceSpecifier setObject:&unk_28349F6C8 forKeyedSubscript:v35];
    v36 = DBS_LocalizedStringForFineTune(@"INTRO_MAIN_TEXT");
    v37 = DBS_LocalizedStringForFineTune(@"INTRO_LINK_TEXT");
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v36, v37];
    v39 = self->_introductionSpecifier;
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    [(PSSpecifier *)v39 setProperty:v41 forKey:*MEMORY[0x277D3FF48]];

    [(PSSpecifier *)self->_introductionSpecifier setProperty:v38 forKey:*MEMORY[0x277D3FF70]];
    v42 = self->_introductionSpecifier;
    v51.location = [v38 rangeOfString:v37];
    v43 = NSStringFromRange(v51);
    [(PSSpecifier *)v42 setProperty:v43 forKey:*MEMORY[0x277D3FF58]];

    v44 = self->_introductionSpecifier;
    v45 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [(PSSpecifier *)v44 setProperty:v45 forKey:*MEMORY[0x277D3FF68]];

    [(PSSpecifier *)self->_introductionSpecifier setProperty:@"openFineTuneHelpLink" forKey:*MEMORY[0x277D3FF50]];
    v46 = *(&self->super.super.super.super.super.isa + v49);
    *(&self->super.super.super.super.super.isa + v49) = v4;

    v3 = *(&self->super.super.super.super.super.isa + v49);
  }

  return v3;
}

- (void)userDidTapCancel:(id)a3
{
  v3 = [(DBSFineTuneController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)userDidTapDone:(id)a3
{
  currentPreset = self->_currentPreset;
  v5 = [MEMORY[0x277CD9E40] mainDisplay];
  [v5 setCurrentPreset:currentPreset];

  v6 = [(DBSFineTuneController *)self navigationController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)updateTargetLuminanceValidationRange
{
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = [v3 currentPreset];
  v50 = [v4 userAdjustmentCommand];

  [v50 minXDelta];
  v6 = v5;
  v7 = [v50 userAdjustment];
  [v7 xDelta];
  v9 = v6 - v8;

  [v50 maxXDelta];
  v11 = v10;
  v12 = [v50 userAdjustment];
  [v12 xDelta];
  v14 = v11 - v13;

  [v50 minYDelta];
  v49 = v15;
  v16 = [v50 userAdjustment];
  [v16 yDelta];
  v18 = v17;

  [v50 maxYDelta];
  v20 = v19;
  v21 = [v50 userAdjustment];
  [v21 yDelta];
  v23 = v22;

  [(NSNumber *)self->_targetWhitePointX doubleValue];
  v25 = v24;
  [(NSNumber *)self->_measuredWhitePointX doubleValue];
  v27 = v25 - v26;
  [(NSNumber *)self->_targetWhitePointY doubleValue];
  v29 = v28;
  [(NSNumber *)self->_measuredWhitePointY doubleValue];
  WhitepointShiftLuminanceLoss = 1.0;
  if (v9 + -0.000001 < v27 && v14 + 0.000001 > v27)
  {
    v33 = v29 - v30;
    if (v49 - v18 + -0.000001 < v29 - v30 && v20 - v23 + 0.000001 > v33)
    {
      WhitepointShiftLuminanceLoss = GetWhitepointShiftLuminanceLoss(v27, v33);
    }
  }

  [v50 minLuminanceScale];
  v36 = v35;
  v37 = [v50 userAdjustment];
  [v37 luminanceScale];
  v39 = v38;

  [v50 maxLuminanceScale];
  v41 = v40;
  v42 = [v50 userAdjustment];
  [v42 luminanceScale];
  v44 = v43;

  if (numberInSpecifierValidationRange(self->_measuredLuminance, self->_measuredLuminanceSpecifier))
  {
    [(NSNumber *)self->_measuredLuminance doubleValue];
    targetLuminanceSpecifier = self->_targetLuminanceSpecifier;
    v47 = WhitepointShiftLuminanceLoss * v41 / v44 * v46;
    v48 = WhitepointShiftLuminanceLoss * v36 / v39 * v46;
  }

  else
  {
    targetLuminanceSpecifier = self->_targetLuminanceSpecifier;
    v48 = 40.0;
    v47 = 1200.0;
  }

  updateSpecifierValidationRange(targetLuminanceSpecifier, v48, v47);
  [(DBSFineTuneController *)self reloadSpecifier:self->_targetLuminanceSpecifier];
}

- (void)updateValidationRanges
{
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = [v3 currentPreset];
  v33 = [v4 userAdjustmentCommand];

  [v33 minXDelta];
  v6 = v5;
  v7 = [v33 userAdjustment];
  [v7 xDelta];
  v9 = v8;

  [v33 maxXDelta];
  v11 = v10;
  v12 = [v33 userAdjustment];
  [v12 xDelta];
  v14 = v13;

  [v33 minYDelta];
  v16 = v15;
  v17 = [v33 userAdjustment];
  [v17 yDelta];
  v19 = v18;

  [v33 maxYDelta];
  v21 = v20;
  v22 = [v33 userAdjustment];
  [v22 yDelta];
  v24 = v23;

  if (numberInSpecifierValidationRange(self->_measuredWhitePointX, self->_measuredWhitePointXSpecifier))
  {
    [(NSNumber *)self->_measuredWhitePointX doubleValue];
    targetWhitePointXSpecifier = self->_targetWhitePointXSpecifier;
    v27 = v11 - v14 + v26;
    v28 = v6 - v9 + v26;
  }

  else
  {
    targetWhitePointXSpecifier = self->_targetWhitePointXSpecifier;
    v28 = 0.269;
    v27 = 0.376;
  }

  updateSpecifierValidationRange(targetWhitePointXSpecifier, v28, v27);
  [(DBSFineTuneController *)self reloadSpecifier:self->_targetWhitePointXSpecifier];
  if (numberInSpecifierValidationRange(self->_measuredWhitePointY, self->_measuredWhitePointYSpecifier))
  {
    [(NSNumber *)self->_measuredWhitePointY doubleValue];
    targetWhitePointYSpecifier = self->_targetWhitePointYSpecifier;
    v31 = v21 - v24 + v30;
    v32 = v16 - v19 + v30;
  }

  else
  {
    targetWhitePointYSpecifier = self->_targetWhitePointYSpecifier;
    v32 = 0.284;
    v31 = 0.389;
  }

  updateSpecifierValidationRange(targetWhitePointYSpecifier, v32, v31);
  [(DBSFineTuneController *)self reloadSpecifier:self->_targetWhitePointYSpecifier];
  [(DBSFineTuneController *)self updateTargetLuminanceValidationRange];
}

- (void)addOrRemoveTargetFooter
{
  targetWhitePointX = self->_targetWhitePointX;
  if (targetWhitePointX)
  {
    v4 = !numberInSpecifierValidationRange(targetWhitePointX, self->_targetWhitePointXSpecifier);
  }

  else
  {
    v4 = 0;
  }

  targetWhitePointY = self->_targetWhitePointY;
  if (targetWhitePointY)
  {
    v6 = !numberInSpecifierValidationRange(targetWhitePointY, self->_targetWhitePointYSpecifier);
  }

  else
  {
    v6 = 0;
  }

  targetLuminance = self->_targetLuminance;
  if (targetLuminance)
  {
    v8 = !numberInSpecifierValidationRange(targetLuminance, self->_targetLuminanceSpecifier);
  }

  else
  {
    v8 = 0;
  }

  if (v4 || v6 || v8)
  {
    v9 = DBS_LocalizedStringForFineTune(@"TARGET_OUTOFRANGE_MAIN_TEXT");
    v10 = DBS_LocalizedStringForFineTune(@"TARGET_LEARNMORE_TEXT");
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v9, v10];
    fineTuneTargetGroupSpecifier = self->_fineTuneTargetGroupSpecifier;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(PSSpecifier *)fineTuneTargetGroupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF48]];

    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier setProperty:v11 forKey:*MEMORY[0x277D3FF70]];
    v15 = self->_fineTuneTargetGroupSpecifier;
    v22.location = [v11 rangeOfString:v10];
    v16 = NSStringFromRange(v22);
    [(PSSpecifier *)v15 setProperty:v16 forKey:*MEMORY[0x277D3FF58]];

    v17 = self->_fineTuneTargetGroupSpecifier;
    v18 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [(PSSpecifier *)v17 setProperty:v18 forKey:*MEMORY[0x277D3FF68]];

    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier setProperty:@"openTargetOutOfRangeHelpLink" forKey:*MEMORY[0x277D3FF50]];
  }

  else
  {
    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF48]];
    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF70]];
    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF58]];
    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF68]];
    [(PSSpecifier *)self->_fineTuneTargetGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF50]];
  }

  v20 = [(DBSFineTuneController *)self table];
  v19 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
  [v20 _reloadSectionHeaderFooters:v19 withRowAnimation:5];
}

- (void)validateUserAdjustment
{
  [(DBSFineTuneController *)self addOrRemoveTargetFooter];
  if (numberInSpecifierValidationRange(self->_measuredWhitePointX, self->_measuredWhitePointXSpecifier) && numberInSpecifierValidationRange(self->_measuredWhitePointY, self->_measuredWhitePointYSpecifier) && numberInSpecifierValidationRange(self->_measuredLuminance, self->_measuredLuminanceSpecifier) && numberInSpecifierValidationRange(self->_targetWhitePointX, self->_targetWhitePointXSpecifier) && numberInSpecifierValidationRange(self->_targetWhitePointY, self->_targetWhitePointYSpecifier) && numberInSpecifierValidationRange(self->_targetLuminance, self->_targetLuminanceSpecifier))
  {
    v3 = [MEMORY[0x277CD9E40] mainDisplay];
    v4 = [v3 currentPreset];
    currentPreset = self->_currentPreset;
    self->_currentPreset = v4;

    v20 = [(CADisplayPreset *)self->_currentPreset userAdjustmentCommand];
    if (v20 && (-[NSNumber doubleValue](self->_targetWhitePointX, "doubleValue"), v7 = v6, -[NSNumber doubleValue](self->_measuredWhitePointX, "doubleValue"), v9 = v7 - v8, -[NSNumber doubleValue](self->_targetWhitePointY, "doubleValue"), v11 = v10, -[NSNumber doubleValue](self->_measuredWhitePointY, "doubleValue"), v13 = v11 - v12, -[NSNumber doubleValue](self->_targetLuminance, "doubleValue"), v15 = v14, -[NSNumber doubleValue](self->_measuredLuminance, "doubleValue"), [v20 transformWhitePointByXDelta:v9 yDelta:v13 luminanceScale:v15 / v16]))
    {
      [(CADisplayPreset *)self->_currentPreset applyUserAdjustmentCommand:v20];
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(DBSFineTuneController *)self navigationItem];
    v19 = [v18 rightBarButtonItem];
    [v19 setEnabled:v17];
  }

  else
  {
    v20 = [(DBSFineTuneController *)self navigationItem];
    v18 = [v20 rightBarButtonItem];
    [v18 setEnabled:0];
  }
}

- (void)setMeasuredWhitePointX:(id)a3 forSpecifier:(id)a4
{
  v5 = [(NSNumberFormatter *)self->_xyNumberFormatter numberFromString:a3, a4];
  measuredWhitePointX = self->_measuredWhitePointX;
  self->_measuredWhitePointX = v5;

  [(DBSFineTuneController *)self updateValidationRanges];

  [(DBSFineTuneController *)self validateUserAdjustment];
}

- (void)setMeasuredWhitePointY:(id)a3 forSpecifier:(id)a4
{
  v5 = [(NSNumberFormatter *)self->_xyNumberFormatter numberFromString:a3, a4];
  measuredWhitePointY = self->_measuredWhitePointY;
  self->_measuredWhitePointY = v5;

  [(DBSFineTuneController *)self updateValidationRanges];

  [(DBSFineTuneController *)self validateUserAdjustment];
}

- (void)setMeasuredLuminance:(id)a3 forSpecifier:(id)a4
{
  v5 = [(NSNumberFormatter *)self->_luminanceNumberFormatter numberFromString:a3, a4];
  measuredLuminance = self->_measuredLuminance;
  self->_measuredLuminance = v5;

  [(DBSFineTuneController *)self updateValidationRanges];

  [(DBSFineTuneController *)self validateUserAdjustment];
}

- (void)setTargetWhitePointX:(id)a3 forSpecifier:(id)a4
{
  v5 = [(NSNumberFormatter *)self->_xyNumberFormatter numberFromString:a3, a4];
  targetWhitePointX = self->_targetWhitePointX;
  self->_targetWhitePointX = v5;

  [(DBSFineTuneController *)self updateTargetLuminanceValidationRange];

  [(DBSFineTuneController *)self validateUserAdjustment];
}

- (void)setTargetWhitePointY:(id)a3 forSpecifier:(id)a4
{
  v5 = [(NSNumberFormatter *)self->_xyNumberFormatter numberFromString:a3, a4];
  targetWhitePointY = self->_targetWhitePointY;
  self->_targetWhitePointY = v5;

  [(DBSFineTuneController *)self updateTargetLuminanceValidationRange];

  [(DBSFineTuneController *)self validateUserAdjustment];
}

- (void)setTargetLuminance:(id)a3 forSpecifier:(id)a4
{
  v5 = [(NSNumberFormatter *)self->_luminanceNumberFormatter numberFromString:a3, a4];
  targetLuminance = self->_targetLuminance;
  self->_targetLuminance = v5;

  [(DBSFineTuneController *)self validateUserAdjustment];
}

- (void)restoreDefaults:(id)a3
{
  v4 = [MEMORY[0x277CD9E40] mainDisplay];
  v5 = [v4 currentPreset];
  currentPreset = self->_currentPreset;
  self->_currentPreset = v5;

  v7 = [(CADisplayPreset *)self->_currentPreset userAdjustmentCommand];
  v21 = v7;
  if (v7 && ([v7 userAdjustment], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "xDelta"), v10 = -v9, v8, objc_msgSend(v21, "userAdjustment"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "yDelta"), v13 = -v12, v11, objc_msgSend(v21, "userAdjustment"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "luminanceScale"), v16 = 1.0 / v15, v14, (objc_msgSend(v21, "transformWhitePointByXDelta:yDelta:luminanceScale:", v10, v13, v16) & 1) != 0))
  {
    [(CADisplayPreset *)self->_currentPreset applyUserAdjustmentCommand:v21];
    v17 = self->_currentPreset;
    v18 = [MEMORY[0x277CD9E40] mainDisplay];
    [v18 setCurrentPreset:v17];

    [(PSSpecifier *)self->_restoreDefaultsSpecifier setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [(DBSFineTuneController *)self reloadSpecifier:self->_restoreDefaultsSpecifier];
    v19 = [(DBSFineTuneController *)self navigationController];
    [v19 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v19 = [(DBSFineTuneController *)self navigationItem];
    v20 = [v19 rightBarButtonItem];
    [v20 setEnabled:0];
  }
}

- (void)openFineTuneHelpLink
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/HT213349?cid=mc-ols-ipad-article_ht213349-ipados_ui-10022023#calibrate"];
  [v3 openURL:v2 withCompletionHandler:&__block_literal_global_2];
}

void __45__DBSFineTuneController_openFineTuneHelpLink__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = DBSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_22102E000, v2, OS_LOG_TYPE_DEFAULT, "Failed to open Fine-Tune support url.", v3, 2u);
    }
  }
}

- (void)openTargetOutOfRangeHelpLink
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213349?cid=mc-ols-ipad-article_ht213349-ipados_ui-10022023#range-limits"];
  [v3 openURL:v2 withCompletionHandler:&__block_literal_global_95];
}

void __53__DBSFineTuneController_openTargetOutOfRangeHelpLink__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = DBSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_22102E000, v2, OS_LOG_TYPE_DEFAULT, "Failed to open Fine-Tune support url.", v3, 2u);
    }
  }
}

@end