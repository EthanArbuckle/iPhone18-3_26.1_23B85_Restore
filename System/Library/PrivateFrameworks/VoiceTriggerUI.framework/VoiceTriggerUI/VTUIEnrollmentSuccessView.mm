@interface VTUIEnrollmentSuccessView
- (VTUIEnrollmentSuccessView)initWithFrame:(CGRect)a3;
- (id)_createFooter;
- (id)footerView;
- (void)_setupContent;
- (void)addFinishButtonTarget:(id)a3 selector:(SEL)a4;
@end

@implementation VTUIEnrollmentSuccessView

- (VTUIEnrollmentSuccessView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentSuccessView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIEnrollmentSuccessView *)v3 _setupContent];
  }

  return v4;
}

- (void)_setupContent
{
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(VTUIEnrollmentSuccessView *)self setBackgroundColor:v3];

  v4 = +[VTUIStringsHelper sharedStringsHelper];
  v5 = [v4 uiLocalizedStringForKey:@"TEXT_TITLE_READY"];
  [(VTUIEnrollmentBaseView *)self setTitle:v5];

  v6 = +[VTUIStyle sharedStyle];
  v7 = [v6 shouldSetupForMultipleTriggerPhrases];

  v8 = MEMORY[0x277CCAB68];
  v9 = +[VTUIStyle sharedStyle];
  v10 = v9;
  if (v7)
  {
    v11 = @"TEXT_MAIN_READY_MIXED";
  }

  else
  {
    v11 = @"TEXT_MAIN_READY";
  }

  if (v7)
  {
    v12 = @"TEXT_MAIN_READY_MIXED_SPEAK_FREELY_SUFFIX";
  }

  else
  {
    v12 = @"TEXT_MAIN_READY_SPEAK_FREELY_SUFFIX";
  }

  v13 = [v9 VTUIDeviceSpecificString:v11];
  v14 = [v8 stringWithString:v13];

  v15 = +[VTUIStringsHelper sharedStringsHelper];
  v17 = [v15 uiLocalizedStringForKey:v12];

  v16 = +[VTUIStyle sharedStyle];
  LODWORD(v15) = [v16 supportsSiriConversationsAndBargeIn];

  if (v15)
  {
    [v14 appendString:v17];
  }

  [(VTUIEnrollmentBaseView *)self setSubtitle:v14];
}

- (id)_createFooter
{
  v35[5] = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
  finishButton = self->_finishButton;
  self->_finishButton = v6;

  [(VTUIButton *)self->_finishButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:self->_finishButton];
  v8 = +[VTUIStyle sharedStyle];
  v9 = [v8 isBuddyOrFollowUp];

  v10 = self->_finishButton;
  if (v9)
  {
    v11 = +[VTUIStyle sharedStyle];
    [v11 VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
  }

  else
  {
    v11 = +[VTUIStringsHelper sharedStringsHelper];
    [v11 uiLocalizedStringForKey:@"BUTTON_DONE"];
  }
  v12 = ;
  [(VTUIButton *)v10 setTitle:v12 forState:0];

  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v13 = self->_finishButton;
    [v3 primaryButtonHeight];
    [(VTUIButton *)v13 _setCornerRadius:v14 * 0.5];
    v15 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    [(VTUIButton *)self->_finishButton setConfiguration:v15];
  }

  v29 = MEMORY[0x277CCAAD0];
  v34 = [(VTUIButton *)self->_finishButton topAnchor];
  v33 = [v5 topAnchor];
  [v3 continueButtonOffset];
  v32 = [v34 constraintEqualToAnchor:v33 constant:?];
  v35[0] = v32;
  v31 = [(VTUIButton *)self->_finishButton centerXAnchor];
  v30 = [v5 centerXAnchor];
  v16 = [v31 constraintEqualToAnchor:v30];
  v35[1] = v16;
  v17 = [(VTUIButton *)self->_finishButton widthAnchor];
  [v3 footerButtonMaximumWidth];
  v18 = [v17 constraintEqualToConstant:?];
  v35[2] = v18;
  v19 = [(VTUIButton *)self->_finishButton heightAnchor];
  [v3 primaryButtonHeight];
  v20 = [v19 constraintEqualToConstant:?];
  v35[3] = v20;
  v21 = [(VTUIButton *)self->_finishButton bottomAnchor];
  v22 = [v5 bottomAnchor];
  [v3 continueButtonFromBottom];
  [v21 constraintEqualToAnchor:v22 constant:-v23];
  v24 = v28 = v5;
  v35[4] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
  [v29 activateConstraints:v25];

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = [(VTUIEnrollmentSuccessView *)self _createFooter];
    v5 = self->_footerView;
    self->_footerView = v4;

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)addFinishButtonTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [(VTUIEnrollmentSuccessView *)self finishButton];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
}

@end