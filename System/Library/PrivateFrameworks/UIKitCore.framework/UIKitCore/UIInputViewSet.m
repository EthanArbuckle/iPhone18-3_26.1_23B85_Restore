@interface UIInputViewSet
+ (id)emptyInputSet;
+ (id)inputSetWithInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5;
+ (id)inputSetWithKeyboardAndAccessoryView:(id)a3 assistantView:(id)a4;
+ (id)inputSetWithOriginalInputSet:(id)a3 duplicateInputView:(BOOL)a4 duplicateInputAccessoryView:(BOOL)a5 duplicateInputAssistantView:(BOOL)a6;
+ (id)inputSetWithPlaceholderAndCustomInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5;
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
- (BOOL)canAnimateToInputViewSet:(id)a3;
- (BOOL)containsResponder:(id)a3;
- (BOOL)containsView:(id)a3;
- (BOOL)hasNonPlaceholderViews;
- (BOOL)hierarchyContainsView:(id)a3;
- (BOOL)inSyncWithOrientation:(int64_t)a3 forKeyboard:(id)a4;
- (BOOL)inputViewKeyboardCanSplit;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInputAccessoryViewPlaceholder;
- (BOOL)isInputAssistantViewPlaceholder;
- (BOOL)isInputViewPlaceholder;
- (BOOL)isLocalMinimumHeightInputView;
- (BOOL)isSplit;
- (BOOL)isStrictSupersetOfViewSet:(id)a3;
- (BOOL)setAccessoryViewVisible:(BOOL)a3 delay:(double)a4;
- (BOOL)usesKeyClicks;
- (BOOL)visible;
- (CGRect)_leftInputViewSetFrame;
- (CGRect)_rightInputViewSetFrame;
- (CGRect)inputAccessoryViewBounds;
- (CGRect)inputAssistantViewBounds;
- (CGRect)inputViewBounds;
- (CGSize)onscreenSizeOfViewsInSetIncludingIAV:(BOOL)a3;
- (UIInputViewController)accessoryViewController;
- (UIInputViewController)assistantViewController;
- (UIInputViewController)inputViewController;
- (UIInputViewSet)initWithInputView:(id)a3 customInputView:(id)a4 accessoryView:(id)a5 assistantView:(id)a6 isKeyboard:(BOOL)a7;
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
- (id)inputSetWithInputAccessoryViewFromInputSet:(id)a3;
- (id)inputSetWithInputAccessoryViewOnly;
- (id)normalizePlaceholders;
- (int64_t)keyboardOrientation:(id)a3;
- (void)_beginSplitTransitionIfNeeded;
- (void)_endSplitTransitionIfNeeded;
- (void)_setRenderConfig:(id)a3;
- (void)_setSplitProgress:(double)a3;
- (void)dealloc;
- (void)refreshPresentation;
- (void)setKeyboardAssistantBar:(id)a3;
- (void)setShouldShowInputSwitcherView:(BOOL)a3;
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
    v9 = [(UIInputViewSet *)self inputView];

    if (v9)
    {
      [v5 appendFormat:@"keyboard = [uninitialized]; "];
      goto LABEL_11;
    }
  }

  v7 = [(UIInputViewSet *)self keyboard];

  if (v7)
  {
    v8 = [(UIInputViewSet *)self keyboard];
    [v5 appendFormat:@"keyboard = %@%%; ", v8];
  }

  else
  {
    v10 = [(UIInputViewSet *)self inputView];

    if (!v10)
    {
      goto LABEL_11;
    }

    v8 = [(UIInputViewSet *)self inputView];
    v11 = [v8 _kb_description];
    [v5 appendFormat:@"view = %@; ", v11];
  }

LABEL_11:
  v12 = [(UIInputViewSet *)self hostedCustomInputView];

  if (v12)
  {
    v13 = [(UIInputViewSet *)self hostedCustomInputView];
    v14 = [v13 _kb_description];
    [v5 appendFormat:@"hostedCustomInputView = %@; ", v14];
  }

  v15 = [(UIInputViewSet *)self inputAssistantView];

  if (v15)
  {
    v16 = [(UIInputViewSet *)self inputAssistantView];
    v17 = [v16 _kb_description];
    [v5 appendFormat:@"assistant = %@; ", v17];
  }

  v18 = [(UIInputViewSet *)self inputSwitcherView];

  if (v18)
  {
    v19 = [(UIInputViewSet *)self inputSwitcherView];
    v20 = [v19 _kb_description];
    [v5 appendFormat:@"inputSwitcherView  = %@; ", v20];
  }

  v21 = [(UIInputViewSet *)self inputAccessoryView];

  if (v21)
  {
    v22 = [(UIInputViewSet *)self inputAccessoryView];
    v23 = [v22 _kb_description];
    [v5 appendFormat:@"accessory = %@; ", v23];
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
  v2 = [(UIInputViewSet *)self inputViewController];
  v3 = [v2 _keyboard];

  return v3;
}

- (BOOL)isInputViewPlaceholder
{
  v2 = [(UIInputViewSet *)self inputView];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)refreshPresentation
{
  v3 = [(UIInputViewSet *)self isSplit];
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
  if (v3)
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
  v13 = [v12 shouldShowCandidateBar];
  v14 = +[UIKeyboardImpl activeInstance];
  [v14 setShowsCandidateBar:v13];

  if (+[UIKeyboardImpl isSplit]&& [(UIInputViewSet *)self _isKeyboard])
  {
    v15 = +[UIKeyboardImpl activeInstance];
    if ([v15 showsCandidateBar])
    {
    }

    else
    {
      v16 = +[UIKeyboardImpl activeInstance];
      v17 = [v16 shouldShowCandidateBar];

      if (!v17)
      {
        goto LABEL_20;
      }
    }

    [(UIInputViewSet *)self _rightInputViewSetFrame];
    v18 = v6 - CGRectGetWidth(v34);
    [(UIInputViewSet *)self _leftInputViewSetFrame];
    v19 = v18 - CGRectGetWidth(v35);
    v20 = +[UIKeyboardImpl activeInstance];
    v21 = [v20 candidateController];
    [v21 setSplitGap:v19];

    v22 = +[UIKeyboardImpl activeInstance];
    v23 = [v22 candidateController];
    [v23 updateStates];
  }

LABEL_20:
  v24 = [(UIInputViewSet *)self _splittableInputAccessoryView];

  if (v24)
  {
    v25 = [(UIInputViewSet *)self _splittableInputAccessoryView];
    [v25 didEndSplitTransition];
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

  v3 = [(UIInputViewSet *)self inputView];
  v4 = v3 != 0;

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
  v2 = [(UIInputViewSet *)self keyboard];
  v3 = v2 != 0;

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
    v4 = 1;
    v5 = NormaliseInputView(self->_inputView, 1);
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v5 _supportsSplit];
      }

      else
      {
        v4 = 0;
      }
    }

    return v4;
  }
}

- (BOOL)_inputAccessoryViewSupportsSplit
{
  inputAccessoryView = self->_inputAccessoryView;
  if (!inputAccessoryView)
  {
    return 1;
  }

  v3 = 1;
  v4 = NormaliseInputView(inputAccessoryView, 1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 conformsToProtocol:&unk_1EFF644E0])
    {
      v3 = [v4 _supportsSplit];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_splittableInputAccessoryView
{
  if ([(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    v3 = [(UIInputViewSet *)self inputAccessoryView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasNonPlaceholderViews
{
  v3 = [(UIInputViewSet *)self inputView];
  if (v3)
  {
    v4 = ![(UIInputViewSet *)self isInputViewPlaceholder];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(UIInputViewSet *)self inputAssistantView];
  if (v5)
  {
    v6 = ![(UIInputViewSet *)self isInputAssistantViewPlaceholder];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v7 = [(UIInputViewSet *)self inputAccessoryView];
  if (v7)
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
  v2 = [(UIInputViewSet *)self inputAccessoryView];
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
    v3 = [(UIInputViewSet *)self inputView];

    if (v3)
    {
      v4 = [(UIInputViewSet *)self inputView];
      v5 = [v4 superview];

      v6 = [(UIInputViewSet *)self inputView];
      v7 = [UICompatibilityInputViewController inputViewControllerWithView:v6];
      inputViewController = self->_inputViewController;
      self->_inputViewController = v7;

      if (v5)
      {
        v9 = [(UIInputViewSet *)self inputView];
        v10 = [v9 superview];

        if (v5 != v10)
        {
          v11 = +[UIPeripheralHost sharedInstance];
          [v11 removePreservedInputViewSetForInputView:v5];
        }
      }

      v12 = [(UIViewController *)self->_inputViewController view];
      [(UIInputViewSet *)self setInputView:v12];
    }
  }

  v13 = self->_inputViewController;

  return v13;
}

- (BOOL)isEmpty
{
  v3 = [(UIInputViewSet *)self inputView];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIInputViewSet *)self inputAssistantView];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(UIInputViewSet *)self inputAccessoryView];
      v4 = v6 == 0;
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
  v3 = [(UIInputViewSet *)self inputView];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIInputViewSet *)self inputView];
    v5 = [v4 enableInputClicksWhenVisible];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = [(UIInputViewSet *)self inputAssistantView];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(UIInputViewSet *)self inputAssistantView];
    v8 = [v7 enableInputClicksWhenVisible];

    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  v10 = [(UIInputViewSet *)self inputAccessoryView];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UIInputViewSet *)self inputAccessoryView];
    v9 = [v11 enableInputClicksWhenVisible];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_inputViewIsVisible
{
  v3 = [(UIInputViewSet *)self inputView];
  if (v3)
  {
    v4 = [(UIInputViewSet *)self keyboard];
    v5 = [v4 isMinimized] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)visible
{
  v3 = [(UIInputViewSet *)self inputAccessoryView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(UIInputViewSet *)self _inputViewIsVisible];
  }

  return v4;
}

- (BOOL)isInputAssistantViewPlaceholder
{
  v2 = [(UIInputViewSet *)self inputAssistantView];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (id)normalizePlaceholders
{
  v3 = objc_alloc_init(UIInputViewSet);
  v4 = [(UIInputViewSet *)self inputView];
  v5 = NormaliseInputView(v4, 0);
  inputView = v3->_inputView;
  v3->_inputView = v5;

  v7 = [(UIInputViewSet *)self inputAssistantView];
  v8 = NormaliseInputView(v7, 0);
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
      v13 = [inputAssistantView associatedView];
    }

    else
    {
      v13 = 0;
    }

    p_inputAssistantView = &v3->_inputAssistantView;
    v14 = v3->_inputAssistantView;
    v3->_inputAssistantView = v13;
  }

  v15 = [(UIInputViewSet *)self inputAccessoryView];
  v16 = NormaliseInputView(v15, 0);
  inputAccessoryView = v3->_inputAccessoryView;
  v3->_inputAccessoryView = v16;

  v18 = [(UIInputViewSet *)self inputView];
  v19 = v3->_inputView;
  if (v18 == v19)
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

  v22 = [(UIInputViewSet *)self assistantViewController];
  if (v22 == v3->_assistantViewController)
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

  v25 = [(UIInputViewSet *)self accessoryViewController];
  if (v25 == v3->_accessoryViewController)
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
    v3 = [(UIInputViewSet *)self inputAccessoryView];

    if (v3)
    {
      v4 = [(UIInputViewSet *)self inputAccessoryView];
      v5 = [UICompatibilityInputViewController inputViewControllerWithView:v4];
      accessoryViewController = self->_accessoryViewController;
      self->_accessoryViewController = v5;

      v7 = [(UIViewController *)self->_accessoryViewController view];
      [(UIInputViewSet *)self setInputAccessoryView:v7];
    }
  }

  v8 = self->_accessoryViewController;

  return v8;
}

- (UIInputViewController)assistantViewController
{
  if (!self->_assistantViewController)
  {
    v3 = [(UIInputViewSet *)self inputAssistantView];

    if (v3)
    {
      v4 = [(UIInputViewSet *)self inputAssistantView];
      v5 = [UICompatibilityInputViewController inputViewControllerWithView:v4];
      assistantViewController = self->_assistantViewController;
      self->_assistantViewController = v5;

      v7 = [(UIViewController *)self->_assistantViewController view];
      [(UIInputViewSet *)self setInputAssistantView:v7];
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

  v3 = [(UIInputViewSet *)self inputView];
  v4 = v3 != 0;

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

- (BOOL)canAnimateToInputViewSet:(id)a3
{
  v4 = a3;
  if (-[UIInputViewSet isEmpty](self, "isEmpty") || ([v4 isEmpty] & 1) != 0)
  {
    goto LABEL_3;
  }

  v7 = [(UIInputViewSet *)self inputAccessoryView];
  v8 = [v4 inputAccessoryView];
  v9 = v8;
  if (v7 != v8)
  {

LABEL_7:
    v5 = [(UIInputViewSet *)self isEqual:v4];
    goto LABEL_4;
  }

  v10 = [(UIInputViewSet *)self inputView];
  if (v10)
  {
    v11 = v10;
    v12 = [v4 inputView];

    if (v12)
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

- (UIInputViewSet)initWithInputView:(id)a3 customInputView:(id)a4 accessoryView:(id)a5 assistantView:(id)a6 isKeyboard:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25.receiver = self;
  v25.super_class = UIInputViewSet;
  v16 = [(UIInputViewSet *)&v25 init];
  if (v16)
  {
    if ([v12 translatesAutoresizingMaskIntoConstraints])
    {
      if (([v12 autoresizingMask] & 0x10) == 0)
      {
        [v12 frame];
        if (v17 <= 0.0)
        {

          v12 = 0;
          v16->_isNullInputView = 1;
        }
      }
    }

    objc_storeStrong(&v16->_inputAssistantView, a6);
    objc_storeStrong(&v16->_inputAccessoryView, a5);
    objc_storeStrong(&v16->_inputView, v12);
    objc_storeStrong(&v16->_hostedCustomInputView, a4);
    if (v7)
    {
      v18 = [(UIInputViewSet *)v16 keyboard];
      [v18 syncMinimizedStateToHardwareKeyboardAttachedState];
    }

    if ([(UIInputViewSet *)v16 _inputViewSetSupportsSplit])
    {
      [UIKeyboardImpl refreshRivenStateWithTraits:0 isKeyboard:v7];
      [(UIInputViewSet *)v16 refreshPresentation];
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *&v16->_bottomPaddingForPortrait = _Q0;
  }

  return v16;
}

+ (id)inputSetWithInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[UIInputViewSet alloc] initWithInputView:v9 accessoryView:v8 assistantView:v7 isKeyboard:0];

  return v10;
}

+ (id)inputSetWithKeyboardAndAccessoryView:(id)a3 assistantView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIDevice currentDevice];
  if ([v7 userInterfaceIdiom] == 6)
  {
    v8 = +[UIKeyboard isKeyboardProcess];

    if (v8)
    {
      v9 = [UIInputView alloc];
      v10 = [(UIInputView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIInputView *)v10 setAllowsSelfSizing:1];
      [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [(UIView *)v10 heightAnchor];
      v12 = [v11 constraintEqualToConstant:0.0];
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

  v10 = [v13 view];
LABEL_6:
  v15 = [[UIInputViewSet alloc] initWithInputView:v10 accessoryView:v6 assistantView:v5 isKeyboard:1];

  [(UIInputViewSet *)v15 setInputViewController:v13];

  return v15;
}

+ (id)inputSetWithPlaceholderAndCustomInputView:(id)a3 accessoryView:(id)a4 assistantView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidthSizer:&__block_literal_global_19 heightWithScene:0];
  if (!v7)
  {
    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v11 heightForRemoteIAVPlaceholderIfNecessary];
    v13 = v12;

    if (v13 == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v14 = [objc_opt_self() mainScreen];
      [v14 bounds];
      v7 = [_UIRemoteKeyboardPlaceholderView placeholderWithWidth:v15 height:v13];
    }
  }

  v16 = [[UIInputViewSet alloc] initWithInputView:v10 customInputView:v9 accessoryView:v7 assistantView:v8 isKeyboard:0];

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

+ (id)inputSetWithOriginalInputSet:(id)a3 duplicateInputView:(BOOL)a4 duplicateInputAccessoryView:(BOOL)a5 duplicateInputAssistantView:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (v8 && v7 && v6)
  {
    v11 = v9;
    goto LABEL_10;
  }

  v11 = objc_alloc_init(UIInputViewSet);
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_14:
    v26 = [v10 inputAccessoryView];
    inputAccessoryView = v11->_inputAccessoryView;
    v11->_inputAccessoryView = v26;

    v28 = [v10 accessoryViewController];
    accessoryViewController = v11->_accessoryViewController;
    v11->_accessoryViewController = v28;

    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v22 = [v10 inputView];
  inputView = v11->_inputView;
  v11->_inputView = v22;

  v24 = [v10 inputViewController];
  inputViewController = v11->_inputViewController;
  v11->_inputViewController = v24;

  v11->_isCustomInputView = [v10 isCustomInputView];
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    v12 = [v10 inputAssistantView];
    inputAssistantView = v11->_inputAssistantView;
    v11->_inputAssistantView = v12;

    v14 = [v10 assistantViewController];
    assistantViewController = v11->_assistantViewController;
    v11->_assistantViewController = v14;
  }

LABEL_9:
  __asm { FMOV            V0.2D, #-1.0 }

  *&v11->_bottomPaddingForPortrait = _Q0;
LABEL_10:

  return v11;
}

- (void)setKeyboardAssistantBar:(id)a3
{
  v4 = a3;
  v5 = v4;
  inputAssistantView = self->_inputAssistantView;
  if (!v4)
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
      v13 = v4;
      v7 = [(UIInputViewSet *)self isInputViewPlaceholder];
      v5 = v13;
      if (!v7)
      {
        v8 = [(UIInputViewController *)[UICompatibilityInputViewController alloc] initWithNibName:0 bundle:0];
        v9 = self->_assistantViewController;
        self->_assistantViewController = &v8->super;

        v10 = [(UIViewController *)self->_assistantViewController view];
        [v10 addSubview:v13];

        v11 = [(UIViewController *)self->_assistantViewController view];
        assistantViewController = self->_inputAssistantView;
        self->_inputAssistantView = v11;
LABEL_8:

        v5 = v13;
      }
    }
  }

LABEL_9:
}

- (id)inputSetWithInputAccessoryViewOnly
{
  v2 = [(UIInputViewSet *)self inputAccessoryView];
  v3 = [UIInputViewSet inputSetWithInputView:0 accessoryView:v2];

  return v3;
}

- (id)inputSetWithInputAccessoryViewFromInputSet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIInputViewSet);
  v6 = [(UIInputViewSet *)self inputView];
  inputView = v5->_inputView;
  v5->_inputView = v6;

  v8 = [(UIInputViewSet *)self inputAssistantView];
  inputAssistantView = v5->_inputAssistantView;
  v5->_inputAssistantView = v8;

  v10 = [v4 inputAccessoryView];
  inputAccessoryView = v5->_inputAccessoryView;
  v5->_inputAccessoryView = v10;

  v12 = [(UIInputViewSet *)self inputViewController];
  inputViewController = v5->_inputViewController;
  v5->_inputViewController = v12;

  v14 = [(UIInputViewSet *)self assistantViewController];
  assistantViewController = v5->_assistantViewController;
  v5->_assistantViewController = v14;

  v16 = [v4 accessoryViewController];

  accessoryViewController = v5->_accessoryViewController;
  v5->_accessoryViewController = v16;

  v5->_isCustomInputView = [(UIInputViewSet *)self isCustomInputView];
  v5->_isNullInputView = [(UIInputViewSet *)self isNullInputView];
  v5->_shouldShowDockView = [(UIInputViewSet *)self shouldShowDockView];
  [(UIInputViewSet *)self bottomPaddingForPortrait];
  v5->_bottomPaddingForPortrait = v18;
  [(UIInputViewSet *)self bottomPaddingForLandscape];
  v5->_bottomPaddingForLandscape = v19;

  return v5;
}

- (void)_setRenderConfig:(id)a3
{
  v8 = a3;
  v4 = [(UIInputViewSet *)self keyboard];

  if (v4)
  {
    v5 = [(UIInputViewSet *)self keyboard];
    [v5 _setRenderConfig:v8];
  }

  v6 = [(UIInputViewSet *)self _themableInputAccessoryView];

  if (v6)
  {
    v7 = [(UIInputViewSet *)self _themableInputAccessoryView];
    [v7 _setRenderConfig:v8];
  }
}

- (UIView)layeringView
{
  v3 = [(UIInputViewSet *)self inputView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIInputViewSet *)self inputAccessoryView];
  }

  v6 = v5;

  return v6;
}

- (UIView)splitExemptSubview
{
  v2 = +[UIKeyboardImpl sharedInstance];
  if ([v2 showsCandidateBar])
  {
    v3 = [v2 candidateController];
    v4 = [v3 candidateBar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)containsView:(id)a3
{
  v4 = a3;
  v5 = [(UIInputViewSet *)self inputView];
  if (v5 == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(UIInputViewSet *)self inputAssistantView];
    if (v6 == v4)
    {
      v8 = 1;
    }

    else
    {
      v7 = [(UIInputViewSet *)self inputAccessoryView];
      v8 = v7 == v4;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 isRemoteKeyboard], v5 == -[UIInputViewSet isRemoteKeyboard](self, "isRemoteKeyboard")))
  {
    v7 = [v4 inputView];
    v8 = [(UIInputViewSet *)self inputView];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [v4 hostedCustomInputView];
      v10 = [(UIInputViewSet *)self hostedCustomInputView];
      if (v9 == v10 || [v9 isEqual:v10])
      {
        v11 = [v4 inputAssistantView];
        v12 = [(UIInputViewSet *)self inputAssistantView];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v13 = [v4 inputAccessoryView];
          v14 = [(UIInputViewSet *)self inputAccessoryView];
          if (v13 == v14)
          {
            v6 = 1;
          }

          else
          {
            v6 = [v13 isEqual:v14];
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

- (BOOL)containsResponder:(id)a3
{
  v4 = a3;
  v5 = [(UIInputViewSet *)self inputView];
  if ([v5 _containsResponder:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(UIInputViewSet *)self inputAccessoryView];
    v6 = [v7 _containsResponder:v4];
  }

  return v6;
}

- (BOOL)isStrictSupersetOfViewSet:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self] & 1) == 0)
  {
    v8 = [v6 inputAccessoryView];
    if (!v8 || ([v6 inputAccessoryView], v3 = objc_claimAutoreleasedReturnValue(), -[UIInputViewSet inputAccessoryView](self, "inputAccessoryView"), v4 = objc_claimAutoreleasedReturnValue(), v3 == v4))
    {
      v9 = [v6 inputView];
      if (v9)
      {
        v10 = [v6 inputView];
        v11 = [(UIInputViewSet *)self inputView];
        v7 = v10 == v11;
      }

      else
      {
        v7 = 1;
      }

      if (!v8)
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

- (int64_t)keyboardOrientation:(id)a3
{
  v4 = a3;
  if ([(UIInputViewSet *)self _isKeyboard])
  {
    v5 = [(UIInputViewSet *)self keyboard];
    v6 = [v5 interfaceOrientation];
  }

  else
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = UIKeyboardSceneDelegate;
    }

    v6 = [(__objc2_class *)v7 interfaceOrientation];
  }

  return v6;
}

- (BOOL)inSyncWithOrientation:(int64_t)a3 forKeyboard:(id)a4
{
  result = 0;
  if ([(UIInputViewSet *)self keyboardOrientation:a4]== a3)
  {
    inputAccessoryView = self->_inputAccessoryView;
    if (!inputAccessoryView)
    {
      return 1;
    }

    [(UIView *)inputAccessoryView bounds];
    v8 = v7;
    v9 = [objc_opt_self() mainScreen];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    v14 = (a3 - 3) >= 2 ? v11 : v13;
    if (v8 == v14)
    {
      return 1;
    }
  }

  return result;
}

- (CGSize)onscreenSizeOfViewsInSetIncludingIAV:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInputViewSet *)self inputView];
  [v5 intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  [v5 _findAutolayoutHeightConstraint];
  if (v10 != -1.0)
  {
    v9 = v10;
  }

  if (v7 == 0.0 && v5 != 0)
  {
    v7 = -1.0;
  }

  if (v7 == -1.0)
  {
    [v5 bounds];
    v7 = v12;
  }

  if (v9 == -1.0)
  {
    [v5 bounds];
    v9 = v13;
  }

  v14 = [(UIInputViewSet *)self keyboard];
  if (v14)
  {
    v15 = v14;
    v16 = +[UIKeyboardImpl activeInstance];
    v17 = [v16 isMinimized];

    if (v17)
    {
      v9 = 0.0;
    }
  }

  v18 = [(UIInputViewSet *)self inputAssistantView];

  if (v18)
  {
    v19 = [(UIInputViewSet *)self inputAssistantView];
    [v19 intrinsicContentSize];
    v21 = v20;

    if (v21 == -1.0)
    {
      v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v23 = [v22 systemInputAssistantViewController];

      v24 = [(UIInputViewSet *)self inputAssistantView];
      v25 = [v24 traitCollection];
      [v23 preferredHeightForTraitCollection:v25];
      v27 = v26;

      v21 = 0.0;
      if (!+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout])
      {
        v28 = [(UIInputViewSet *)self inputAssistantView];
        if ([v28 isHidden])
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

  v29 = [(UIInputViewSet *)self inputAccessoryView];

  if (v29 && v3)
  {
    v30 = [(UIInputViewSet *)self inputAccessoryView];
    [v30 intrinsicContentSize];
    v32 = v31;

    if (v32 == -1.0)
    {
      v33 = [(UIInputViewSet *)self inputAccessoryView];
      [v33 bounds];
      v32 = v34;
    }

    v9 = v9 + v32;
  }

  v35 = [(UIInputViewSet *)self keyboard];
  v36 = [(UIInputViewSet *)self keyboardOrientation:v35]- 3;

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
  v3 = [(UIInputViewSet *)self inputAccessoryView];

  if (!v3)
  {
    return 0;
  }

  v4 = [(UIInputViewSet *)self inputAccessoryView];
  v5 = objc_opt_class();
  Name = class_getName(v5);

  return strcmp(Name, "CKMessageEntryView") == 0;
}

- (BOOL)_isFullscreen
{
  v2 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  v3 = [(UIWindow *)v2 _fbsScene];
  v4 = [v3 settings];

  [v4 frame];
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
  v3 = [(UIInputViewSet *)self isInputViewPlaceholder];
  if (v3)
  {
    v4 = [(UIInputViewSet *)self inputView];
    v5 = [v4 isLocalMinimumHeightPlaceholder];

    LOBYTE(v3) = v5;
  }

  return v3;
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
    v12 = [(UIInputViewSet *)self supportsSplit];
    v5 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    if (v12)
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

  v17 = [(UIInputViewSet *)self inputAccessoryView];

  if (v17)
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
  v21 = [v20 showsCandidateBar];

  if (v21)
  {
    v22 = +[UIKeyboardImpl activeInstance];
    v23 = [v22 candidateController];
    [v23 candidateBarHeight];
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

  v18 = [(UIInputViewSet *)self inputAccessoryView];

  if (v18)
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
  v22 = [v21 showsCandidateBar];

  if (v22)
  {
    v23 = +[UIKeyboardImpl activeInstance];
    v24 = [v23 candidateController];
    [v24 candidateBarHeight];
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

- (BOOL)hierarchyContainsView:(id)a3
{
  v4 = a3;
  v5 = [(UIInputViewSet *)self inputView];
  if (!v5)
  {
    goto LABEL_6;
  }

  if ([(UIInputViewSet *)self isInputViewPlaceholder])
  {
    v6 = [v5 placeheldView];

    v5 = v6;
  }

  if ([v4 isDescendantOfView:v5])
  {
    v7 = 1;
  }

  else
  {
LABEL_6:
    v8 = [(UIInputViewSet *)self inputAccessoryView];
    if (!v8)
    {
      goto LABEL_11;
    }

    if ([(UIInputViewSet *)self isInputAccessoryViewPlaceholder])
    {
      v9 = [v8 placeheldView];

      v8 = v9;
    }

    if ([v4 isDescendantOfView:v8])
    {
      v7 = 1;
    }

    else
    {
LABEL_11:
      v10 = [(UIInputViewSet *)self inputAssistantView];
      if (!v10)
      {
        goto LABEL_16;
      }

      if ([(UIInputViewSet *)self isInputAssistantViewPlaceholder])
      {
        v11 = [v10 placeheldView];

        v10 = v11;
      }

      if ([v4 isDescendantOfView:v10])
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

- (BOOL)setAccessoryViewVisible:(BOOL)a3 delay:(double)a4
{
  v5 = a3;
  v6 = [(UIInputViewSet *)self inputAccessoryView];
  v7 = +[UIKeyboardImpl sharedInstance];
  v8 = [v7 showsCandidateBar];

  if (v8)
  {
    v9 = +[UIKeyboardImpl sharedInstance];
    v10 = [v9 candidateController];
    v11 = [v10 candidateBar];
  }

  else
  {
    v11 = 0;
  }

  v12 = v5;
  if ((!v6 || ([v6 alpha], v13 == v12)) && (!v11 || (objc_msgSend(v11, "alpha"), v14 == v12)))
  {
    v15 = 0;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__UIInputViewSet_setAccessoryViewVisible_delay___block_invoke;
    v17[3] = &unk_1E70F36D0;
    v18 = v11;
    v20 = v5;
    v19 = v6;
    [UIView animateWithDuration:117440512 delay:v17 options:0 animations:0.15 completion:a4];

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

- (void)setShouldShowInputSwitcherView:(BOOL)a3
{
  v3 = a3;
  if (+[UIInputWindowController keyboardDotDotDotEnabled])
  {
    inputSwitcherView = self->_inputSwitcherView;
    if (v3)
    {
      if (inputSwitcherView)
      {
        return;
      }

      v7 = [UIDotsInputSwitcherView alloc];
      v11 = [(UIInputViewSet *)self keyboard];
      v8 = [v11 _inheritedRenderConfig];
      v9 = [(UIDotsInputSwitcherView *)v7 initWithRenderConfig:v8];
      v10 = self->_inputSwitcherView;
      self->_inputSwitcherView = v9;
    }

    else
    {
      if (!inputSwitcherView)
      {
        return;
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UIInputViewSet.m" lineNumber:916 description:{@"inputSwitcherView should not be removed, there is a misunderstanding in UIInputViewSet  + inputSwitcherView lifecycle."}];
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
    v8 = [(UIInputViewSet *)self _splittableInputAccessoryView];
    v9 = v8;
    if (v8)
    {
      isKindOfClass = [v8 _isToolbars];
    }

    else
    {
      v11 = [(UIInputViewSet *)self inputAccessoryView];
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
  v7 = [v6 centerFilled];

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _beginSplitTransitionIfNeeded:Width gapWidth:v5];
  }

  if ((v7 & 1) == 0 && [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = self->_inputAccessoryView;

    [(UIView *)inputAccessoryView _beginSplitTransitionIfNeeded:Width gapWidth:v5];
  }
}

- (void)_endSplitTransitionIfNeeded
{
  v3 = [(UIInputViewSet *)self isSplit];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 centerFilled];

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _endSplitTransitionIfNeeded:v3];
  }

  if ((v5 & 1) == 0 && [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = self->_inputAccessoryView;

    [(UIView *)inputAccessoryView _endSplitTransitionIfNeeded:v3];
  }
}

- (void)_setSplitProgress:(double)a3
{
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 centerFilled];

  if (![(UIInputViewSet *)self _isKeyboard]&& [(UIInputViewSet *)self _inputViewSupportsSplit])
  {
    [(UIView *)self->_inputView _setProgress:a3 boundedBy:0.0];
  }

  if ((v6 & 1) == 0 && [(UIInputViewSet *)self _inputAccessoryViewSupportsSplit])
  {
    inputAccessoryView = self->_inputAccessoryView;

    [(UIView *)inputAccessoryView _setProgress:a3 boundedBy:0.25];
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