@interface _UIFindNavigatorResponder
- (BOOL)_alwaysRequireInlineCandidateView;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (UITextInputDelegate)inputDelegate;
- (_UIFindNavigatorResponder)initWithFindNavigatorViewController:(id)controller;
- (id)inputAccessoryViewController;
- (id)inputDashboardViewController;
- (id)inputView;
- (id)nextFirstResponder;
- (id)nextResponder;
- (id)responderForKeyboardAppearance;
- (int64_t)keyboardAppearance;
- (unint64_t)hostingTypeForTraitCollection:(id)collection;
- (void)_didPersistFindUI:(id)i;
- (void)becomeFirstResponderAndFocusFindField;
@end

@implementation _UIFindNavigatorResponder

- (_UIFindNavigatorResponder)initWithFindNavigatorViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _UIFindNavigatorResponder;
  v6 = [(_UIFindNavigatorResponder *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_showsCollapsedInputView = 1;
    v6->_canBecomeFirstResponder = 1;
    objc_storeStrong(&v6->_findNavigatorViewController, controller);
    [(_UIFindNavigatorViewController *)v7->_findNavigatorViewController setParentResponder:v7];
    inputAssistantItem = [(UIResponder *)v7 inputAssistantItem];
    [inputAssistantItem _setVisibleWhenMinimized:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__willPersistFindUI_ name:@"UITextInputWillPersistFindUINotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__didPersistFindUI_ name:@"UITextInputDidPersistFindUINotification" object:0];
  }

  return v7;
}

- (unint64_t)hostingTypeForTraitCollection:(id)collection
{
  if ([collection userInterfaceIdiom] != 1)
  {
    return 1;
  }

  findNavigatorView = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findNavigatorView];
  _inheritedRenderConfig = [findNavigatorView _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    return 1;
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v8 currentInputMode];

  if ([currentInputMode isEmojiInputMode])
  {
    v7 = 1;
  }

  else if ([currentInputMode isHandwritingInputMode])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (id)nextResponder
{
  findSession = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  divergentResponder = [findSession divergentResponder];

  return divergentResponder;
}

- (id)inputView
{
  if (self->_showsCollapsedInputView)
  {
    collapsedInputView = self->_collapsedInputView;
    if (!collapsedInputView)
    {
      v5 = [UIView alloc];
      v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = self->_collapsedInputView;
      self->_collapsedInputView = v6;

      collapsedInputView = self->_collapsedInputView;
    }

    v8 = collapsedInputView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inputDashboardViewController
{
  traitCollection = [(UIViewController *)self->_findNavigatorViewController traitCollection];
  v4 = [(_UIFindNavigatorResponder *)self hostingTypeForTraitCollection:traitCollection];

  if (v4 == 2)
  {
    v5 = self->_findNavigatorViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inputAccessoryViewController
{
  traitCollection = [(UIViewController *)self->_findNavigatorViewController traitCollection];
  v4 = [(_UIFindNavigatorResponder *)self hostingTypeForTraitCollection:traitCollection];

  if (v4 == 1)
  {
    v5 = self->_findNavigatorViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)becomeFirstResponderAndFocusFindField
{
  self->_showsCollapsedInputView = 0;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UIFindNavigatorResponder_becomeFirstResponderAndFocusFindField__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [mainRunLoop performBlock:v4];

  [(UIResponder *)self becomeFirstResponder];
}

- (id)nextFirstResponder
{
  findSession = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  searchableResponder = [findSession searchableResponder];

  return searchableResponder;
}

- (void)_didPersistFindUI:(id)i
{
  findNavigatorView = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findNavigatorView];
  if (self->_isChangingInputModes)
  {
    v8 = findNavigatorView;
    firstResponder = [findNavigatorView firstResponder];
    v6 = [v8 _containsResponder:firstResponder];

    findNavigatorView = v8;
    if (v6)
    {
      firstResponder2 = [v8 firstResponder];
      [firstResponder2 reloadInputViews];

      findNavigatorView = v8;
    }
  }

  self->_isChangingInputModes = 0;
}

- (BOOL)_alwaysRequireInlineCandidateView
{
  inputDashboardViewController = [(_UIFindNavigatorResponder *)self inputDashboardViewController];
  v3 = inputDashboardViewController != 0;

  return v3;
}

- (id)responderForKeyboardAppearance
{
  findSession = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  searchableResponderAsView = [findSession searchableResponderAsView];

  return searchableResponderAsView;
}

- (int64_t)keyboardAppearance
{
  findSession = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  searchableResponderAsView = [findSession searchableResponderAsView];
  traitCollection = [searchableResponderAsView traitCollection];

  if ([traitCollection userInterfaceStyle] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * ([traitCollection userInterfaceStyle] == 1);
  }

  return v5;
}

- (CGRect)caretRectForPosition:(id)position
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)firstRectForRange:(id)range
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->inputDelegate);

  return WeakRetained;
}

@end