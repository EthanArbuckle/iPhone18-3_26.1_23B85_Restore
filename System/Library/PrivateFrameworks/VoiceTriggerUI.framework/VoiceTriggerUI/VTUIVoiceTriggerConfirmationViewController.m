@interface VTUIVoiceTriggerConfirmationViewController
- (VTUIVoiceTriggerConfirmationViewController)initWithDelegate:(id)a3;
- (void)_setupContent;
@end

@implementation VTUIVoiceTriggerConfirmationViewController

- (VTUIVoiceTriggerConfirmationViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[VTUIStyle sharedStyle];
  v6 = [v5 shouldSetupForMultipleTriggerPhrases];
  if (v6)
  {
    v7 = @"TEXT_TITLE_JUST_SAY_BOTH";
  }

  else
  {
    v7 = @"TEXT_TITLE_JUST_SAY_HEYSIRI";
  }

  v8 = @"TEXT_MAIN_READY_MIXED";
  if (!v6)
  {
    v8 = @"TEXT_MAIN_READY";
  }

  v9 = v8;
  v10 = v7;
  v11 = +[VTUIStringsHelper sharedStringsHelper];
  v12 = [v11 uiLocalizedStringForKey:v10];

  v13 = [v5 VTUIDeviceSpecificString:v9];

  v14 = [v5 siriIconImage];
  v17.receiver = self;
  v17.super_class = VTUIVoiceTriggerConfirmationViewController;
  v15 = [(VTUIVoiceTriggerConfirmationViewController *)&v17 initWithTitle:v12 detailText:v13 icon:v14];

  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v4);
    [(VTUIVoiceTriggerConfirmationViewController *)v15 _setupContent];
  }

  return v15;
}

- (void)_setupContent
{
  v19 = +[VTUIStyle sharedStyle];
  v3 = [v19 shouldSetupForMultipleTriggerPhrases];
  v4 = @"BUTTON_LISTEN_FOR_HEYSIRI";
  if (v3)
  {
    v4 = @"BUTTON_LISTEN_FOR_BOTH";
  }

  v5 = MEMORY[0x277D37618];
  v6 = v4;
  v7 = [v5 boldButton];
  v8 = [v19 VTUIDeviceSpecificString:v6];

  [(VTUIButton *)v7 setTitle:v8 forState:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(VTUIButton *)v7 addTarget:WeakRetained action:sel_siriVTConfirmationViewContinuePressed_ forControlEvents:64];

  v10 = [(VTUIVoiceTriggerConfirmationViewController *)self buttonTray];
  [v10 addButton:v7];

  continueButton = self->_continueButton;
  self->_continueButton = v7;
  v12 = v7;

  v13 = [MEMORY[0x277D37650] linkButton];
  v14 = [v19 VTUIDeviceSpecificString:@"BUTTON_CONS_NOT_NOW"];
  [(VTUIButton *)v13 setTitle:v14 forState:0];

  v15 = objc_loadWeakRetained(&self->_delegate);
  [(VTUIButton *)v13 addTarget:v15 action:sel_siriVTConfirmationViewLaterPressed_ forControlEvents:64];

  v16 = [(VTUIVoiceTriggerConfirmationViewController *)self buttonTray];
  [v16 addButton:v13];

  laterButton = self->_laterButton;
  self->_laterButton = v13;

  v18 = [(VTUIVoiceTriggerConfirmationViewController *)self buttonTray];
  [v18 setPrivacyLinkForBundles:&unk_2881EEDE8];
}

@end