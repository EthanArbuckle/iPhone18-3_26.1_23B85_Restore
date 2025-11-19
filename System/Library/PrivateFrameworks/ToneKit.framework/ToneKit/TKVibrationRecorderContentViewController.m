@interface TKVibrationRecorderContentViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)vibrationRecorderViewDidEnterRecordingMode:(id)a3;
- (TKVibrationRecorderContentViewController)initWithVibratorController:(id)a3;
- (TKVibrationRecorderViewController)parentVibrationRecorderViewController;
- (TKVibrationRecorderViewControllerDelegate)delegate;
- (id)_indefiniteVibrationPattern;
- (void)_accessibilityMakeAnnouncementWithStringForLocalizationIdentifier:(id)a3;
- (void)_cancelButtonTapped:(id)a3;
- (void)_cleanUpVibrationNameAlertController;
- (void)_finishedWithRecorder;
- (void)_saveButtonInAlertTapped:(id)a3;
- (void)_saveButtonTapped:(id)a3;
- (void)_startVibratingWithVibrationPattern:(id)a3;
- (void)_stopRecordingOrPlayingForApplicationSuspension;
- (void)_updateStateSaveButtonInAlert;
- (void)applicationWillSuspend;
- (void)dealloc;
- (void)loadView;
- (void)vibrationComponentDidEndForVibrationRecorderView:(id)a3;
- (void)vibrationComponentDidStartForVibrationRecorderView:(id)a3;
- (void)vibrationRecorderView:(id)a3 buttonTappedWithIdentifier:(int)a4;
- (void)vibrationRecorderView:(id)a3 didExitRecordingModeWithContextObject:(id)a4;
- (void)vibrationRecorderViewDidFinishReplayingVibration:(id)a3;
- (void)vibrationRecorderViewDidReachVibrationRecordingMaximumDuration:(id)a3;
@end

@implementation TKVibrationRecorderContentViewController

- (TKVibrationRecorderContentViewController)initWithVibratorController:(id)a3
{
  v5 = a3;
  v6 = [(TKVibrationRecorderContentViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vibratorController, a3);
    v8 = TLLocalizedString();
    [(TKVibrationRecorderContentViewController *)v7 setTitle:v8];

    v9 = [(TKVibrationRecorderContentViewController *)v7 navigationItem];
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel__cancelButtonTapped_];
    cancelButton = v7->_cancelButton;
    v7->_cancelButton = v10;

    v12 = objc_alloc(MEMORY[0x277D751E0]);
    v13 = TLLocalizedString();
    v14 = [v12 initWithTitle:v13 style:2 target:v7 action:sel__saveButtonTapped_];
    saveButton = v7->_saveButton;
    v7->_saveButton = v14;

    [v9 setLeftBarButtonItem:v7->_cancelButton];
    [v9 setRightBarButtonItem:v7->_saveButton];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *MEMORY[0x277D76660];
    v18 = [MEMORY[0x277D75128] sharedApplication];
    [v16 addObserver:v7 selector:sel__handleApplicationDidEnterBackgroundNotification_ name:v17 object:v18];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76660];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v3 removeObserver:self name:v4 object:v5];

  [(TKVibrationRecorderContentViewController *)self _cleanUpVibrationNameAlertController];
  v6.receiver = self;
  v6.super_class = TKVibrationRecorderContentViewController;
  [(TKVibrationRecorderContentViewController *)&v6 dealloc];
}

- (void)_stopRecordingOrPlayingForApplicationSuspension
{
  mode = self->_mode;
  if (mode == 1)
  {
    v3 = 2;
  }

  else
  {
    if (mode != 2)
    {
      return;
    }

    v3 = 4;
  }

  [(TKVibrationRecorderContentViewController *)self vibrationRecorderView:self->_vibrationRecorderView buttonTappedWithIdentifier:v3];
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderContentViewController;
  [(TKVibrationRecorderContentViewController *)&v3 applicationWillSuspend];
  [(TKVibrationRecorderContentViewController *)self _stopRecordingOrPlayingForApplicationSuspension];
}

- (void)loadView
{
  v3 = [[TKVibrationRecorderView alloc] initWithVibrationPatternMaximumDuration:10.0];
  vibrationRecorderView = self->_vibrationRecorderView;
  self->_vibrationRecorderView = v3;

  [(TKVibrationRecorderView *)self->_vibrationRecorderView setDelegate:self];
  v5 = self->_vibrationRecorderView;

  [(TKVibrationRecorderContentViewController *)self setView:v5];
}

- (void)_cancelButtonTapped:(id)a3
{
  [(TKVibrationRecorderContentViewController *)self _finishedWithRecorder];
  [(TKVibrationRecorderContentViewController *)self dismissViewControllerAnimated:1 completion:0];
  v5 = [(TKVibrationRecorderContentViewController *)self delegate];
  v4 = [(TKVibrationRecorderContentViewController *)self parentVibrationRecorderViewController];
  [v5 vibrationRecorderViewControllerWasDismissedWithoutSavingRecordedVibrationPattern:v4];
}

- (void)_saveButtonTapped:(id)a3
{
  v4 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  v5 = self;
  v25 = v5;
  v6 = MEMORY[0x277D75110];
  v7 = TLLocalizedString();
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:1];
  vibrationNameAlertController = v5->_vibrationNameAlertController;
  v5->_vibrationNameAlertController = v8;

  [(UIAlertController *)v5->_vibrationNameAlertController addTextFieldWithConfigurationHandler:&__block_literal_global_0];
  v10 = [(UIAlertController *)v5->_vibrationNameAlertController textFields];
  v11 = [v10 firstObject];
  vibrationNameAlertTextField = v5->_vibrationNameAlertTextField;
  v5->_vibrationNameAlertTextField = v11;

  [(UITextField *)v5->_vibrationNameAlertTextField setDelegate:v5];
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:v5 selector:sel__vibrationNameTextFieldContentsDidChange_ name:*MEMORY[0x277D770B0] object:v5->_vibrationNameAlertTextField];

  v14 = v5->_vibrationNameAlertController;
  v15 = MEMORY[0x277D750F8];
  v16 = TLLocalizedString();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__TKVibrationRecorderContentViewController__saveButtonTapped___block_invoke_2;
  v23[3] = &unk_278316768;
  v23[4] = v24;
  v17 = [v15 actionWithTitle:v16 style:1 handler:v23];
  [(UIAlertController *)v14 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = TLLocalizedString();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__TKVibrationRecorderContentViewController__saveButtonTapped___block_invoke_3;
  v22[3] = &unk_278316768;
  v22[4] = v24;
  v20 = [v18 actionWithTitle:v19 style:0 handler:v22];
  vibrationNameAlertSaveAction = v5->_vibrationNameAlertSaveAction;
  v5->_vibrationNameAlertSaveAction = v20;

  [(UIAlertController *)v5->_vibrationNameAlertController addAction:v5->_vibrationNameAlertSaveAction];
  [(TKVibrationRecorderContentViewController *)v5 _updateStateSaveButtonInAlert];
  [(TKVibrationRecorderContentViewController *)v5 presentViewController:v5->_vibrationNameAlertController animated:1 completion:0];
  _Block_object_dispose(v24, 8);
}

- (void)_saveButtonInAlertTapped:(id)a3
{
  v4 = [(TKVibrationRecorderContentViewController *)self delegate];
  v5 = [(TKVibrationRecorderContentViewController *)self parentVibrationRecorderViewController];
  v6 = [(TLVibrationPattern *)self->_recordedVibrationPattern propertyListRepresentation];
  v7 = [(UITextField *)self->_vibrationNameAlertTextField text];
  [v4 vibrationRecorderViewController:v5 didFinishRecordingVibrationPattern:v6 name:v7];

  [(TKVibrationRecorderContentViewController *)self _finishedWithRecorder];
  [(TKVibrationRecorderContentViewController *)self dismissViewControllerAnimated:1 completion:0];

  [(TKVibrationRecorderContentViewController *)self _cleanUpVibrationNameAlertController];
}

- (void)_updateStateSaveButtonInAlert
{
  vibrationNameAlertSaveAction = self->_vibrationNameAlertSaveAction;
  v3 = [(UITextField *)self->_vibrationNameAlertTextField text];
  -[UIAlertAction setEnabled:](vibrationNameAlertSaveAction, "setEnabled:", [v3 length] != 0);
}

- (void)_cleanUpVibrationNameAlertController
{
  if (self->_vibrationNameAlertTextField)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277D770B0] object:self->_vibrationNameAlertTextField];

    [(UITextField *)self->_vibrationNameAlertTextField setDelegate:0];
    vibrationNameAlertTextField = self->_vibrationNameAlertTextField;
    self->_vibrationNameAlertTextField = 0;
  }

  vibrationNameAlertSaveAction = self->_vibrationNameAlertSaveAction;
  self->_vibrationNameAlertSaveAction = 0;

  vibrationNameAlertController = self->_vibrationNameAlertController;
  self->_vibrationNameAlertController = 0;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  if (self->_vibrationNameAlertTextField != a3)
  {
    return 1;
  }

  v7 = [TKVibrationInterfaceUtilities vibrationNameTextField:"vibrationNameTextField:shouldChangeCharactersInRange:replacementString:" shouldChangeCharactersInRange:? replacementString:?];
  [(TKVibrationRecorderContentViewController *)self _updateStateSaveButtonInAlert];
  return v7;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if (self->_vibrationNameAlertTextField != a3)
  {
    return 1;
  }

  v4 = [a3 text];
  v3 = [v4 length] != 0;

  return v3;
}

- (id)_indefiniteVibrationPattern
{
  indefiniteVibrationPattern = self->_indefiniteVibrationPattern;
  if (!indefiniteVibrationPattern)
  {
    v4 = [MEMORY[0x277D71F90] simpleVibrationPatternWithVibrationDuration:10.0 pauseDuration:1.0];
    v5 = [v4 propertyListRepresentation];
    v6 = self->_indefiniteVibrationPattern;
    self->_indefiniteVibrationPattern = v5;

    indefiniteVibrationPattern = self->_indefiniteVibrationPattern;
  }

  return indefiniteVibrationPattern;
}

- (void)_startVibratingWithVibrationPattern:(id)a3
{
  v4 = a3;
  [(TKVibrationRecorderContentViewController *)self _stopVibrating];
  [(TKVibratorController *)self->_vibratorController turnOnWithVibrationPattern:v4];
}

- (void)vibrationComponentDidStartForVibrationRecorderView:(id)a3
{
  v4 = a3;
  if (self->_mode == 1)
  {
    v9 = v4;
    if (self->_recordedVibrationPattern)
    {
      [(TKVibrationRecorderContentViewController *)self _storeVibrationComponentOfTypePause:1];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277D71F90]);
      recordedVibrationPattern = self->_recordedVibrationPattern;
      self->_recordedVibrationPattern = v5;

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->_currentVibrationComponentDidStartTimeStamp = v7;
      [v9 startAnimatingProgress];
    }

    v8 = [(TKVibrationRecorderContentViewController *)self _indefiniteVibrationPattern];
    [(TKVibrationRecorderContentViewController *)self _startVibratingWithVibrationPattern:v8];

    v4 = v9;
  }
}

- (void)vibrationComponentDidEndForVibrationRecorderView:(id)a3
{
  if (self->_mode == 1)
  {
    [(TKVibrationRecorderContentViewController *)self _storeVibrationComponentOfTypePause:0];

    [(TKVibrationRecorderContentViewController *)self _stopVibrating];
  }
}

- (void)vibrationRecorderView:(id)a3 buttonTappedWithIdentifier:(int)a4
{
  v6 = a3;
  mode = self->_mode;
  if (mode == 2)
  {
    if (a4 != 4)
    {
      goto LABEL_14;
    }

    self->_mode = 0;
    v11 = v6;
    [(UIBarButtonItem *)self->_cancelButton setEnabled:1];
    [(UIBarButtonItem *)self->_saveButton setEnabled:1];
    [(TKVibrationRecorderContentViewController *)self _stopVibrating];
    [v11 exitReplayMode];
    [(TKVibrationRecorderContentViewController *)self _accessibilityDidExitReplayMode];
  }

  else if (mode == 1)
  {
    v11 = v6;
    [(TKVibrationRecorderContentViewController *)self _stopVibrating];
    if (self->_isWaitingForEndOfCurrentVibrationComponent)
    {
      [(TKVibrationRecorderContentViewController *)self vibrationComponentDidEndForVibrationRecorderView:0];
    }

    [(TKVibrationRecorderContentViewController *)self _eraseCurrentVibrationComponentDidStartTimeStamp];
    v9 = self->_recordedVibrationPattern != 0;
    [(UIBarButtonItem *)self->_cancelButton setEnabled:1];
    [(UIBarButtonItem *)self->_saveButton setEnabled:v9];
    self->_mode = 0;
    [v11 exitRecordingModeWithPlayButtonEnabled:v9];
    [(TLVibrationPattern *)self->_recordedVibrationPattern appendVibrationComponentWithDuration:1 isPause:0.5];
    [(TKVibrationRecorderContentViewController *)self _accessibilityDidExitRecordingMode];
  }

  else
  {
    if (mode)
    {
      goto LABEL_14;
    }

    if (a4 == 1)
    {
      self->_mode = 1;
      recordedVibrationPattern = self->_recordedVibrationPattern;
      self->_recordedVibrationPattern = 0;
      v11 = v6;

      [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
      [(UIBarButtonItem *)self->_saveButton setEnabled:0];
      [v11 enterRecordingMode];
      [(TKVibrationRecorderContentViewController *)self _accessibilityDidEnterRecordingMode];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_14;
      }

      self->_mode = 2;
      v11 = v6;
      [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
      [(UIBarButtonItem *)self->_saveButton setEnabled:0];
      [v11 enterReplayModeWithVibrationPattern:self->_recordedVibrationPattern];
      v8 = [(TLVibrationPattern *)self->_recordedVibrationPattern propertyListRepresentation];
      [(TKVibrationRecorderContentViewController *)self _startVibratingWithVibrationPattern:v8];

      [(TKVibrationRecorderContentViewController *)self _accessibilityDidEnterReplayMode];
    }
  }

  v6 = v11;
LABEL_14:
}

- (void)vibrationRecorderViewDidFinishReplayingVibration:(id)a3
{
  self->_mode = 0;
  [(UIBarButtonItem *)self->_cancelButton setEnabled:1];
  [(UIBarButtonItem *)self->_saveButton setEnabled:1];

  [(TKVibrationRecorderContentViewController *)self _accessibilityDidExitReplayMode];
}

- (BOOL)vibrationRecorderViewDidEnterRecordingMode:(id)a3
{
  v4 = a3;
  if (self->_mode || self->_recordedVibrationPattern)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    [(TKVibrationRecorderContentViewController *)self vibrationRecorderView:v4 buttonTappedWithIdentifier:1];
  }

  return v5;
}

- (void)vibrationRecorderView:(id)a3 didExitRecordingModeWithContextObject:(id)a4
{
  v6 = a4;
  v5 = [(TLVibrationPattern *)self->_recordedVibrationPattern contextObject];

  if (!v5)
  {
    [(TLVibrationPattern *)self->_recordedVibrationPattern setContextObject:v6];
  }
}

- (void)vibrationRecorderViewDidReachVibrationRecordingMaximumDuration:(id)a3
{
  if (self->_mode == 1)
  {
    [(TKVibrationRecorderContentViewController *)self vibrationRecorderView:a3 buttonTappedWithIdentifier:2];
  }
}

- (void)_finishedWithRecorder
{
  [(TKVibrationRecorderView *)self->_vibrationRecorderView stopAnimatingProgress];
  recordedVibrationPattern = self->_recordedVibrationPattern;
  self->_recordedVibrationPattern = 0;

  [(TKVibrationRecorderContentViewController *)self _stopVibrating];
}

- (void)_accessibilityMakeAnnouncementWithStringForLocalizationIdentifier:(id)a3
{
  v3 = *MEMORY[0x277D76488];
  v4 = a3;
  UIAccessibilityPostNotification(v3, 0);
  argument = TLLocalizedString();

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
}

- (TKVibrationRecorderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TKVibrationRecorderViewController)parentVibrationRecorderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentVibrationRecorderViewController);

  return WeakRetained;
}

@end