@interface UIKeyboardCameraSession
+ (BOOL)updatesGuideDuringRotation;
+ (UIKeyboardCameraSession)sharedSession;
+ (id)_textContentTypesForDataDetection;
+ (id)keyboardCameraContentTypeForResponder:(id)responder;
- (UITextInputSessionActionAnalytics)sessionAnalytics;
- (id)_sessionIdentifier;
- (id)_textFormattingResponder;
- (id)_textInputResponder;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_addObservers;
- (void)_cleanupKeyboardCameraAndShouldInsertText:(BOOL)text;
- (void)_dismissKeyboardCamera;
- (void)_firstResponderDidChange:(id)change;
- (void)_keyboardAboutToHide:(id)hide;
- (void)_keyboardCameraPreparationDidComplete;
- (void)_makeResponderEditableIfNecessary;
- (void)_show;
- (void)_updatePreviewWithString:(id)string;
- (void)dealloc;
- (void)endActiveSession;
- (void)keyboardCameraDidAccept;
- (void)keyboardCameraDidCancel;
- (void)keyboardCameraDidUpdateString:(id)string;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showForResponder:(id)responder sender:(id)sender rtiConfiguration:(id)configuration;
@end

@implementation UIKeyboardCameraSession

+ (UIKeyboardCameraSession)sharedSession
{
  v2 = _activeSession;
  if (!_activeSession)
  {
    v3 = objc_alloc_init(UIKeyboardCameraSession);
    v4 = _activeSession;
    _activeSession = v3;

    v2 = _activeSession;
  }

  return v2;
}

+ (BOOL)updatesGuideDuringRotation
{
  v2 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  keyboardWindow = [v2 keyboardWindow];
  rootViewController = [keyboardWindow rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  presentationController = [presentedViewController presentationController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    updatesGuideDuringRotation = [presentationController updatesGuideDuringRotation];
  }

  else
  {
    updatesGuideDuringRotation = 0;
  }

  return updatesGuideDuringRotation;
}

+ (id)_textContentTypesForDataDetection
{
  if (qword_1ED49F3A0 != -1)
  {
    dispatch_once(&qword_1ED49F3A0, &__block_literal_global_377);
  }

  v3 = _MergedGlobals_1189;

  return v3;
}

void __60__UIKeyboardCameraSession__textContentTypesForDataDetection__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"tel";
  v2[1] = @"street-address";
  v2[2] = @"url";
  v2[3] = @"email";
  v2[4] = @"flight-number";
  v2[5] = @"shipment-tracking-number";
  v2[6] = @"date-time";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = _MergedGlobals_1189;
  _MergedGlobals_1189 = v0;
}

+ (id)keyboardCameraContentTypeForResponder:(id)responder
{
  responderCopy = responder;
  v5 = &stru_1EFB14550;
  if (objc_opt_respondsToSelector())
  {
    textContentType = [responderCopy textContentType];

    if (textContentType)
    {
      goto LABEL_14;
    }
  }

  else
  {
    textContentType = v5;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  keyboardType = [responderCopy keyboardType];
  if (keyboardType == 3)
  {
    v8 = &UITextContentTypeURL;
    goto LABEL_13;
  }

  if (keyboardType == 5)
  {
    v8 = &UITextContentTypeTelephoneNumber;
    goto LABEL_13;
  }

  if (keyboardType != 7)
  {
LABEL_10:
    textContentType = 0;
    goto LABEL_14;
  }

  v8 = &UITextContentTypeEmailAddress;
LABEL_13:
  textContentType = *v8;
LABEL_14:
  _textContentTypesForDataDetection = [self _textContentTypesForDataDetection];
  if ([_textContentTypesForDataDetection containsObject:textContentType])
  {
    v5 = textContentType;
  }

  v10 = v5;

  return v5;
}

- (void)showForResponder:(id)responder sender:(id)sender rtiConfiguration:(id)configuration
{
  responderCopy = responder;
  senderCopy = sender;
  configurationCopy = configuration;
  presentingViewController = [(UIViewController *)self->_keyboardCameraViewController presentingViewController];

  if (presentingViewController)
  {
    goto LABEL_26;
  }

  v12 = responderCopy;
  if ([v12 conformsToProtocol:&unk_1EFE8E9A0])
  {
    if (v12)
    {
      textInputTraits = [v12 textInputTraits];
      v14 = v12;
LABEL_10:

      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = v12;
  if (![v14 conformsToProtocol:&unk_1EFE8A940])
  {
    textInputTraits = 0;
    goto LABEL_10;
  }

  if (v14)
  {
    textInputTraits = [UITextInputTraits traitsByAdoptingTraits:v14];
    goto LABEL_10;
  }

  textInputTraits = 0;
LABEL_11:

  objc_storeStrong(&self->_responder, responder);
  if ([v12 conformsToProtocol:&unk_1F016CC30] & 1) != 0 || (objc_msgSend(v12, "conformsToProtocol:", &unk_1F016C810))
  {
    v15 = 1;
  }

  else
  {
    v15 = [v12 conformsToProtocol:&unk_1F016C7B0];
  }

  self->_isWebResponder = v15;
  self->_isTextInputResponder = [v12 conformsToProtocol:&unk_1EFE8B2D0];
  self->_isTextFormattingResponder = [v12 conformsToProtocol:&unk_1EFE896F0];
  self->_respondsToKeyboardInputShouldInsertText = objc_opt_respondsToSelector() & 1;
  if (([textInputTraits isSingleLineDocument] & 1) != 0 || objc_msgSend(textInputTraits, "returnKeyType"))
  {
    isKindOfClass = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Mfcomposesubje_0.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  self->_isSingleLineDocument = isKindOfClass & 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isSecureTextEntry = [textInputTraits isSecureTextEntry];
  }

  else
  {
    isSecureTextEntry = 0;
  }

  self->_isSecureFieldEditor = isSecureTextEntry;
  objc_storeStrong(&self->_sender, sender);
  if (configurationCopy)
  {
    self->_isWebResponder = [configurationCopy isWebKitInteractionView];
    self->_isSingleLineDocument = [configurationCopy isSingleLineDocument];
    self->_shouldSuppressSoftwareKeyboard = [configurationCopy shouldSuppressKeyboard];
  }

  [(UIKeyboardCameraSession *)self _show];
  sessionAnalytics = [(UIKeyboardCameraSession *)self sessionAnalytics];
  [sessionAnalytics didBegin];

  v19 = +[UIKeyboard activeKeyboard];
  [v19 acceptAutocorrectionWithCompletionHandler:0];

  if (self->_isSecureFieldEditor)
  {
    _inputController = [v12 _inputController];
    [_inputController clearText];
  }

LABEL_26:
}

- (void)dealloc
{
  v6[5] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowFirstResponderDidChangeNotification";
  v6[1] = @"UITextInputCurrentInputModeDidChangeNotification";
  v6[2] = @"UIApplicationDidEnterBackgroundNotification";
  v6[3] = @"UIApplicationWillResignActiveNotification";
  v6[4] = @"UIKeyboardPrivateWillHideNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIKeyboardCameraSession;
  [(UIKeyboardCameraSession *)&v5 dealloc];
}

- (UITextInputSessionActionAnalytics)sessionAnalytics
{
  sessionAnalytics = self->_sessionAnalytics;
  if (!sessionAnalytics)
  {
    v4 = objc_alloc_init(UITextInputSessionActionAnalytics);
    v5 = self->_sessionAnalytics;
    self->_sessionAnalytics = v4;

    [(UITextInputSessionActionAnalytics *)self->_sessionAnalytics setDelegateSource:self];
    sessionAnalytics = self->_sessionAnalytics;
  }

  return sessionAnalytics;
}

- (void)_makeResponderEditableIfNecessary
{
  responder = [(UIKeyboardCameraSession *)self responder];
  isFirstResponder = [responder isFirstResponder];

  responder2 = [(UIKeyboardCameraSession *)self responder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:
    if (isFirstResponder)
    {
      return;
    }

    goto LABEL_7;
  }

  responder3 = [(UIKeyboardCameraSession *)self responder];
  if (([responder3 isEditable] & 1) != 0 || !objc_msgSend(responder3, "_shouldBecomeEditableUponFocus"))
  {

    goto LABEL_6;
  }

  [responder3 setEditable:1];

LABEL_7:
  responder4 = [(UIKeyboardCameraSession *)self responder];
  canBecomeFirstResponder = [responder4 canBecomeFirstResponder];

  if (canBecomeFirstResponder)
  {
    *&self->_shouldSuppressSoftwareKeyboard = 257;
    responder5 = [(UIKeyboardCameraSession *)self responder];
    [responder5 becomeFirstResponder];
  }
}

- (void)_show
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    [(UIKeyboardCameraSession *)self _makeResponderEditableIfNecessary];
    v15 = objc_alloc_init(UIKeyboardCameraSessionRTIConfiguration);
    [(UIKeyboardCameraSessionRTIConfiguration *)v15 setIsWebKitInteractionView:self->_isWebResponder];
    [(UIKeyboardCameraSessionRTIConfiguration *)v15 setIsSingleLineDocument:self->_isSingleLineDocument];
    [(UIKeyboardCameraSessionRTIConfiguration *)v15 setShouldSuppressKeyboard:self->_shouldSuppressSoftwareKeyboard];
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 forwardKeyboardCameraEvent_startCameraInput:v15];

    _textInputResponder = [(UIKeyboardCameraSession *)self _textInputResponder];
    v5 = _textInputResponder;
    if (_textInputResponder && self->_isSecureFieldEditor)
    {
      _inputController = [_textInputResponder _inputController];
      [_inputController clearText];

      textField = [v5 textField];
      [textField setDisplaySecureTextUsingPlainText:1];
    }

    [(UIKeyboardCameraSession *)self _addObservers];
  }

  else if (+[UIKeyboardCameraViewController isEnabled])
  {
    v8 = objc_alloc_init(UIKeyboardCameraViewController);
    keyboardCameraViewController = self->_keyboardCameraViewController;
    self->_keyboardCameraViewController = v8;

    [(UIKeyboardCameraViewController *)self->_keyboardCameraViewController setDelegate:self];
    responder = [(UIKeyboardCameraSession *)self responder];
    v11 = [UIKeyboardCameraSession keyboardCameraContentTypeForResponder:responder];
    [(UIKeyboardCameraViewController *)self->_keyboardCameraViewController setTextContentType:v11];

    [(UIViewController *)self->_keyboardCameraViewController setModalPresentationStyle:4];
    [(UIViewController *)self->_keyboardCameraViewController setTransitioningDelegate:self];
    _textFormattingResponder = [(UIKeyboardCameraSession *)self _textFormattingResponder];
    v13 = _textFormattingResponder;
    if (_textFormattingResponder)
    {
      [_textFormattingResponder _hideTextFormattingOptions:0];
    }

    objc_initWeak(&location, self);
    v14 = self->_keyboardCameraViewController;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __32__UIKeyboardCameraSession__show__block_invoke;
    v16[3] = &unk_1E70F3668;
    objc_copyWeak(&v17, &location);
    [(UIKeyboardCameraViewController *)v14 prepareWithCompletion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __32__UIKeyboardCameraSession__show__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [WeakRetained _keyboardCameraPreparationDidComplete];
      WeakRetained = v3;
    }
  }
}

- (void)_keyboardCameraPreparationDidComplete
{
  if (!+[_UIRemoteKeyboards enabled])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraSession.m" lineNumber:376 description:@"Keyboard Camera is being used without remote keyboards enabled"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIKeyboardCameraSessionWillPresent" object:self];

  [(UIPresentationController *)self->_presentationController setDelegate:self];
  v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  inputWindowRootViewController = [v5 inputWindowRootViewController];

  placement = [inputWindowRootViewController placement];
  self->_presentingOverKeyboard = [placement showsKeyboard];

  if (!self->_presentingOverKeyboard)
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    forceCreateKeyboardWindow = [v8 forceCreateKeyboardWindow];
  }

  v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  inputWindowRootViewController2 = [v10 inputWindowRootViewController];

  v12 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || !self->_presentingOverKeyboard;
  objc_initWeak(&location, self);
  keyboardCameraViewController = self->_keyboardCameraViewController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__UIKeyboardCameraSession__keyboardCameraPreparationDidComplete__block_invoke;
  v15[3] = &unk_1E70F5A28;
  objc_copyWeak(&v16, &location);
  [inputWindowRootViewController2 presentViewController:keyboardCameraViewController animated:v12 completion:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __64__UIKeyboardCameraSession__keyboardCameraPreparationDidComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"_UIKeyboardCameraSessionDidPresent" object:WeakRetained];

  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addObservers];
    v2 = WeakRetained;
  }
}

- (void)_keyboardAboutToHide:(id)hide
{
  userInfo = [hide userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {

    [(UIKeyboardCameraSession *)self keyboardCameraDidCancel];
  }
}

- (void)_firstResponderDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"UIWindowFirstResponderUserInfoKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(UIKeyboardCameraSession *)self keyboardCameraDidCancel];
  }
}

- (void)_addObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = +[UIWindow _applicationKeyWindow];
  [defaultCenter addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:v3];

  [defaultCenter addObserver:self selector:sel__inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__didEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
  [defaultCenter addObserver:self selector:sel__didEnterBackground_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];
  [defaultCenter addObserver:self selector:sel__keyboardAboutToHide_ name:@"UIKeyboardPrivateWillHideNotification" object:0];
}

- (id)_textInputResponder
{
  if (self->_isTextInputResponder)
  {
    return self->_responder;
  }

  else
  {
    return 0;
  }
}

- (id)_textFormattingResponder
{
  if (self->_isTextFormattingResponder)
  {
    return self->_responder;
  }

  else
  {
    return 0;
  }
}

- (void)_updatePreviewWithString:(id)string
{
  stringCopy = string;
  _textInputResponder = [(UIKeyboardCameraSession *)self _textInputResponder];
  if (_textInputResponder)
  {
    if (!self->_respondsToKeyboardInputShouldInsertText || [(UIKeyInput *)self->_responder keyboardInput:self->_responder shouldInsertText:stringCopy isMarkedText:1])
    {
      [_textInputResponder setMarkedText:stringCopy selectedRange:{objc_msgSend(stringCopy, "length"), 0}];
    }

    if (+[UIKeyboard isInputSystemUI])
    {
      v5 = +[UIKeyboardImpl activeInstance];
      [v5 forwardKeyboardCameraEvent_updatePreviewText:stringCopy asMarkedText:1];
    }
  }
}

- (void)_cleanupKeyboardCameraAndShouldInsertText:(BOOL)text
{
  if (!self->_didCleanup)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    _textInputResponder = [(UIKeyboardCameraSession *)self _textInputResponder];
    v7 = _textInputResponder;
    if (text)
    {
      v8 = [(NSString *)self->_keyboardCameraCandidateString length];
      v9 = v8 != 0;
      if (v7 && v8)
      {
        inputDelegate = [v7 inputDelegate];
        [inputDelegate textWillChange:v7];

        v9 = 1;
      }

      else if (!v7)
      {
        v13 = 1;
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
      if (!_textInputResponder)
      {
        goto LABEL_27;
      }
    }

    if (!self->_isWebResponder || self->_isSingleLineDocument)
    {
      if (v9)
      {
        [v7 unmarkText];
        if (+[UIKeyboard isInputSystemUI])
        {
          v12 = +[UIKeyboardImpl activeInstance];
          [v12 forwardKeyboardCameraEvent_updatePreviewText:self->_keyboardCameraCandidateString asMarkedText:0];
        }

        if (self->_isSecureFieldEditor)
        {
          [v7 _obscureAllText];
        }

LABEL_25:
        inputDelegate2 = [v7 inputDelegate];
        [inputDelegate2 textDidChange:v7];

LABEL_26:
        v19 = [(UIKeyboardCameraSession *)self sessionAnalytics:v23];
        [v19 didInsertText:self->_keyboardCameraCandidateString relativeRangeBefore:{0, 0}];

        v11 = 1;
        goto LABEL_27;
      }

      [(UIKeyboardCameraSession *)self _updatePreviewWithString:&stru_1EFB14550];
      [v7 unmarkText];
      if (self->_isSecureFieldEditor)
      {
        [v7 _obscureAllText];
      }

LABEL_22:
      v11 = 0;
LABEL_27:
      sessionAnalytics = [(UIKeyboardCameraSession *)self sessionAnalytics];
      [sessionAnalytics writeAnalytics];

      textContentType = [(UIKeyboardCameraViewController *)self->_keyboardCameraViewController textContentType];
      [UIKBAnalyticsDispatcher keyboardCameraSessionEndedForTextContentType:textContentType didFindText:self->_didFindText didInsertText:v11 sender:self->_sender];
      self->_shouldSuppressSoftwareKeyboard = 0;
      keyboardCameraCandidateString = self->_keyboardCameraCandidateString;
      self->_keyboardCameraCandidateString = 0;

      self->_didCleanup = 1;
      return;
    }

    v13 = 0;
    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_19:
    if (+[UIKeyboard isInputSystemUI])
    {
      v14 = objc_alloc_init(MEMORY[0x1E69D9638]);
      [v14 insertText:self->_keyboardCameraCandidateString];
      v15 = +[UIKeyboardImpl activeInstance];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __69__UIKeyboardCameraSession__cleanupKeyboardCameraAndShouldInsertText___block_invoke;
      v26 = &unk_1E70F35B8;
      v27 = v15;
      v28 = v14;
      v16 = v14;
      v17 = v15;
      [v17 performOperations:&v23 withTextInputSource:7];
    }

    else
    {
      [(UIKeyInput *)self->_responder insertText:self->_keyboardCameraCandidateString];
    }

    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }
}

- (void)_dismissKeyboardCamera
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIKeyboardCameraSessionWillDismiss" object:self];

  objc_initWeak(&location, self);
  presentingViewController = [(UIViewController *)self->_keyboardCameraViewController presentingViewController];
  v5 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || !self->_presentingOverKeyboard;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__UIKeyboardCameraSession__dismissKeyboardCamera__block_invoke;
  v10 = &unk_1E70F5A28;
  objc_copyWeak(&v11, &location);
  [presentingViewController dismissViewControllerAnimated:v5 completion:&v7];
  if ([UIKeyboard isInputSystemUI:v7])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 forwardKeyboardCameraEvent_selfDestruct];
  }

  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __49__UIKeyboardCameraSession__dismissKeyboardCamera__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"_UIKeyboardCameraSessionDidDismiss" object:WeakRetained];

  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
  }

  v3 = _activeSession;
  _activeSession = 0;
}

- (void)keyboardCameraDidUpdateString:(id)string
{
  obj = string;
  if ([obj length])
  {
    self->_didFindText = 1;
  }

  if (self->_isSingleLineDocument)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v5 = [obj componentsSeparatedByCharactersInSet:newlineCharacterSet];
    v6 = [v5 componentsJoinedByString:@" "];

    v7 = v6;
  }

  else
  {
    v7 = obj;
  }

  obja = v7;
  objc_storeStrong(&self->_keyboardCameraCandidateString, v7);
  _textInputResponder = [(UIKeyboardCameraSession *)self _textInputResponder];
  if (_textInputResponder)
  {
    if (self->_isWebResponder)
    {
      if (!self->_isSingleLineDocument)
      {
        goto LABEL_13;
      }

      newlineCharacterSet2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v10 = [obja componentsSeparatedByCharactersInSet:newlineCharacterSet2];
      v11 = [v10 componentsJoinedByString:@" "];

      objc_storeStrong(&self->_keyboardCameraCandidateString, v11);
      v12 = v11;
    }

    else
    {
      v12 = obja;
    }

    obja = v12;
    [(UIKeyboardCameraSession *)self _updatePreviewWithString:?];
    if (self->_isSecureFieldEditor)
    {
      [_textInputResponder _unobscureAllText];
    }
  }

LABEL_13:
}

- (void)keyboardCameraDidAccept
{
  [(UIKeyboardCameraSession *)self _cleanupKeyboardCameraAndShouldInsertText:1];

  [(UIKeyboardCameraSession *)self _dismissKeyboardCamera];
}

- (void)keyboardCameraDidCancel
{
  v3 = +[UIKeyboard usesInputSystemUI];
  [(UIKeyboardCameraSession *)self _cleanupKeyboardCameraAndShouldInsertText:0];
  if (v3)
  {

    [(UIKeyboardCameraSession *)self endActiveSession];
  }

  else
  {

    [(UIKeyboardCameraSession *)self _dismissKeyboardCamera];
  }
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    animationController = self->_animationController;
  }

  else
  {
    animationController = 0;
  }

  return animationController;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    animationController = self->_animationController;
  }

  else
  {
    animationController = 0;
  }

  return animationController;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  presentationController = controller;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = [(UIPresentationController *)[UIKeyboardCameraPadPresentationController alloc] initWithPresentedViewController:presentationController presentingViewController:viewControllerCopy];

    [(UIKeyboardCameraPadPresentationController *)v9 setDimmingViewDelegate:self];
    v10 = v9;
    presentationController = self->_presentationController;
    self->_presentationController = &v10->super;
    v11 = 24;
  }

  else
  {
    v10 = [(UIPresentationController *)[UIKeyboardCameraOverlayPresentationController alloc] initWithPresentedViewController:presentationController presentingViewController:viewControllerCopy];

    v11 = 16;
  }

  v12 = *(&self->super.isa + v11);
  *(&self->super.isa + v11) = v10;

  [(UIKeyboardCameraBasePresentationController *)self->_presentationController setPresentingOverKeyboard:self->_presentingOverKeyboard];
  v13 = self->_presentationController;

  return v13;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  keyboardCameraViewController = self->_keyboardCameraViewController;

  if (presentedViewController == keyboardCameraViewController)
  {
    [(UIKeyboardCameraSession *)self _cleanupKeyboardCameraAndShouldInsertText:0];
    v6 = self->_keyboardCameraViewController;
    self->_keyboardCameraViewController = 0;
  }
}

- (id)_sessionIdentifier
{
  v2 = +[UIKeyboardImpl activeInstance];
  _sessionIdentifier = [v2 _sessionIdentifier];

  return _sessionIdentifier;
}

- (void)endActiveSession
{
  _textInputResponder = [(UIKeyboardCameraSession *)self _textInputResponder];
  v7 = _textInputResponder;
  if (_textInputResponder && self->_isSecureFieldEditor)
  {
    textField = [_textInputResponder textField];
    [textField setDisplaySecureTextUsingPlainText:0];

    [v7 _obscureAllText];
  }

  if (self->_shouldResignFirstResponderWhenDone && [v7 isFirstResponder])
  {
    [v7 resignFirstResponder];
  }

  self->_shouldResignFirstResponderWhenDone = 0;
  keyboardCameraViewController = self->_keyboardCameraViewController;
  self->_keyboardCameraViewController = 0;

  self->_shouldSuppressSoftwareKeyboard = 0;
  v6 = _activeSession;
  _activeSession = 0;
}

@end