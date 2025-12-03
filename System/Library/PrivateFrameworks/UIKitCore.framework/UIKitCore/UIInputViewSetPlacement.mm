@interface UIInputViewSetPlacement
+ (id)deactivatedKeyboardPlacementWithCurrentPlacement:(id)placement;
+ (id)encodablePlacementsForXPC;
+ (id)placement;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresWindowBasedSafeAreaInsets;
- (CGAffineTransform)transform;
- (CGRect)adjustBoundsForNotificationsWithOwner:(id)owner;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (UIEdgeInsets)inputAccessoryViewPadding;
- (UIInputViewSetPlacement)initWithCoder:(id)coder;
- (UIInputViewSetPlacementDelegate)delegate;
- (double)inputAssistantViewHeightForInputViewSet:(id)set;
- (id)applicatorInfoForOwner:(id)owner;
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (id)keyboardState;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (unint64_t)computeComparisonMask;
- (unint64_t)notificationsForTransitionToPlacement:(id)placement;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIInputViewSetPlacement

+ (id)placement
{
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = NSStringFromClass(self);
    [v3 raise:v4 format:{@"%@ is not meant to be instantiated directly", v5}];
  }

  v6 = objc_alloc_init(self);

  return v6;
}

+ (id)encodablePlacementsForXPC
{
  v6[24] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v6[10] = objc_opt_class();
  v6[11] = objc_opt_class();
  v6[12] = objc_opt_class();
  v6[13] = objc_opt_class();
  v6[14] = objc_opt_class();
  v6[15] = objc_opt_class();
  v6[16] = objc_opt_class();
  v6[17] = objc_opt_class();
  v6[18] = objc_opt_class();
  v6[19] = objc_opt_class();
  v6[20] = objc_opt_class();
  v6[21] = objc_opt_class();
  v6[22] = objc_opt_class();
  v6[23] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:24];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (unint64_t)computeComparisonMask
{
  subPlacements = [(UIInputViewSetPlacement *)self subPlacements];
  v4 = [subPlacements count] + 1;

  for (i = 0; i != 7; ++i)
  {
    v4 |= 1 << i << (7 * [(UIInputViewSetPlacement *)self indexForPurpose:computeComparisonMask_allPurposes[i]]+ 4);
  }

  return v4;
}

- (BOOL)requiresWindowBasedSafeAreaInsets
{
  showsInputViews = [(UIInputViewSetPlacement *)self showsInputViews];
  if (showsInputViews)
  {
    LOBYTE(showsInputViews) = ![(UIInputViewSetPlacement *)self isUndocked];
  }

  return showsInputViews;
}

- (CGAffineTransform)transform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (UIInputViewSetPlacementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)keyboardState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = _MergedGlobals_19_5;
  v14 = _MergedGlobals_19_5;
  if (!_MergedGlobals_19_5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getTUIKeyboardStateClass_block_invoke_0;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getTUIKeyboardStateClass_block_invoke_0(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = objc_alloc_init(v3);
  if ([(UIInputViewSetPlacement *)self showsInputOrAssistantViews])
  {
    [v5 setHasInputView:{-[UIInputViewSetPlacement showsKeyboard](self, "showsKeyboard")}];
    assistantView = [(UIInputViewSetPlacement *)self assistantView];
    [v5 setHasAssistantView:assistantView != 0];
  }

  else
  {
    [v5 setHasInputView:0];
    [v5 setHasAssistantView:0];
  }

  [v5 setHasFloatingAssistantView:0];
  if ([(UIInputViewSetPlacement *)self isFloatingAssistantView]|| [(UIInputViewSetPlacement *)self isCompactAssistantView])
  {
    [v5 setHasInputView:0];
    [v5 setHasAssistantView:1];
    [v5 setIsDocked:0];
    [v5 setIsSplit:0];
    [v5 setIsFloating:1];
    [v5 setHasFloatingAssistantView:1];
    if ([(UIInputViewSetPlacement *)self isCompactAssistantView])
    {
      [v5 setIsCompact:1];
    }

    goto LABEL_16;
  }

  if ([(UIInputViewSetPlacement *)self isFloating]|| [(UIInputViewSetPlacement *)self isHiddenForFloatingTransition])
  {
    [v5 setIsDocked:0];
    [v5 setIsSplit:0];
    v7 = v5;
    v8 = 1;
LABEL_13:
    [v7 setIsFloating:v8];
    [v5 setHasInputView:1];
    goto LABEL_14;
  }

  if ([(UIInputViewSetPlacement *)self isUndocked])
  {
    [v5 setIsDocked:0];
    [v5 setIsSplit:1];
    v7 = v5;
    v8 = 0;
    goto LABEL_13;
  }

  [v5 setIsDocked:1];
  [v5 setIsSplit:0];
  [v5 setIsFloating:0];
LABEL_14:
  if ([(UIInputViewSetPlacement *)self accessoryViewWillAppear])
  {
    [v5 setHasAccessoryView:1];
  }

LABEL_16:
  [v5 setIsInteractive:{-[UIInputViewSetPlacement isInteractive](self, "isInteractive")}];

  return v5;
}

+ (id)deactivatedKeyboardPlacementWithCurrentPlacement:(id)placement
{
  placementCopy = placement;
  v4 = +[UIInputViewSetPlacementOffScreenDown placement];
  if (_AXSReduceMotionReduceSlideTransitionsEnabled())
  {
    v5 = placementCopy[2](placementCopy);
    v6 = [UIInputViewSetPlacementInvisible placementWithPlacement:v5];

    v4 = v6;
  }

  return v4;
}

- (UIInputViewSetPlacement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacement;
  v5 = [(UIInputViewSetPlacement *)&v8 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"ExtendedHeight"];
    v5->_extendedHeight = v6;
    v5->_dirty = [coderCopy decodeBoolForKey:@"Dirty"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  extendedHeight = self->_extendedHeight;
  coderCopy = coder;
  *&v5 = extendedHeight;
  [coderCopy encodeFloat:@"ExtendedHeight" forKey:v5];
  [coderCopy encodeBool:self->_dirty forKey:@"Dirty"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self->_dirty)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (![(UIInputViewSetPlacement *)equalCopy isMemberOfClass:objc_opt_class()])
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = !v5->_dirty;
  }

LABEL_7:

  return v6 & 1;
}

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:view attribute:1 relatedBy:0 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:containerView attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  viewCopy = view;
  if (view)
  {
    containerViewCopy = containerView;
    widthAnchor = [viewCopy widthAnchor];
    widthAnchor2 = [containerViewCopy widthAnchor];

    viewCopy = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  }

  return viewCopy;
}

- (double)inputAssistantViewHeightForInputViewSet:(id)set
{
  setCopy = set;
  inputAssistantView = [setCopy inputAssistantView];
  v5 = 0.0;
  if (inputAssistantView)
  {
    v6 = inputAssistantView;
    inputAssistantView2 = [setCopy inputAssistantView];
    isHidden = [inputAssistantView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      systemInputAssistantViewController = [v9 systemInputAssistantViewController];

      inputAssistantView3 = [setCopy inputAssistantView];
      traitCollection = [inputAssistantView3 traitCollection];
      [systemInputAssistantViewController preferredHeightForTraitCollection:traitCollection];
      v5 = v13;
    }
  }

  return v5;
}

- (unint64_t)notificationsForTransitionToPlacement:(id)placement
{
  placementCopy = placement;
  showsInputViews = [(UIInputViewSetPlacement *)self showsInputViews];
  showsInputViews2 = [placementCopy showsInputViews];
  v7 = showsInputViews2;
  v8 = 1;
  if (!showsInputViews && (showsInputViews2 & 1) == 0)
  {
    inputViewWillAppear = [(UIInputViewSetPlacement *)self inputViewWillAppear];
    v8 = inputViewWillAppear ^ [placementCopy inputViewWillAppear];
  }

  if ([(UIInputViewSetPlacement *)self isFloatingAssistantView])
  {
    v10 = [placementCopy isFloatingAssistantView] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  if ([(UIInputViewSetPlacement *)self isFloating])
  {
    v11 = 1;
  }

  else
  {
    v11 = [placementCopy isFloating] ^ 1;
  }

  v12 = 0;
  if (![(UIInputViewSetPlacement *)self isEqual:placementCopy]&& (((v8 | v10) ^ 1) & v11 & 1) == 0)
  {
    if ((showsInputViews | v7 ^ 1))
    {
      if (((!showsInputViews | v7) & 1) == 0)
      {
        goto LABEL_21;
      }

      if ((!showsInputViews | v7 ^ 1))
      {
        if (v10)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_23;
      }

      if (-[UIInputViewSetPlacement showsKeyboard](self, "showsKeyboard") && ([placementCopy showsKeyboard] & 1) == 0 && (objc_msgSend(placementCopy, "accessoryViewWillAppear") & 1) != 0)
      {
LABEL_21:
        v12 = 3;
        goto LABEL_23;
      }
    }

    v12 = 2;
  }

LABEL_23:

  return v12;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  vCopy = v;
  v57 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if (+[UIInputWindowController useMetronomeTracking])
  {
    [setCopy onscreenSizeOfViewsInSetIncludingIAV:vCopy];
    v8 = v7;
    v10 = v9;
    if (![(UIInputViewSetPlacement *)self showsKeyboard]&& ![(UIInputViewSetPlacement *)self isUndocked])
    {
      v10 = 0.0;
    }

    goto LABEL_60;
  }

  inputView = [setCopy inputView];
  [inputView intrinsicContentSize];
  v8 = v12;
  v10 = v13;
  [inputView _findAutolayoutHeightConstraint];
  if (v14 != -1.0)
  {
    v10 = v14;
  }

  if (v8 == 0.0 && inputView != 0)
  {
    v8 = -1.0;
  }

  if (v8 == -1.0)
  {
    [inputView frame];
    v8 = v16;
  }

  if (v10 != -1.0)
  {
    goto LABEL_35;
  }

  [inputView frame];
  v10 = v17;
  if (v17 != 0.0)
  {
    goto LABEL_35;
  }

  if (![setCopy isCustomInputView])
  {
    goto LABEL_35;
  }

  constraints = [inputView constraints];
  v19 = [constraints count];

  if (!v19)
  {
    goto LABEL_35;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  constraints2 = [inputView constraints];
  v21 = [constraints2 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  v51 = vCopy;
  v23 = *v53;
  do
  {
    v24 = 0;
    do
    {
      if (*v53 != v23)
      {
        objc_enumerationMutation(constraints2);
      }

      v25 = *(*(&v52 + 1) + 8 * v24);
      firstItem = [v25 firstItem];
      if (firstItem != inputView)
      {
        goto LABEL_27;
      }

      secondItem = [v25 secondItem];
      if (secondItem)
      {

LABEL_27:
        goto LABEL_28;
      }

      firstAttribute = [v25 firstAttribute];

      if (firstAttribute == 8)
      {
        [v25 constant];
        v10 = v30;
        goto LABEL_33;
      }

LABEL_28:
      ++v24;
    }

    while (v22 != v24);
    v29 = [constraints2 countByEnumeratingWithState:&v52 objects:v56 count:16];
    v22 = v29;
  }

  while (v29);
LABEL_33:
  LODWORD(vCopy) = v51;
LABEL_34:

LABEL_35:
  keyboard = [setCopy keyboard];
  if (keyboard)
  {
    v32 = keyboard;
    v33 = +[UIKeyboardImpl activeInstance];
    if ([v33 isMinimized])
    {

      goto LABEL_43;
    }

    if ([(UIInputViewSetPlacement *)self showsKeyboard])
    {

      goto LABEL_44;
    }

    isUndocked = [(UIInputViewSetPlacement *)self isUndocked];

    if (isUndocked)
    {
      goto LABEL_44;
    }

LABEL_43:
    v10 = 0.0;
    goto LABEL_44;
  }

  if (![(UIInputViewSetPlacement *)self showsKeyboard]&& ![(UIInputViewSetPlacement *)self isUndocked])
  {
    goto LABEL_43;
  }

LABEL_44:
  inputAssistantView = [setCopy inputAssistantView];
  if (!inputAssistantView || v10 == 0.0 && +[UIKeyboard isInputSystemUI])
  {
  }

  else
  {
    v35 = +[UIKeyboard usesInputSystemUI];

    if (!v35)
    {
      inputAssistantView2 = [setCopy inputAssistantView];
      [inputAssistantView2 intrinsicContentSize];
      v38 = v37;

      if (v38 == -1.0)
      {
        v38 = 0.0;
        if (!+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout])
        {
          if ([(UIInputViewSetPlacement *)self showsInputViews])
          {
            [(UIInputViewSetPlacement *)self inputAssistantViewHeightForInputViewSet:setCopy];
            v38 = v39;
          }
        }
      }

      v10 = v10 + v38;
    }
  }

  if (vCopy)
  {
    inputAccessoryView = [setCopy inputAccessoryView];

    if (inputAccessoryView)
    {
      inputAccessoryView2 = [setCopy inputAccessoryView];
      [inputAccessoryView2 intrinsicContentSize];
      v43 = v42;

      if (v43 == -1.0)
      {
        inputAccessoryView3 = [setCopy inputAccessoryView];
        [inputAccessoryView3 frame];
        v43 = v45;
      }

      v10 = v10 + v43;
    }
  }

LABEL_60:
  v46 = 0.0;
  v47 = 0.0;
  v48 = v8;
  v49 = v10;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

- (id)applicatorInfoForOwner:(id)owner
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"Alpha";
  v4 = MEMORY[0x1E696AD98];
  [(UIInputViewSetPlacement *)self alpha];
  v5 = [v4 numberWithDouble:?];
  v12[0] = v5;
  v11[1] = @"Transform";
  v6 = MEMORY[0x1E696B098];
  [(UIInputViewSetPlacement *)self transform];
  v7 = [v6 valueWithCGAffineTransform:v10];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v8;
}

- (CGRect)adjustBoundsForNotificationsWithOwner:(id)owner
{
  hostView = [owner hostView];
  [hostView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)inputAccessoryViewPadding
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t __68__UIInputViewSetPlacement_FloatingAssistantApplicator_applyChanges___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHideInputViewBackdrops:1];
  v2 = *(a1 + 32);

  return [v2 setHideInputView:1];
}

uint64_t __59__UIInputViewSetPlacement_FloatingApplicator_applyChanges___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPopoverRequired])
  {
    [*(a1 + 40) setHideInputViewBackdrops:1];
  }

  v2 = *(a1 + 40);

  return [v2 updateCombinedBackdropView];
}

@end