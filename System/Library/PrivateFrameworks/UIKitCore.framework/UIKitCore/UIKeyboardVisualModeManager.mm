@interface UIKeyboardVisualModeManager
+ (BOOL)softwareKeyboardAllowedForActiveKeyboardSceneDelegate;
+ (BOOL)softwareKeyboardAllowedOnExternalScreen;
+ (id)visualModeLog;
- (BOOL)expectedInputModeIsSpecialized;
- (BOOL)hardwareKeyboardAttached;
- (BOOL)isCustomInputViewSet;
- (BOOL)isWantsAssistantWhileSuppressingKeyboard;
- (BOOL)keyboardCameraPresentedOrPresenting;
- (BOOL)keyboardHasBeenInitialized;
- (BOOL)keyboardSubstitutePresentedOrPresenting;
- (BOOL)shouldShowWithinAppWindow;
- (BOOL)softwareKeyboardMinimized;
- (BOOL)textEntryFocusOnExternalDisplay;
- (BOOL)useVisualModeWindowed;
- (BOOL)windowingModeEnabled;
- (UIKeyboardVisualModeManager)init;
- (UIKeyboardVisualModeManagerDelegate)delegate;
- (int)visualMode;
- (void)enhancedWindowingModeDidChange:(id)change;
- (void)keyboardCameraNotification:(id)notification;
@end

@implementation UIKeyboardVisualModeManager

- (BOOL)useVisualModeWindowed
{
  v10 = *MEMORY[0x1E69E9840];
  windowingModeEnabled = [(UIKeyboardVisualModeManager *)self windowingModeEnabled];
  v4 = windowingModeEnabled && [(UIKeyboardVisualModeManager *)self visualMode]== 2;
  v5 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = windowingModeEnabled;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "useVisualModeWindowed: %d (windowingModeEnabled: %d)", v7, 0xEu);
  }

  return v4;
}

- (UIKeyboardVisualModeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldShowWithinAppWindow
{
  useVisualModeWindowed = [(UIKeyboardVisualModeManager *)self useVisualModeWindowed];
  if (useVisualModeWindowed)
  {
    delegate = [(UIKeyboardVisualModeManager *)self delegate];
    showingInAppWindow = [delegate showingInAppWindow];

    LOBYTE(useVisualModeWindowed) = showingInAppWindow;
  }

  return useVisualModeWindowed;
}

- (BOOL)windowingModeEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  delegate = [(UIKeyboardVisualModeManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIKeyboardVisualModeManager *)self delegate];
    enhancedWindowingModeIsEnabled = [delegate2 enhancedWindowingModeIsEnabled];

    return enhancedWindowingModeIsEnabled;
  }

  else
  {
    v7 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Invalid UIKeyboardVisualModeManager (%@) configured without a datasource", &v8, 0xCu);
    }

    return 0;
  }
}

+ (id)visualModeLog
{
  if (qword_1ED49DFD0 != -1)
  {
    dispatch_once(&qword_1ED49DFD0, &__block_literal_global_20_2);
  }

  v3 = qword_1ED49DFC8;

  return v3;
}

- (UIKeyboardVisualModeManager)init
{
  v7.receiver = self;
  v7.super_class = UIKeyboardVisualModeManager;
  v2 = [(UIKeyboardVisualModeManager *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_enhancedWindowingModeDidChange_ name:@"_UIWindowSceneEnhancedWindowingModeChanged" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_keyboardCameraNotification_ name:@"_UIKeyboardCameraSessionWillPresent" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_keyboardCameraNotification_ name:@"_UIKeyboardCameraSessionWillDismiss" object:0];
  }

  return v2;
}

void __44__UIKeyboardVisualModeManager_visualModeLog__block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardVisualMode");
  v1 = qword_1ED49DFC8;
  qword_1ED49DFC8 = v0;
}

+ (BOOL)softwareKeyboardAllowedForActiveKeyboardSceneDelegate
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];

  if (!v3)
  {
    return 1;
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v4 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  isKeyboardOnEmbeddedScreen = [v7 isKeyboardOnEmbeddedScreen];

  if (windowingModeEnabled)
  {
    windowingSoftwareKeyboardAllowed = [self windowingSoftwareKeyboardAllowed];
  }

  else
  {
    windowingSoftwareKeyboardAllowed = 1;
  }

  if (isKeyboardOnEmbeddedScreen & 1 | ((windowingSoftwareKeyboardAllowed & 1) == 0))
  {
    return isKeyboardOnEmbeddedScreen & windowingSoftwareKeyboardAllowed;
  }

  return [self softwareKeyboardAllowedOnExternalScreen];
}

+ (BOOL)softwareKeyboardAllowedOnExternalScreen
{
  if (qword_1ED49DFC0 != -1)
  {
    dispatch_once(&qword_1ED49DFC0, &__block_literal_global_246);
  }

  return _MergedGlobals_1105;
}

void __70__UIKeyboardVisualModeManager_softwareKeyboardAllowedOnExternalScreen__block_invoke()
{
  if (qword_1ED49DFD8 != -1)
  {
    dispatch_once(&qword_1ED49DFD8, &__block_literal_global_60);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"ChamoisExternalSWKeyboard"];

  _MergedGlobals_1105 = [v1 BOOLValue];
}

- (int)visualMode
{
  v16 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardVisualModeManager *)self windowingModeEnabled])
  {
    goto LABEL_27;
  }

  keyboardHasBeenInitialized = [(UIKeyboardVisualModeManager *)self keyboardHasBeenInitialized];
  hardwareKeyboardAttached = [(UIKeyboardVisualModeManager *)self hardwareKeyboardAttached];
  if (keyboardHasBeenInitialized)
  {
    if (hardwareKeyboardAttached)
    {
      if ([(UIKeyboardVisualModeManager *)self isCustomInputViewSet]|| [(UIKeyboardVisualModeManager *)self expectedInputModeIsSpecialized])
      {
        textEntryFocusOnExternalDisplay = [(UIKeyboardVisualModeManager *)self textEntryFocusOnExternalDisplay];
      }

      else
      {
        textEntryFocusOnExternalDisplay = [(UIKeyboardVisualModeManager *)self softwareKeyboardMinimized];
      }

      goto LABEL_22;
    }

    delegate = [(UIKeyboardVisualModeManager *)self delegate];
    if ([delegate showingAccessoryViewOnly])
    {

      goto LABEL_15;
    }

    if ([(UIKeyboardVisualModeManager *)self softwareKeyboardMinimized])
    {
      textEntryFocusOnExternalDisplay2 = [(UIKeyboardVisualModeManager *)self textEntryFocusOnExternalDisplay];

      if (textEntryFocusOnExternalDisplay2)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

LABEL_21:
    textEntryFocusOnExternalDisplay = [(UIKeyboardVisualModeManager *)self isWantsAssistantWhileSuppressingKeyboard];
LABEL_22:
    if (textEntryFocusOnExternalDisplay)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_25;
  }

  if (!hardwareKeyboardAttached)
  {
    goto LABEL_21;
  }

  if ([(UIKeyboardVisualModeManager *)self textEntryFocusOnExternalDisplay])
  {
LABEL_15:
    v6 = 2;
    goto LABEL_25;
  }

  v6 = 1;
  if (![(UIKeyboardVisualModeManager *)self isCustomInputViewSet])
  {
    if ([(UIKeyboardVisualModeManager *)self expectedInputModeIsSpecialized])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

LABEL_25:
  if ([(UIKeyboardVisualModeManager *)self keyboardCameraPresentedOrPresenting]|| [(UIKeyboardVisualModeManager *)self keyboardSubstitutePresentedOrPresenting])
  {
LABEL_27:
    v6 = 1;
  }

  if ([(UIKeyboardVisualModeManager *)self lastVisualMode]!= v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"visualMode %u -> %u", -[UIKeyboardVisualModeManager lastVisualMode](self, "lastVisualMode"), v6];
    v10 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v11 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (chamois: %d, initialized: %d, hw kb: %d, sw kb min: %d, custom iv %d, isExternal: %d, specialized: %d, wantsAssistant: %d, kb cam: %d, kb substitute: %d)", v9, -[UIKeyboardVisualModeManager windowingModeEnabled](self, "windowingModeEnabled"), -[UIKeyboardVisualModeManager keyboardHasBeenInitialized](self, "keyboardHasBeenInitialized"), -[UIKeyboardVisualModeManager hardwareKeyboardAttached](self, "hardwareKeyboardAttached"), -[UIKeyboardVisualModeManager softwareKeyboardMinimized](self, "softwareKeyboardMinimized"), -[UIKeyboardVisualModeManager isCustomInputViewSet](self, "isCustomInputViewSet"), -[UIKeyboardVisualModeManager textEntryFocusOnExternalDisplay](self, "textEntryFocusOnExternalDisplay"), -[UIKeyboardVisualModeManager expectedInputModeIsSpecialized](self, "expectedInputModeIsSpecialized"), -[UIKeyboardVisualModeManager isWantsAssistantWhileSuppressingKeyboard](self, "isWantsAssistantWhileSuppressingKeyboard"), -[UIKeyboardVisualModeManager keyboardCameraPresentedOrPresenting](self, "keyboardCameraPresentedOrPresenting"), -[UIKeyboardVisualModeManager keyboardSubstitutePresentedOrPresenting](self, "keyboardSubstitutePresentedOrPresenting")];
      *buf = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [(UIKeyboardVisualModeManager *)self setLastVisualMode:v6];
  }

  return v6;
}

- (BOOL)keyboardHasBeenInitialized
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hardwareKeyboardAttached
{
  v2 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v2 _isHardwareKeyboardAvailable];

  return _isHardwareKeyboardAvailable;
}

- (BOOL)softwareKeyboardMinimized
{
  v2 = +[UIKeyboardImpl activeInstance];
  isMinimized = [v2 isMinimized];

  return isMinimized;
}

- (BOOL)isCustomInputViewSet
{
  delegate = [(UIKeyboardVisualModeManager *)self delegate];
  expectedInputViewSetIsCustom = [delegate expectedInputViewSetIsCustom];

  return expectedInputViewSetIsCustom;
}

- (BOOL)isWantsAssistantWhileSuppressingKeyboard
{
  v2 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if ([v2 wantsAssistantWhileSuppressingKeyboard])
  {
    disableBecomeFirstResponder = [v2 disableBecomeFirstResponder];
  }

  else
  {
    disableBecomeFirstResponder = 0;
  }

  return disableBecomeFirstResponder;
}

- (BOOL)keyboardCameraPresentedOrPresenting
{
  v2 = +[UIKeyboardCameraSession activeSession];
  if ([v2 isPresented])
  {
    isPresenting = 1;
  }

  else
  {
    isPresenting = [v2 isPresenting];
  }

  return isPresenting;
}

- (BOOL)keyboardSubstitutePresentedOrPresenting
{
  v2 = +[UISubstituteKeyboardSession activeSession];
  if ([v2 isPresented])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isPresenting] != 0;
  }

  return v3;
}

- (void)enhancedWindowingModeDidChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  delegate = [(UIKeyboardVisualModeManager *)self delegate];

  v6 = +[UIKeyboardVisualModeManager visualModeLog];
  delegate3 = v6;
  if (delegate)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [(UIKeyboardVisualModeManager *)changeCopy userInfo];
      v12 = 138412802;
      selfCopy2 = changeCopy;
      v14 = 2112;
      v15 = userInfo;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, delegate3, OS_LOG_TYPE_DEFAULT, "enhancedWindowingModeChangeNotification: %@ info: %@ received by %@", &v12, 0x20u);
    }

    windowingModeEnabled = [(UIKeyboardVisualModeManager *)self windowingModeEnabled];
    delegate2 = [(UIKeyboardVisualModeManager *)self delegate];
    [delegate2 visualModeManager:self observedEnhancedWindowingModeEnabledDidChange:windowingModeEnabled];

    visualMode = [(UIKeyboardVisualModeManager *)self visualMode];
    delegate3 = [(UIKeyboardVisualModeManager *)self delegate];
    [delegate3 visualModeManager:self didChangeToMode:visualMode];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    selfCopy2 = self;
    _os_log_error_impl(&dword_188A29000, delegate3, OS_LOG_TYPE_ERROR, "Invalid UIKeyboardVisualModeManager (%@) configured without a delegate", &v12, 0xCu);
  }
}

- (void)keyboardCameraNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  delegate = [(UIKeyboardVisualModeManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIKeyboardVisualModeManager *)self delegate];
    enhancedWindowingModeIsAvailable = [delegate2 enhancedWindowingModeIsAvailable];

    v8 = +[UIKeyboardVisualModeManager visualModeLog];
    delegate3 = v8;
    if (enhancedWindowingModeIsAvailable)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        selfCopy3 = "[UIKeyboardVisualModeManager keyboardCameraNotification:]";
        v13 = 2112;
        v14 = notificationCopy;
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, delegate3, OS_LOG_TYPE_DEFAULT, "%s: %@ received by %@", &v11, 0x20u);
      }

      delegate3 = [(UIKeyboardVisualModeManager *)self delegate];
      [delegate3 visualModeManager:self didChangeToMode:[(UIKeyboardVisualModeManager *)self visualMode]];
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      delegate4 = [(UIKeyboardVisualModeManager *)self delegate];
      v11 = 138412546;
      selfCopy3 = self;
      v13 = 2112;
      v14 = delegate4;
      _os_log_impl(&dword_188A29000, delegate3, OS_LOG_TYPE_INFO, "Ignoring Keyboard Camera notification for (%@), enhanced windowing is not available on (%@)", &v11, 0x16u);
    }
  }

  else
  {
    delegate3 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(delegate3, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      selfCopy3 = self;
      _os_log_error_impl(&dword_188A29000, delegate3, OS_LOG_TYPE_ERROR, "Invalid UIKeyboardVisualModeManager (%@) configured without a delegate", &v11, 0xCu);
    }
  }
}

- (BOOL)textEntryFocusOnExternalDisplay
{
  v10 = *MEMORY[0x1E69E9840];
  delegate = [(UIKeyboardVisualModeManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIKeyboardVisualModeManager *)self delegate];
    textEntryFocusOnExternalDisplay = [delegate2 textEntryFocusOnExternalDisplay];

    return textEntryFocusOnExternalDisplay;
  }

  else
  {
    v7 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Invalid UIKeyboardVisualModeManager (%@) configured without a datasource", &v8, 0xCu);
    }

    return 0;
  }
}

- (BOOL)expectedInputModeIsSpecialized
{
  v10 = *MEMORY[0x1E69E9840];
  delegate = [(UIKeyboardVisualModeManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIKeyboardVisualModeManager *)self delegate];
    expectedInputModeIsSpecialized = [delegate2 expectedInputModeIsSpecialized];

    return expectedInputModeIsSpecialized;
  }

  else
  {
    v7 = +[UIKeyboardVisualModeManager visualModeLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Invalid UIKeyboardVisualModeManager (%@) configured without a datasource", &v8, 0xCu);
    }

    return 0;
  }
}

@end