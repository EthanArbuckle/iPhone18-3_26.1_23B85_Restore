@interface UIInputWindowControllerHosting
- (BOOL)host:(id)host isForPurpose:(unint64_t)purpose;
- (BOOL)useLayoutHostingItem;
- (CGRect)visibleFrame;
- (NSArray)allHostingItems;
- (UIEdgeInsets)_inputViewPadding;
- (UIInputWindowController)owner;
- (UIInputWindowControllerHosting)initWithHost:(id)host;
- (id)expectedPlacementForHost:(id)host;
- (id)itemForPurpose:(unint64_t)purpose;
- (id)placementForHost:(id)host;
- (id)scrollTrackingView;
- (id)subPlacementFromPlacement:(id)placement forHost:(id)host;
- (void)disableViewSizingConstraints:(unint64_t)constraints forNewView:(id)view;
- (void)extendKeyboardBackdropHeight:(double)height withDuration:(double)duration;
- (void)layoutIfNeeded;
- (void)performForInputAccessoryBackdropViews:(id)views;
- (void)reloadForPlacementForInputViewSet:(id)set;
- (void)removeAllAnimations;
- (void)removeCombinedBackdropViewIfNeeded;
- (void)removeMatchMoveAnimationIfNeeded;
- (void)setExtraHostsRequired:(int)required;
- (void)setInputSetView:(id)view forType:(unint64_t)type;
- (void)setNeedsLayout;
- (void)updateBackdropViewForSplitKeyboard;
- (void)updateCombinedBackdropViewAnimated:(BOOL)animated forKeyboardUp:(BOOL)up;
- (void)updateViewConstraints;
@end

@implementation UIInputWindowControllerHosting

- (BOOL)useLayoutHostingItem
{
  owner = [(UIInputWindowControllerHosting *)self owner];
  isTrackingElementController = [owner isTrackingElementController];

  return isTrackingElementController;
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
  owner = [(UIInputWindowControllerHosting *)self owner];
  inputViewSet = [owner inputViewSet];
  isSplit = [inputViewSet isSplit];

  if (isSplit)
  {

    [(UIInputWindowControllerHosting *)self _updateBackdropViews];
  }
}

- (UIEdgeInsets)_inputViewPadding
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v3 currentInputMode];

  v5 = +[UIInputViewAnimationStyle animationStyleDefault];
  owner = [(UIInputWindowControllerHosting *)self owner];
  inputViewSet = [owner inputViewSet];
  owner2 = [(UIInputWindowControllerHosting *)self owner];
  _window = [owner2 _window];
  windowScene = [_window windowScene];
  v11 = [v5 endPlacementForInputViewSet:inputViewSet windowScene:windowScene];

  if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (v12 = 0.0, v13 = 0.0, v14 = 0.0, v15 = 0.0, +[UIKeyboard usesLocalKeyboard]))
  {
    owner3 = [(UIInputWindowControllerHosting *)self owner];
    inputViewSet2 = [owner3 inputViewSet];
    isCustomInputView = [inputViewSet2 isCustomInputView];

    if (+[UIKeyboard usesInputSystemUI]&& isCustomInputView)
    {
      owner4 = [(UIInputWindowControllerHosting *)self owner];
      inputViewSet3 = [owner4 inputViewSet];
      [inputViewSet3 inputViewBounds];
      LOBYTE(isCustomInputView) = v21 == 0.0;
    }

    v12 = 0.0;
    if (![v11 showsKeyboard] || (isCustomInputView & 1) != 0)
    {
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
    }

    else
    {
      v22 = +[UIKeyboardImpl activeInstance];
      isMinimized = [v22 isMinimized];

      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      if ((isMinimized & 1) == 0)
      {
        owner5 = [(UIInputWindowControllerHosting *)self owner];
        keyboardOrientation = [owner5 keyboardOrientation];

        if (+[UIKeyboard usesInputSystemUI])
        {
          v26 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
          currentUIState = [v26 currentUIState];

          if (currentUIState)
          {
            keyboardOrientation = [currentUIState orientation];
          }
        }

        [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:keyboardOrientation inputMode:currentInputMode];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:keyboardOrientation inputMode:currentInputMode];
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
  isChangingInputViews = [WeakRetained isChangingInputViews];

  if (isChangingInputViews)
  {
    v5 = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
    v7 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allHostingItems);
          }

          [*(*(&v11 + 1) + 8 * v10++) updateViewConstraints];
        }

        while (v8 != v10);
        v8 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    v5 = 0;
  }

  self->_requiresConstraintUpdate = v5;
}

- (UIInputWindowControllerHosting)initWithHost:(id)host
{
  hostCopy = host;
  v12.receiver = self;
  v12.super_class = UIInputWindowControllerHosting;
  v5 = [(UIInputWindowControllerHosting *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, hostCopy);
    array = [MEMORY[0x1E695DF70] array];
    hostingItems = v6->_hostingItems;
    v6->_hostingItems = array;

    [(UIInputWindowControllerHosting *)v6 reloadForPlacementForInputViewSet:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_updateBackdropViewForSplitKeyboard name:0x1EFB455F0 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel_updateBackdropViewForSplitKeyboard name:0x1EFB45610 object:0];
  }

  return v6;
}

- (void)setExtraHostsRequired:(int)required
{
  self->_extraHostsRequired = required;
  v4 = required + 1;
  while ([(NSMutableArray *)self->_hostingItems count]> v4)
  {
    lastObject = [(NSMutableArray *)self->_hostingItems lastObject];
    [lastObject clearVisibilityConstraints];
    [(NSMutableArray *)self->_hostingItems removeLastObject];
  }

  while ([(NSMutableArray *)self->_hostingItems count]< v4)
  {
    if ([(UIInputWindowControllerHosting *)self useLayoutHostingItem])
    {
      v6 = [UIInputLayoutHostingItem alloc];
      owner = [(UIInputWindowControllerHosting *)self owner];
      inputViewSet = [owner inputViewSet];
      v9 = [(UIInputLayoutHostingItem *)v6 initWithInputViewSet:inputViewSet container:self];
    }

    else
    {
      v9 = [[UIInputWindowControllerHostingItem alloc] initWithContainer:self];
    }

    [(NSMutableArray *)self->_hostingItems addObject:v9];
  }
}

- (void)reloadForPlacementForInputViewSet:(id)set
{
  v58 = *MEMORY[0x1E69E9840];
  setCopy = set;
  keyWindow = [UIApp keyWindow];
  firstResponder = [keyWindow firstResponder];

  owner = [(UIInputWindowControllerHosting *)self owner];
  inputViewSet = [owner inputViewSet];
  inputAccessoryView = [inputViewSet inputAccessoryView];

  inputAccessoryView2 = [firstResponder inputAccessoryView];
  v11 = inputAccessoryView2;
  v50 = firstResponder;
  if (inputAccessoryView2 == inputAccessoryView)
  {
  }

  else
  {
    inputAccessoryViewController = [firstResponder inputAccessoryViewController];
    view = [inputAccessoryViewController view];

    if (view != inputAccessoryView)
    {
      v14 = 0;
      goto LABEL_6;
    }
  }

  v14 = firstResponder;
LABEL_6:
  v49 = inputAccessoryView;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  placement = [WeakRetained placement];

  v51 = setCopy;
  v52 = placement;
  v17 = [placement subPlacementsForInputViewSet:setCopy];
  v47 = [(NSMutableArray *)self->_hostingItems copy];
  extraHostsRequired = [(UIInputWindowControllerHosting *)self extraHostsRequired];
  v46 = [v17 count];
  v48 = v17;
  -[UIInputWindowControllerHosting setExtraHostsRequired:](self, "setExtraHostsRequired:", [v17 count]);
  keyWindow2 = [UIApp keyWindow];
  firstResponder2 = [keyWindow2 firstResponder];

  if (firstResponder2 != v14)
  {
    [v14 becomeFirstResponder];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v21 = [allHostingItems countByEnumeratingWithState:&v53 objects:v57 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        [v25 updateInputAssistantHostViewVisibility];
        placement2 = [v25 placement];
        v27 = objc_loadWeakRetained(&self->_owner);
        shouldNotifyRemoteKeyboards = [v27 shouldNotifyRemoteKeyboards];

        if ((shouldNotifyRemoteKeyboards & 1) == 0)
        {
          [v25 setPlacement];
        }
      }

      v22 = [allHostingItems countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v22);
  }

  v29 = v52;
  computeComparisonMask = [v52 computeComparisonMask];
  if (self->_currentState != computeComparisonMask)
  {
    self->_currentState = computeComparisonMask;
    if (v51)
    {
      inputViewSet2 = v51;
    }

    else
    {
      v32 = objc_loadWeakRetained(&self->_owner);
      inputViewSet2 = [v32 inputViewSet];
    }

    inputViewController = [inputViewSet2 inputViewController];
    parentViewController = [inputViewController parentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      inputViewController2 = [inputViewSet2 inputViewController];
      parentViewController2 = [inputViewController2 parentViewController];
      [parentViewController2 invalidateInputView];
    }

    assistantViewController = [inputViewSet2 assistantViewController];
    parentViewController3 = [assistantViewController parentViewController];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      assistantViewController2 = [inputViewSet2 assistantViewController];
      parentViewController4 = [assistantViewController2 parentViewController];
      [parentViewController4 invalidateInputAssistantView];
    }

    v43 = objc_loadWeakRetained(&self->_owner);
    [v43 changeToInputViewSet:inputViewSet2];

    v29 = v52;
    if (([v52 isFloating] & 1) != 0 || objc_msgSend(v52, "isHiddenForFloatingTransition"))
    {
      v44 = objc_loadWeakRetained(&self->_owner);
      [v44 validateInputView];
    }
  }

  if (v46 < extraHostsRequired)
  {
    [(UIInputWindowControllerHosting *)self removeAllAnimations];
  }
}

- (id)itemForPurpose:(unint64_t)purpose
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  placement = [WeakRetained placement];
  v7 = [placement indexForPurpose:purpose];

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

- (void)setInputSetView:(id)view forType:(unint64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(UIInputWindowControllerHosting *)self itemForPurpose:type];
  v8 = v7;
  if (type > 101)
  {
    if (type == 102)
    {
      [v7 setInputAssistantView:viewCopy];
      goto LABEL_14;
    }

    if (type == 103)
    {
      [v7 setInputSwitcherView:viewCopy];
      goto LABEL_14;
    }
  }

  else
  {
    if (type == 100)
    {
      [v7 setInputView:viewCopy];
      goto LABEL_14;
    }

    if (type == 101)
    {
      [v7 setInputAccessoryView:viewCopy];
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
    v11 = viewCopy;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to set view of unsupported type: %@", &v10, 0xCu);
  }

LABEL_14:
}

- (void)updateCombinedBackdropViewAnimated:(BOOL)animated forKeyboardUp:(BOOL)up
{
  upCopy = up;
  animatedCopy = animated;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v7 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        [*(*(&v11 + 1) + 8 * v10++) updateCombinedBackdropViewAnimated:animatedCopy forKeyboardUp:upCopy];
      }

      while (v8 != v10);
      v8 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v4 = [allHostingItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        _inputCombinedBackdropView = [v8 _inputCombinedBackdropView];
        if (_inputCombinedBackdropView)
        {
          v10 = _inputCombinedBackdropView;
          inputViewSet = [v8 inputViewSet];
          isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

          if (isInputViewPlaceholder)
          {
            [(UIInputWindowControllerHosting *)self removeAllAnimations];
            [v8 setCombinedBackdropView:0];
          }
        }
      }

      v5 = [allHostingItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)disableViewSizingConstraints:(unint64_t)constraints forNewView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v8 = [allHostingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        [*(*(&v12 + 1) + 8 * v11++) disableViewSizingConstraints:constraints forNewView:viewCopy];
      }

      while (v9 != v11);
      v9 = [allHostingItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)removeAllAnimations
{
  owner = [(UIInputWindowControllerHosting *)self owner];
  view = [owner view];
  [view _removeAllAnimations:1];
}

- (void)setNeedsLayout
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v3 = [allHostingItems countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        hostView = [*(*(&v8 + 1) + 8 * v6) hostView];
        [hostView setNeedsLayout];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allHostingItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)performForInputAccessoryBackdropViews:(id)views
{
  v16 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v6 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        _inputAccessoryBackdropView = [*(*(&v11 + 1) + 8 * v9) _inputAccessoryBackdropView];
        viewsCopy[2](viewsCopy, _inputAccessoryBackdropView);

        ++v9;
      }

      while (v7 != v9);
      v7 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v3 = [allHostingItems countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        hostView = [*(*(&v8 + 1) + 8 * v6) hostView];
        [hostView layoutIfNeeded];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allHostingItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)extendKeyboardBackdropHeight:(double)height withDuration:(double)duration
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allHostingItems = [(UIInputWindowControllerHosting *)self allHostingItems];
  v7 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allHostingItems);
        }

        [*(*(&v11 + 1) + 8 * v10++) extendKeyboardBackdropHeight:height withDuration:duration];
      }

      while (v8 != v10);
      v8 = [allHostingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)subPlacementFromPlacement:(id)placement forHost:(id)host
{
  placementCopy = placement;
  v7 = [(UIInputWindowControllerHosting *)self indexOfHost:host];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && (v8 = v7) != 0)
  {
    subPlacements = [placementCopy subPlacements];
    v9 = [subPlacements objectAtIndexedSubscript:v8 - 1];
  }

  else
  {
    v9 = placementCopy;
  }

  return v9;
}

- (id)placementForHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  placement = [WeakRetained placement];
  v7 = [(UIInputWindowControllerHosting *)self subPlacementFromPlacement:placement forHost:hostCopy];

  return v7;
}

- (id)expectedPlacementForHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  expectedPlacement = [WeakRetained expectedPlacement];
  v7 = [(UIInputWindowControllerHosting *)self subPlacementFromPlacement:expectedPlacement forHost:hostCopy];
  v8 = v7;
  if (v7)
  {
    expiringPlacement = v7;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_owner);
    placement = [v10 placement];
    v12 = [(UIInputWindowControllerHosting *)self subPlacementFromPlacement:placement forHost:hostCopy];
    expiringPlacement = [v12 expiringPlacement];
  }

  return expiringPlacement;
}

- (BOOL)host:(id)host isForPurpose:(unint64_t)purpose
{
  v6 = [(NSMutableArray *)self->_hostingItems indexOfObject:host];
  v7 = v6;
  if (purpose == 200)
  {
    return v6 == 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_owner);
  placement = [WeakRetained placement];
  v8 = [placement indexForPurpose:purpose] == v7;

  return v8;
}

- (id)scrollTrackingView
{
  v2 = [(UIInputWindowControllerHosting *)self itemForPurpose:3];
  scrollTrackingView = [v2 scrollTrackingView];

  return scrollTrackingView;
}

- (void)removeMatchMoveAnimationIfNeeded
{
  v2 = [(UIInputWindowControllerHosting *)self itemForPurpose:3];
  [v2 removeMatchMoveAnimationIfNeeded];
}

@end