@interface VTUIVoiceSelectionViewController
- (VTUIVoiceSelectionViewControllerDelegate)delegate;
- (id)_getDetailedText;
- (id)_getTitle;
- (void)_chooseForMeButtonClicked;
- (void)_continueButtonClicked;
- (void)_dismissButtonClicked;
- (void)_setupButtons;
- (void)_setupContentForRecognitionLanguage:(id)a3 dataManager:(id)a4 customVoicePreviewer:(id)a5;
- (void)presenter:(id)a3 didChangeVoiceSelection:(id)a4;
- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation VTUIVoiceSelectionViewController

- (id)_getTitle
{
  v2 = +[VTUIStyle sharedStyle];
  v3 = [v2 VTUIDeviceSpecificString:@"SELECT_VOICE"];

  return v3;
}

- (id)_getDetailedText
{
  v2 = +[_TtC14VoiceTriggerUI23GMAvailabilityViewModel shouldShowGM];
  v3 = @"DESCRIPTION_VOICE_SELECTION";
  if (v2)
  {
    v3 = @"GM_DESCRIPTION_VOICE_SELECTION";
  }

  v4 = v3;
  v5 = +[VTUIStyle sharedStyle];
  v6 = [v5 VTUIDeviceSpecificString:v4];

  return v6;
}

- (void)_setupButtons
{
  if (self->_allowsRandomSelection)
  {
    v3 = [(VTUIVoiceSelectionViewController *)self chooseForMeButton];
    [v3 addTarget:self action:sel__chooseForMeButtonClicked forControlEvents:64];
  }

  v4 = [(VTUIVoiceSelectionContaining *)self->_voiceSelectionContainer dismissButton];
  [v4 addTarget:self action:sel__dismissButtonClicked forControlEvents:64];

  continueBarButton = self->_continueBarButton;
  if (continueBarButton)
  {
    [(UIBarButtonItem *)continueBarButton setTarget:self];
    [(UIBarButtonItem *)self->_continueBarButton setAction:sel__continueButtonClicked];
    v6 = self->_continueBarButton;

    [(UIBarButtonItem *)v6 setEnabled:0];
  }

  else
  {
    v7 = [(VTUIVoiceSelectionViewController *)self continueButton];
    [v7 addTarget:self action:sel__continueButtonClicked forControlEvents:64];
  }
}

- (void)_setupContentForRecognitionLanguage:(id)a3 dataManager:(id)a4 customVoicePreviewer:(id)a5
{
  v17 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VTUIVoiceSelectionOptionsView);
  if (v17)
  {
    v11 = v17;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D61A40]);
  }

  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x277D61A90]) initWithDataManaging:v8 view:v10 delegate:self voicePreviewing:v11 recognitionLanguage:v9];

  voiceSelectionPresenter = self->_voiceSelectionPresenter;
  self->_voiceSelectionPresenter = v13;

  voiceOptionsView = self->_voiceOptionsView;
  self->_voiceOptionsView = v10;
  v16 = v10;

  [(VTUIVoiceSelectionContaining *)self->_voiceSelectionContainer setContentView:v16];
}

- (void)viewWillLayoutSubviews
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = VTUIVoiceSelectionViewController;
  [(VTUIVoiceSelectionViewController *)&v12 viewWillLayoutSubviews];
  if (self->_voiceOptionsViewHeightConstraint)
  {
    v3 = MEMORY[0x277CCAAD0];
    v14[0] = self->_voiceOptionsViewHeightConstraint;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v3 deactivateConstraints:v4];
  }

  v5 = [(VTUIVoiceSelectionOptionsView *)self->_voiceOptionsView heightAnchor];
  [(VTUIVoiceSelectionOptionsView *)self->_voiceOptionsView sizeThatFits:1.79769313e308, 1.79769313e308];
  v7 = [v5 constraintEqualToConstant:v6];
  voiceOptionsViewHeightConstraint = self->_voiceOptionsViewHeightConstraint;
  self->_voiceOptionsViewHeightConstraint = v7;

  v9 = MEMORY[0x277CCAAD0];
  v13 = self->_voiceOptionsViewHeightConstraint;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v9 activateConstraints:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_continueButtonClicked
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[VTUIVoiceSelectionViewController _continueButtonClicked]";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s voice selection nil when continue button was enabled", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_chooseForMeButtonClicked
{
  self->shouldReportSelectionOnRandomVoicePlayBackCompletion = 1;
  objc_initWeak(&location, self);
  voiceSelectionPresenter = self->_voiceSelectionPresenter;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke;
  v4[3] = &unk_279E54AF8;
  objc_copyWeak(&v5, &location);
  [(SUICVoiceSelectionPresenter *)voiceSelectionPresenter selectRandomVoiceWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (WeakRetained[1056] == 1)
      {
        [WeakRetained _informDelegateVoiceWasSelected:v3 randomlySelected:1];
      }

      else
      {
        v7 = VTUILogContextFacility;
        if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315394;
          v10 = "[VTUIVoiceSelectionViewController _chooseForMeButtonClicked]_block_invoke";
          v11 = 2112;
          v12 = v3;
          _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ voice already reported due to continue press before playback completion", &v9, 0x16u);
        }
      }
    }

    else
    {
      v6 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
      {
        __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke_cold_1(v6);
      }
    }

    v5[1056] = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __85__VTUIVoiceSelectionViewController__informDelegateVoiceWasSelected_randomlySelected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(a1 + 64) == 1)
  {
    v5 = WeakRetained;
    [*(a1 + 32) removeFromSuperview];
    v3 = [*(a1 + 40) continueButton];
    [v3 setAttributedTitle:*(a1 + 48) forState:2];

    v4 = [*(a1 + 40) continueButton];
    [v4 setEnabled:1];

    WeakRetained = v5;
  }
}

- (void)_dismissButtonClicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 voiceSelectionControllerRequestsDismissal:self];
  }
}

- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  voiceSelectionContainer = self->_voiceSelectionContainer;
  if (objc_opt_respondsToSelector())
  {
    v7 = self->_voiceSelectionContainer;

    [(VTUIVoiceSelectionContaining *)v7 updateContainerConstraintsForOrientationChangeToSize:width, height];
  }
}

- (void)presenter:(id)a3 didChangeVoiceSelection:(id)a4
{
  v5 = a4;
  continueBarButton = self->_continueBarButton;
  if (continueBarButton)
  {
    [(UIBarButtonItem *)continueBarButton setEnabled:v5 != 0];
  }

  else
  {
    v7 = [(VTUIVoiceSelectionViewController *)self continueButton];
    [v7 setEnabled:v5 != 0];
  }

  currentVoiceSelection = self->_currentVoiceSelection;
  self->_currentVoiceSelection = v5;
}

- (VTUIVoiceSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[VTUIVoiceSelectionViewController _chooseForMeButtonClicked]_block_invoke";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s Random voice was nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end