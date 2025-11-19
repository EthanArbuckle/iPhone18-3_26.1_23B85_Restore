@interface UIInputViewSetPlacementAssistantOnScreen
+ (id)infoWithPoint:(CGPoint)a3 isCompact:(BOOL)a4 frame:(CGRect)a5 position:(unint64_t)a6;
+ (id)placementForDraggingAssistant;
- (BOOL)isFloatingAssistantView;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (Class)applicatorClassForKeyboard:(BOOL)a3;
- (UIEdgeInsets)inputAccessoryViewPadding;
- (double)inputAssistantViewHeightForInputViewSet:(id)a3;
- (double)verticalOffset;
- (id)keyboardState;
- (id)subPlacements;
- (id)subPlacementsForInputViewSet:(id)a3;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (unint64_t)indexForPurpose:(unint64_t)a3;
@end

@implementation UIInputViewSetPlacementAssistantOnScreen

+ (id)placementForDraggingAssistant
{
  result = [a1 placement];
  *(result + 56) = 1;
  return result;
}

- (id)subPlacements
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 inputViews];
  v5 = [(UIInputViewSetPlacementAssistantOnScreen *)self subPlacementsForInputViewSet:v4];

  return v5;
}

- (id)subPlacementsForInputViewSet:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 visualModeManager];
  if (([v6 shouldShowWithinAppWindow] & 1) == 0)
  {

    goto LABEL_7;
  }

  v7 = [v4 inputAccessoryView];

  if (!v7)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  cachedSecondaryPlacement = self->_cachedSecondaryPlacement;
  if (!cachedSecondaryPlacement)
  {
    v9 = +[UIInputViewSetPlacementAccessoryOnScreen placement];
    v10 = self->_cachedSecondaryPlacement;
    self->_cachedSecondaryPlacement = v9;

    cachedSecondaryPlacement = self->_cachedSecondaryPlacement;
  }

  v13[0] = cachedSecondaryPlacement;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
LABEL_8:

  return v11;
}

- (unint64_t)indexForPurpose:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 99)
  {
    if (a3 - 102 < 2 || a3 == 100)
    {
      return v3;
    }

    if (a3 == 101)
    {
LABEL_8:
      v4 = [(UIInputViewSetPlacementAssistantOnScreen *)self subPlacements];
      v3 = v4 != 0;

      return v3;
    }

    return 1;
  }

  if (a3 > 4)
  {
    return 1;
  }

  if (((1 << a3) & 0xD) == 0)
  {
    goto LABEL_8;
  }

  return v3;
}

+ (id)infoWithPoint:(CGPoint)a3 isCompact:(BOOL)a4 frame:(CGRect)a5 position:(unint64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v21[4] = *MEMORY[0x1E69E9840];
  v20[0] = @"Origin";
  v19 = a3;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:&v19 objCType:"{CGPoint=dd}"];
  v21[0] = v12;
  v20[1] = @"IsCompact";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v21[1] = v13;
  v20[2] = 0x1EFB7ADF0;
  *v18 = x;
  *&v18[1] = y;
  *&v18[2] = width;
  *&v18[3] = height;
  v14 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v21[2] = v14;
  v20[3] = 0x1EFB7AE10;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v16;
}

- (Class)applicatorClassForKeyboard:(BOOL)a3
{
  [(UIInputViewSetPlacementAssistantOnScreen *)self isFloatingAssistantView];
  v3 = objc_opt_class();

  return v3;
}

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isInputViewPlaceholder])
  {
    v20.receiver = self;
    v20.super_class = UIInputViewSetPlacementAssistantOnScreen;
    v11 = [(UIInputViewSetPlacement *)&v20 verticalConstraintForInputViewSet:v8 hostView:v9 containerView:v10];
  }

  else
  {
    v12 = [v8 inputAssistantView];
    if (v12 && (v13 = v12, [v8 inputAssistantView], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isDescendantOfView:", v10), v14, v13, v15))
    {
      v16 = [v10 bottomAnchor];
      v17 = [v8 inputAssistantView];
      v18 = [v17 bottomAnchor];
      [(UIInputViewSetPlacementAssistantOnScreen *)self verticalOffset];
      v11 = [v16 constraintEqualToAnchor:v18 constant:?];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (double)verticalOffset
{
  v2 = [(UIInputViewSetPlacementAssistantOnScreen *)self isFloatingAssistantView];
  result = *&UIFloatingAssistantBottomMargin;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)isFloatingAssistantView
{
  if (+[UIKeyboard isMajelEnabled]|| (_os_feature_enabled_impl() & 1) != 0 || (v2 = _os_feature_enabled_impl()) != 0)
  {
    LOBYTE(v2) = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  return v2;
}

- (double)inputAssistantViewHeightForInputViewSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIInputViewSetPlacementAssistantOnScreen;
  [(UIInputViewSetPlacement *)&v6 inputAssistantViewHeightForInputViewSet:a3];
  v4 = v3;
  if (v3 > 0.0 && !+[UIKeyboard isInputSystemUI])
  {
    return v4 + UIHomeAffordanceHeight();
  }

  return v4;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 inputAssistantView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIInputViewSetPlacementAssistantOnScreen *)self inputAssistantViewHeightForInputViewSet:v6];
  v15 = v14;
  if (v4)
  {
    v16 = [v6 inputAccessoryView];

    if (v16)
    {
      v17 = [v6 inputAccessoryView];
      [v17 intrinsicContentSize];
      v19 = v18;

      if (v19 == -1.0)
      {
        v20 = [v6 inputAccessoryView];
        [v20 frame];
        v19 = v21;
      }

      v15 = v15 + v19;
    }
  }

  if ([(UIInputViewSetPlacementAssistantOnScreen *)self isFloatingAssistantView])
  {
    if (UIInputAssistantViewIsHidden())
    {
      v13 = 0.0;
      v9 = -1.0;
    }

    v11 = 1.0;
  }

  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
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

- (id)keyboardState
{
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementAssistantOnScreen;
  v3 = [(UIInputViewSetPlacement *)&v5 keyboardState];
  [v3 setHasAccessoryView:self->_cachedSecondaryPlacement != 0];

  return v3;
}

@end