@interface TKVibrationRecorderContentViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)vibrationRecorderViewDidEnterRecordingMode:(id)mode;
- (TKVibrationRecorderContentViewController)initWithVibratorController:(id)controller;
- (TKVibrationRecorderViewController)parentVibrationRecorderViewController;
- (TKVibrationRecorderViewControllerDelegate)delegate;
- (id)_indefiniteVibrationPattern;
- (void)_accessibilityMakeAnnouncementWithStringForLocalizationIdentifier:(id)identifier;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_cleanUpVibrationNameAlertController;
- (void)_finishedWithRecorder;
- (void)_saveButtonInAlertTapped:(id)tapped;
- (void)_saveButtonTapped:(id)tapped;
- (void)_startVibratingWithVibrationPattern:(id)pattern;
- (void)_stopRecordingOrPlayingForApplicationSuspension;
- (void)_updateStateSaveButtonInAlert;
- (void)applicationWillSuspend;
- (void)dealloc;
- (void)loadView;
- (void)vibrationComponentDidEndForVibrationRecorderView:(id)view;
- (void)vibrationComponentDidStartForVibrationRecorderView:(id)view;
- (void)vibrationRecorderView:(id)view buttonTappedWithIdentifier:(int)identifier;
- (void)vibrationRecorderView:(id)view didExitRecordingModeWithContextObject:(id)object;
- (void)vibrationRecorderViewDidFinishReplayingVibration:(id)vibration;
- (void)vibrationRecorderViewDidReachVibrationRecordingMaximumDuration:(id)duration;
@end

@implementation TKVibrationRecorderContentViewController

- (TKVibrationRecorderContentViewController)initWithVibratorController:(id)controller
{
  controllerCopy = controller;
  v6 = [(TKVibrationRecorderContentViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vibratorController, controller);
    v8 = TLLocalizedString();
    [(TKVibrationRecorderContentViewController *)v7 setTitle:v8];

    navigationItem = [(TKVibrationRecorderContentViewController *)v7 navigationItem];
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel__cancelButtonTapped_];
    cancelButton = v7->_cancelButton;
    v7->_cancelButton = v10;

    v12 = objc_alloc(MEMORY[0x277D751E0]);
    v13 = TLLocalizedString();
    v14 = [v12 initWithTitle:v13 style:2 target:v7 action:sel__saveButtonTapped_];
    saveButton = v7->_saveButton;
    v7->_saveButton = v14;

    [navigationItem setLeftBarButtonItem:v7->_cancelButton];
    [navigationItem setRightBarButtonItem:v7->_saveButton];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *MEMORY[0x277D76660];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v7 selector:sel__handleApplicationDidEnterBackgroundNotification_ name:v17 object:mEMORY[0x277D75128]];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76660];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x277D75128]];

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

- (void)_cancelButtonTapped:(id)tapped
{
  [(TKVibrationRecorderContentViewController *)self _finishedWithRecorder];
  [(TKVibrationRecorderContentViewController *)self dismissViewControllerAnimated:1 completion:0];
  delegate = [(TKVibrationRecorderContentViewController *)self delegate];
  parentVibrationRecorderViewController = [(TKVibrationRecorderContentViewController *)self parentVibrationRecorderViewController];
  [delegate vibrationRecorderViewControllerWasDismissedWithoutSavingRecordedVibrationPattern:parentVibrationRecorderViewController];
}

- (void)_saveButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  selfCopy = self;
  v25 = selfCopy;
  v6 = MEMORY[0x277D75110];
  v7 = TLLocalizedString();
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:1];
  vibrationNameAlertController = selfCopy->_vibrationNameAlertController;
  selfCopy->_vibrationNameAlertController = v8;

  [(UIAlertController *)selfCopy->_vibrationNameAlertController addTextFieldWithConfigurationHandler:&__block_literal_global_0];
  textFields = [(UIAlertController *)selfCopy->_vibrationNameAlertController textFields];
  firstObject = [textFields firstObject];
  vibrationNameAlertTextField = selfCopy->_vibrationNameAlertTextField;
  selfCopy->_vibrationNameAlertTextField = firstObject;

  [(UITextField *)selfCopy->_vibrationNameAlertTextField setDelegate:selfCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__vibrationNameTextFieldContentsDidChange_ name:*MEMORY[0x277D770B0] object:selfCopy->_vibrationNameAlertTextField];

  v14 = selfCopy->_vibrationNameAlertController;
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
  vibrationNameAlertSaveAction = selfCopy->_vibrationNameAlertSaveAction;
  selfCopy->_vibrationNameAlertSaveAction = v20;

  [(UIAlertController *)selfCopy->_vibrationNameAlertController addAction:selfCopy->_vibrationNameAlertSaveAction];
  [(TKVibrationRecorderContentViewController *)selfCopy _updateStateSaveButtonInAlert];
  [(TKVibrationRecorderContentViewController *)selfCopy presentViewController:selfCopy->_vibrationNameAlertController animated:1 completion:0];
  _Block_object_dispose(v24, 8);
}

- (void)_saveButtonInAlertTapped:(id)tapped
{
  delegate = [(TKVibrationRecorderContentViewController *)self delegate];
  parentVibrationRecorderViewController = [(TKVibrationRecorderContentViewController *)self parentVibrationRecorderViewController];
  propertyListRepresentation = [(TLVibrationPattern *)self->_recordedVibrationPattern propertyListRepresentation];
  text = [(UITextField *)self->_vibrationNameAlertTextField text];
  [delegate vibrationRecorderViewController:parentVibrationRecorderViewController didFinishRecordingVibrationPattern:propertyListRepresentation name:text];

  [(TKVibrationRecorderContentViewController *)self _finishedWithRecorder];
  [(TKVibrationRecorderContentViewController *)self dismissViewControllerAnimated:1 completion:0];

  [(TKVibrationRecorderContentViewController *)self _cleanUpVibrationNameAlertController];
}

- (void)_updateStateSaveButtonInAlert
{
  vibrationNameAlertSaveAction = self->_vibrationNameAlertSaveAction;
  text = [(UITextField *)self->_vibrationNameAlertTextField text];
  -[UIAlertAction setEnabled:](vibrationNameAlertSaveAction, "setEnabled:", [text length] != 0);
}

- (void)_cleanUpVibrationNameAlertController
{
  if (self->_vibrationNameAlertTextField)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:self->_vibrationNameAlertTextField];

    [(UITextField *)self->_vibrationNameAlertTextField setDelegate:0];
    vibrationNameAlertTextField = self->_vibrationNameAlertTextField;
    self->_vibrationNameAlertTextField = 0;
  }

  vibrationNameAlertSaveAction = self->_vibrationNameAlertSaveAction;
  self->_vibrationNameAlertSaveAction = 0;

  vibrationNameAlertController = self->_vibrationNameAlertController;
  self->_vibrationNameAlertController = 0;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  if (self->_vibrationNameAlertTextField != field)
  {
    return 1;
  }

  v7 = [TKVibrationInterfaceUtilities vibrationNameTextField:"vibrationNameTextField:shouldChangeCharactersInRange:replacementString:" shouldChangeCharactersInRange:? replacementString:?];
  [(TKVibrationRecorderContentViewController *)self _updateStateSaveButtonInAlert];
  return v7;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if (self->_vibrationNameAlertTextField != return)
  {
    return 1;
  }

  text = [return text];
  v3 = [text length] != 0;

  return v3;
}

- (id)_indefiniteVibrationPattern
{
  indefiniteVibrationPattern = self->_indefiniteVibrationPattern;
  if (!indefiniteVibrationPattern)
  {
    v4 = [MEMORY[0x277D71F90] simpleVibrationPatternWithVibrationDuration:10.0 pauseDuration:1.0];
    propertyListRepresentation = [v4 propertyListRepresentation];
    v6 = self->_indefiniteVibrationPattern;
    self->_indefiniteVibrationPattern = propertyListRepresentation;

    indefiniteVibrationPattern = self->_indefiniteVibrationPattern;
  }

  return indefiniteVibrationPattern;
}

- (void)_startVibratingWithVibrationPattern:(id)pattern
{
  patternCopy = pattern;
  [(TKVibrationRecorderContentViewController *)self _stopVibrating];
  [(TKVibratorController *)self->_vibratorController turnOnWithVibrationPattern:patternCopy];
}

- (void)vibrationComponentDidStartForVibrationRecorderView:(id)view
{
  viewCopy = view;
  if (self->_mode == 1)
  {
    v9 = viewCopy;
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

    _indefiniteVibrationPattern = [(TKVibrationRecorderContentViewController *)self _indefiniteVibrationPattern];
    [(TKVibrationRecorderContentViewController *)self _startVibratingWithVibrationPattern:_indefiniteVibrationPattern];

    viewCopy = v9;
  }
}

- (void)vibrationComponentDidEndForVibrationRecorderView:(id)view
{
  if (self->_mode == 1)
  {
    [(TKVibrationRecorderContentViewController *)self _storeVibrationComponentOfTypePause:0];

    [(TKVibrationRecorderContentViewController *)self _stopVibrating];
  }
}

- (void)vibrationRecorderView:(id)view buttonTappedWithIdentifier:(int)identifier
{
  viewCopy = view;
  mode = self->_mode;
  if (mode == 2)
  {
    if (identifier != 4)
    {
      goto LABEL_14;
    }

    self->_mode = 0;
    v11 = viewCopy;
    [(UIBarButtonItem *)self->_cancelButton setEnabled:1];
    [(UIBarButtonItem *)self->_saveButton setEnabled:1];
    [(TKVibrationRecorderContentViewController *)self _stopVibrating];
    [v11 exitReplayMode];
    [(TKVibrationRecorderContentViewController *)self _accessibilityDidExitReplayMode];
  }

  else if (mode == 1)
  {
    v11 = viewCopy;
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

    if (identifier == 1)
    {
      self->_mode = 1;
      recordedVibrationPattern = self->_recordedVibrationPattern;
      self->_recordedVibrationPattern = 0;
      v11 = viewCopy;

      [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
      [(UIBarButtonItem *)self->_saveButton setEnabled:0];
      [v11 enterRecordingMode];
      [(TKVibrationRecorderContentViewController *)self _accessibilityDidEnterRecordingMode];
    }

    else
    {
      if (identifier != 3)
      {
        goto LABEL_14;
      }

      self->_mode = 2;
      v11 = viewCopy;
      [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
      [(UIBarButtonItem *)self->_saveButton setEnabled:0];
      [v11 enterReplayModeWithVibrationPattern:self->_recordedVibrationPattern];
      propertyListRepresentation = [(TLVibrationPattern *)self->_recordedVibrationPattern propertyListRepresentation];
      [(TKVibrationRecorderContentViewController *)self _startVibratingWithVibrationPattern:propertyListRepresentation];

      [(TKVibrationRecorderContentViewController *)self _accessibilityDidEnterReplayMode];
    }
  }

  viewCopy = v11;
LABEL_14:
}

- (void)vibrationRecorderViewDidFinishReplayingVibration:(id)vibration
{
  self->_mode = 0;
  [(UIBarButtonItem *)self->_cancelButton setEnabled:1];
  [(UIBarButtonItem *)self->_saveButton setEnabled:1];

  [(TKVibrationRecorderContentViewController *)self _accessibilityDidExitReplayMode];
}

- (BOOL)vibrationRecorderViewDidEnterRecordingMode:(id)mode
{
  modeCopy = mode;
  if (self->_mode || self->_recordedVibrationPattern)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    [(TKVibrationRecorderContentViewController *)self vibrationRecorderView:modeCopy buttonTappedWithIdentifier:1];
  }

  return v5;
}

- (void)vibrationRecorderView:(id)view didExitRecordingModeWithContextObject:(id)object
{
  objectCopy = object;
  contextObject = [(TLVibrationPattern *)self->_recordedVibrationPattern contextObject];

  if (!contextObject)
  {
    [(TLVibrationPattern *)self->_recordedVibrationPattern setContextObject:objectCopy];
  }
}

- (void)vibrationRecorderViewDidReachVibrationRecordingMaximumDuration:(id)duration
{
  if (self->_mode == 1)
  {
    [(TKVibrationRecorderContentViewController *)self vibrationRecorderView:duration buttonTappedWithIdentifier:2];
  }
}

- (void)_finishedWithRecorder
{
  [(TKVibrationRecorderView *)self->_vibrationRecorderView stopAnimatingProgress];
  recordedVibrationPattern = self->_recordedVibrationPattern;
  self->_recordedVibrationPattern = 0;

  [(TKVibrationRecorderContentViewController *)self _stopVibrating];
}

- (void)_accessibilityMakeAnnouncementWithStringForLocalizationIdentifier:(id)identifier
{
  v3 = *MEMORY[0x277D76488];
  identifierCopy = identifier;
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