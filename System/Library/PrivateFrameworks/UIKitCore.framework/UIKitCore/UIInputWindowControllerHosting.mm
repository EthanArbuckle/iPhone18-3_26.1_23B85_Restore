@interface UIInputWindowControllerHosting
- (BOOL)host:(id)a3 isForPurpose:(unint64_t)a4;
- (BOOL)useLayoutHostingItem;
- (CGRect)visibleFrame;
- (NSArray)allHostingItems;
- (UIEdgeInsets)_inputViewPadding;
- (UIInputWindowController)owner;
- (UIInputWindowControllerHosting)initWithHost:(id)a3;
- (id)expectedPlacementForHost:(id)a3;
- (id)itemForPurpose:(unint64_t)a3;
- (id)placementForHost:(id)a3;
- (id)scrollTrackingView;
- (id)subPlacementFromPlacement:(id)a3 forHost:(id)a4;
- (void)disableViewSizingConstraints:(unint64_t)a3 forNewView:(id)a4;
- (void)extendKeyboardBackdropHeight:(double)a3 withDuration:(double)a4;
- (void)layoutIfNeeded;
- (void)performForInputAccessoryBackdropViews:(id)a3;
- (void)reloadForPlacementForInputViewSet:(id)a3;
- (void)removeAllAnimations;
- (void)removeCombinedBackdropViewIfNeeded;
- (void)removeMatchMoveAnimationIfNeeded;
- (void)setExtraHostsRequired:(int)a3;
- (void)setInputSetView:(id)a3 forType:(unint64_t)a4;
- (void)setNeedsLayout;
- (void)updateBackdropViewForSplitKeyboard;
- (void)updateCombinedBackdropViewAnimated:(BOOL)a3 forKeyboardUp:(BOOL)a4;
- (void)updateViewConstraints;
@end

@implementation UIInputWindowControllerHosting

- (BOOL)useLayoutHostingItem
{
  v2 = [(UIInputWindowControllerHosting *)self owner];
  v3 = [v2 isTrackingElementController];

  return v3;
}

- (UIInputWindowController)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (NSArray)allHostingItems
{
  v2 = [(NSMutableArray *)self->_hostingItems copy];

  return v2;
}

- (void)updateBackdropViewForSplitKeyboard
{
  v3 = [(UIInputWindowControllerHosting *)self owner];
  v4 = [v3 inputViewSet];
  v5 = [v4 isSplit];

  if (v5)
  {

    [(UIInputWindowControllerHosting *)self _updateBackdropViews];
  }
}

- (UIEdgeInsets)_inputViewPadding
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];

  v5 = +[UIInputViewAnimationStyle animationStyleDefault];
  v6 = [(UIInputWindowControllerHosting *)self owner];
  v7 = [v6 inputViewSet];
  v8 = [(UIInputWindowControllerHosting *)self owner];
  v9 = [v8 _window];
  v10 = [v9 windowScene];
  v11 = [v5 endPlacementForInputViewSet:v7 windowScene:v10];

  if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (v12 = 0.0, v13 = 0.0, v14 = 0.0, v15 = 0.0, +[UIKeyboard usesLocalKeyboard]))
  {
    v16 = [(UIInputWindowControllerHosting *)self owner];
    v17 = [v16 inputViewSet];
    v18 = [v17 isCustomInputView];

    if (+[UIKeyboard usesInputSystemUI]&& v18)
    {
      v19 = [(UIInputWindowControllerHosting *)self owner];
      v20 = [v19 inputViewSet];
      [v20 inputViewBounds];
      LOBYTE(v18) = v21 == 0.0;
    }

    v12 = 0.0;
    if (![v11 showsKeyboard] || (v18 & 1) != 0)
    {
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
    }

    else
    {
      v22 = +[UIKeyboardImpl activeInstance];
      v23 = [v22 isMinimized];

      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      if ((v23 & 1) == 0)
      {
        v24 = [(UIInputWindowControllerHosting *)self owner];
        v25 = [v24 keyboardOrientation];

        if (+[UIKeyboard usesInputSystemUI])
        {
          v26 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
          v27 = [v26 currentUIState];

          if (v27)
          {
            v25 = [v27 orientation];
          }
        }

        [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:v25 inputMode:v4];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:v25 inputMode:v4];
        v15 = vabdd_f64(v29, v36);
        v14 = vabdd_f64(v31, v37);
        v13 = vabdd_f64(v33, v38);
        v12 = vabdd_f64(v35, v39);
      }
    }
  }

  v40 = v15;
  v41 = v14;
  v42 = v13;
  v43 = v12;
  result.right = v43;
  result.bottom = v42;
  result.left = v41;
  result.top = v40;
  return result;
}

- (void)updateViewConstraints
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v4 = [WeakRetained isChangingInputViews];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(UIInputWindowControllerHosting *)self allHostingItems];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) updateViewConstraints];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    v5 = 0;
  }

  self->_requiresConstraintUpdate = v5;
}

- (UIInputWindowControllerHosting)initWithHost:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIInputWindowControllerHosting;
  v5 = [(UIInputWindowControllerHosting *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, v4);
    v7 = [MEMORY[0x1E695DF70] array];
    hostingItems = v6->_hostingItems;
    v6->_hostingItems = v7;

    [(UIInputWindowControllerHosting *)v6 reloadForPlacementForInputViewSet:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel_updateBackdropViewForSplitKeyboard name:0x1EFB455F0 object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v6 selector:sel_updateBackdropViewForSplitKeyboard name:0x1EFB45610 object:0];
  }

  return v6;
}

- (void)setExtraHostsRequired:(int)a3
{
  self->_extraHostsRequired = a3;
  v4 = a3 + 1;
  while ([(NSMutableArray *)self->_hostingItems count]> v4)
  {
    v5 = [(NSMutableArray *)self->_hostingItems lastObject];
    [v5 clearVisibilityConstraints];
    [(NSMutableArray *)self->_hostingItems removeLastObject];
  }

  while ([(NSMutableArray *)self->_hostingItems count]< v4)
  {
    if ([(UIInputWindowControllerHosting *)self useLayoutHostingItem])
    {
      v6 = [UIInputLayoutHostingItem alloc];
      v7 = [(UIInputWindowControllerHosting *)self owner];
      v8 = [v7 inputViewSet];
      v9 = [(UIInputLayoutHostingItem *)v6 initWithInputViewSet:v8 container:self];
    }

    else
    {
      v9 = [[UIInputWindowControllerHostingItem alloc] initWithContainer:self];
    }

    [(NSMutableArray *)self->_hostingItems addObject:v9];
  }
}

- (void)reloadForPlacementForInputViewSet:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [UIApp keyWindow];
  v6 = [v5 firstResponder];

  v7 = [(UIInputWindowControllerHosting *)self owner];
  v8 = [v7 inputViewSet];
  v9 = [v8 inputAccessoryView];

  v10 = [v6 inputAccessoryView];
  v11 = v10;
  v50 = v6;
  if (v10 == v9)
  {
  }

  else
  {
    v12 = [v6 inputAccessoryViewController];
    v13 = [v12 view];

    if (v13 != v9)
    {
      v14 = 0;
      goto LABEL_6;
    }
  }

  v14 = v6;
LABEL_6:
  v49 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v16 = [WeakRetained placement];

  v51 = v4;
  v52 = v16;
  v17 = [v16 subPlacementsForInputViewSet:v4];
  v47 = [(NSMutableArray *)self->_hostingItems copy];
  v45 = [(UIInputWindowControllerHosting *)self extraHostsRequired];
  v46 = [v17 count];
  v48 = v17;
  -[UIInputWindowControllerHosting setExtraHostsRequired:](self, "setExtraHostsRequired:", [v17 count]);
  v18 = [UIApp keyWindow];
  v19 = [v18 firstResponder];

  if (v19 != v14)
  {
    [v14 becomeFirstResponder];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v21 = [v20 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        [v25 updateInputAssistantHostViewVisibility];
        v26 = [v25 placement];
        v27 = objc_loadWeakRetained(&self->_owner);
        v28 = [v27 shouldNotifyRemoteKeyboards];

        if ((v28 & 1) == 0)
        {
          [v25 setPlacement];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v22);
  }

  v29 = v52;
  v30 = [v52 computeComparisonMask];
  if (self->_currentState != v30)
  {
    self->_currentState = v30;
    if (v51)
    {
      v31 = v51;
    }

    else
    {
      v32 = objc_loadWeakRetained(&self->_owner);
      v31 = [v32 inputViewSet];
    }

    v33 = [v31 inputViewController];
    v34 = [v33 parentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v36 = [v31 inputViewController];
      v37 = [v36 parentViewController];
      [v37 invalidateInputView];
    }

    v38 = [v31 assistantViewController];
    v39 = [v38 parentViewController];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      v41 = [v31 assistantViewController];
      v42 = [v41 parentViewController];
      [v42 invalidateInputAssistantView];
    }

    v43 = objc_loadWeakRetained(&self->_owner);
    [v43 changeToInputViewSet:v31];

    v29 = v52;
    if (([v52 isFloating] & 1) != 0 || objc_msgSend(v52, "isHiddenForFloatingTransition"))
    {
      v44 = objc_loadWeakRetained(&self->_owner);
      [v44 validateInputView];
    }
  }

  if (v46 < v45)
  {
    [(UIInputWindowControllerHosting *)self removeAllAnimations];
  }
}

- (id)itemForPurpose:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [WeakRetained placement];
  v7 = [v6 indexForPurpose:a3];

  if (v7 >= [(NSMutableArray *)self->_hostingItems count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_hostingItems objectAtIndexedSubscript:v7];
  }

  return v8;
}

- (void)setInputSetView:(id)a3 forType:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UIInputWindowControllerHosting *)self itemForPurpose:a4];
  v8 = v7;
  if (a4 > 101)
  {
    if (a4 == 102)
    {
      [v7 setInputAssistantView:v6];
      goto LABEL_14;
    }

    if (a4 == 103)
    {
      [v7 setInputSwitcherView:v6];
      goto LABEL_14;
    }
  }

  else
  {
    if (a4 == 100)
    {
      [v7 setInputView:v6];
      goto LABEL_14;
    }

    if (a4 == 101)
    {
      [v7 setInputAccessoryView:v6];
      goto LABEL_14;
    }
  }

  if (qword_1ED49F3B0 != -1)
  {
    dispatch_once(&qword_1ED49F3B0, &__block_literal_global_599);
  }

  v9 = _MergedGlobals_1190;
  if (os_log_type_enabled(_MergedGlobals_1190, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to set view of unsupported type: %@", &v10, 0xCu);
  }

LABEL_14:
}

- (void)updateCombinedBackdropViewAnimated:(BOOL)a3 forKeyboardUp:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) updateCombinedBackdropViewAnimated:v5 forKeyboardUp:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeCombinedBackdropViewIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 _inputCombinedBackdropView];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 inputViewSet];
          v12 = [v11 isInputViewPlaceholder];

          if (v12)
          {
            [(UIInputWindowControllerHosting *)self removeAllAnimations];
            [v8 setCombinedBackdropView:0];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)disableViewSizingConstraints:(unint64_t)a3 forNewView:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) disableViewSizingConstraints:a3 forNewView:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)removeAllAnimations
{
  v3 = [(UIInputWindowControllerHosting *)self owner];
  v2 = [v3 view];
  [v2 _removeAllAnimations:1];
}

- (void)setNeedsLayout
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) hostView];
        [v7 setNeedsLayout];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)performForInputAccessoryBackdropViews:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) _inputAccessoryBackdropView];
        v4[2](v4, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)layoutIfNeeded
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) hostView];
        [v7 layoutIfNeeded];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)extendKeyboardBackdropHeight:(double)a3 withDuration:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(UIInputWindowControllerHosting *)self allHostingItems];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) extendKeyboardBackdropHeight:a3 withDuration:a4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (CGRect)visibleFrame
{
  v2 = [(UIInputWindowControllerHosting *)self itemForPurpose:0];
  [v2 visibleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)subPlacementFromPlacement:(id)a3 forHost:(id)a4
{
  v6 = a3;
  v7 = [(UIInputWindowControllerHosting *)self indexOfHost:a4];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && (v8 = v7) != 0)
  {
    v10 = [v6 subPlacements];
    v9 = [v10 objectAtIndexedSubscript:v8 - 1];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)placementForHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [WeakRetained placement];
  v7 = [(UIInputWindowControllerHosting *)self subPlacementFromPlacement:v6 forHost:v4];

  return v7;
}

- (id)expectedPlacementForHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [WeakRetained expectedPlacement];
  v7 = [(UIInputWindowControllerHosting *)self subPlacementFromPlacement:v6 forHost:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_owner);
    v11 = [v10 placement];
    v12 = [(UIInputWindowControllerHosting *)self subPlacementFromPlacement:v11 forHost:v4];
    v9 = [v12 expiringPlacement];
  }

  return v9;
}

- (BOOL)host:(id)a3 isForPurpose:(unint64_t)a4
{
  v6 = [(NSMutableArray *)self->_hostingItems indexOfObject:a3];
  v7 = v6;
  if (a4 == 200)
  {
    return v6 == 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v10 = [WeakRetained placement];
  v8 = [v10 indexForPurpose:a4] == v7;

  return v8;
}

- (id)scrollTrackingView
{
  v2 = [(UIInputWindowControllerHosting *)self itemForPurpose:3];
  v3 = [v2 scrollTrackingView];

  return v3;
}

- (void)removeMatchMoveAnimationIfNeeded
{
  v2 = [(UIInputWindowControllerHosting *)self itemForPurpose:3];
  [v2 removeMatchMoveAnimationIfNeeded];
}

@end