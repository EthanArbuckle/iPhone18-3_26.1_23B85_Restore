@interface SBVoiceCommandButton
- (BOOL)_isPermittedToBegin;
- (SBVoiceCommandButton)init;
- (void)performActionsForButtonDown:(id)a3;
- (void)performActionsForButtonLongPress:(id)a3;
- (void)performActionsForButtonUp:(id)a3;
@end

@implementation SBVoiceCommandButton

- (SBVoiceCommandButton)init
{
  v10.receiver = self;
  v10.super_class = SBVoiceCommandButton;
  v2 = [(SBVoiceCommandButton *)&v10 init];
  if (v2)
  {
    v3 = +[SBSiriHardwareButtonInteraction hardwareButtonInteractionForVoiceCommandButton];
    siriHardwareButtonInteraction = v2->_siriHardwareButtonInteraction;
    v2->_siriHardwareButtonInteraction = v3;

    v5 = objc_alloc_init(SBHIDButtonStateArbiter);
    buttonArbiter = v2->_buttonArbiter;
    v2->_buttonArbiter = v5;

    [(SBHIDButtonStateArbiter *)v2->_buttonArbiter setDelegate:v2];
    v7 = v2->_buttonArbiter;
    v8 = [(SBSiriHardwareButtonInteraction *)v2->_siriHardwareButtonInteraction hardwareButtonGestureParameters];
    [v8 longPressTimeInterval];
    [(SBHIDButtonStateArbiter *)v7 setLongPressTimeout:?];
  }

  return v2;
}

- (BOOL)_isPermittedToBegin
{
  v3 = [(SBVoiceCommandButton *)self hardwareButtonCoordinator];
  v4 = [(SBVoiceCommandButton *)self hardwareButtonIdentifier];
  v5 = [v3 buttonShouldStart:v4];

  return v5;
}

- (void)performActionsForButtonDown:(id)a3
{
  if ([(SBVoiceCommandButton *)self _isPermittedToBegin])
  {
    self->_isLongPressRecognized = 0;
    siriHardwareButtonInteraction = self->_siriHardwareButtonInteraction;

    [(SBSiriHardwareButtonInteraction *)siriHardwareButtonInteraction consumeInitialPressDown];
  }

  else
  {
    v5 = SBLogButtonsCombo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand down ignored because coordinateor says no", v6, 2u);
    }
  }
}

- (void)performActionsForButtonLongPress:(id)a3
{
  if ([(SBVoiceCommandButton *)self _isPermittedToBegin])
  {
    self->_isLongPressRecognized = 1;
    siriHardwareButtonInteraction = self->_siriHardwareButtonInteraction;

    [(SBSiriHardwareButtonInteraction *)siriHardwareButtonInteraction consumeLongPress];
  }

  else
  {
    v5 = SBLogButtonsCombo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand long press ignored because coordinateor says no", v6, 2u);
    }
  }
}

- (void)performActionsForButtonUp:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(SBVoiceCommandButton *)self _isPermittedToBegin];
  v5 = SBLogButtonsCombo();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      isLongPressRecognized = self->_isLongPressRecognized;
      v8[0] = 67109120;
      v8[1] = isLongPressRecognized;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand button up, (long press recognized:%{BOOL}u)", v8, 8u);
    }

    if (!self->_isLongPressRecognized)
    {
      [(SBSiriHardwareButtonInteraction *)self->_siriHardwareButtonInteraction consumeSinglePressUp];
    }

    [(SBSiriHardwareButtonInteraction *)self->_siriHardwareButtonInteraction observeFinalPressUp];
  }

  else
  {
    if (v6)
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand up ignored because coordinateor says no", v8, 2u);
    }
  }
}

@end