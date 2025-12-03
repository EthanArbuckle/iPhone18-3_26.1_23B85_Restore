@interface UIAlertView
+ (id)_alertViewForSessionWithRemoteViewController:(id)controller;
+ (id)_alertViewForWindow:(id)window;
+ (id)_remoteAlertViewWithBlock:(id)block;
- (BOOL)_isAnimating;
- (BOOL)_prepareToDismissForTappedIndex:(int64_t)index;
- (BOOL)isVisible;
- (CGSize)backgroundSize;
- (NSInteger)addButtonWithTitle:(NSString *)title;
- (UIAlertView)initWithCoder:(NSCoder *)coder;
- (UIAlertView)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles;
- (UIAlertView)initWithTitle:(id)title buttons:(id)buttons defaultButtonIndex:(int)index delegate:(id)delegate context:(id)context;
- (UIAlertView)initWithTitle:(id)title message:(id)message delegate:(id)delegate defaultButton:(id)button cancelButton:(id)cancelButton otherButtons:(id)buttons;
- (UITextField)textFieldAtIndex:(NSInteger)textFieldIndex;
- (id)_addTextFieldWithValue:(id)value label:(id)label;
- (id)_preparedAlertActionAtIndex:(unint64_t)index;
- (id)delegate;
- (id)initWithFrame:(CGRect)frame;
- (id)textField;
- (int)textFieldCount;
- (int64_t)_maximumNumberOfTextFieldsForCurrentStyle;
- (void)_performPresentationDismissalWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated;
- (void)_prepareAlertActions;
- (void)_setAccessoryView:(id)view;
- (void)_setIsPresented:(BOOL)presented;
- (void)_showAnimated:(BOOL)animated;
- (void)_updateButtonTitle:(id)title buttonIndex:(unint64_t)index;
- (void)_updateFirstOtherButtonEnabledState;
- (void)_updateMessageAndSubtitle;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated;
- (void)setAlertViewStyle:(UIAlertViewStyle)alertViewStyle;
- (void)setDefaultButtonIndex:(int64_t)index;
- (void)setMessage:(NSString *)message;
- (void)setSubtitle:(id)subtitle;
@end

@implementation UIAlertView

- (id)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = UIAlertView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIAlertController);
    alertController = v3->_alertController;
    v3->_alertController = v4;

    [(UIAlertController *)v3->_alertController setPreferredStyle:1];
    [(UIAlertController *)v3->_alertController _setShouldAllowNilParameters:1];
    if (dyld_program_sdk_at_least() && [UIApp _appAdoptsUISceneLifecycle])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A790] format:{@"UIAlertView is deprecated and unavailable for UIScene based applications, please use UIAlertController!"}];
    }

    v6 = objc_alloc_init(_UIAlertControllerShimPresenter);
    presenter = v3->_presenter;
    v3->_presenter = v6;

    [(_UIAlertControllerShimPresenter *)v3->_presenter setAlertController:v3->_alertController];
    [(_UIAlertControllerShimPresenter *)v3->_presenter setLegacyAlert:v3];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v3->_actions;
    v3->_actions = v8;

    v3->_cancelIndex = -1;
    v3->_defaultButtonIndex = -1;
    v3->_firstOtherButtonIndex = -1;
  }

  return v3;
}

- (UIAlertView)initWithTitle:(id)title buttons:(id)buttons defaultButtonIndex:(int)index delegate:(id)delegate context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  buttonsCopy = buttons;
  delegateCopy = delegate;
  contextCopy = context;
  v16 = [(UIAlertView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v17 = v16;
  if (v16)
  {
    [(UIAlertView *)v16 setTitle:titleCopy];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = buttonsCopy;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(UIAlertView *)v17 addButtonWithTitle:*(*(&v24 + 1) + 8 * v22++), v24];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v20);
    }

    [(UIAlertView *)v17 setDefaultButtonIndex:index];
    [(UIAlertView *)v17 setDelegate:delegateCopy];
    [(UIAlertView *)v17 setContext:contextCopy];
  }

  return v17;
}

- (UIAlertView)initWithTitle:(id)title message:(id)message delegate:(id)delegate defaultButton:(id)button cancelButton:(id)cancelButton otherButtons:(id)buttons
{
  titleCopy = title;
  messageCopy = message;
  delegateCopy = delegate;
  buttonCopy = button;
  cancelButtonCopy = cancelButton;
  buttonsCopy = buttons;
  v20 = [(UIAlertView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v21 = v20;
  if (v20)
  {
    [(UIAlertView *)v20 setTitle:titleCopy];
    [(UIAlertView *)v21 setMessage:messageCopy];
    [(UIAlertView *)v21 setDelegate:delegateCopy];
    if (buttonCopy)
    {
      [(UIAlertView *)v21 setCancelButtonIndex:[(UIAlertView *)v21 addButtonWithTitle:buttonCopy]];
    }

    if (cancelButtonCopy)
    {
      [(UIAlertView *)v21 setCancelButtonIndex:[(UIAlertView *)v21 addButtonWithTitle:cancelButtonCopy]];
    }

    if (buttonsCopy)
    {
      v25 = &v26;
      do
      {
        [(UIAlertView *)v21 addButtonWithTitle:buttonsCopy];
        v22 = v25++;
        v23 = *v22;

        buttonsCopy = v23;
      }

      while (v23);
    }
  }

  return v21;
}

- (UIAlertView)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles
{
  va_start(va, otherButtonTitles);
  v12 = title;
  v13 = message;
  v14 = delegate;
  v15 = cancelButtonTitle;
  v16 = otherButtonTitles;
  v17 = [(UIAlertView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v18 = v17;
  if (v17)
  {
    [(UIAlertView *)v17 setTitle:v12];
    [(UIAlertView *)v18 setMessage:v13];
    [(UIAlertView *)v18 setDelegate:v14];
    if (v15)
    {
      [(UIAlertView *)v18 setCancelButtonIndex:[(UIAlertView *)v18 addButtonWithTitle:v15]];
    }

    if (v16)
    {
      va_copy(v23, va);
      do
      {
        v19 = [(UIAlertView *)v18 addButtonWithTitle:v16];
        if ([(UIAlertView *)v18 firstOtherButtonIndex]== -1)
        {
          [(UIAlertView *)v18 _setFirstOtherButtonIndex:v19];
        }

        v20 = va_arg(v23, void *);
        v21 = v20;

        v16 = v21;
      }

      while (v21);
    }
  }

  return v18;
}

- (UIAlertView)initWithCoder:(NSCoder *)coder
{
  v4.receiver = self;
  v4.super_class = UIAlertView;
  return [(UIView *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  [(_UIAlertControllerShimPresenter *)self->_presenter setAlertController:0];
  [(_UIAlertControllerShimPresenter *)self->_presenter setLegacyAlert:0];
  presenter = self->_presenter;
  self->_presenter = 0;

  v4.receiver = self;
  v4.super_class = UIAlertView;
  [(UIView *)&v4 dealloc];
}

- (void)_updateButtonTitle:(id)title buttonIndex:(unint64_t)index
{
  titleCopy = title;
  if ([(NSMutableArray *)self->_actions count]> index)
  {
    [(NSMutableArray *)self->_actions replaceObjectAtIndex:index withObject:titleCopy];
  }

  v6 = [(UIAlertView *)self _preparedAlertActionAtIndex:index];
  [v6 setTitle:titleCopy];
}

- (id)_preparedAlertActionAtIndex:(unint64_t)index
{
  _actions = [(UIAlertController *)self->_alertController _actions];
  if ([_actions count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_actions objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)_prepareAlertActions
{
  if (!self->_hasPreparedAlertActions)
  {
    v7 = 488;
    objc_initWeak(&location, self);
    for (i = 0; i < [(NSMutableArray *)self->_actions count]; ++i)
    {
      v4 = [(NSMutableArray *)self->_actions objectAtIndex:i];
      v5 = i == self->_cancelIndex;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __35__UIAlertView__prepareAlertActions__block_invoke;
      v10[3] = &unk_1E70F36F8;
      objc_copyWeak(v11, &location);
      v11[1] = i;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35__UIAlertView__prepareAlertActions__block_invoke_2;
      v8[3] = &unk_1E70F3720;
      objc_copyWeak(v9, &location);
      v9[1] = i;
      v6 = [UIAlertAction _actionWithTitle:v4 image:0 style:v5 handler:v10 shouldDismissHandler:v8];
      [(UIAlertController *)self->_alertController addAction:v6];
      if (i == self->_defaultButtonIndex)
      {
        [(UIAlertController *)self->_alertController setPreferredAction:v6];
      }

      objc_destroyWeak(v9);
      objc_destroyWeak(v11);
    }

    *(&self->super.super.super.isa + v7) = 1;
    objc_destroyWeak(&location);
  }
}

void __35__UIAlertView__prepareAlertActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _dismissForTappedIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

uint64_t __35__UIAlertView__prepareAlertActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _prepareToDismissForTappedIndex:*(a1 + 40)];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isVisible
{
  if (self->_isPresented)
  {
    window = [(UIAlertView *)self window];
    v3 = [window isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setMessage:(NSString *)message
{
  v4 = [(NSString *)message copy];
  v5 = self->_message;
  self->_message = v4;

  [(UIAlertView *)self _updateMessageAndSubtitle];
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  [(UIAlertView *)self _updateMessageAndSubtitle];
}

- (void)_updateMessageAndSubtitle
{
  message = self->_message;
  subtitle = self->_subtitle;
  if (message)
  {
    if (subtitle)
    {
      alertController = self->_alertController;
      message = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", subtitle, message];
      [(UIAlertController *)alertController setMessage:message];

      return;
    }

    subtitle = self->_message;
  }

  v6 = self->_alertController;

  [(UIAlertController *)v6 setMessage:subtitle];
}

- (void)setAlertViewStyle:(UIAlertViewStyle)alertViewStyle
{
  self->_alertViewStyle = alertViewStyle;
  _alertController = [(UIAlertView *)self _alertController];
  [_alertController _removeAllTextFields];

  if (alertViewStyle != UIAlertViewStyleSecureTextInput)
  {
    if (alertViewStyle != UIAlertViewStyleLoginAndPasswordInput)
    {
      if (alertViewStyle == UIAlertViewStylePlainTextInput)
      {
        v6 = [(UIAlertView *)self addTextFieldWithValue:0 label:0];
      }

      return;
    }

    v7 = _UINSLocalizedStringWithDefaultValue(@"Login", @"Login");
    v8 = [(UIAlertView *)self addTextFieldWithValue:0 label:v7];
  }

  v9 = _UINSLocalizedStringWithDefaultValue(@"Password", @"Password");
  v10 = [(UIAlertView *)self addTextFieldWithValue:0 label:v9];

  [v10 setSecureTextEntry:1];
}

- (BOOL)_prepareToDismissForTappedIndex:(int64_t)index
{
  self->_handlingAlertActionShouldDismiss = 1;
  delegate = [(UIAlertView *)self delegate];
  v6 = delegate;
  selfCopy = self;
  self->_alertControllerShouldDismiss = 0;
  if (objc_opt_respondsToSelector())
  {
    [delegate alertView:self clickedButtonAtIndex:index];
  }

  [(UIAlertView *)self dismissWithClickedButtonIndex:index animated:1];
  self->_handlingAlertActionShouldDismiss = 0;
  return self->_alertControllerShouldDismiss;
}

- (void)_setIsPresented:(BOOL)presented
{
  presentedCopy = presented;
  delegate = [(UIAlertView *)self delegate];
  v6 = delegate;
  if (self->_isPresented != presentedCopy)
  {
    v9 = delegate;
    self->_isPresented = presentedCopy;
    if (presentedCopy)
    {
      objc_storeStrong(&self->_retainedSelf, self);
      [(UIAlertView *)self _prepareAlertActions];
      v7 = objc_opt_respondsToSelector();
      v6 = v9;
      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }

      [v9 willPresentAlertView:self];
    }

    else
    {
      retainedSelf = self->_retainedSelf;
      self->_retainedSelf = 0;
    }

    v6 = v9;
  }

LABEL_7:
}

- (NSInteger)addButtonWithTitle:(NSString *)title
{
  v5 = title;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertView.m" lineNumber:384 description:@"UIAlertView: Buttons added must have a title."];
  }

  v6 = [(NSMutableArray *)self->_actions count];
  [(NSMutableArray *)self->_actions addObject:v5];

  return v6;
}

- (void)setDefaultButtonIndex:(int64_t)index
{
  if (index < 0)
  {
    indexCopy = -1;
  }

  else
  {
    indexCopy = index;
  }

  self->_defaultButtonIndex = indexCopy;
}

- (void)_updateFirstOtherButtonEnabledState
{
  delegate = [(UIAlertView *)self delegate];
  v3 = [(UIAlertView *)self _preparedAlertActionAtIndex:self->_firstOtherButtonIndex];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [delegate alertViewShouldEnableFirstOtherButton:self];
    }

    else
    {
      v4 = 1;
    }

    [v3 setEnabled:v4];
  }
}

- (int64_t)_maximumNumberOfTextFieldsForCurrentStyle
{
  [(UIAlertView *)self alertViewStyle];
  alertViewStyle = [(UIAlertView *)self alertViewStyle];
  if ((alertViewStyle - 1) > 2)
  {
    return 2;
  }

  else
  {
    return qword_18A677798[alertViewStyle - 1];
  }
}

- (id)_addTextFieldWithValue:(id)value label:(id)label
{
  valueCopy = value;
  labelCopy = label;
  textFieldCount = [(UIAlertView *)self textFieldCount];
  if ([(UIAlertView *)self _maximumNumberOfTextFieldsForCurrentStyle]== textFieldCount)
  {
    v9 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    _alertController = [(UIAlertView *)self _alertController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__UIAlertView__addTextFieldWithValue_label___block_invoke;
    v12[3] = &unk_1E70F37E8;
    v16 = &v17;
    v13 = valueCopy;
    v14 = labelCopy;
    selfCopy = self;
    [_alertController addTextFieldWithConfigurationHandler:v12];

    v9 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  return v9;
}

void __44__UIAlertView__addTextFieldWithValue_label___block_invoke(void *a1, void *a2)
{
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v4 = a2;
  [*(*(a1[7] + 8) + 40) setText:a1[4]];
  [*(*(a1[7] + 8) + 40) setPlaceholder:a1[5]];
  [*(*(a1[7] + 8) + 40) addTarget:a1[6] action:sel__textDidChangeInTextField_ forControlEvents:0x20000];
}

- (int)textFieldCount
{
  _alertController = [(UIAlertView *)self _alertController];
  textFields = [_alertController textFields];
  v4 = [textFields count];

  return v4;
}

- (id)textField
{
  _alertController = [(UIAlertView *)self _alertController];
  textFields = [_alertController textFields];
  firstObject = [textFields firstObject];

  return firstObject;
}

- (UITextField)textFieldAtIndex:(NSInteger)textFieldIndex
{
  _alertController = [(UIAlertView *)self _alertController];
  textFields = [_alertController textFields];

  if (textFieldIndex < 0 || [textFields count] <= textFieldIndex)
  {
    v6 = 0;
  }

  else
  {
    v6 = [textFields objectAtIndex:textFieldIndex];
  }

  return v6;
}

- (void)_showAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(UIAlertView *)self delegate];
  [(UIAlertView *)self _setIsPresented:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__UIAlertView__showAnimated___block_invoke;
  v11[3] = &unk_1E70F3590;
  v11[4] = self;
  [UIView performWithoutAnimation:v11];
  presenter = self->_presenter;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__UIAlertView__showAnimated___block_invoke_2;
  v8[3] = &unk_1E70F35B8;
  v9 = delegate;
  selfCopy = self;
  v7 = delegate;
  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerAnimated:animatedCopy completion:v8];
}

void __29__UIAlertView__showAnimated___block_invoke_2(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) didPresentAlertView:*(a1 + 40)];
  }

  v2 = [*(a1 + 40) window];
  v3 = [v2 isHidden];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 40) textField];
    [v4 becomeFirstResponder];
  }
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cancelButtonIndex = [(UIAlertView *)self cancelButtonIndex];

  [(UIAlertView *)self dismissWithClickedButtonIndex:cancelButtonIndex animated:animatedCopy];
}

- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated
{
  if (!self->_dismissingAlertController)
  {
    v4 = animated;
    delegate = [(UIAlertView *)self delegate];
    self->_alertControllerShouldDismiss = 1;
    self->_dismissingAlertController = 1;
    v8 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v8 alertView:self willDismissWithButtonIndex:buttonIndex];
    }

    if (!self->_handlingAlertActionShouldDismiss)
    {
      [(UIAlertView *)self _performPresentationDismissalWithClickedButtonIndex:buttonIndex animated:v4];
    }
  }
}

- (void)_performPresentationDismissalWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated
{
  if (self->_alertControllerShouldDismiss)
  {
    v17 = v4;
    v18 = v5;
    animatedCopy = animated;
    delegate = [(UIAlertView *)self delegate];
    presenter = self->_presenter;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__UIAlertView__performPresentationDismissalWithClickedButtonIndex_animated___block_invoke;
    v13[3] = &unk_1E70F36D0;
    v14 = delegate;
    selfCopy = self;
    indexCopy = index;
    v11 = delegate;
    selfCopy2 = self;
    [(_UIAlertControllerShimPresenter *)presenter _dismissAlertControllerAnimated:animatedCopy completion:v13];
    selfCopy2->_dismissingAlertController = 0;
  }
}

uint64_t __76__UIAlertView__performPresentationDismissalWithClickedButtonIndex_animated___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) alertView:*(a1 + 40) didDismissWithButtonIndex:*(a1 + 48)];
  }

  v2 = *(a1 + 40);

  return [v2 _setIsPresented:0];
}

- (BOOL)_isAnimating
{
  if ([(UIViewController *)self->_alertController isBeingPresented])
  {
    return 1;
  }

  alertController = self->_alertController;

  return [(UIViewController *)alertController isBeingDismissed];
}

- (CGSize)backgroundSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setAccessoryView:(id)view
{
  if (view)
  {
    viewCopy = view;
    v5 = objc_alloc_init(UIViewController);
    [(UIViewController *)v5 setView:viewCopy];

    v7 = [[_UIAlertViewShimAccessoryViewController alloc] initWithAccessoryViewController:v5];
  }

  else
  {
    v7 = 0;
  }

  _alertController = [(UIAlertView *)self _alertController];
  [_alertController setContentViewController:v7];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)_remoteAlertViewWithBlock:(id)block
{
  blockCopy = block;
  v4 = [(UIAlertView *)[_UIUserNotificationAlertView alloc] initWithTitle:0 message:0 delegate:0 cancelButtonTitle:0 otherButtonTitles:0];
  blockCopy[2](blockCopy, v4);

  v5 = [_UIUserNotificationRestrictedAlertViewProxy restrictedProxyForAlertView:v4];

  return v5;
}

+ (id)_alertViewForSessionWithRemoteViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"remoteViewControllerProxy is nil!"];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__UIAlertView_ViewServiceSupport___alertViewForSessionWithRemoteViewController___block_invoke;
  v8[3] = &unk_1E7128918;
  v9 = controllerCopy;
  v5 = controllerCopy;
  v6 = [self _remoteAlertViewWithBlock:v8];

  return v6;
}

+ (id)_alertViewForWindow:(id)window
{
  windowCopy = window;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__UIAlertView_ViewServiceSupport___alertViewForWindow___block_invoke;
    v7[3] = &unk_1E7128918;
    v8 = windowCopy;
    v5 = [self _remoteAlertViewWithBlock:v7];
  }

  else
  {
    v5 = [[self alloc] initWithTitle:0 message:0 delegate:0 cancelButtonTitle:0 otherButtonTitles:0];
  }

  return v5;
}

@end