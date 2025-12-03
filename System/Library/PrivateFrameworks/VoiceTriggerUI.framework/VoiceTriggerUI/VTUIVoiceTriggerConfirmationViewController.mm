@interface VTUIVoiceTriggerConfirmationViewController
- (VTUIVoiceTriggerConfirmationViewController)initWithDelegate:(id)delegate;
- (void)_setupContent;
@end

@implementation VTUIVoiceTriggerConfirmationViewController

- (VTUIVoiceTriggerConfirmationViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[VTUIStyle sharedStyle];
  shouldSetupForMultipleTriggerPhrases = [v5 shouldSetupForMultipleTriggerPhrases];
  if (shouldSetupForMultipleTriggerPhrases)
  {
    v7 = @"TEXT_TITLE_JUST_SAY_BOTH";
  }

  else
  {
    v7 = @"TEXT_TITLE_JUST_SAY_HEYSIRI";
  }

  v8 = @"TEXT_MAIN_READY_MIXED";
  if (!shouldSetupForMultipleTriggerPhrases)
  {
    v8 = @"TEXT_MAIN_READY";
  }

  v9 = v8;
  v10 = v7;
  v11 = +[VTUIStringsHelper sharedStringsHelper];
  v12 = [v11 uiLocalizedStringForKey:v10];

  v13 = [v5 VTUIDeviceSpecificString:v9];

  siriIconImage = [v5 siriIconImage];
  v17.receiver = self;
  v17.super_class = VTUIVoiceTriggerConfirmationViewController;
  v15 = [(VTUIVoiceTriggerConfirmationViewController *)&v17 initWithTitle:v12 detailText:v13 icon:siriIconImage];

  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    [(VTUIVoiceTriggerConfirmationViewController *)v15 _setupContent];
  }

  return v15;
}

- (void)_setupContent
{
  v19 = +[VTUIStyle sharedStyle];
  shouldSetupForMultipleTriggerPhrases = [v19 shouldSetupForMultipleTriggerPhrases];
  v4 = @"BUTTON_LISTEN_FOR_HEYSIRI";
  if (shouldSetupForMultipleTriggerPhrases)
  {
    v4 = @"BUTTON_LISTEN_FOR_BOTH";
  }

  v5 = MEMORY[0x277D37618];
  v6 = v4;
  boldButton = [v5 boldButton];
  v8 = [v19 VTUIDeviceSpecificString:v6];

  [(VTUIButton *)boldButton setTitle:v8 forState:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(VTUIButton *)boldButton addTarget:WeakRetained action:sel_siriVTConfirmationViewContinuePressed_ forControlEvents:64];

  buttonTray = [(VTUIVoiceTriggerConfirmationViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  continueButton = self->_continueButton;
  self->_continueButton = boldButton;
  v12 = boldButton;

  linkButton = [MEMORY[0x277D37650] linkButton];
  v14 = [v19 VTUIDeviceSpecificString:@"BUTTON_CONS_NOT_NOW"];
  [(VTUIButton *)linkButton setTitle:v14 forState:0];

  v15 = objc_loadWeakRetained(&self->_delegate);
  [(VTUIButton *)linkButton addTarget:v15 action:sel_siriVTConfirmationViewLaterPressed_ forControlEvents:64];

  buttonTray2 = [(VTUIVoiceTriggerConfirmationViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  laterButton = self->_laterButton;
  self->_laterButton = linkButton;

  buttonTray3 = [(VTUIVoiceTriggerConfirmationViewController *)self buttonTray];
  [buttonTray3 setPrivacyLinkForBundles:&unk_2881EEDE8];
}

@end