@interface UIMenuController
+ (UIMenuController)sharedMenuController;
- (BOOL)_shouldPassthroughInView;
- (CGRect)_targetRect;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CGRect)menuFrame;
- (UIMenuController)init;
- (id)_editMenuInteraction:(id)interaction firstResponderTargetForConfiguration:(id)configuration;
- (id)_targetView;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (int64_t)_resolvedEditMenuArrowDirection;
- (void)_applicationDidAddDeactivationReason:(id)reason;
- (void)_prepareEditMenuInteractionIfNeeded;
- (void)_presentEditMenu;
- (void)_setTargetRect:(CGRect)rect inView:(id)view animated:(BOOL)animated;
- (void)dealloc;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)hideMenuFromView:(UIView *)targetView;
- (void)setMenuVisible:(BOOL)menuVisible animated:(BOOL)animated;
- (void)showMenuFromView:(UIView *)targetView rect:(CGRect)targetRect;
- (void)update;
@end

@implementation UIMenuController

+ (UIMenuController)sharedMenuController
{
  v2 = __sharedMenuController;
  if (!__sharedMenuController)
  {
    v3 = objc_alloc_init(UIMenuController);
    v4 = __sharedMenuController;
    __sharedMenuController = v3;

    v2 = __sharedMenuController;
  }

  return v2;
}

- (UIMenuController)init
{
  if (__sharedMenuController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenuController.m" lineNumber:94 description:@"There can only be one UIMenuController instance."];
  }

  v8.receiver = self;
  v8.super_class = UIMenuController;
  v3 = [(UIMenuController *)&v8 init];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__applicationDidAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:UIApp];

  v4.receiver = self;
  v4.super_class = UIMenuController;
  [(UIMenuController *)&v4 dealloc];
}

- (void)setMenuVisible:(BOOL)menuVisible animated:(BOOL)animated
{
  v4 = animated;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__UIMenuController_setMenuVisible_animated___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v8 = menuVisible;
  v7[4] = self;
  v5 = _Block_copy(v7);
  v6 = v5;
  if (v4)
  {
    (*(v5 + 2))(v5);
  }

  else
  {
    [UIView performWithoutAnimation:v5];
  }
}

uint64_t __44__UIMenuController_setMenuVisible_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _prepareEditMenuInteractionIfNeeded];
    v4 = *(a1 + 32);

    return [v4 _presentEditMenu];
  }

  else
  {

    return [v3 _dismissEditMenu];
  }
}

- (void)showMenuFromView:(UIView *)targetView rect:(CGRect)targetRect
{
  height = targetRect.size.height;
  width = targetRect.size.width;
  y = targetRect.origin.y;
  x = targetRect.origin.x;
  v9 = targetView;
  v10 = +[UIView areAnimationsEnabled];
  [(UIMenuController *)self _setTargetRect:v9 inView:v10 animated:x, y, width, height];

  if ([(UIEditMenuInteraction *)self->_currentMenuInteraction isDisplayingMenu])
  {
    currentMenuInteraction = self->_currentMenuInteraction;

    [(UIEditMenuInteraction *)currentMenuInteraction updateVisibleMenuPositionAnimated:v10];
  }

  else
  {

    [(UIMenuController *)self _presentEditMenu];
  }
}

- (void)hideMenuFromView:(UIView *)targetView
{
  currentMenuInteraction = self->_currentMenuInteraction;
  v5 = targetView;
  view = [(UIEditMenuInteraction *)currentMenuInteraction view];

  if (view == v5)
  {

    [(UIMenuController *)self hideMenu];
  }
}

- (void)update
{
  if ([(UIEditMenuInteraction *)self->_currentMenuInteraction isDisplayingMenu])
  {
    if (self->_menuNeedsUpdate)
    {
      [(UIEditMenuInteraction *)self->_currentMenuInteraction reloadVisibleMenu];
      self->_menuNeedsUpdate = 0;
    }

    currentMenuInteraction = self->_currentMenuInteraction;

    [(UIEditMenuInteraction *)currentMenuInteraction updateVisibleMenuPositionAnimated:0];
  }
}

- (CGRect)menuFrame
{
  view = [(UIEditMenuInteraction *)self->_currentMenuInteraction view];
  window = [view window];
  windowScene = [window windowScene];
  _coordinateSpace = [windowScene _coordinateSpace];

  if (_coordinateSpace)
  {
    [(UIEditMenuInteraction *)self->_currentMenuInteraction menuFrameInCoordinateSpace:_coordinateSpace];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

- (CGRect)_targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setTargetRect:(CGRect)rect inView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_targetRect = rect;
  objc_storeWeak(&self->_targetView, view);
  view = [(UIEditMenuInteraction *)self->_currentMenuInteraction view];
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  if (view == WeakRetained)
  {
    currentMenuInteraction = self->_currentMenuInteraction;

    [(UIEditMenuInteraction *)currentMenuInteraction updateVisibleMenuPositionAnimated:animatedCopy];
  }

  else
  {

    [(UIMenuController *)self _prepareEditMenuInteractionIfNeeded];
  }
}

- (void)_prepareEditMenuInteractionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    view = [(UIEditMenuInteraction *)self->_currentMenuInteraction view];
    v6 = objc_loadWeakRetained(&self->_targetView);

    if (view != v6)
    {
      currentMenuInteraction = self->_currentMenuInteraction;
      if (currentMenuInteraction)
      {
        view2 = [(UIEditMenuInteraction *)currentMenuInteraction view];
        [view2 removeInteraction:self->_currentMenuInteraction];
      }

      v9 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
      [(UIEditMenuInteraction *)v9 setPresentsContextMenuAsSecondaryAction:0];
      [(UIEditMenuInteraction *)v9 set_includeMenuControllerItems:1];
      [(UIEditMenuInteraction *)v9 _setUseSenderAsResponderSender:1];
      v10 = +[UIMenuController sharedMenuController];
      [(UIEditMenuInteraction *)v9 _setProxySender:v10];

      [(UIEditMenuInteraction *)v9 _setEnforcesMenuControllerLifecycle:1];
      v11 = objc_loadWeakRetained(&self->_targetView);
      [v11 addInteraction:v9];

      v12 = self->_currentMenuInteraction;
      self->_currentMenuInteraction = v9;
    }
  }
}

- (void)_presentEditMenu
{
  if (self->_currentMenuInteraction)
  {
    __asm { FMOV            V2.2D, #0.5 }

    v8 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:vaddq_f64(self->_targetRect.origin, vmulq_f64(self->_targetRect.size, _Q2))];
    [v8 setPreferredArrowDirection:{-[UIMenuController _resolvedEditMenuArrowDirection](self, "_resolvedEditMenuArrowDirection")}];
    [v8 set_ignoresPassthroughInView:{-[UIMenuController _shouldPassthroughInView](self, "_shouldPassthroughInView") ^ 1}];
    [(UIEditMenuInteraction *)self->_currentMenuInteraction presentEditMenuWithConfiguration:v8];
    self->_menuNeedsUpdate = 0;
  }
}

- (BOOL)_shouldPassthroughInView
{
  v2 = objc_loadWeakRetained(&self->_targetView);
  window = [v2 window];
  _firstResponder = [window _firstResponder];

  if (objc_opt_respondsToSelector())
  {
    textInputView = [_firstResponder textInputView];
  }

  else
  {
    textInputView = 0;
  }

  if (textInputView)
  {
    v6 = textInputView;
  }

  else
  {
    v6 = _firstResponder;
  }

  if (v2 == v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v2 isDescendantOfView:_firstResponder] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (int64_t)_resolvedEditMenuArrowDirection
{
  result = [(UIMenuController *)self arrowDirection];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

- (void)_applicationDidAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  [(UIMenuController *)self setMenuVisible:0 animated:integerValue != 5];
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6 = MEMORY[0x1E696AD88];
  animatorCopy = animator;
  defaultCenter = [v6 defaultCenter];
  [defaultCenter postNotificationName:@"UIMenuControllerWillShowMenuNotification" object:self];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__UIMenuController_editMenuInteraction_willPresentMenuForConfiguration_animator___block_invoke;
  v9[3] = &unk_1E70F3590;
  v9[4] = self;
  [animatorCopy addCompletion:v9];
}

void __81__UIMenuController_editMenuInteraction_willPresentMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIMenuControllerDidShowMenuNotification" object:*(a1 + 32)];
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  v8 = MEMORY[0x1E696AD88];
  animatorCopy = animator;
  defaultCenter = [v8 defaultCenter];
  [defaultCenter postNotificationName:@"UIMenuControllerWillHideMenuNotification" object:self];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__UIMenuController_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v13 = interactionCopy;
  selfCopy = self;
  v11 = interactionCopy;
  [animatorCopy addCompletion:v12];
}

void __81__UIMenuController_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisplayingMenu] & 1) == 0)
  {
    v2 = [*(a1 + 32) view];
    [v2 removeInteraction:*(a1 + 32)];

    v3 = *(a1 + 40);
    v4 = *(v3 + 8);
    if (*(a1 + 32) == v4)
    {
      *(v3 + 8) = 0;
    }
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"UIMenuControllerDidHideMenuNotification" object:*(a1 + 40)];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  actionsCopy = actions;
  v7 = +[UIKeyboardImpl activeInstance];
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  v9 = [v7 stopDictationMenuElementsForTextInputView:WeakRetained];

  if (v9)
  {
    v10 = [v9 arrayByAddingObjectsFromArray:actionsCopy];
    v11 = [UIMenu menuWithChildren:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_editMenuInteraction:(id)interaction firstResponderTargetForConfiguration:(id)configuration
{
  v5 = [UIWindow _externalKeyWindow:interaction];
  v6 = v5;
  if (v5)
  {
    _keyWindow = v5;
  }

  else
  {
    _targetView = [(UIMenuController *)self _targetView];
    window = [_targetView window];
    windowScene = [window windowScene];
    _keyWindow = [(UIWindowScene *)windowScene _keyWindow];
  }

  firstResponder = [_keyWindow firstResponder];
  _responderForEditing = [firstResponder _responderForEditing];

  v13 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v13 inputDelegateManager];
  forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];

  if (forwardingInputDelegate)
  {
    v16 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager2 = [v16 inputDelegateManager];
    forwardingInputDelegate2 = [inputDelegateManager2 forwardingInputDelegate];
    _responderForEditing2 = [forwardingInputDelegate2 _responderForEditing];

    _responderForEditing = _responderForEditing2;
  }

  return _responderForEditing;
}

@end