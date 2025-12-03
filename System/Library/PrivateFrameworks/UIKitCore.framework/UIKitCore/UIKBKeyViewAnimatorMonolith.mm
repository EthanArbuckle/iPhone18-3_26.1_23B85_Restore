@interface UIKBKeyViewAnimatorMonolith
- (BOOL)shouldTransitionKeyView:(id)view fromState:(int)state toState:(int)toState;
- (Class)keyViewClassForKey:(id)key renderTraits:(id)traits screenTraits:(id)screenTraits;
- (UIKBKeyViewAnimatorMonolith)init;
- (int64_t)_transitionFromState:(int)state toState:(int)toState;
- (unint64_t)controlStateForKeyState:(int)state;
- (void)addTransitionCompletion:(id)completion forKeyName:(id)name;
- (void)animateFloatingKeyView:(id)view toControlState:(unint64_t)state;
- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state;
- (void)reset;
- (void)transitionFloatingKeyView:(id)view toState:(int)state completion:(id)completion;
- (void)transitionKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion;
- (void)transitionOutKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion;
@end

@implementation UIKBKeyViewAnimatorMonolith

- (UIKBKeyViewAnimatorMonolith)init
{
  v8.receiver = self;
  v8.super_class = UIKBKeyViewAnimatorMonolith;
  v2 = [(UIKBKeyViewAnimatorMonolith *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selectedKeyTimestamps = v2->_selectedKeyTimestamps;
    v2->_selectedKeyTimestamps = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transitionCompletions = v2->_transitionCompletions;
    v2->_transitionCompletions = v5;
  }

  return v2;
}

- (Class)keyViewClassForKey:(id)key renderTraits:(id)traits screenTraits:(id)screenTraits
{
  keyCopy = key;
  traitsCopy = traits;
  screenTraitsCopy = screenTraits;
  representedString = [keyCopy representedString];
  v12 = [representedString isEqualToString:@"Recent-Inputs"];

  if (v12)
  {
    goto LABEL_2;
  }

  if ([keyCopy interactionType] == 3)
  {
    [screenTraitsCopy isLinear];
LABEL_2:
    v13 = objc_opt_class();
    goto LABEL_3;
  }

  if ([keyCopy interactionType] == 39)
  {
    goto LABEL_2;
  }

  if (([traitsCopy blurBlending] & 1) != 0 || (objc_msgSend(traitsCopy, "variantTraits"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "blurBlending"), v16, v17))
  {
    [traitsCopy variantTraits];

    goto LABEL_2;
  }

  v18 = [(UIKBKeyViewAnimator *)self _keyViewClassForSpecialtyKey:keyCopy screenTraits:screenTraitsCopy];
  if (!v18)
  {
    goto LABEL_2;
  }

  v13 = v18;
LABEL_3:
  v14 = v13;

  return v14;
}

- (unint64_t)controlStateForKeyState:(int)state
{
  v3 = 8;
  if (state == 12)
  {
    v3 = 9;
  }

  if ((state & 0xC) == 0)
  {
    v3 = 0;
  }

  return v3 | (2 * (state & 1u)) | (state >> 4) & 1;
}

- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state
{
  superview = [view superview];
  if (superview)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIKBKeyViewAnimatorMonolith.m" lineNumber:120 description:@"this should be a keyView!"];
    }

    v7 = [superview key];
    transitionCompletions = self->_transitionCompletions;
    name = [v7 name];
    v10 = [(NSMutableDictionary *)transitionCompletions objectForKey:name];

    v11 = [v10 copy];
    [v10 removeAllObjects];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__UIKBKeyViewAnimatorMonolith_floatingContentView_didFinishTransitioningToState___block_invoke;
    v14[3] = &unk_1E71141C0;
    v15 = v11;
    v12 = v11;
    [v12 enumerateObjectsUsingBlock:v14];
  }
}

void __81__UIKBKeyViewAnimatorMonolith_floatingContentView_didFinishTransitioningToState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v5[2](v5, [v4 count] - 1 == a3);
}

- (int64_t)_transitionFromState:(int)state toState:(int)toState
{
  result = 0;
  v5 = toState | (state << 8);
  if (v5 <= 1025)
  {
    if ((v5 - 513) > 0x13)
    {
      goto LABEL_5;
    }

    if (((1 << (toState - 1)) & 0x88088) != 0)
    {
      return 1;
    }

    if (v5 != 513)
    {
LABEL_5:
      if (v5 != 258)
      {
        return result;
      }

      return 1;
    }

    return 2;
  }

  if (v5 > 2051)
  {
    if (v5 == 2052 || v5 == 4098 || v5 == 5122)
    {
      return 2;
    }
  }

  else
  {
    switch(v5)
    {
      case 1026:
        return 2;
      case 1032:
        return 1;
      case 2050:
        return 2;
    }
  }

  return result;
}

- (void)addTransitionCompletion:(id)completion forKeyName:(id)name
{
  nameCopy = name;
  v6 = [completion copy];
  array = [(NSMutableDictionary *)self->_transitionCompletions objectForKey:nameCopy];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_transitionCompletions setObject:array forKey:nameCopy];
  }

  v8 = _Block_copy(v6);
  [array addObject:v8];
}

- (void)transitionFloatingKeyView:(id)view toState:(int)state completion:(id)completion
{
  v6 = *&state;
  viewCopy = view;
  completionCopy = completion;
  v10 = [(UIKBKeyViewAnimatorMonolith *)self controlStateForKeyState:v6];
  floatingContentView = [viewCopy floatingContentView];
  transitionCompletions = self->_transitionCompletions;
  v13 = [viewCopy key];
  name = [v13 name];
  v15 = [(NSMutableDictionary *)transitionCompletions objectForKey:name];

  if ([floatingContentView controlState] != v10)
  {
    if ([v15 count])
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __76__UIKBKeyViewAnimatorMonolith_transitionFloatingKeyView_toState_completion___block_invoke;
      v27 = &unk_1E71141E8;
      selfCopy = self;
      v18 = viewCopy;
      v31 = v6;
      v29 = v18;
      v30 = completionCopy;
      completionCopy = completionCopy;
      v19 = _Block_copy(&v24);
      v20 = [v18 key];
      name2 = [v20 name];
      [(UIKBKeyViewAnimatorMonolith *)self addTransitionCompletion:v19 forKeyName:name2];
    }

    else
    {
      if (!completionCopy)
      {
        completionCopy = &__block_literal_global_353;
      }

      v22 = [viewCopy key];
      name3 = [v22 name];
      [(UIKBKeyViewAnimatorMonolith *)self addTransitionCompletion:completionCopy forKeyName:name3];

      [floatingContentView setFloatingContentDelegate:self];
      [floatingContentView setControlState:v10 animated:1];
      [(UIKBKeyViewAnimatorMonolith *)self animateFloatingKeyView:viewCopy toControlState:v10];
    }

    goto LABEL_11;
  }

  if (completionCopy)
  {
    if ([v15 count])
    {
      v16 = [viewCopy key];
      name4 = [v16 name];
      [(UIKBKeyViewAnimatorMonolith *)self addTransitionCompletion:completionCopy forKeyName:name4];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }

LABEL_11:
  }
}

- (void)animateFloatingKeyView:(id)view toControlState:(unint64_t)state
{
  viewCopy = view;
  floatingContentView = [viewCopy floatingContentView];
  memset(&v59, 0, sizeof(v59));
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v7 = *(MEMORY[0x1E69792E8] + 80);
  if (state == 8)
  {
    *&v58.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v58.m33 = v7;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    *&v58.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v58.m43 = v15;
    v16 = *(MEMORY[0x1E69792E8] + 16);
    *&v58.m11 = *MEMORY[0x1E69792E8];
    *&v58.m13 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 48);
    *&v58.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v58.m23 = v17;
    v14 = 1.0;
    CATransform3DScale(&v59, &v58, 1.1, 1.1, 1.0);
    focusAnimationConfiguration = [floatingContentView focusAnimationConfiguration];
    [focusAnimationConfiguration focusingBaseDuration];
    v13 = v19;
  }

  else
  {
    *&v59.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v59.m33 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 112);
    *&v59.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v59.m43 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 16);
    *&v59.m11 = *MEMORY[0x1E69792E8];
    *&v59.m13 = v9;
    v10 = *(MEMORY[0x1E69792E8] + 48);
    *&v59.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v59.m23 = v10;
    [floatingContentView focusAnimationConfiguration];
    if (state == 9)
      v11 = {;
      [v11 focusingBaseDuration];
      v13 = v12;

      v14 = 1.0;
    }

    else
      v20 = {;
      [v20 unfocusingBaseDuration];
      v13 = v21;

      v14 = 0.0;
    }
  }

  v22 = [viewCopy layerForRenderFlags:4];
  renderConfig = [viewCopy renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    v25 = *MEMORY[0x1E69797E0];
    v26 = v14;
  }

  else
  {
    v27 = [v22 animationForKey:@"transform"];
    v28 = [v22 animationForKey:@"opacity"];
    v55 = v27;
    if (v27)
    {
      [v22 removeAnimationForKey:@"transform"];
    }

    v56 = floatingContentView;
    if (v28)
    {
      [v22 removeAnimationForKey:@"opacity"];
    }

    v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v25 = *MEMORY[0x1E69797E0];
    [v29 setFillMode:*MEMORY[0x1E69797E0]];
    [v29 setDuration:v13];
    v30 = MEMORY[0x1E696B098];
    if (v22)
    {
      [v22 transform];
    }

    else
    {
      memset(&v58, 0, sizeof(v58));
    }

    v31 = [v30 valueWithCATransform3D:&v58];
    [v29 setFromValue:v31];

    v58 = v59;
    v32 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v58];
    [v29 setToValue:v32];

    v58 = v59;
    [v22 setTransform:&v58];
    if (v13 > 0.0)
    {
      [v22 addAnimation:v29 forKey:@"transform"];
    }

    v33 = [viewCopy layerForRenderFlags:1];
    v34 = [v33 animationForKey:@"transform"];
    v35 = [v33 animationForKey:@"opacity"];
    v52 = v34;
    if (v34)
    {
      [v33 removeAnimationForKey:{@"transform", v34}];
    }

    if (v35)
    {
      [v33 removeAnimationForKey:@"opacity"];
    }

    v54 = v28;
    v58 = v59;
    if ([viewCopy imageOrientationForLayer:{v33, v52}] == 1)
    {
      v57 = v58;
      CATransform3DScale(&v58, &v57, 1.0, -1.0, 1.0);
    }

    v36 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v36 setFillMode:v25];
    [v36 setDuration:v13];
    v37 = MEMORY[0x1E696B098];
    if (v33)
    {
      [v33 transform];
    }

    else
    {
      memset(&v57, 0, sizeof(v57));
    }

    v38 = [v37 valueWithCATransform3D:&v57];
    [v36 setFromValue:v38];

    v57 = v58;
    v39 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v57];
    [v36 setToValue:v39];

    v40 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v40 setFillMode:v25];
    [v40 setDuration:v13];
    v41 = MEMORY[0x1E696AD98];
    [v33 opacity];
    v42 = [v41 numberWithFloat:?];
    [v40 setFromValue:v42];

    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [v40 setToValue:v43];

    v57 = v58;
    [v33 setTransform:&v57];
    v26 = v14;
    *&v44 = v26;
    [v33 setOpacity:v44];
    if (v13 > 0.0)
    {
      [v33 addAnimation:v36 forKey:@"transform"];
      [v33 addAnimation:v40 forKey:@"opacity"];
    }

    floatingContentView = v56;
  }

  v45 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v45 setFillMode:v25];
  [v45 setDuration:v13];
  v46 = MEMORY[0x1E696AD98];
  [v22 opacity];
  v47 = [v46 numberWithFloat:?];
  [v45 setFromValue:v47];

  v48 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v45 setToValue:v48];

  layer = [viewCopy layer];
  *&v50 = v26;
  [layer setOpacity:v50];

  if (v13 > 0.0)
  {
    layer2 = [viewCopy layer];
    [layer2 addAnimation:v45 forKey:@"opacity"];
  }

  [MEMORY[0x1E6979518] commit];
}

- (BOOL)shouldTransitionKeyView:(id)view fromState:(int)state toState:(int)toState
{
  v5 = *&toState;
  v6 = *&state;
  viewCopy = view;
  v9 = [viewCopy key];
  if ([v9 interactionType] == 3)
  {
    v10 = v6 == 0;
  }

  else
  {
    variantType = [v9 variantType];
    if (v5 == 16 && v6 == 4 && variantType)
    {
      v10 = 0;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = UIKBKeyViewAnimatorMonolith;
      v10 = [(UIKBKeyViewAnimator *)&v13 shouldTransitionKeyView:viewCopy fromState:v6 toState:v5];
    }
  }

  return v10;
}

- (void)transitionKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion
{
  v7 = *&toState;
  v8 = *&state;
  viewCopy = view;
  completionCopy = completion;
  v12 = [viewCopy key];
  selectedKeyTimestamps = self->_selectedKeyTimestamps;
  v14 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v15 = [v14 numberWithDouble:?];
  name = [v12 name];
  [(NSMutableDictionary *)selectedKeyTimestamps setObject:v15 forKey:name];

  renderConfig = [viewCopy renderConfig];
  LODWORD(v15) = [renderConfig lightKeyboard];

  if (v15)
  {
    v18 = 0.06;
  }

  else
  {
    v18 = 0.0;
  }

  transitionCompletions = self->_transitionCompletions;
  name2 = [v12 name];
  v21 = [(NSMutableDictionary *)transitionCompletions objectForKey:name2];

  v25 = viewCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    floatingContentView = [v25 floatingContentView];
    focusAnimationConfiguration = [floatingContentView focusAnimationConfiguration];
    [focusAnimationConfiguration setFocusingBaseDuration:v18];

    [(UIKBKeyViewAnimatorMonolith *)self transitionFloatingKeyView:v25 toState:v7 completion:completionCopy];
  }

  else if ([v12 interactionType] == 10 || -[UIKBKeyViewAnimatorMonolith _transitionFromState:toState:](self, "_transitionFromState:toState:", v8, v7) != 1)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, [v21 count] == 0);
    }
  }

  else
  {
    [(UIKBKeyViewAnimator *)self _fadeInKeyView:v25 duration:completionCopy completion:v18];
  }
}

- (void)transitionOutKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion
{
  v7 = *&toState;
  v8 = *&state;
  viewCopy = view;
  completionCopy = completion;
  v12 = [viewCopy key];
  selectedKeyTimestamps = self->_selectedKeyTimestamps;
  name = [v12 name];
  v15 = [(NSMutableDictionary *)selectedKeyTimestamps objectForKey:name];
  [v15 doubleValue];
  v17 = v16;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v19 = v18 - v17;
  v20 = fmax(v19 * 0.5 + (1.0 - v19) * 0.2, 0.2);
  if (v20 > 0.5)
  {
    v20 = 0.5;
  }

  if (v19 >= 3.0)
  {
    v21 = 0.2;
  }

  else
  {
    v21 = v20;
  }

  renderConfig = [viewCopy renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (!lightKeyboard)
  {
    v21 = 0.0;
  }

  transitionCompletions = self->_transitionCompletions;
  name2 = [v12 name];
  v26 = [(NSMutableDictionary *)transitionCompletions objectForKey:name2];

  v30 = viewCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    floatingContentView = [v30 floatingContentView];
    focusAnimationConfiguration = [floatingContentView focusAnimationConfiguration];
    [focusAnimationConfiguration setUnfocusingBaseDuration:v21];

    [(UIKBKeyViewAnimatorMonolith *)self transitionFloatingKeyView:v30 toState:v7 completion:completionCopy];
  }

  else if ([v12 interactionType] == 10 || -[UIKBKeyViewAnimatorMonolith _transitionFromState:toState:](self, "_transitionFromState:toState:", v8, v7) != 2)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, [v26 count] == 0);
    }
  }

  else
  {
    [(UIKBKeyViewAnimator *)self _fadeOutKeyView:v30 duration:completionCopy completion:v21];
  }
}

- (void)reset
{
  [(NSMutableDictionary *)self->_selectedKeyTimestamps removeAllObjects];
  transitionCompletions = self->_transitionCompletions;

  [(NSMutableDictionary *)transitionCompletions removeAllObjects];
}

@end