@interface UIInputViewSetPlacement
+ (id)deactivatedKeyboardPlacementWithCurrentPlacement:(id)a3;
+ (id)encodablePlacementsForXPC;
+ (id)placement;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresWindowBasedSafeAreaInsets;
- (CGAffineTransform)transform;
- (CGRect)adjustBoundsForNotificationsWithOwner:(id)a3;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (UIEdgeInsets)inputAccessoryViewPadding;
- (UIInputViewSetPlacement)initWithCoder:(id)a3;
- (UIInputViewSetPlacementDelegate)delegate;
- (double)inputAssistantViewHeightForInputViewSet:(id)a3;
- (id)applicatorInfoForOwner:(id)a3;
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (id)keyboardState;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (unint64_t)computeComparisonMask;
- (unint64_t)notificationsForTransitionToPlacement:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIInputViewSetPlacement

+ (id)placement
{
  if (objc_opt_class() == a1)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = NSStringFromClass(a1);
    [v3 raise:v4 format:{@"%@ is not meant to be instantiated directly", v5}];
  }

  v6 = objc_alloc_init(a1);

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
  v3 = [(UIInputViewSetPlacement *)self subPlacements];
  v4 = [v3 count] + 1;

  for (i = 0; i != 7; ++i)
  {
    v4 |= 1 << i << (7 * [(UIInputViewSetPlacement *)self indexForPurpose:computeComparisonMask_allPurposes[i]]+ 4);
  }

  return v4;
}

- (BOOL)requiresWindowBasedSafeAreaInsets
{
  v3 = [(UIInputViewSetPlacement *)self showsInputViews];
  if (v3)
  {
    LOBYTE(v3) = ![(UIInputViewSetPlacement *)self isUndocked];
  }

  return v3;
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
    v6 = [(UIInputViewSetPlacement *)self assistantView];
    [v5 setHasAssistantView:v6 != 0];
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

+ (id)deactivatedKeyboardPlacementWithCurrentPlacement:(id)a3
{
  v3 = a3;
  v4 = +[UIInputViewSetPlacementOffScreenDown placement];
  if (_AXSReduceMotionReduceSlideTransitionsEnabled())
  {
    v5 = v3[2](v3);
    v6 = [UIInputViewSetPlacementInvisible placementWithPlacement:v5];

    v4 = v6;
  }

  return v4;
}

- (UIInputViewSetPlacement)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacement;
  v5 = [(UIInputViewSetPlacement *)&v8 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"ExtendedHeight"];
    v5->_extendedHeight = v6;
    v5->_dirty = [v4 decodeBoolForKey:@"Dirty"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  extendedHeight = self->_extendedHeight;
  v6 = a3;
  *&v5 = extendedHeight;
  [v6 encodeFloat:@"ExtendedHeight" forKey:v5];
  [v6 encodeBool:self->_dirty forKey:@"Dirty"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_dirty)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (![(UIInputViewSetPlacement *)v4 isMemberOfClass:objc_opt_class()])
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

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a4 attribute:1 relatedBy:0 toItem:a5 attribute:1 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69977A0] constraintWithItem:a5 attribute:4 relatedBy:0 toItem:a4 attribute:4 multiplier:1.0 constant:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v5 = a4;
  if (a4)
  {
    v6 = a5;
    v7 = [v5 widthAnchor];
    v8 = [v6 widthAnchor];

    v5 = [v7 constraintEqualToAnchor:v8 multiplier:1.0];
  }

  return v5;
}

- (double)inputAssistantViewHeightForInputViewSet:(id)a3
{
  v3 = a3;
  v4 = [v3 inputAssistantView];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = [v3 inputAssistantView];
    v8 = [v7 isHidden];

    if ((v8 & 1) == 0)
    {
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v10 = [v9 systemInputAssistantViewController];

      v11 = [v3 inputAssistantView];
      v12 = [v11 traitCollection];
      [v10 preferredHeightForTraitCollection:v12];
      v5 = v13;
    }
  }

  return v5;
}

- (unint64_t)notificationsForTransitionToPlacement:(id)a3
{
  v4 = a3;
  v5 = [(UIInputViewSetPlacement *)self showsInputViews];
  v6 = [v4 showsInputViews];
  v7 = v6;
  v8 = 1;
  if (!v5 && (v6 & 1) == 0)
  {
    v9 = [(UIInputViewSetPlacement *)self inputViewWillAppear];
    v8 = v9 ^ [v4 inputViewWillAppear];
  }

  if ([(UIInputViewSetPlacement *)self isFloatingAssistantView])
  {
    v10 = [v4 isFloatingAssistantView] ^ 1;
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
    v11 = [v4 isFloating] ^ 1;
  }

  v12 = 0;
  if (![(UIInputViewSetPlacement *)self isEqual:v4]&& (((v8 | v10) ^ 1) & v11 & 1) == 0)
  {
    if ((v5 | v7 ^ 1))
    {
      if (((!v5 | v7) & 1) == 0)
      {
        goto LABEL_21;
      }

      if ((!v5 | v7 ^ 1))
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

      if (-[UIInputViewSetPlacement showsKeyboard](self, "showsKeyboard") && ([v4 showsKeyboard] & 1) == 0 && (objc_msgSend(v4, "accessoryViewWillAppear") & 1) != 0)
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

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v4 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (+[UIInputWindowController useMetronomeTracking])
  {
    [v6 onscreenSizeOfViewsInSetIncludingIAV:v4];
    v8 = v7;
    v10 = v9;
    if (![(UIInputViewSetPlacement *)self showsKeyboard]&& ![(UIInputViewSetPlacement *)self isUndocked])
    {
      v10 = 0.0;
    }

    goto LABEL_60;
  }

  v11 = [v6 inputView];
  [v11 intrinsicContentSize];
  v8 = v12;
  v10 = v13;
  [v11 _findAutolayoutHeightConstraint];
  if (v14 != -1.0)
  {
    v10 = v14;
  }

  if (v8 == 0.0 && v11 != 0)
  {
    v8 = -1.0;
  }

  if (v8 == -1.0)
  {
    [v11 frame];
    v8 = v16;
  }

  if (v10 != -1.0)
  {
    goto LABEL_35;
  }

  [v11 frame];
  v10 = v17;
  if (v17 != 0.0)
  {
    goto LABEL_35;
  }

  if (![v6 isCustomInputView])
  {
    goto LABEL_35;
  }

  v18 = [v11 constraints];
  v19 = [v18 count];

  if (!v19)
  {
    goto LABEL_35;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = [v11 constraints];
  v21 = [v20 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  v51 = v4;
  v23 = *v53;
  do
  {
    v24 = 0;
    do
    {
      if (*v53 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v52 + 1) + 8 * v24);
      v26 = [v25 firstItem];
      if (v26 != v11)
      {
        goto LABEL_27;
      }

      v27 = [v25 secondItem];
      if (v27)
      {

LABEL_27:
        goto LABEL_28;
      }

      v28 = [v25 firstAttribute];

      if (v28 == 8)
      {
        [v25 constant];
        v10 = v30;
        goto LABEL_33;
      }

LABEL_28:
      ++v24;
    }

    while (v22 != v24);
    v29 = [v20 countByEnumeratingWithState:&v52 objects:v56 count:16];
    v22 = v29;
  }

  while (v29);
LABEL_33:
  LODWORD(v4) = v51;
LABEL_34:

LABEL_35:
  v31 = [v6 keyboard];
  if (v31)
  {
    v32 = v31;
    v33 = +[UIKeyboardImpl activeInstance];
    if ([v33 isMinimized])
    {

      goto LABEL_43;
    }

    if ([(UIInputViewSetPlacement *)self showsKeyboard])
    {

      goto LABEL_44;
    }

    v50 = [(UIInputViewSetPlacement *)self isUndocked];

    if (v50)
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
  v34 = [v6 inputAssistantView];
  if (!v34 || v10 == 0.0 && +[UIKeyboard isInputSystemUI])
  {
  }

  else
  {
    v35 = +[UIKeyboard usesInputSystemUI];

    if (!v35)
    {
      v36 = [v6 inputAssistantView];
      [v36 intrinsicContentSize];
      v38 = v37;

      if (v38 == -1.0)
      {
        v38 = 0.0;
        if (!+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout])
        {
          if ([(UIInputViewSetPlacement *)self showsInputViews])
          {
            [(UIInputViewSetPlacement *)self inputAssistantViewHeightForInputViewSet:v6];
            v38 = v39;
          }
        }
      }

      v10 = v10 + v38;
    }
  }

  if (v4)
  {
    v40 = [v6 inputAccessoryView];

    if (v40)
    {
      v41 = [v6 inputAccessoryView];
      [v41 intrinsicContentSize];
      v43 = v42;

      if (v43 == -1.0)
      {
        v44 = [v6 inputAccessoryView];
        [v44 frame];
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

- (id)applicatorInfoForOwner:(id)a3
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

- (CGRect)adjustBoundsForNotificationsWithOwner:(id)a3
{
  v3 = [a3 hostView];
  [v3 bounds];
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