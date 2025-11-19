@interface UIInputViewSetPlacement_FloatingApplicator
- (BOOL)isEqual:(id)a3;
- (BOOL)isPopoverRequired;
- (CGAffineTransform)scaledPopoverTransform;
- (CGRect)popoverFrame;
- (CGRect)popoverRectPlaceholder;
- (UIEdgeInsets)contentInsets;
- (id)backdropContainer;
- (id)draggableView;
- (id)startingPropertiesFromPlacementProperties:(id)a3;
- (id)twoFingerDraggableView;
- (void)applyChanges:(id)a3;
- (void)invalidate;
- (void)invalidatePopover;
- (void)prepare;
@end

@implementation UIInputViewSetPlacement_FloatingApplicator

- (id)draggableView
{
  v2 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
  v3 = [v2 affordance];

  return v3;
}

- (id)twoFingerDraggableView
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  v3 = [WeakRetained hostView];

  return v3;
}

- (id)backdropContainer
{
  v3 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
  v4 = [v3 backdropParent];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
    v6 = [WeakRetained hostView];
  }

  return v6;
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
    v4 = [WeakRetained inputViewSet];
    v5 = [v4 inputView];
    if (v5)
    {
      v3 = [v4 isInputViewPlaceholder] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)applyChanges:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  v6 = [WeakRetained containerView];
  v7 = [v6 _window];

  if ([v7 _isTextEffectsWindow])
  {
    v8 = [(UIWindow *)v7 _fbsScene];

    if (v8)
    {
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v10 = [v9 visualModeManager];
      v11 = [v10 shouldShowWithinAppWindow];

      if (((v11 & 1) != 0 || (+[_UIRemoteKeyboards sharedRemoteKeyboards](_UIRemoteKeyboards, "sharedRemoteKeyboards"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 oldPathForSnapshot], v12, v13)) && (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "keyboardActive"), v14, v15))
      {
        v16 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
        if (v16)
        {
        }

        else if ([(UIInputViewSetPlacement_FloatingApplicator *)self isPopoverRequired])
        {
          v25 = [UIKeyboardPopoverContainer alloc];
          v26 = objc_loadWeakRetained(&self->super.super._owner);
          v27 = [v26 containerView];
          v28 = objc_loadWeakRetained(&self->super.super._owner);
          v29 = -[UIKeyboardPopoverContainer initWithView:usingBackdropStyle:](v25, "initWithView:usingBackdropStyle:", v27, [v28 inputViewBackdropStyle]);
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
  [(UIInputViewSetPlacement_UndockedApplicator *)&v36 applyChanges:v4];
  v17 = [v4 objectForKey:@"Origin"];
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

  v19 = [v4 objectForKey:@"PopoverRect"];
  v20 = v19;
  if (v19)
  {
    [v19 rectValue];
    [(UIInputViewSetPlacement_FloatingApplicator *)self setPopoverRectPlaceholder:?];
  }

  if ([(UIInputViewSetPlacement_FloatingApplicator *)self isPopoverRequired])
  {
    v21 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    [v21 applyProperties:v4];
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
  v34 = self;
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
    v5 = [WeakRetained containerView];
    v6 = -[UIKeyboardPopoverContainer initWithView:usingBackdropStyle:](v4, "initWithView:usingBackdropStyle:", v5, [WeakRetained inputViewBackdropStyle]);
    [(UIInputViewSetPlacement_FloatingApplicator *)self setPopover:v6];

    v7 = [WeakRetained placement];
    v8 = [v7 applicatorInfoForOwner:WeakRetained];
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

- (id)startingPropertiesFromPlacementProperties:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a3)
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
  v3 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];

  if (v3)
  {
    v4 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    [v4 invalidate];

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
  v3 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];

  if (v3)
  {
    v4 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    [v4 frame];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIInputViewSetPlacement_FloatingApplicator;
  v5 = [(UIInputViewSetPlacement_GenericApplicator *)&v10 isEqual:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = (isKindOfClass ^ 1) & v5;
  if ((isKindOfClass ^ 1) & 1) == 0 && (v5)
  {
    v8 = [(UIInputViewSetPlacement_FloatingApplicator *)self popover];
    v7 = v8 != 0;
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