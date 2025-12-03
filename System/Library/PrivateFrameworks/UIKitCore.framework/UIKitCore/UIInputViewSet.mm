@interface UIInputViewSet
+ (id)emptyInputSet;
+ (id)inputSetWithInputView:(id)view accessoryView:(id)accessoryView assistantView:(id)assistantView;
+ (id)inputSetWithKeyboardAndAccessoryView:(id)view assistantView:(id)assistantView;
+ (id)inputSetWithOriginalInputSet:(id)set duplicateInputView:(BOOL)view duplicateInputAccessoryView:(BOOL)accessoryView duplicateInputAssistantView:(BOOL)assistantView;
+ (id)inputSetWithPlaceholderAndCustomInputView:(id)view accessoryView:(id)accessoryView assistantView:(id)assistantView;
- (BOOL)__isCKAccessoryView;
- (BOOL)_accessorySuppressesShadow;
- (BOOL)_actLikeInputAccessoryViewSupportsSplit;
- (BOOL)_inputAccessoryViewSupportsSplit;
- (BOOL)_inputViewIsSplit;
- (BOOL)_inputViewIsVisible;
- (BOOL)_inputViewSetSupportsSplit;
- (BOOL)_inputViewSupportsSplit;
- (BOOL)_isFullscreen;
- (BOOL)_isKeyboard;
- (BOOL)canAnimateToInputViewSet:(id)set;
- (BOOL)containsResponder:(id)responder;
- (BOOL)containsView:(id)view;
- (BOOL)hasNonPlaceholderViews;
- (BOOL)hierarchyContainsView:(id)view;
- (BOOL)inSyncWithOrientation:(int64_t)orientation forKeyboard:(id)keyboard;
- (BOOL)inputViewKeyboardCanSplit;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInputAccessoryViewPlaceholder;
- (BOOL)isInputAssistantViewPlaceholder;
- (BOOL)isInputViewPlaceholder;
- (BOOL)isLocalMinimumHeightInputView;
- (BOOL)isSplit;
- (BOOL)isStrictSupersetOfViewSet:(id)set;
- (BOOL)setAccessoryViewVisible:(BOOL)visible delay:(double)delay;
- (BOOL)usesKeyClicks;
- (BOOL)visible;
- (CGRect)_leftInputViewSetFrame;
- (CGRect)_rightInputViewSetFrame;
- (CGRect)inputAccessoryViewBounds;
- (CGRect)inputAssistantViewBounds;
- (CGRect)inputViewBounds;
- (CGSize)onscreenSizeOfViewsInSetIncludingIAV:(BOOL)v;
- (UIInputViewController)accessoryViewController;
- (UIInputViewController)assistantViewController;
- (UIInputViewController)inputViewController;
- (UIInputViewSet)initWithInputView:(id)view customInputView:(id)inputView accessoryView:(id)accessoryView assistantView:(id)assistantView isKeyboard:(BOOL)keyboard;
- (UIKeyboard)keyboard;
- (UIResponder)accessoryControllerNextResponder;
- (UIResponder)accessoryViewNextResponder;
- (UIResponder)restorableResponder;
- (UIView)layeringView;
- (UIView)splitExemptSubview;
- (double)inputViewSplitHeight;
- (id)_splittableInputAccessoryView;
- (id)_themableInputAccessoryView;
- (id)description;
- (id)inputSetWithInputAccessoryViewFromInputSet:(id)set;
- (id)inputSetWithInputAccessoryViewOnly;
- (id)normalizePlaceholders;
- (int64_t)keyboardOrientation:(id)orientation;
- (void)_beginSplitTransitionIfNeeded;
- (void)_endSplitTransitionIfNeeded;
- (void)_setRenderConfig:(id)config;
- (void)_setSplitProgress:(double)progress;
- (void)dealloc;
- (void)refreshPresentation;
- (void)setKeyboardAssistantBar:(id)bar;
- (void)setShouldShowInputSwitcherView:(BOOL)view;
@end

@implementation UIInputViewSet

- (BOOL)_inputViewSetSupportsSplit
{
  if (!+[UIKeyboardImpl rivenPreference]|| ![(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    return 0;
  }

  return [(UIInputViewSet *)self _actLikeInputAccessoryViewSupportsSplit];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v25.receiver = self;
  v25.super_class = UIInputViewSet;
  v4 = [(UIInputViewSet *)&v25 description];
  v5 = [v3 stringWithFormat:@"<%@ ", v4];;

  if ([(UIInputViewSet *)self isEmpty])
  {
    v6 = @"(empty)";
LABEL_23:
    [v5 appendString:v6];
    goto LABEL_24;
  }

  if (!self->_inputViewController)
  {
    inputView = [(UIInputViewSet *)self inputView];

    if (inputView)
    {
      [v5 appendFormat:@"keyboard = [uninitialized]; "];
      goto LABEL_11;
    }
  }

  keyboard = [(UIInputViewSet *)self keyboard];

  if (keyboard)
  {
    keyboard2 = [(UIInputViewSet *)self keyboard];
    [v5 appendFormat:@"keyboard = %@%%; ", keyboard2];
  }

  else
  {
    inputView2 = [(UIInputViewSet *)self inputView];

    if (!inputView2)
    {
      goto LABEL_11;
    }

    keyboard2 = [(UIInputViewSet *)self inputView];
    _kb_description = [keyboard2 _kb_description];
    [v5 appendFormat:@"view = %@; ", _kb_description];
  }

LABEL_11:
  hostedCustomInputView = [(UIInputViewSet *)self hostedCustomInputView];

  if (hostedCustomInputView)
  {
    hostedCustomInputView2 = [(UIInputViewSet *)self hostedCustomInputView];
    _kb_description2 = [hostedCustomInputView2 _kb_description];
    [v5 appendFormat:@"hostedCustomInputView = %@; ", _kb_description2];
  }

  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];

  if (inputAssistantView)
  {
    inputAssistantView2 = [(UIInputViewSet *)self inputAssistantView];
    _kb_description3 = [inputAssistantView2 _kb_description];
    [v5 appendFormat:@"assistant = %@; ", _kb_description3];
  }

  inputSwitcherView = [(UIInputViewSet *)self inputSwitcherView];

  if (inputSwitcherView)
  {
    inputSwitcherView2 = [(UIInputViewSet *)self inputSwitcherView];
    _kb_description4 = [inputSwitcherView2 _kb_description];
    [v5 appendFormat:@"inputSwitcherView  = %@; ", _kb_description4];
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];

  if (inputAccessoryView)
  {
    inputAccessoryView2 = [(UIInputViewSet *)self inputAccessoryView];
    _kb_description5 = [inputAccessoryView2 _kb_description];
    [v5 appendFormat:@"accessory = %@; ", _kb_description5];
  }

  if (![(UIInputViewSet *)self usesKeyClicks])
  {
    [v5 appendString:@"usesKeyClicks = NO;  "];
  }

  if (![(UIInputViewSet *)self visible])
  {
    v6 = @"(not visible)";
    goto LABEL_23;
  }

LABEL_24:
  [v5 appendString:@">"];

  return v5;
}

- (UIKeyboard)keyboard
{
  inputViewController = [(UIInputViewSet *)self inputViewController];
  _keyboard = [inputViewController _keyboard];

  return _keyboard;
}

- (BOOL)isInputViewPlaceholder
{
  inputView = [(UIInputViewSet *)self inputView];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)refreshPresentation
{
  isSplit = [(UIInputViewSet *)self isSplit];
  [(UIInputViewSet *)self inputViewBounds];
  Width = CGRectGetWidth(v29);
  if (Width == 0.0)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 bounds];
    v6 = CGRectGetWidth(v30);
  }

  else
  {
    v6 = Width;
  }

  v7 = 0.0;
  v8 = 0.0;
  if (isSplit)
  {
    [(UIInputViewSet *)self _leftInputViewSetFrame];
    v7 = CGRectGetWidth(v31);
    [(UIInputViewSet *)self _rightInputViewSetFrame];
    v8 = v6 - CGRectGetWidth(v32) - v7;
  }

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _setLeftOffset:v7 gapWidth:v8];
  }

  if ([(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    [(UIView *)self->_inputAccessoryView frame];
    if (v9 == 0.0 && v7 != 0.0)
    {
      [(UIInputViewSet *)self inputViewBounds];
      v10 = CGRectGetWidth(v33);
      [(UIView *)self->_inputAccessoryView frame];
      [(UIView *)self->_inputAccessoryView setSize:v10, v11];
    }

    [(UIView *)self->_inputAccessoryView _setLeftOffset:v7 gapWidth:v8];
  }

  v12 = +[UIKeyboardImpl activeInstance];
  shouldShowCandidateBar = [v12 shouldShowCandidateBar];
  v14 = +[UIKeyboardImpl activeInstance];
  [v14 setShowsCandidateBar:shouldShowCandidateBar];

  if (+[UIKeyboardImpl isSplit]&& [(UIInputViewSet *)self _isKeyboard])
  {
    v15 = +[UIKeyboardImpl activeInstance];
    if ([v15 showsCandidateBar])
    {
    }

    else
    {
      v16 = +[UIKeyboardImpl activeInstance];
      shouldShowCandidateBar2 = [v16 shouldShowCandidateBar];

      if (!shouldShowCandidateBar2)
      {
        goto LABEL_20;
      }
    }

    [(UIInputViewSet *)self _rightInputViewSetFrame];
    v18 = v6 - CGRectGetWidth(v34);
    [(UIInputViewSet *)self _leftInputViewSetFrame];
    v19 = v18 - CGRectGetWidth(v35);
    v20 = +[UIKeyboardImpl activeInstance];
    candidateController = [v20 candidateController];
    [candidateController setSplitGap:v19];

    v22 = +[UIKeyboardImpl activeInstance];
    candidateController2 = [v22 candidateController];
    [candidateController2 updateStates];
  }

LABEL_20:
  _splittableInputAccessoryView = [(UIInputViewSet *)self _splittableInputAccessoryView];

  if (_splittableInputAccessoryView)
  {
    _splittableInputAccessoryView2 = [(UIInputViewSet *)self _splittableInputAccessoryView];
    [_splittableInputAccessoryView2 didEndSplitTransition];
  }

  if ([(UIInputViewSet *)self _isKeyboard]&& +[UIKeyboardImpl isFloating]&& ![(UIInputViewSet *)self isInputViewPlaceholder])
  {
    [(UIInputViewSet *)self inputViewBounds];

    [UIPeripheralHost adjustFloatingPersistentOffsetForKeyboardSize:v26, v27];
  }
}

- (BOOL)isSplit
{
  if (![(UIInputViewSet *)self supportsSplit]|| !+[UIKeyboardImpl isSplit])
  {
    return 0;
  }

  inputView = [(UIInputViewSet *)self inputView];
  v4 = inputView != 0;

  return v4;
}

- (CGRect)inputViewBounds
{
  [(UIView *)self->_inputView _compatibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self isSplit])
  {
    [(UIView *)self->_inputView leftContentViewSize];
    v10 = v11;
    [(UIView *)self->_inputView rightContentViewSize];
    if (v10 < v12)
    {
      v10 = v12;
    }

    v6 = 0.0;
    v4 = 0.0;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_isKeyboard
{
  keyboard = [(UIInputViewSet *)self keyboard];
  v3 = keyboard != 0;

  return v3;
}

- (BOOL)_inputViewSupportsSplit
{
  if ([(UIInputViewSet *)self _isKeyboard])
  {

    return UIKeyboardSupportsSplit();
  }

  else
  {
    _supportsSplit = 1;
    v5 = NormaliseInputView(self->_inputView, 1);
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _supportsSplit = [v5 _supportsSplit];
      }

      else
      {
        _supportsSplit = 0;
      }
    }

    return _supportsSplit;
  }
}

- (BOOL)_inputAccessoryViewSupportsSplit
{
  inputAccessoryView = self->_inputAccessoryView;
  if (!inputAccessoryView)
  {
    return 1;
  }

  _supportsSplit = 1;
  v4 = NormaliseInputView(inputAccessoryView, 1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 conformsToProtocol:&unk_1EFF644E0])
    {
      _supportsSplit = [v4 _supportsSplit];
    }

    else
    {
      _supportsSplit = 0;
    }
  }

  return _supportsSplit;
}

- (id)_splittableInputAccessoryView
{
  if ([(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  }

  else
  {
    inputAccessoryView = 0;
  }

  return inputAccessoryView;
}

- (BOOL)hasNonPlaceholderViews
{
  inputView = [(UIInputViewSet *)self inputView];
  if (inputView)
  {
    v4 = ![(UIInputViewSet *)self isInputViewPlaceholder];
  }

  else
  {
    v4 = 0;
  }

  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
  if (inputAssistantView)
  {
    v6 = ![(UIInputViewSet *)self isInputAssistantViewPlaceholder];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  if (inputAccessoryView)
  {
    v8 = ![(UIInputViewSet *)self isInputAccessoryViewPlaceholder];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 | v8;
  }

  return v9 & 1;
}

- (BOOL)isInputAccessoryViewPlaceholder
{
  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)dealloc
{
  accessoryViewController = self->_accessoryViewController;
  self->_accessoryViewController = 0;

  assistantViewController = self->_assistantViewController;
  self->_assistantViewController = 0;

  inputViewController = self->_inputViewController;
  self->_inputViewController = 0;

  v6.receiver = self;
  v6.super_class = UIInputViewSet;
  [(UIInputViewSet *)&v6 dealloc];
}

- (UIInputViewController)inputViewController
{
  if (!self->_inputViewController)
  {
    inputView = [(UIInputViewSet *)self inputView];

    if (inputView)
    {
      inputView2 = [(UIInputViewSet *)self inputView];
      superview = [inputView2 superview];

      inputView3 = [(UIInputViewSet *)self inputView];
      v7 = [UICompatibilityInputViewController inputViewControllerWithView:inputView3];
      inputViewController = self->_inputViewController;
      self->_inputViewController = v7;

      if (superview)
      {
        inputView4 = [(UIInputViewSet *)self inputView];
        superview2 = [inputView4 superview];

        if (superview != superview2)
        {
          v11 = +[UIPeripheralHost sharedInstance];
          [v11 removePreservedInputViewSetForInputView:superview];
        }
      }

      view = [(UIViewController *)self->_inputViewController view];
      [(UIInputViewSet *)self setInputView:view];
    }
  }

  v13 = self->_inputViewController;

  return v13;
}

- (BOOL)isEmpty
{
  inputView = [(UIInputViewSet *)self inputView];
  if (inputView)
  {
    v4 = 0;
  }

  else
  {
    inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
    if (inputAssistantView)
    {
      v4 = 0;
    }

    else
    {
      inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
      v4 = inputAccessoryView == 0;
    }
  }

  return v4;
}

+ (id)emptyInputSet
{
  v2 = emptyInputSet_EmptySet;
  if (!emptyInputSet_EmptySet)
  {
    v3 = [[UIInputViewSet alloc] initWithInputView:0 accessoryView:0 assistantView:0 isKeyboard:0];
    v4 = emptyInputSet_EmptySet;
    emptyInputSet_EmptySet = v3;

    v2 = emptyInputSet_EmptySet;
  }

  return v2;
}

- (BOOL)usesKeyClicks
{
  inputView = [(UIInputViewSet *)self inputView];
  if (objc_opt_respondsToSelector())
  {
    inputView2 = [(UIInputViewSet *)self inputView];
    enableInputClicksWhenVisible = [inputView2 enableInputClicksWhenVisible];

    if (enableInputClicksWhenVisible)
    {
      return 1;
    }
  }

  else
  {
  }

  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
  if (objc_opt_respondsToSelector())
  {
    inputAssistantView2 = [(UIInputViewSet *)self inputAssistantView];
    enableInputClicksWhenVisible2 = [inputAssistantView2 enableInputClicksWhenVisible];

    if (enableInputClicksWhenVisible2)
    {
      return 1;
    }
  }

  else
  {
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  if (objc_opt_respondsToSelector())
  {
    inputAccessoryView2 = [(UIInputViewSet *)self inputAccessoryView];
    enableInputClicksWhenVisible3 = [inputAccessoryView2 enableInputClicksWhenVisible];
  }

  else
  {
    enableInputClicksWhenVisible3 = 0;
  }

  return enableInputClicksWhenVisible3;
}

- (BOOL)_inputViewIsVisible
{
  inputView = [(UIInputViewSet *)self inputView];
  if (inputView)
  {
    keyboard = [(UIInputViewSet *)self keyboard];
    v5 = [keyboard isMinimized] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)visible
{
  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  if (inputAccessoryView)
  {
    _inputViewIsVisible = 1;
  }

  else
  {
    _inputViewIsVisible = [(UIInputViewSet *)self _inputViewIsVisible];
  }

  return _inputViewIsVisible;
}

- (BOOL)isInputAssistantViewPlaceholder
{
  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (id)normalizePlaceholders
{
  v3 = objc_alloc_init(UIInputViewSet);
  inputView = [(UIInputViewSet *)self inputView];
  v5 = NormaliseInputView(inputView, 0);
  inputView = v3->_inputView;
  v3->_inputView = v5;

  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
  v8 = NormaliseInputView(inputAssistantView, 0);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    p_inputAssistantView = &v3->_inputAssistantView;
    inputAssistantView = v3->_inputAssistantView;
    v3->_inputAssistantView = v10;
  }

  else
  {
    inputAssistantView = [(UIInputViewSet *)self inputView];
    if (objc_opt_respondsToSelector())
    {
      associatedView = [inputAssistantView associatedView];
    }

    else
    {
      associatedView = 0;
    }

    p_inputAssistantView = &v3->_inputAssistantView;
    v14 = v3->_inputAssistantView;
    v3->_inputAssistantView = associatedView;
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  v16 = NormaliseInputView(inputAccessoryView, 0);
  inputAccessoryView = v3->_inputAccessoryView;
  v3->_inputAccessoryView = v16;

  inputView2 = [(UIInputViewSet *)self inputView];
  v19 = v3->_inputView;
  if (inputView2 == v19)
  {
    [(UIInputViewSet *)self inputViewController];
  }

  else
  {
    GetInputViewController(v19);
  }
  v20 = ;
  inputViewController = v3->_inputViewController;
  v3->_inputViewController = v20;

  assistantViewController = [(UIInputViewSet *)self assistantViewController];
  if (assistantViewController == v3->_assistantViewController)
  {
    [(UIInputViewSet *)self assistantViewController];
  }

  else
  {
    GetInputViewController(*p_inputAssistantView);
  }
  v23 = ;
  assistantViewController = v3->_assistantViewController;
  v3->_assistantViewController = v23;

  accessoryViewController = [(UIInputViewSet *)self accessoryViewController];
  if (accessoryViewController == v3->_accessoryViewController)
  {
    [(UIInputViewSet *)self accessoryViewController];
  }

  else
  {
    GetInputViewController(v3->_inputAccessoryView);
  }
  v26 = ;
  accessoryViewController = v3->_accessoryViewController;
  v3->_accessoryViewController = v26;

  v3->_isCustomInputView = [(UIInputViewSet *)self isCustomInputView];
  v3->_isNullInputView = [(UIInputViewSet *)self isNullInputView];
  v3->_shouldShowDockView = [(UIInputViewSet *)self shouldShowDockView];
  [(UIInputViewSet *)self bottomPaddingForPortrait];
  v3->_bottomPaddingForPortrait = v28;
  [(UIInputViewSet *)self bottomPaddingForLandscape];
  v3->_bottomPaddingForLandscape = v29;

  return v3;
}

- (UIInputViewController)accessoryViewController
{
  if (!self->_accessoryViewController)
  {
    inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];

    if (inputAccessoryView)
    {
      inputAccessoryView2 = [(UIInputViewSet *)self inputAccessoryView];
      v5 = [UICompatibilityInputViewController inputViewControllerWithView:inputAccessoryView2];
      accessoryViewController = self->_accessoryViewController;
      self->_accessoryViewController = v5;

      view = [(UIViewController *)self->_accessoryViewController view];
      [(UIInputViewSet *)self setInputAccessoryView:view];
    }
  }

  v8 = self->_accessoryViewController;

  return v8;
}

- (UIInputViewController)assistantViewController
{
  if (!self->_assistantViewController)
  {
    inputAssistantView = [(UIInputViewSet *)self inputAssistantView];

    if (inputAssistantView)
    {
      inputAssistantView2 = [(UIInputViewSet *)self inputAssistantView];
      v5 = [UICompatibilityInputViewController inputViewControllerWithView:inputAssistantView2];
      assistantViewController = self->_assistantViewController;
      self->_assistantViewController = v5;

      view = [(UIViewController *)self->_assistantViewController view];
      [(UIInputViewSet *)self setInputAssistantView:view];
    }
  }

  v8 = self->_assistantViewController;

  return v8;
}

- (CGRect)inputAccessoryViewBounds
{
  [(UIView *)self->_inputAccessoryView _compatibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UIInputViewSet *)self isSplit]&& [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    [(UIView *)self->_inputAccessoryView leftContentViewSize];
    v10 = v11;
    [(UIView *)self->_inputAccessoryView rightContentViewSize];
    if (v10 < v12)
    {
      v10 = v12;
    }

    v6 = 0.0;
    v4 = 0.0;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_inputViewIsSplit
{
  if (![(UIInputViewSet *)self inputViewKeyboardCanSplit]|| !+[UIKeyboardImpl isSplit])
  {
    return 0;
  }

  inputView = [(UIInputViewSet *)self inputView];
  v4 = inputView != 0;

  return v4;
}

- (BOOL)inputViewKeyboardCanSplit
{
  v3 = +[UIKeyboardImpl rivenPreference];
  if (v3)
  {

    LOBYTE(v3) = [(UIInputViewSet *)self _inputViewSupportsSplit];
  }

  return v3;
}

- (BOOL)canAnimateToInputViewSet:(id)set
{
  setCopy = set;
  if (-[UIInputViewSet isEmpty](self, "isEmpty") || ([setCopy isEmpty] & 1) != 0)
  {
    goto LABEL_3;
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  inputAccessoryView2 = [setCopy inputAccessoryView];
  v9 = inputAccessoryView2;
  if (inputAccessoryView != inputAccessoryView2)
  {

LABEL_7:
    v5 = [(UIInputViewSet *)self isEqual:setCopy];
    goto LABEL_4;
  }

  inputView = [(UIInputViewSet *)self inputView];
  if (inputView)
  {
    v11 = inputView;
    inputView2 = [setCopy inputView];

    if (inputView2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_3:
  v5 = 1;
LABEL_4:

  return v5;
}

- (UIInputViewSet)initWithInputView:(id)view customInputView:(id)inputView accessoryView:(id)accessoryView assistantView:(id)assistantView isKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  viewCopy = view;
  inputViewCopy = inputView;
  accessoryViewCopy = accessoryView;
  assistantViewCopy = assistantView;
  v25.receiver = self;
  v25.super_class = UIInputViewSet;
  v16 = [(UIInputViewSet *)&v25 init];
  if (v16)
  {
    if ([viewCopy translatesAutoresizingMaskIntoConstraints])
    {
      if (([viewCopy autoresizingMask] & 0x10) == 0)
      {
        [viewCopy frame];
        if (v17 <= 0.0)
        {

          viewCopy = 0;
          v16->_isNullInputView = 1;
        }
      }
    }

    objc_storeStrong(&v16->_inputAssistantView, assistantView);
    objc_storeStrong(&v16->_inputAccessoryView, accessoryView);
    objc_storeStrong(&v16->_inputView, viewCopy);
    objc_storeStrong(&v16->_hostedCustomInputView, inputView);
    if (keyboardCopy)
    {
      keyboard = [(UIInputViewSet *)v16 keyboard];
      [keyboard syncMinimizedStateToHardwareKeyboardAttachedState];
    }

    if ([(UIInputViewSet *)v16 _inputViewSetSupportsSplit])
    {
      [UIKeyboardImpl refreshRivenStateWithTraits:0 isKeyboard:keyboardCopy];
      [(UIInputViewSet *)v16 refreshPresentation];
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *&v16->_bottomPaddingForPortrait = _Q0;
  }

  return v16;
}

+ (id)inputSetWithInputView:(id)view accessoryView:(id)accessoryView assistantView:(id)assistantView
{
  assistantViewCopy = assistantView;
  accessoryViewCopy = accessoryView;
  viewCopy = view;
  v10 = [[UIInputViewSet alloc] initWithInputView:viewCopy accessoryView:accessoryViewCopy assistantView:assistantViewCopy isKeyboard:0];

  return v10;
}

+ (id)inputSetWithKeyboardAndAccessoryView:(id)view assistantView:(id)assistantView
{
  assistantViewCopy = assistantView;
  viewCopy = view;
  v7 = +[UIDevice currentDevice];
  if ([v7 userInterfaceIdiom] == 6)
  {
    v8 = +[UIKeyboard isKeyboardProcess];

    if (v8)
    {
      v9 = [UIInputView alloc];
      view = [(UIInputView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIInputView *)view setAllowsSelfSizing:1];
      [(UIView *)view setTranslatesAutoresizingMaskIntoConstraints:0];
      heightAnchor = [(UIView *)view heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:0.0];
      [v12 setActive:1];

      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = +[UIKeyboardAutomatic sharedInstance];
  v13 = [UICompatibilityInputViewController deferredInputModeControllerWithKeyboard:v14];

  view = [v13 view];
LABEL_6:
  v15 = [[UIInputViewSet alloc] initWithInputView:view accessoryView:viewCopy assistantView:assistantViewCopy isKeyboard:1];

  [(UIInputViewSet *)v15 setInputViewController:v13];

  return v15;
}

+ (id)inputSetWithPlaceholderAndCustomInputView:(id)view accessoryView:(id)accessoryView assistantView:(id)assistantView
{
  accessoryViewCopy = accessoryView;
  assistantViewCopy = assistantView;
  viewCopy = view;
  v10 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidthSizer:&__block_literal_global_19 heightWithScene:0];
  if (!accessoryViewCopy)
  {
    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v11 heightForRemoteIAVPlaceholderIfNecessary];
    v13 = v12;

    if (v13 == 0.0)
    {
      accessoryViewCopy = 0;
    }

    else
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      accessoryViewCopy = [_UIRemoteKeyboardPlaceholderView placeholderWithWidth:v15 height:v13];
    }
  }

  v16 = [[UIInputViewSet alloc] initWithInputView:v10 customInputView:viewCopy accessoryView:accessoryViewCopy assistantView:assistantViewCopy isKeyboard:0];

  return v16;
}

double __88__UIInputViewSet_inputSetWithPlaceholderAndCustomInputView_accessoryView_assistantView___block_invoke()
{
  if (+[UIKeyboardImpl isFloating])
  {

    +[UIKeyboardImpl floatingWidth];
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;

    return v3;
  }

  return result;
}

+ (id)inputSetWithOriginalInputSet:(id)set duplicateInputView:(BOOL)view duplicateInputAccessoryView:(BOOL)accessoryView duplicateInputAssistantView:(BOOL)assistantView
{
  assistantViewCopy = assistantView;
  accessoryViewCopy = accessoryView;
  viewCopy = view;
  setCopy = set;
  v10 = setCopy;
  if (viewCopy && accessoryViewCopy && assistantViewCopy)
  {
    v11 = setCopy;
    goto LABEL_10;
  }

  v11 = objc_alloc_init(UIInputViewSet);
  if (!viewCopy)
  {
    if (!accessoryViewCopy)
    {
      goto LABEL_7;
    }

LABEL_14:
    inputAccessoryView = [v10 inputAccessoryView];
    inputAccessoryView = v11->_inputAccessoryView;
    v11->_inputAccessoryView = inputAccessoryView;

    accessoryViewController = [v10 accessoryViewController];
    accessoryViewController = v11->_accessoryViewController;
    v11->_accessoryViewController = accessoryViewController;

    if (!assistantViewCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  inputView = [v10 inputView];
  inputView = v11->_inputView;
  v11->_inputView = inputView;

  inputViewController = [v10 inputViewController];
  inputViewController = v11->_inputViewController;
  v11->_inputViewController = inputViewController;

  v11->_isCustomInputView = [v10 isCustomInputView];
  if (accessoryViewCopy)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (assistantViewCopy)
  {
LABEL_8:
    inputAssistantView = [v10 inputAssistantView];
    inputAssistantView = v11->_inputAssistantView;
    v11->_inputAssistantView = inputAssistantView;

    assistantViewController = [v10 assistantViewController];
    assistantViewController = v11->_assistantViewController;
    v11->_assistantViewController = assistantViewController;
  }

LABEL_9:
  __asm { FMOV            V0.2D, #-1.0 }

  *&v11->_bottomPaddingForPortrait = _Q0;
LABEL_10:

  return v11;
}

- (void)setKeyboardAssistantBar:(id)bar
{
  barCopy = bar;
  v5 = barCopy;
  inputAssistantView = self->_inputAssistantView;
  if (!barCopy)
  {
    if (!inputAssistantView)
    {
      goto LABEL_9;
    }

    v13 = 0;
    self->_inputAssistantView = 0;

    assistantViewController = self->_assistantViewController;
    self->_assistantViewController = 0;
    goto LABEL_8;
  }

  if (!inputAssistantView)
  {
    if (self->_inputView)
    {
      v13 = barCopy;
      isInputViewPlaceholder = [(UIInputViewSet *)self isInputViewPlaceholder];
      v5 = v13;
      if (!isInputViewPlaceholder)
      {
        v8 = [(UIInputViewController *)[UICompatibilityInputViewController alloc] initWithNibName:0 bundle:0];
        v9 = self->_assistantViewController;
        self->_assistantViewController = &v8->super;

        view = [(UIViewController *)self->_assistantViewController view];
        [view addSubview:v13];

        view2 = [(UIViewController *)self->_assistantViewController view];
        assistantViewController = self->_inputAssistantView;
        self->_inputAssistantView = view2;
LABEL_8:

        v5 = v13;
      }
    }
  }

LABEL_9:
}

- (id)inputSetWithInputAccessoryViewOnly
{
  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  v3 = [UIInputViewSet inputSetWithInputView:0 accessoryView:inputAccessoryView];

  return v3;
}

- (id)inputSetWithInputAccessoryViewFromInputSet:(id)set
{
  setCopy = set;
  v5 = objc_alloc_init(UIInputViewSet);
  inputView = [(UIInputViewSet *)self inputView];
  inputView = v5->_inputView;
  v5->_inputView = inputView;

  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
  inputAssistantView = v5->_inputAssistantView;
  v5->_inputAssistantView = inputAssistantView;

  inputAccessoryView = [setCopy inputAccessoryView];
  inputAccessoryView = v5->_inputAccessoryView;
  v5->_inputAccessoryView = inputAccessoryView;

  inputViewController = [(UIInputViewSet *)self inputViewController];
  inputViewController = v5->_inputViewController;
  v5->_inputViewController = inputViewController;

  assistantViewController = [(UIInputViewSet *)self assistantViewController];
  assistantViewController = v5->_assistantViewController;
  v5->_assistantViewController = assistantViewController;

  accessoryViewController = [setCopy accessoryViewController];

  accessoryViewController = v5->_accessoryViewController;
  v5->_accessoryViewController = accessoryViewController;

  v5->_isCustomInputView = [(UIInputViewSet *)self isCustomInputView];
  v5->_isNullInputView = [(UIInputViewSet *)self isNullInputView];
  v5->_shouldShowDockView = [(UIInputViewSet *)self shouldShowDockView];
  [(UIInputViewSet *)self bottomPaddingForPortrait];
  v5->_bottomPaddingForPortrait = v18;
  [(UIInputViewSet *)self bottomPaddingForLandscape];
  v5->_bottomPaddingForLandscape = v19;

  return v5;
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  keyboard = [(UIInputViewSet *)self keyboard];

  if (keyboard)
  {
    keyboard2 = [(UIInputViewSet *)self keyboard];
    [keyboard2 _setRenderConfig:configCopy];
  }

  _themableInputAccessoryView = [(UIInputViewSet *)self _themableInputAccessoryView];

  if (_themableInputAccessoryView)
  {
    _themableInputAccessoryView2 = [(UIInputViewSet *)self _themableInputAccessoryView];
    [_themableInputAccessoryView2 _setRenderConfig:configCopy];
  }
}

- (UIView)layeringView
{
  inputView = [(UIInputViewSet *)self inputView];
  v4 = inputView;
  if (inputView)
  {
    inputAccessoryView = inputView;
  }

  else
  {
    inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  }

  v6 = inputAccessoryView;

  return v6;
}

- (UIView)splitExemptSubview
{
  v2 = +[UIKeyboardImpl sharedInstance];
  if ([v2 showsCandidateBar])
  {
    candidateController = [v2 candidateController];
    candidateBar = [candidateController candidateBar];
  }

  else
  {
    candidateBar = 0;
  }

  return candidateBar;
}

- (BOOL)containsView:(id)view
{
  viewCopy = view;
  inputView = [(UIInputViewSet *)self inputView];
  if (inputView == viewCopy)
  {
    v8 = 1;
  }

  else
  {
    inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
    if (inputAssistantView == viewCopy)
    {
      v8 = 1;
    }

    else
    {
      inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
      v8 = inputAccessoryView == viewCopy;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equalCopy isRemoteKeyboard], v5 == -[UIInputViewSet isRemoteKeyboard](self, "isRemoteKeyboard")))
  {
    inputView = [equalCopy inputView];
    inputView2 = [(UIInputViewSet *)self inputView];
    if (inputView == inputView2 || [inputView isEqual:inputView2])
    {
      hostedCustomInputView = [equalCopy hostedCustomInputView];
      hostedCustomInputView2 = [(UIInputViewSet *)self hostedCustomInputView];
      if (hostedCustomInputView == hostedCustomInputView2 || [hostedCustomInputView isEqual:hostedCustomInputView2])
      {
        inputAssistantView = [equalCopy inputAssistantView];
        inputAssistantView2 = [(UIInputViewSet *)self inputAssistantView];
        if (inputAssistantView == inputAssistantView2 || [inputAssistantView isEqual:inputAssistantView2])
        {
          inputAccessoryView = [equalCopy inputAccessoryView];
          inputAccessoryView2 = [(UIInputViewSet *)self inputAccessoryView];
          if (inputAccessoryView == inputAccessoryView2)
          {
            v6 = 1;
          }

          else
          {
            v6 = [inputAccessoryView isEqual:inputAccessoryView2];
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsResponder:(id)responder
{
  responderCopy = responder;
  inputView = [(UIInputViewSet *)self inputView];
  if ([inputView _containsResponder:responderCopy])
  {
    v6 = 1;
  }

  else
  {
    inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
    v6 = [inputAccessoryView _containsResponder:responderCopy];
  }

  return v6;
}

- (BOOL)isStrictSupersetOfViewSet:(id)set
{
  setCopy = set;
  if (([setCopy isEqual:self] & 1) == 0)
  {
    inputAccessoryView = [setCopy inputAccessoryView];
    if (!inputAccessoryView || ([setCopy inputAccessoryView], v3 = objc_claimAutoreleasedReturnValue(), -[UIInputViewSet inputAccessoryView](self, "inputAccessoryView"), v4 = objc_claimAutoreleasedReturnValue(), v3 == v4))
    {
      inputView = [setCopy inputView];
      if (inputView)
      {
        inputView2 = [setCopy inputView];
        inputView3 = [(UIInputViewSet *)self inputView];
        v7 = inputView2 == inputView3;
      }

      else
      {
        v7 = 1;
      }

      if (!inputAccessoryView)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (int64_t)keyboardOrientation:(id)orientation
{
  orientationCopy = orientation;
  if ([(UIInputViewSet *)self _isKeyboard])
  {
    keyboard = [(UIInputViewSet *)self keyboard];
    interfaceOrientation = [keyboard interfaceOrientation];
  }

  else
  {
    if (orientationCopy)
    {
      v7 = orientationCopy;
    }

    else
    {
      v7 = UIKeyboardSceneDelegate;
    }

    interfaceOrientation = [(__objc2_class *)v7 interfaceOrientation];
  }

  return interfaceOrientation;
}

- (BOOL)inSyncWithOrientation:(int64_t)orientation forKeyboard:(id)keyboard
{
  result = 0;
  if ([(UIInputViewSet *)self keyboardOrientation:keyboard]== orientation)
  {
    inputAccessoryView = self->_inputAccessoryView;
    if (!inputAccessoryView)
    {
      return 1;
    }

    [(UIView *)inputAccessoryView bounds];
    v8 = v7;
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v11 = v10;
    v13 = v12;

    v14 = (orientation - 3) >= 2 ? v11 : v13;
    if (v8 == v14)
    {
      return 1;
    }
  }

  return result;
}

- (CGSize)onscreenSizeOfViewsInSetIncludingIAV:(BOOL)v
{
  vCopy = v;
  inputView = [(UIInputViewSet *)self inputView];
  [inputView intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  [inputView _findAutolayoutHeightConstraint];
  if (v10 != -1.0)
  {
    v9 = v10;
  }

  if (v7 == 0.0 && inputView != 0)
  {
    v7 = -1.0;
  }

  if (v7 == -1.0)
  {
    [inputView bounds];
    v7 = v12;
  }

  if (v9 == -1.0)
  {
    [inputView bounds];
    v9 = v13;
  }

  keyboard = [(UIInputViewSet *)self keyboard];
  if (keyboard)
  {
    v15 = keyboard;
    v16 = +[UIKeyboardImpl activeInstance];
    isMinimized = [v16 isMinimized];

    if (isMinimized)
    {
      v9 = 0.0;
    }
  }

  inputAssistantView = [(UIInputViewSet *)self inputAssistantView];

  if (inputAssistantView)
  {
    inputAssistantView2 = [(UIInputViewSet *)self inputAssistantView];
    [inputAssistantView2 intrinsicContentSize];
    v21 = v20;

    if (v21 == -1.0)
    {
      v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      systemInputAssistantViewController = [v22 systemInputAssistantViewController];

      inputAssistantView3 = [(UIInputViewSet *)self inputAssistantView];
      traitCollection = [inputAssistantView3 traitCollection];
      [systemInputAssistantViewController preferredHeightForTraitCollection:traitCollection];
      v27 = v26;

      v21 = 0.0;
      if (!+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout])
      {
        inputAssistantView4 = [(UIInputViewSet *)self inputAssistantView];
        if ([inputAssistantView4 isHidden])
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v27;
        }
      }
    }

    v9 = v9 + v21;
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];

  if (inputAccessoryView && vCopy)
  {
    inputAccessoryView2 = [(UIInputViewSet *)self inputAccessoryView];
    [inputAccessoryView2 intrinsicContentSize];
    v32 = v31;

    if (v32 == -1.0)
    {
      inputAccessoryView3 = [(UIInputViewSet *)self inputAccessoryView];
      [inputAccessoryView3 bounds];
      v32 = v34;
    }

    v9 = v9 + v32;
  }

  keyboard2 = [(UIInputViewSet *)self keyboard];
  v36 = [(UIInputViewSet *)self keyboardOrientation:keyboard2]- 3;

  if (v36 > 1)
  {
    [(UIInputViewSet *)self bottomPaddingForPortrait];
    if (v43 < 0.0)
    {
      [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:1 inputMode:0];
      v45 = v44;
      [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:1 inputMode:0];
      [(UIInputViewSet *)self setBottomPaddingForPortrait:v45 - v46];
    }

    if (+[UIKeyboardImpl shouldPadTopOfKeyboard])
    {
      +[UIKeyboardImpl additionalTopPaddingForRoundedKeyboard];
      v9 = v9 + v47;
    }

    [(UIInputViewSet *)self bottomPaddingForPortrait];
    if (v9 > v48)
    {
      [(UIInputViewSet *)self bottomPaddingForPortrait];
      goto LABEL_40;
    }
  }

  else
  {
    [(UIInputViewSet *)self bottomPaddingForLandscape];
    if (v37 < 0.0)
    {
      [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:4 inputMode:0];
      v39 = v38;
      [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:4 inputMode:0];
      [(UIInputViewSet *)self setBottomPaddingForLandscape:v39 - v40];
    }

    [(UIInputViewSet *)self bottomPaddingForLandscape];
    if (v9 > v41)
    {
      [(UIInputViewSet *)self bottomPaddingForLandscape];
LABEL_40:
      v9 = v9 + v42;
    }
  }

  v49 = v7;
  v50 = v9;
  result.height = v50;
  result.width = v49;
  return result;
}

- (BOOL)__isCKAccessoryView
{
  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];

  if (!inputAccessoryView)
  {
    return 0;
  }

  inputAccessoryView2 = [(UIInputViewSet *)self inputAccessoryView];
  v5 = objc_opt_class();
  Name = class_getName(v5);

  return strcmp(Name, "CKMessageEntryView") == 0;
}

- (BOOL)_isFullscreen
{
  v2 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  _fbsScene = [(UIWindow *)v2 _fbsScene];
  settings = [_fbsScene settings];

  [settings frame];
  v6 = v5;
  v8 = v7;
  [v2 frame];
  if (v10 == v6 && v9 == v8)
  {
    v14 = 1;
  }

  else
  {
    [v2 frame];
    v14 = v13 == v6 && v12 == v8;
  }

  return v14;
}

- (BOOL)_actLikeInputAccessoryViewSupportsSplit
{
  if ([(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    return 1;
  }

  else
  {
    return ![(UIInputViewSet *)self _isFullscreen];
  }
}

- (BOOL)isLocalMinimumHeightInputView
{
  isInputViewPlaceholder = [(UIInputViewSet *)self isInputViewPlaceholder];
  if (isInputViewPlaceholder)
  {
    inputView = [(UIInputViewSet *)self inputView];
    isLocalMinimumHeightPlaceholder = [inputView isLocalMinimumHeightPlaceholder];

    LOBYTE(isInputViewPlaceholder) = isLocalMinimumHeightPlaceholder;
  }

  return isInputViewPlaceholder;
}

- (double)inputViewSplitHeight
{
  if ([(UIInputViewSet *)self _isKeyboard])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 frameForKeylayoutName:@"split-left"];
    v5 = v4;
  }

  else if ([(UIInputViewSet *)self supportsSplit])
  {
    [(UIView *)self->_inputView leftContentViewSize];
    return v6;
  }

  else
  {
    [(UIInputViewSet *)self inputViewBounds];
    return v7;
  }

  return v5;
}

- (CGRect)_leftInputViewSetFrame
{
  if ([(UIInputViewSet *)self _isKeyboard])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 frameForKeylayoutName:@"split-left"];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    supportsSplit = [(UIInputViewSet *)self supportsSplit];
    v5 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    if (supportsSplit)
    {
      [(UIView *)self->_inputView leftContentViewSize];
      v9 = v13;
      v11 = v14;
    }

    else
    {
      [(UIInputViewSet *)self inputViewBounds];
      v9 = v15 * 0.5;
      [(UIInputViewSet *)self inputViewBounds];
      v11 = v16;
    }
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];

  if (inputAccessoryView)
  {
    if ([(UIInputViewSet *)self isSplit]&& [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
    {
      [(UIView *)self->_inputAccessoryView leftContentViewSize];
      v11 = v11 + v18;
    }

    else
    {
      [(UIView *)self->_inputAccessoryView bounds];
      v11 = v11 + v19;
    }
  }

  v20 = +[UIKeyboardImpl activeInstance];
  showsCandidateBar = [v20 showsCandidateBar];

  if (showsCandidateBar)
  {
    v22 = +[UIKeyboardImpl activeInstance];
    candidateController = [v22 candidateController];
    [candidateController candidateBarHeight];
    v11 = v11 + v24;
  }

  v25 = v5;
  v26 = v7;
  v27 = v9;
  v28 = v11;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_rightInputViewSetFrame
{
  if ([(UIInputViewSet *)self _isKeyboard])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 frameForKeylayoutName:@"split-right"];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    if ([(UIInputViewSet *)self supportsSplit])
    {
      [(UIView *)self->_inputView rightContentViewSize];
      v9 = v12;
      v11 = v13;
      [(UIInputViewSet *)self inputViewBounds];
      v5 = v14 - v9;
    }

    else
    {
      [(UIInputViewSet *)self inputViewBounds];
      v5 = v15 * 0.5;
      [(UIInputViewSet *)self inputViewBounds];
      v9 = v16 * 0.5;
      [(UIInputViewSet *)self inputViewBounds];
      v11 = v17;
    }

    v7 = 0.0;
  }

  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];

  if (inputAccessoryView)
  {
    if ([(UIInputViewSet *)self supportsSplit]&& [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
    {
      [(UIView *)self->_inputAccessoryView rightContentViewSize];
      v11 = v11 + v19;
    }

    else
    {
      [(UIView *)self->_inputAccessoryView bounds];
      v11 = v11 + v20;
    }
  }

  v21 = +[UIKeyboardImpl activeInstance];
  showsCandidateBar = [v21 showsCandidateBar];

  if (showsCandidateBar)
  {
    v23 = +[UIKeyboardImpl activeInstance];
    candidateController = [v23 candidateController];
    [candidateController candidateBarHeight];
    v11 = v11 + v25;
  }

  v26 = v5;
  v27 = v7;
  v28 = v9;
  v29 = v11;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)hierarchyContainsView:(id)view
{
  viewCopy = view;
  inputView = [(UIInputViewSet *)self inputView];
  if (!inputView)
  {
    goto LABEL_6;
  }

  if ([(UIInputViewSet *)self isInputViewPlaceholder])
  {
    placeheldView = [inputView placeheldView];

    inputView = placeheldView;
  }

  if ([viewCopy isDescendantOfView:inputView])
  {
    v7 = 1;
  }

  else
  {
LABEL_6:
    inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
    if (!inputAccessoryView)
    {
      goto LABEL_11;
    }

    if ([(UIInputViewSet *)self isInputAccessoryViewPlaceholder])
    {
      placeheldView2 = [inputAccessoryView placeheldView];

      inputAccessoryView = placeheldView2;
    }

    if ([viewCopy isDescendantOfView:inputAccessoryView])
    {
      v7 = 1;
    }

    else
    {
LABEL_11:
      inputAssistantView = [(UIInputViewSet *)self inputAssistantView];
      if (!inputAssistantView)
      {
        goto LABEL_16;
      }

      if ([(UIInputViewSet *)self isInputAssistantViewPlaceholder])
      {
        placeheldView3 = [inputAssistantView placeheldView];

        inputAssistantView = placeheldView3;
      }

      if ([viewCopy isDescendantOfView:inputAssistantView])
      {
        v7 = 1;
      }

      else
      {
LABEL_16:
        v7 = 0;
      }
    }
  }

  return v7;
}

- (BOOL)setAccessoryViewVisible:(BOOL)visible delay:(double)delay
{
  visibleCopy = visible;
  inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
  v7 = +[UIKeyboardImpl sharedInstance];
  showsCandidateBar = [v7 showsCandidateBar];

  if (showsCandidateBar)
  {
    v9 = +[UIKeyboardImpl sharedInstance];
    candidateController = [v9 candidateController];
    candidateBar = [candidateController candidateBar];
  }

  else
  {
    candidateBar = 0;
  }

  v12 = visibleCopy;
  if ((!inputAccessoryView || ([inputAccessoryView alpha], v13 == v12)) && (!candidateBar || (objc_msgSend(candidateBar, "alpha"), v14 == v12)))
  {
    v15 = 0;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__UIInputViewSet_setAccessoryViewVisible_delay___block_invoke;
    v17[3] = &unk_1E70F36D0;
    v18 = candidateBar;
    v20 = visibleCopy;
    v19 = inputAccessoryView;
    [UIView animateWithDuration:117440512 delay:v17 options:0 animations:0.15 completion:delay];

    v15 = 1;
  }

  return v15;
}

uint64_t __48__UIInputViewSet_setAccessoryViewVisible_delay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);

  return [v3 setAlpha:v2];
}

- (void)setShouldShowInputSwitcherView:(BOOL)view
{
  viewCopy = view;
  if (+[UIInputWindowController keyboardDotDotDotEnabled])
  {
    inputSwitcherView = self->_inputSwitcherView;
    if (viewCopy)
    {
      if (inputSwitcherView)
      {
        return;
      }

      v7 = [UIDotsInputSwitcherView alloc];
      keyboard = [(UIInputViewSet *)self keyboard];
      _inheritedRenderConfig = [keyboard _inheritedRenderConfig];
      v9 = [(UIDotsInputSwitcherView *)v7 initWithRenderConfig:_inheritedRenderConfig];
      v10 = self->_inputSwitcherView;
      self->_inputSwitcherView = v9;
    }

    else
    {
      if (!inputSwitcherView)
      {
        return;
      }

      keyboard = [MEMORY[0x1E696AAA8] currentHandler];
      [keyboard handleFailureInMethod:a2 object:self file:@"UIInputViewSet.m" lineNumber:916 description:{@"inputSwitcherView should not be removed, there is a misunderstanding in UIInputViewSet  + inputSwitcherView lifecycle."}];
    }
  }
}

- (id)_themableInputAccessoryView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_inputAccessoryView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_accessorySuppressesShadow
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([(UIInputViewSet *)self inputAccessoryView], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, v5 = [(UIInputViewSet *)self __isCKAccessoryView], v4, v5))
  {
    v6 = 0;
  }

  else
  {
    _splittableInputAccessoryView = [(UIInputViewSet *)self _splittableInputAccessoryView];
    v9 = _splittableInputAccessoryView;
    if (_splittableInputAccessoryView)
    {
      isKindOfClass = [_splittableInputAccessoryView _isToolbars];
    }

    else
    {
      inputAccessoryView = [(UIInputViewSet *)self inputAccessoryView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    v6 = isKindOfClass ^ 1;
  }

  return v6 & 1;
}

- (void)_beginSplitTransitionIfNeeded
{
  [(UIInputViewSet *)self _leftInputViewSetFrame];
  Width = CGRectGetWidth(v10);
  [(UIInputViewSet *)self inputViewBounds];
  v4 = CGRectGetWidth(v11);
  [(UIInputViewSet *)self _rightInputViewSetFrame];
  v5 = v4 - CGRectGetWidth(v12) - Width;
  v6 = +[UIKeyboardImpl activeInstance];
  centerFilled = [v6 centerFilled];

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _beginSplitTransitionIfNeeded:Width gapWidth:v5];
  }

  if ((centerFilled & 1) == 0 && [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = self->_inputAccessoryView;

    [(UIView *)inputAccessoryView _beginSplitTransitionIfNeeded:Width gapWidth:v5];
  }
}

- (void)_endSplitTransitionIfNeeded
{
  isSplit = [(UIInputViewSet *)self isSplit];
  v4 = +[UIKeyboardImpl activeInstance];
  centerFilled = [v4 centerFilled];

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _endSplitTransitionIfNeeded:isSplit];
  }

  if ((centerFilled & 1) == 0 && [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = self->_inputAccessoryView;

    [(UIView *)inputAccessoryView _endSplitTransitionIfNeeded:isSplit];
  }
}

- (void)_setSplitProgress:(double)progress
{
  v5 = +[UIKeyboardImpl activeInstance];
  centerFilled = [v5 centerFilled];

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _setProgress:progress boundedBy:0.0];
  }

  if ((centerFilled & 1) == 0 && [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = self->_inputAccessoryView;

    [(UIView *)inputAccessoryView _setProgress:progress boundedBy:0.25];
  }
}

- (UIResponder)restorableResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_restorableResponder);

  return WeakRetained;
}

- (UIResponder)accessoryViewNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewNextResponder);

  return WeakRetained;
}

- (UIResponder)accessoryControllerNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_accessorControllerNextResponder);

  return WeakRetained;
}

- (CGRect)inputAssistantViewBounds
{
  x = self->_inputAssistantViewBounds.origin.x;
  y = self->_inputAssistantViewBounds.origin.y;
  width = self->_inputAssistantViewBounds.size.width;
  height = self->_inputAssistantViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end