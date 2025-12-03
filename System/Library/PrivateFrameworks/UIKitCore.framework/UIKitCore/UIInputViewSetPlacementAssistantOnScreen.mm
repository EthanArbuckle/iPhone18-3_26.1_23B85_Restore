@interface UIInputViewSetPlacementAssistantOnScreen
+ (id)infoWithPoint:(CGPoint)point isCompact:(BOOL)compact frame:(CGRect)frame position:(unint64_t)position;
+ (id)placementForDraggingAssistant;
- (BOOL)isFloatingAssistantView;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (Class)applicatorClassForKeyboard:(BOOL)keyboard;
- (UIEdgeInsets)inputAccessoryViewPadding;
- (double)inputAssistantViewHeightForInputViewSet:(id)set;
- (double)verticalOffset;
- (id)keyboardState;
- (id)subPlacements;
- (id)subPlacementsForInputViewSet:(id)set;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (unint64_t)indexForPurpose:(unint64_t)purpose;
@end

@implementation UIInputViewSetPlacementAssistantOnScreen

+ (id)placementForDraggingAssistant
{
  result = [self placement];
  *(result + 56) = 1;
  return result;
}

- (id)subPlacements
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v3 inputViews];
  v5 = [(UIInputViewSetPlacementAssistantOnScreen *)self subPlacementsForInputViewSet:inputViews];

  return v5;
}

- (id)subPlacementsForInputViewSet:(id)set
{
  v13[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v5 visualModeManager];
  if (([visualModeManager shouldShowWithinAppWindow] & 1) == 0)
  {

    goto LABEL_7;
  }

  inputAccessoryView = [setCopy inputAccessoryView];

  if (!inputAccessoryView)
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

- (unint64_t)indexForPurpose:(unint64_t)purpose
{
  v3 = 0;
  if (purpose > 99)
  {
    if (purpose - 102 < 2 || purpose == 100)
    {
      return v3;
    }

    if (purpose == 101)
    {
LABEL_8:
      subPlacements = [(UIInputViewSetPlacementAssistantOnScreen *)self subPlacements];
      v3 = subPlacements != 0;

      return v3;
    }

    return 1;
  }

  if (purpose > 4)
  {
    return 1;
  }

  if (((1 << purpose) & 0xD) == 0)
  {
    goto LABEL_8;
  }

  return v3;
}

+ (id)infoWithPoint:(CGPoint)point isCompact:(BOOL)compact frame:(CGRect)frame position:(unint64_t)position
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  compactCopy = compact;
  v21[4] = *MEMORY[0x1E69E9840];
  v20[0] = @"Origin";
  pointCopy = point;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:&pointCopy objCType:"{CGPoint=dd}"];
  v21[0] = v12;
  v20[1] = @"IsCompact";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:compactCopy];
  v21[1] = v13;
  v20[2] = 0x1EFB7ADF0;
  *v18 = x;
  *&v18[1] = y;
  *&v18[2] = width;
  *&v18[3] = height;
  v14 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v21[2] = v14;
  v20[3] = 0x1EFB7AE10;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v16;
}

- (Class)applicatorClassForKeyboard:(BOOL)keyboard
{
  [(UIInputViewSetPlacementAssistantOnScreen *)self isFloatingAssistantView];
  v3 = objc_opt_class();

  return v3;
}

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  setCopy = set;
  viewCopy = view;
  containerViewCopy = containerView;
  if ([setCopy isInputViewPlaceholder])
  {
    v20.receiver = self;
    v20.super_class = UIInputViewSetPlacementAssistantOnScreen;
    v11 = [(UIInputViewSetPlacement *)&v20 verticalConstraintForInputViewSet:setCopy hostView:viewCopy containerView:containerViewCopy];
  }

  else
  {
    inputAssistantView = [setCopy inputAssistantView];
    if (inputAssistantView && (v13 = inputAssistantView, [setCopy inputAssistantView], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isDescendantOfView:", containerViewCopy), v14, v13, v15))
    {
      bottomAnchor = [containerViewCopy bottomAnchor];
      inputAssistantView2 = [setCopy inputAssistantView];
      bottomAnchor2 = [inputAssistantView2 bottomAnchor];
      [(UIInputViewSetPlacementAssistantOnScreen *)self verticalOffset];
      v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
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
  isFloatingAssistantView = [(UIInputViewSetPlacementAssistantOnScreen *)self isFloatingAssistantView];
  result = *&UIFloatingAssistantBottomMargin;
  if (!isFloatingAssistantView)
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

- (double)inputAssistantViewHeightForInputViewSet:(id)set
{
  v6.receiver = self;
  v6.super_class = UIInputViewSetPlacementAssistantOnScreen;
  [(UIInputViewSetPlacement *)&v6 inputAssistantViewHeightForInputViewSet:set];
  v4 = v3;
  if (v3 > 0.0 && !+[UIKeyboard isInputSystemUI])
  {
    return v4 + UIHomeAffordanceHeight();
  }

  return v4;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  vCopy = v;
  setCopy = set;
  inputAssistantView = [setCopy inputAssistantView];
  [inputAssistantView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIInputViewSetPlacementAssistantOnScreen *)self inputAssistantViewHeightForInputViewSet:setCopy];
  v15 = v14;
  if (vCopy)
  {
    inputAccessoryView = [setCopy inputAccessoryView];

    if (inputAccessoryView)
    {
      inputAccessoryView2 = [setCopy inputAccessoryView];
      [inputAccessoryView2 intrinsicContentSize];
      v19 = v18;

      if (v19 == -1.0)
      {
        inputAccessoryView3 = [setCopy inputAccessoryView];
        [inputAccessoryView3 frame];
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
  keyboardState = [(UIInputViewSetPlacement *)&v5 keyboardState];
  [keyboardState setHasAccessoryView:self->_cachedSecondaryPlacement != 0];

  return keyboardState;
}

@end