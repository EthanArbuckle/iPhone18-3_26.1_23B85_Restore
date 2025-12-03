@interface UIInputViewSetPlacement_FloatingApplicator
- (BOOL)isEqual:(id)equal;
- (BOOL)isPopoverRequired;
- (CGAffineTransform)scaledPopoverTransform;
- (CGRect)popoverFrame;
- (CGRect)popoverRectPlaceholder;
- (UIEdgeInsets)contentInsets;
- (id)backdropContainer;
- (id)draggableView;
- (id)startingPropertiesFromPlacementProperties:(id)properties;
- (id)twoFingerDraggableView;
- (void)applyChanges:(id)changes;
- (void)invalidate;
- (void)invalidatePopover;
- (void)prepare;
@end

@implementation UIInputViewSetPlacement_FloatingApplicator

- (id)draggableView
{
  popover = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
  affordance = [popover affordance];

  return affordance;
}

- (id)twoFingerDraggableView
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  hostView = [WeakRetained hostView];

  return hostView;
}

- (id)backdropContainer
{
  popover = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
  backdropParent = [popover backdropParent];
  v5 = backdropParent;
  if (backdropParent)
  {
    hostView = backdropParent;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
    hostView = [WeakRetained hostView];
  }

  return hostView;
}

- (UIEdgeInsets)contentInsets
{
  +[UIKeyboardPopoverContainer contentInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)isPopoverRequired
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  if ([objc_opt_class() supportsStateBasedAnimations])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    inputViewSet = [WeakRetained inputViewSet];
    inputView = [inputViewSet inputView];
    if (inputView)
    {
      v3 = [inputViewSet isInputViewPlaceholder] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)applyChanges:(id)changes
{
  changesCopy = changes;
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  containerView = [WeakRetained containerView];
  _window = [containerView _window];

  if ([_window _isTextEffectsWindow])
  {
    _fbsScene = [(UIWindow *)_window _fbsScene];

    if (_fbsScene)
    {
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      visualModeManager = [v9 visualModeManager];
      shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

      if (((shouldShowWithinAppWindow & 1) != 0 || (+[_UIRemoteKeyboards sharedRemoteKeyboards](_UIRemoteKeyboards, "sharedRemoteKeyboards"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 oldPathForSnapshot], v12, v13)) && (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "keyboardActive"), v14, v15))
      {
        popover = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
        if (popover)
        {
        }

        else if ([(UIInputViewSetPlacement_FloatingApplicator *)self isPopoverRequired])
        {
          v25 = [UIKeyboardPopoverContainer alloc];
          v26 = objc_loadWeakRetained(&self->super.super._owner);
          containerView2 = [v26 containerView];
          v28 = objc_loadWeakRetained(&self->super.super._owner);
          v29 = -[UIKeyboardPopoverContainer initWithView:usingBackdropStyle:](v25, "initWithView:usingBackdropStyle:", containerView2, [v28 inputViewBackdropStyle]);
          [(UIInputViewSetPlacement_FloatingApplicator *)self setPopover:v29];
        }
      }

      else
      {
        [(UIInputViewSetPlacement_FloatingApplicator *)self invalidatePopover];
      }
    }
  }

  v36.receiver = self;
  v36.super_class = UIInputViewSetPlacement_FloatingApplicator;
  [(UIInputViewSetPlacement_UndockedApplicator *)&v36 applyChanges:changesCopy];
  v17 = [changesCopy objectForKey:@"Origin"];
  v18 = v17;
  if (v17)
  {
    [v17 pointValue];
    if (!self->super.super._isInteractiveStateTransition)
    {
      [v18 pointValue];
      [(NSLayoutConstraint *)self->super.super._horizontalConstraint setConstant:?];
    }
  }

  v19 = [changesCopy objectForKey:@"PopoverRect"];
  v20 = v19;
  if (v19)
  {
    [v19 rectValue];
    [(UIInputViewSetPlacement_FloatingApplicator *)self setPopoverRectPlaceholder:?];
  }

  if ([(UIInputViewSetPlacement_FloatingApplicator *)self isPopoverRequired])
  {
    popover2 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    [popover2 applyProperties:changesCopy];
  }

  else
  {
    [(UIInputViewSetPlacement_FloatingApplicator *)self invalidatePopover];
  }

  v22 = objc_loadWeakRetained(&self->super.super._owner);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __59__UIInputViewSetPlacement_FloatingApplicator_applyChanges___block_invoke;
  v33 = &unk_1E70F35B8;
  selfCopy = self;
  v35 = v22;
  v23 = v22;
  [UIView performWithoutAnimation:&v30];
  v24 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover:v30];
  [v24 updateBackdropStyle:{objc_msgSend(v23, "inputViewBackdropStyle")}];
}

- (void)prepare
{
  v13.receiver = self;
  v13.super_class = UIInputViewSetPlacement_FloatingApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v13 prepare];
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  if ([(UIInputViewSetPlacement_FloatingApplicator *)self isPopoverRequired])
  {
    v4 = [UIKeyboardPopoverContainer alloc];
    containerView = [WeakRetained containerView];
    v6 = -[UIKeyboardPopoverContainer initWithView:usingBackdropStyle:](v4, "initWithView:usingBackdropStyle:", containerView, [WeakRetained inputViewBackdropStyle]);
    [(UIInputViewSetPlacement_FloatingApplicator *)self setPopover:v6];

    placement = [WeakRetained placement];
    v8 = [placement applicatorInfoForOwner:WeakRetained];
    v9 = [(UIInputViewSetPlacement_FloatingApplicator *)self startingPropertiesFromPlacementProperties:v8];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__UIInputViewSetPlacement_FloatingApplicator_prepare__block_invoke;
    v11[3] = &unk_1E70F35B8;
    v11[4] = self;
    v12 = v9;
    v10 = v9;
    [UIView performWithoutAnimation:v11];
  }
}

- (id)startingPropertiesFromPlacementProperties:(id)properties
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (properties)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
    [v4 setObject:&unk_1EFE31A98 forKey:@"Alpha"];
    v5 = MEMORY[0x1E696B098];
    [(UIInputViewSetPlacement_FloatingApplicator *)self scaledPopoverTransform];
    v6 = [v5 valueWithCGAffineTransform:v9];
    [v4 setObject:v6 forKey:@"Transform"];
  }

  else
  {
    v11[0] = &unk_1EFE31A98;
    v10[0] = @"Alpha";
    v10[1] = @"Transform";
    v7 = MEMORY[0x1E696B098];
    [(UIInputViewSetPlacement_FloatingApplicator *)self scaledPopoverTransform];
    v6 = [v7 valueWithCGAffineTransform:v9];
    v11[1] = v6;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  return v4;
}

- (CGAffineTransform)scaledPopoverTransform
{
  result = _AXSReduceMotionReduceSlideTransitionsEnabled();
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  if (result)
  {
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v6;
    *&retstr->tx = *(v5 + 32);
  }

  else
  {
    *&v7.a = *MEMORY[0x1E695EFD0];
    *&v7.c = v6;
    *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
    return CGAffineTransformScale(retstr, &v7, 0.5, 0.5);
  }

  return result;
}

- (void)invalidatePopover
{
  popover = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];

  if (popover)
  {
    popover2 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    [popover2 invalidate];

    [(UIInputViewSetPlacement_FloatingApplicator *)self setPopover:0];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = UIInputViewSetPlacement_FloatingApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v3 invalidate];
  [(UIInputViewSetPlacement_FloatingApplicator *)self invalidatePopover];
}

- (CGRect)popoverFrame
{
  popover = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];

  if (popover)
  {
    popover2 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    [popover2 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(UIInputViewSetPlacement_FloatingApplicator *)self popoverRectPlaceholder];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = UIInputViewSetPlacement_FloatingApplicator;
  v5 = [(UIInputViewSetPlacement_GenericApplicator *)&v10 isEqual:equalCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = (isKindOfClass ^ 1) & v5;
  if ((isKindOfClass ^ 1) & 1) == 0 && (v5)
  {
    popover = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    v7 = popover != 0;
  }

  return v7 & 1;
}

- (CGRect)popoverRectPlaceholder
{
  x = self->_popoverRectPlaceholder.origin.x;
  y = self->_popoverRectPlaceholder.origin.y;
  width = self->_popoverRectPlaceholder.size.width;
  height = self->_popoverRectPlaceholder.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end