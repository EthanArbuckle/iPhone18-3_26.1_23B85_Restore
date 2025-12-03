@interface UIInputViewAnimationStyle
+ (id)animationStyleAnimated:(BOOL)animated duration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)finalTransform;
- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)legacyAnimationCopy;
- (id)startPlacementForInputViewSet:(id)set currentPlacement:(id)placement windowScene:(id)scene;
- (void)addAnimationToCurrentAnimations:(id)animations;
- (void)cancelInterruptibleAnimations;
- (void)launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position;
- (void)removePropertyAnimators;
@end

@implementation UIInputViewAnimationStyle

- (void)removePropertyAnimators
{
  propertyAnimators = [(UIInputViewAnimationStyle *)self propertyAnimators];
  [propertyAnimators removeAllObjects];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAnimated:{-[UIInputViewAnimationStyle animated](self, "animated")}];
  [(UIInputViewAnimationStyle *)self duration];
  [v4 setDuration:?];
  [v4 setExtraOptions:{-[UIInputViewAnimationStyle extraOptions](self, "extraOptions")}];
  [v4 setInteractivelyCancelled:{-[UIInputViewAnimationStyle interactivelyCancelled](self, "interactivelyCancelled")}];
  v4[33] = self->_isLegacy;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equalCopy animated], v5 == -[UIInputViewAnimationStyle animated](self, "animated")) && equalCopy[33] == self->_isLegacy)
  {
    if ([(UIInputViewAnimationStyle *)self animated])
    {
      [equalCopy duration];
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

+ (id)animationStyleAnimated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  v6 = objc_alloc_init(self);
  [v6 setAnimated:animatedCopy];
  [v6 setDuration:duration];
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

- (void)launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position
{
  positionCopy = position;
  animationCopy = animation;
  startedCopy = started;
  completionCopy = completion;
  hostCopy = host;
  if ([(UIInputViewAnimationStyle *)self animated])
  {
    extraOptions = [(UIInputViewAnimationStyle *)self extraOptions];
    if (positionCopy)
    {
      v17 = 6;
    }

    else
    {
      v17 = 2;
    }

    [hostCopy syncToExistingAnimations];
    [(UIInputViewAnimationStyle *)self duration];
    v19 = v18;
    v20 = objc_opt_new();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __97__UIInputViewAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke;
    v23[3] = &unk_1E70F0F78;
    v24 = animationCopy;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__UIInputViewAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke_2;
    v21[3] = &unk_1E7107E48;
    v21[4] = self;
    v22 = completionCopy;
    [UIView _animateWithDuration:extraOptions | v17 delay:v20 options:v23 factory:startedCopy animations:v21 start:v19 completion:0.0];
  }

  else
  {
    animationCopy[2](animationCopy);
    if (startedCopy)
    {
      startedCopy[2](startedCopy);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
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

- (void)addAnimationToCurrentAnimations:(id)animations
{
  animationsCopy = animations;
  if (+[UIKeyboard inputUIOOP])
  {
    propertyAnimators = [(UIInputViewAnimationStyle *)self propertyAnimators];

    if (!propertyAnimators)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(UIInputViewAnimationStyle *)self setPropertyAnimators:v5];
    }

    v6 = ([(UIInputViewAnimationStyle *)self extraOptions]>> 16) & 7;
    v7 = [UIViewPropertyAnimator alloc];
    [(UIInputViewAnimationStyle *)self duration];
    v8 = [(UIViewPropertyAnimator *)v7 initWithDuration:v6 curve:animationsCopy animations:?];
    propertyAnimators2 = [(UIInputViewAnimationStyle *)self propertyAnimators];
    [propertyAnimators2 addObject:v8];

    [(UIViewPropertyAnimator *)v8 startAnimation];
  }

  else
  {
    animationsCopy[2]();
  }
}

- (void)cancelInterruptibleAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  propertyAnimators = [(UIInputViewAnimationStyle *)self propertyAnimators];
  v4 = [propertyAnimators countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(propertyAnimators);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isInterruptible])
        {
          [v8 stopAnimation:1];
        }
      }

      v5 = [propertyAnimators countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(UIInputViewAnimationStyle *)self removePropertyAnimators];
}

- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement
{
  v4 = objc_alloc_init(UIInputViewAnimationControllerBasic);

  return v4;
}

- (id)startPlacementForInputViewSet:(id)set currentPlacement:(id)placement windowScene:(id)scene
{
  setCopy = set;
  placementCopy = placement;
  sceneCopy = scene;
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
  if (((v39[3] & 1) != 0 || ([placementCopy showsInputViews] & 1) == 0) && !objc_msgSend(placementCopy, "isUndocked"))
  {
    if (*(v39 + 24) != 1)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __88__UIInputViewAnimationStyle_startPlacementForInputViewSet_currentPlacement_windowScene___block_invoke_2;
      v34[3] = &unk_1E710AFC0;
      v34[4] = self;
      v35 = setCopy;
      v36 = sceneCopy;
      v14 = [UIInputViewSetPlacement deactivatedKeyboardPlacementWithCurrentPlacement:v34];

      goto LABEL_18;
    }

    v13 = [(UIInputViewAnimationStyle *)self endPlacementForInputViewSet:setCopy windowScene:sceneCopy];

    if ([v13 isVisible])
    {
      v14 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v13];
      placementCopy = v13;
      goto LABEL_18;
    }

    v15 = v13;
    goto LABEL_16;
  }

  if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && [setCopy isInputViewPlaceholder])
  {
    inputView = [setCopy inputView];
    fallbackView = [inputView fallbackView];
    if (fallbackView)
    {
    }

    else
    {
      associatedView = [inputView associatedView];

      if (associatedView)
      {
        goto LABEL_15;
      }

      inputView = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      if (([inputView keyboardActive] & 1) == 0)
      {
        inputView2 = [setCopy inputView];
        placeheldView = [inputView2 placeheldView];

        if (!placeheldView)
        {
          if (([setCopy isCustomInputView] & 1) != 0 || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isMinimized"), v20, v22 = 0.0, (v21 & 1) == 0))
          {
            v23 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
            [v23 intersectionHeightForWindowScene:0];
            v22 = v24;
          }

          inputAccessoryView = [setCopy inputAccessoryView];

          if (inputAccessoryView)
          {
            inputAccessoryView2 = [setCopy inputAccessoryView];
            [inputAccessoryView2 frame];
            v22 = v22 + v27;
          }

          if (([placementCopy isUndocked] & 1) == 0)
          {
            v28 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
            updatingHeight = [v28 updatingHeight];

            if ((updatingHeight & 1) == 0)
            {
              v30 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
              remoteKeyboardUndocked = [v30 remoteKeyboardUndocked];

              if (!remoteKeyboardUndocked)
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
  v15 = placementCopy;
LABEL_16:
  placementCopy = v15;
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