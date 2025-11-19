@interface UIInputViewAnimationStyle
+ (id)animationStyleAnimated:(BOOL)a3 duration:(double)a4;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)finalTransform;
- (id)controllerForStartPlacement:(id)a3 endPlacement:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)legacyAnimationCopy;
- (id)startPlacementForInputViewSet:(id)a3 currentPlacement:(id)a4 windowScene:(id)a5;
- (void)addAnimationToCurrentAnimations:(id)a3;
- (void)cancelInterruptibleAnimations;
- (void)launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7;
- (void)removePropertyAnimators;
@end

@implementation UIInputViewAnimationStyle

- (void)removePropertyAnimators
{
  v2 = [(UIInputViewAnimationStyle *)self propertyAnimators];
  [v2 removeAllObjects];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAnimated:{-[UIInputViewAnimationStyle animated](self, "animated")}];
  [(UIInputViewAnimationStyle *)self duration];
  [v4 setDuration:?];
  [v4 setExtraOptions:{-[UIInputViewAnimationStyle extraOptions](self, "extraOptions")}];
  [v4 setInteractivelyCancelled:{-[UIInputViewAnimationStyle interactivelyCancelled](self, "interactivelyCancelled")}];
  v4[33] = self->_isLegacy;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 animated], v5 == -[UIInputViewAnimationStyle animated](self, "animated")) && v4[33] == self->_isLegacy)
  {
    if ([(UIInputViewAnimationStyle *)self animated])
    {
      [v4 duration];
      v7 = v6;
      [(UIInputViewAnimationStyle *)self duration];
      v9 = v7 == v8;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)legacyAnimationCopy
{
  v2 = [(UIInputViewAnimationStyle *)self copy];
  v2[33] = 1;

  return v2;
}

+ (id)animationStyleAnimated:(BOOL)a3 duration:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  [v6 setAnimated:v5];
  [v6 setDuration:a4];
  [v6 setExtraOptions:196608];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = UIInputViewAnimationStyle;
  v4 = [(UIInputViewAnimationStyle *)&v10 description];
  v5 = [v3 stringWithFormat:@"<%@ ", v4];;

  [(UIInputViewAnimationStyle *)self animated];
  v6 = NSStringFromBOOL();
  [v5 appendFormat:@"animated = %@; ", v6];

  [(UIInputViewAnimationStyle *)self duration];
  [v5 appendFormat:@"duration = %2g; ", v7];
  [(UIInputViewAnimationStyle *)self force];
  v8 = NSStringFromBOOL();
  [v5 appendFormat:@"force = %@", v8];

  [v5 appendString:@">"];

  return v5;
}

- (void)launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(UIInputViewAnimationStyle *)self animated])
  {
    v16 = [(UIInputViewAnimationStyle *)self extraOptions];
    if (v7)
    {
      v17 = 6;
    }

    else
    {
      v17 = 2;
    }

    [v15 syncToExistingAnimations];
    [(UIInputViewAnimationStyle *)self duration];
    v19 = v18;
    v20 = objc_opt_new();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __97__UIInputViewAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke;
    v23[3] = &unk_1E70F0F78;
    v24 = v12;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__UIInputViewAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke_2;
    v21[3] = &unk_1E7107E48;
    v21[4] = self;
    v22 = v14;
    [UIView _animateWithDuration:v16 | v17 delay:v20 options:v23 factory:v13 animations:v21 start:v19 completion:0.0];
  }

  else
  {
    v12[2](v12);
    if (v13)
    {
      v13[2](v13);
    }

    if (v14)
    {
      (*(v14 + 2))(v14, 1);
    }

    [(UIInputViewAnimationStyle *)self removePropertyAnimators];
  }
}

uint64_t __97__UIInputViewAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048619 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __97__UIInputViewAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 removePropertyAnimators];
}

- (void)addAnimationToCurrentAnimations:(id)a3
{
  v10 = a3;
  if (+[UIKeyboard inputUIOOP])
  {
    v4 = [(UIInputViewAnimationStyle *)self propertyAnimators];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(UIInputViewAnimationStyle *)self setPropertyAnimators:v5];
    }

    v6 = ([(UIInputViewAnimationStyle *)self extraOptions]>> 16) & 7;
    v7 = [UIViewPropertyAnimator alloc];
    [(UIInputViewAnimationStyle *)self duration];
    v8 = [(UIViewPropertyAnimator *)v7 initWithDuration:v6 curve:v10 animations:?];
    v9 = [(UIInputViewAnimationStyle *)self propertyAnimators];
    [v9 addObject:v8];

    [(UIViewPropertyAnimator *)v8 startAnimation];
  }

  else
  {
    v10[2]();
  }
}

- (void)cancelInterruptibleAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UIInputViewAnimationStyle *)self propertyAnimators];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isInterruptible])
        {
          [v8 stopAnimation:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(UIInputViewAnimationStyle *)self removePropertyAnimators];
}

- (id)controllerForStartPlacement:(id)a3 endPlacement:(id)a4
{
  v4 = objc_alloc_init(UIInputViewAnimationControllerBasic);

  return v4;
}

- (id)startPlacementForInputViewSet:(id)a3 currentPlacement:(id)a4 windowScene:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __88__UIInputViewAnimationStyle_startPlacementForInputViewSet_currentPlacement_windowScene___block_invoke;
  v37[3] = &unk_1E70F2F20;
  v37[4] = &v38;
  [UIKeyboardImpl performWithoutFloatingLock:v37];
  if (((v39[3] & 1) != 0 || ([v9 showsInputViews] & 1) == 0) && !objc_msgSend(v9, "isUndocked"))
  {
    if (*(v39 + 24) != 1)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __88__UIInputViewAnimationStyle_startPlacementForInputViewSet_currentPlacement_windowScene___block_invoke_2;
      v34[3] = &unk_1E710AFC0;
      v34[4] = self;
      v35 = v8;
      v36 = v10;
      v14 = [UIInputViewSetPlacement deactivatedKeyboardPlacementWithCurrentPlacement:v34];

      goto LABEL_18;
    }

    v13 = [(UIInputViewAnimationStyle *)self endPlacementForInputViewSet:v8 windowScene:v10];

    if ([v13 isVisible])
    {
      v14 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v13];
      v9 = v13;
      goto LABEL_18;
    }

    v15 = v13;
    goto LABEL_16;
  }

  if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && [v8 isInputViewPlaceholder])
  {
    v11 = [v8 inputView];
    v12 = [v11 fallbackView];
    if (v12)
    {
    }

    else
    {
      v16 = [v11 associatedView];

      if (v16)
      {
        goto LABEL_15;
      }

      v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      if (([v11 keyboardActive] & 1) == 0)
      {
        v18 = [v8 inputView];
        v19 = [v18 placeheldView];

        if (!v19)
        {
          if (([v8 isCustomInputView] & 1) != 0 || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isMinimized"), v20, v22 = 0.0, (v21 & 1) == 0))
          {
            v23 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
            [v23 intersectionHeightForWindowScene:0];
            v22 = v24;
          }

          v25 = [v8 inputAccessoryView];

          if (v25)
          {
            v26 = [v8 inputAccessoryView];
            [v26 frame];
            v22 = v22 + v27;
          }

          if (([v9 isUndocked] & 1) == 0)
          {
            v28 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
            v29 = [v28 updatingHeight];

            if ((v29 & 1) == 0)
            {
              v30 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
              v31 = [v30 remoteKeyboardUndocked];

              if (!v31)
              {
                v15 = [UIInputViewSetPlacementPlaceholder placementWithHeight:v22];
                goto LABEL_17;
              }

              +[UIKeyboardImpl normalizedPersistentOffset];
              if (v33 != 0.0)
              {
                v15 = [UIInputViewSetPlacementPlaceholderUndocked placementWithHeight:v22 undockedOffset:v32 chromeBuffer:v33, 92.0, 0.0, 0.0, 0.0];
                goto LABEL_17;
              }
            }
          }
        }

        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v15 = v9;
LABEL_16:
  v9 = v15;
LABEL_17:
  v14 = v15;
LABEL_18:
  _Block_object_dispose(&v38, 8);

  return v14;
}

BOOL __88__UIInputViewAnimationStyle_startPlacementForInputViewSet_currentPlacement_windowScene___block_invoke(uint64_t a1)
{
  result = +[UIKeyboardImpl isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (CGAffineTransform)finalTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

@end