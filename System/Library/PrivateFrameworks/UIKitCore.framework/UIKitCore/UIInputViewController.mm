@interface UIInputViewController
+ (void)presentDialogForAddingKeyboard;
- (BOOL)hasFullAccess;
- (BOOL)needsInputModeSwitchKey;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIInputView)inputView;
- (UIInputViewController)initWithCoder:(id)coder;
- (UIInputViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_proxyInterface;
- (id)_textDocumentInterface;
- (void)_didResetDocumentState;
- (void)_setAutosizeToCurrentKeyboard:(BOOL)keyboard;
- (void)_setExtensionContextUUID:(id)d;
- (void)_setTextDocumentProxy:(id)proxy;
- (void)_setupInputController;
- (void)_updateConformanceCache;
- (void)_willResetDocumentState;
- (void)advanceToNextInputMode;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)dismissKeyboard;
- (void)handleInputModeListFromView:(UIView *)view withEvent:(UIEvent *)event;
- (void)loadView;
- (void)proceedShouldReturnIfPossibleForASP;
- (void)requestSupplementaryLexiconWithCompletion:(void *)completionHandler;
- (void)setHasDictationKey:(BOOL)hasDictationKey;
- (void)setPrimaryLanguage:(NSString *)primaryLanguage;
- (void)setView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation UIInputViewController

- (id)_proxyInterface
{
  textDocumentProxy = [(UIInputViewController *)self textDocumentProxy];
  if ([textDocumentProxy conformsToProtocol:&unk_1F0009C18])
  {
    v3 = textDocumentProxy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_setupInputController
{
  if ([objc_opt_class() _requiresProxyInterface])
  {
    v3 = objc_alloc_init(_UITextDocumentInterface);
    [(_UITextDocumentInterface *)v3 setDelegate:self];
    textDocumentProxy = self->_textDocumentProxy;
    self->_textDocumentProxy = v3;
  }
}

- (void)_updateConformanceCache
{
  view = [(UIViewController *)self view];
  self->_viewConformsToRemotePlaceholder = objc_opt_respondsToSelector() & 1;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = UIInputViewController;
  [(UIViewController *)&v2 viewDidLoad];
}

- (id)_textDocumentInterface
{
  textDocumentProxy = [(UIInputViewController *)self textDocumentProxy];
  if ([textDocumentProxy isMemberOfClass:objc_opt_class()])
  {
    v3 = textDocumentProxy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)dealloc
{
  _proxyInterface = [(UIInputViewController *)self _proxyInterface];
  [_proxyInterface setForwardingInterface:0];

  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  [_textDocumentInterface setDelegate:0];

  textDocumentProxy = self->_textDocumentProxy;
  self->_textDocumentProxy = 0;

  v6.receiver = self;
  v6.super_class = UIInputViewController;
  [(UIViewController *)&v6 dealloc];
}

- (UIInputViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = UIInputViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(UIInputViewController *)v4 _setupInputController];
  }

  return v5;
}

- (UIInputViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIInputViewController;
  v3 = [(UIViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(UIInputViewController *)v3 _setupInputController];
  }

  return v4;
}

- (void)_setTextDocumentProxy:(id)proxy
{
  proxyCopy = proxy;
  _proxyInterface = [(UIInputViewController *)self _proxyInterface];
  [_proxyInterface setForwardingInterface:0];

  textDocumentProxy = self->_textDocumentProxy;
  self->_textDocumentProxy = proxyCopy;
}

- (void)_setAutosizeToCurrentKeyboard:(BOOL)keyboard
{
  autosizeToCurrentKeyboard = self->_autosizeToCurrentKeyboard;
  self->_autosizeToCurrentKeyboard = keyboard;
  if (autosizeToCurrentKeyboard != keyboard)
  {
    v8 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v8 setSelfSizingChanged:1];
    view = [(UIViewController *)self view];
    superview = [view superview];
    [superview _didChangeKeyplaneWithContext:v8];
  }
}

- (void)loadView
{
  nibName = [(UIViewController *)self nibName];
  if (nibName && (v4 = nibName, [(UIViewController *)self nibBundle], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v8.receiver = self;
    v8.super_class = UIInputViewController;
    [(UIViewController *)&v8 loadView];
    [(UIInputViewController *)self _updateConformanceCache];
  }

  else
  {
    v6 = [UIInputView alloc];
    v7 = [(UIInputView *)v6 initWithFrame:0 inputViewStyle:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIInputViewController *)self setView:v7];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UIInputViewController;
  [(UIViewController *)&v5 viewDidAppear:appear];
  view = [(UIViewController *)self view];
  [view setNeedsLayout];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = UIInputViewController;
  [(UIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)_setExtensionContextUUID:(id)d
{
  v7.receiver = self;
  v7.super_class = UIInputViewController;
  [(UIViewController *)&v7 _setExtensionContextUUID:d];
  v6.receiver = self;
  v6.super_class = UIInputViewController;
  extensionContext = [(UIViewController *)&v6 extensionContext];
  if (extensionContext && [extensionContext isMemberOfClass:objc_opt_class()])
  {
    _proxyInterface = [(UIInputViewController *)self _proxyInterface];
    [extensionContext setForwardingInterface:_proxyInterface];
  }
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v8.receiver = self;
  v8.super_class = UIInputViewController;
  LODWORD(v5) = 1148846080;
  [(UIViewController *)&v8 _systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:0.0 verticalFittingPriority:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIInputView)inputView
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [(UIViewController *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (void)setView:(id)view
{
  v5.receiver = self;
  v5.super_class = UIInputViewController;
  [(UIViewController *)&v5 setView:view];
  [(UIInputViewController *)self _updateConformanceCache];
  if ([objc_opt_class() _requiresProxyInterface])
  {
    inputView = [(UIInputViewController *)self inputView];
    [inputView _setDisableSplitSupport:1];
  }
}

- (void)setPrimaryLanguage:(NSString *)primaryLanguage
{
  v4 = primaryLanguage;
  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  [_textDocumentInterface _setPrimaryLanguage:v4];
}

- (BOOL)hasFullAccess
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v2 = qword_1ED49C048;
  v18 = qword_1ED49C048;
  if (!qword_1ED49C048)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getkTCCServiceKeyboardNetworkSymbolLoc_block_invoke;
    v14 = &unk_1E70F2F20;
    v3 = TCCLibrary();
    v16[3] = dlsym(v3, "kTCCServiceKeyboardNetwork");
    qword_1ED49C048 = v16[3];
    v2 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v2)
  {
    v4 = *v2;
    v5 = *v2;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v6 = off_1ED49C040;
    v18 = off_1ED49C040;
    if (!off_1ED49C040)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __getTCCAccessPreflightSymbolLoc_block_invoke;
      v14 = &unk_1E70F2F20;
      v7 = TCCLibrary();
      v16[3] = dlsym(v7, "TCCAccessPreflight");
      off_1ED49C040 = v16[3];
      v6 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (v6)
    {
      return v6(v4, 0) == 0;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"TCCAccessPreflightResult __TCCAccessPreflight(CFStringRef, CFDictionaryRef)"}];
    [currentHandler handleFailureInFunction:v10 file:@"UIInputViewController.m" lineNumber:59 description:{@"%s", dlerror(), v11, v12, v13, v14}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkTCCServiceKeyboardNetwork(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"UIInputViewController.m" lineNumber:60 description:{@"%s", dlerror(), v11, v12, v13, v14}];
  }

  __break(1u);
  return result;
}

- (BOOL)needsInputModeSwitchKey
{
  v14 = *MEMORY[0x1E69E9840];
  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  forwardingInterface = [_textDocumentInterface forwardingInterface];

  if (!forwardingInterface)
  {
    v5 = *(__UILogGetCategoryCachedImpl("External", &needsInputModeSwitchKey___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = [v6 stringWithUTF8String:"-[UIInputViewController needsInputModeSwitchKey]"];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@ was called before a connection was established to the host application. This will produce an inaccurate result. Please make sure to call this after your primary view controller has been initialized.", &v12, 0xCu);
    }
  }

  _textDocumentInterface2 = [(UIInputViewController *)self _textDocumentInterface];
  needsInputModeSwitchKey = [_textDocumentInterface2 needsInputModeSwitchKey];

  return needsInputModeSwitchKey;
}

- (void)dismissKeyboard
{
  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  responseDelegate = [_textDocumentInterface responseDelegate];

  if (responseDelegate)
  {
    _textDocumentInterface2 = [(UIInputViewController *)self _textDocumentInterface];
    [_textDocumentInterface2 _setShouldDismiss];
  }

  else
  {
    _textDocumentInterface2 = +[UIKeyboardImpl activeInstance];
    [_textDocumentInterface2 dismissKeyboard];
  }
}

- (void)proceedShouldReturnIfPossibleForASP
{
  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  [_textDocumentInterface _setProceedShouldReturnIfPossibleForASP];
}

- (void)advanceToNextInputMode
{
  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  [_textDocumentInterface _setShouldAdvanceInputMode];
}

- (void)setHasDictationKey:(BOOL)hasDictationKey
{
  v3 = hasDictationKey;
  _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
  [_textDocumentInterface _setHasDictation:v3];

  self->_hasDictationKey = v3;
}

- (void)handleInputModeListFromView:(UIView *)view withEvent:(UIEvent *)event
{
  v6 = view;
  v7 = [(UIEvent *)event touchesForView:v6];
  anyObject = [v7 anyObject];

  [(UIView *)v6 bounds];
  MidX = CGRectGetMidX(v53);
  [(UIView *)v6 bounds];
  MinY = CGRectGetMinY(v54);
  view = [(UIViewController *)self view];
  [(UIView *)v6 convertPoint:view toView:MidX, MinY];
  v13 = v12;
  v15 = v14;

  view2 = [(UIViewController *)self view];
  [anyObject locationInView:view2];
  v18 = v17;
  v20 = v19;

  phase = [anyObject phase];
  if (phase <= 2)
  {
    if (phase)
    {
      if (phase == 1)
      {
        if (self->_inputModeListIsShown || (v22 = v15 - v20, v15 - v20 > 10.0))
        {
          _textDocumentInterface = [(UIInputViewController *)self _textDocumentInterface];
          [_textDocumentInterface _setInputModeList:1 touchBegan:self->_touchBegan fromLocation:v13 updatePoint:{v15, v18, v20}];

          self->_inputModeListIsShown = 1;
        }

        if (!self->_commitInputModeOnTouchEnd)
        {
          [(UIView *)v6 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          [anyObject locationInView:v6];
          v51.x = v32;
          v51.y = v33;
          v55.origin.x = v25;
          v55.origin.y = v27;
          v55.size.width = v29;
          v55.size.height = v31;
          if (!CGRectContainsPoint(v55, v51))
          {
            self->_commitInputModeOnTouchEnd = 1;
          }
        }
      }
    }

    else
    {
      self->_inputModeListIsShown = 0;
      self->_commitInputModeOnTouchEnd = 0;
      [anyObject timestamp];
      self->_touchBegan = v38;
      v39 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__UIInputViewController_handleInputModeListFromView_withEvent___block_invoke;
      block[3] = &unk_1E70F3B20;
      block[4] = self;
      *&block[5] = v13;
      *&block[6] = v15;
      *&block[7] = v18;
      *&block[8] = v20;
      dispatch_after(v39, MEMORY[0x1E69E96A0], block);
    }

    goto LABEL_18;
  }

  if (phase != 3)
  {
    if (phase != 4)
    {
      goto LABEL_18;
    }

    _textDocumentInterface2 = [(UIInputViewController *)self _textDocumentInterface];
    v35 = _textDocumentInterface2;
    touchBegan = self->_touchBegan;
    v37 = 4;
LABEL_17:
    [_textDocumentInterface2 _setInputModeList:v37 touchBegan:touchBegan fromLocation:v13 updatePoint:{v15, v18, v20}];

    goto LABEL_18;
  }

  if (!self->_inputModeListIsShown)
  {
    [(UIView *)v6 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [anyObject locationInView:v6];
    v52.x = v48;
    v52.y = v49;
    v56.origin.x = v41;
    v56.origin.y = v43;
    v56.size.width = v45;
    v56.size.height = v47;
    if (CGRectContainsPoint(v56, v52))
    {
      self->_inputModeListIsShown = 1;
      [(UIInputViewController *)self advanceToNextInputMode];
      goto LABEL_18;
    }

    if (!self->_inputModeListIsShown)
    {
      goto LABEL_18;
    }
  }

  if (self->_commitInputModeOnTouchEnd)
  {
    _textDocumentInterface2 = [(UIInputViewController *)self _textDocumentInterface];
    v35 = _textDocumentInterface2;
    touchBegan = self->_touchBegan;
    v37 = 3;
    goto LABEL_17;
  }

LABEL_18:
}

void __63__UIInputViewController_handleInputModeListFromView_withEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[993] & 1) == 0)
  {
    v3 = [v2 _textDocumentInterface];
    [v3 _setInputModeList:0 touchBegan:*(*(a1 + 32) + 1000) fromLocation:*(a1 + 40) updatePoint:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];

    *(*(a1 + 32) + 993) = 1;
  }
}

- (void)requestSupplementaryLexiconWithCompletion:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = MEMORY[0x1E69D9670];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundlePath = [mainBundle bundlePath];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__UIInputViewController_requestSupplementaryLexiconWithCompletion___block_invoke;
  v8[3] = &unk_1E710E4E0;
  v9 = v3;
  v7 = v3;
  [v4 requestLexiconFromBundlePath:bundlePath completionHandler:v8];
}

void __67__UIInputViewController_requestSupplementaryLexiconWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [UILexicon _lexiconWithTILexicon:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)_willResetDocumentState
{
  if (pthread_main_np() == 1)
  {

    [(UIInputViewController *)self textWillChange:0];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__UIInputViewController__willResetDocumentState__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_didResetDocumentState
{
  if (pthread_main_np() == 1)
  {

    [(UIInputViewController *)self textDidChange:0];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__UIInputViewController__didResetDocumentState__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

+ (void)presentDialogForAddingKeyboard
{
  v4 = +[UIWindow _applicationKeyWindow];
  v11 = v4;
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = currentHandler;
    v7 = @"No keyWindow";
    v8 = a2;
    selfCopy2 = self;
    v10 = 415;
    goto LABEL_5;
  }

  if ([v4 _isHostedInAnotherProcess])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = currentHandler;
    v7 = @"The dialog could not be launch from keyboard extension";
    v8 = a2;
    selfCopy2 = self;
    v10 = 417;
LABEL_5:
    [currentHandler handleFailureInMethod:v8 object:selfCopy2 file:@"UIInputViewController.m" lineNumber:v10 description:v7];

    goto LABEL_7;
  }

  +[_UIDialogForAddingKeyboard presentDialogForAddingKeyboard];
LABEL_7:
}

@end