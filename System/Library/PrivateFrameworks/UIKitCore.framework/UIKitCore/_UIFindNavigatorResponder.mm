@interface _UIFindNavigatorResponder
- (BOOL)_alwaysRequireInlineCandidateView;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (UITextInputDelegate)inputDelegate;
- (_UIFindNavigatorResponder)initWithFindNavigatorViewController:(id)a3;
- (id)inputAccessoryViewController;
- (id)inputDashboardViewController;
- (id)inputView;
- (id)nextFirstResponder;
- (id)nextResponder;
- (id)responderForKeyboardAppearance;
- (int64_t)keyboardAppearance;
- (unint64_t)hostingTypeForTraitCollection:(id)a3;
- (void)_didPersistFindUI:(id)a3;
- (void)becomeFirstResponderAndFocusFindField;
@end

@implementation _UIFindNavigatorResponder

- (_UIFindNavigatorResponder)initWithFindNavigatorViewController:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UIFindNavigatorResponder;
  v6 = [(_UIFindNavigatorResponder *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_showsCollapsedInputView = 1;
    v6->_canBecomeFirstResponder = 1;
    objc_storeStrong(&v6->_findNavigatorViewController, a3);
    [(_UIFindNavigatorViewController *)v7->_findNavigatorViewController setParentResponder:v7];
    v8 = [(UIResponder *)v7 inputAssistantItem];
    [v8 _setVisibleWhenMinimized:1];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v7 selector:sel__willPersistFindUI_ name:@"UITextInputWillPersistFindUINotification" object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__didPersistFindUI_ name:@"UITextInputDidPersistFindUINotification" object:0];
  }

  return v7;
}

- (unint64_t)hostingTypeForTraitCollection:(id)a3
{
  if ([a3 userInterfaceIdiom] != 1)
  {
    return 1;
  }

  v4 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findNavigatorView];
  v5 = [v4 _inheritedRenderConfig];
  v6 = [v5 colorAdaptiveBackground];

  if (v6)
  {
    return 1;
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 currentInputMode];

  if ([v9 isEmojiInputMode])
  {
    v7 = 1;
  }

  else if ([v9 isHandwritingInputMode])
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
  v2 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  v3 = [v2 divergentResponder];

  return v3;
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
  v3 = [(UIViewController *)self->_findNavigatorViewController traitCollection];
  v4 = [(_UIFindNavigatorResponder *)self hostingTypeForTraitCollection:v3];

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
  v3 = [(UIViewController *)self->_findNavigatorViewController traitCollection];
  v4 = [(_UIFindNavigatorResponder *)self hostingTypeForTraitCollection:v3];

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
  v3 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UIFindNavigatorResponder_becomeFirstResponderAndFocusFindField__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 performBlock:v4];

  [(UIResponder *)self becomeFirstResponder];
}

- (id)nextFirstResponder
{
  v2 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  v3 = [v2 searchableResponder];

  return v3;
}

- (void)_didPersistFindUI:(id)a3
{
  v4 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findNavigatorView];
  if (self->_isChangingInputModes)
  {
    v8 = v4;
    v5 = [v4 firstResponder];
    v6 = [v8 _containsResponder:v5];

    v4 = v8;
    if (v6)
    {
      v7 = [v8 firstResponder];
      [v7 reloadInputViews];

      v4 = v8;
    }
  }

  self->_isChangingInputModes = 0;
}

- (BOOL)_alwaysRequireInlineCandidateView
{
  v2 = [(_UIFindNavigatorResponder *)self inputDashboardViewController];
  v3 = v2 != 0;

  return v3;
}

- (id)responderForKeyboardAppearance
{
  v2 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  v3 = [v2 searchableResponderAsView];

  return v3;
}

- (int64_t)keyboardAppearance
{
  v2 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findSession];
  v3 = [v2 searchableResponderAsView];
  v4 = [v3 traitCollection];

  if ([v4 userInterfaceStyle] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * ([v4 userInterfaceStyle] == 1);
  }

  return v5;
}

- (CGRect)caretRectForPosition:(id)a3
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

- (CGRect)firstRectForRange:(id)a3
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