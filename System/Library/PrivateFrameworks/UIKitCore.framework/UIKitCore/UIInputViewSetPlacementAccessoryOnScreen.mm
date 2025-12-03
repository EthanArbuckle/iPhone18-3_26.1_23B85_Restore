@interface UIInputViewSetPlacementAccessoryOnScreen
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (id)applicatorInfoForOwner:(id)owner;
- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
@end

@implementation UIInputViewSetPlacementAccessoryOnScreen

- (id)verticalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  setCopy = set;
  viewCopy = view;
  containerViewCopy = containerView;
  _rootInputWindowController = [containerViewCopy _rootInputWindowController];
  placement = [_rootInputWindowController placement];

  subPlacements = [placement subPlacements];
  firstObject = [subPlacements firstObject];

  if (firstObject == self)
  {
    v17 = viewCopy;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    inputAccessoryView = [setCopy inputAccessoryView];
    v16 = inputAccessoryView;
    if (inputAccessoryView)
    {
      v17 = inputAccessoryView;
    }

    else
    {
      inputView = [setCopy inputView];
      v19 = inputView;
      if (inputView)
      {
        v20 = inputView;
      }

      else
      {
        v20 = viewCopy;
      }

      v17 = v20;
    }

    if (!v17)
    {
      goto LABEL_16;
    }
  }

  if ([v17 isDescendantOfView:containerViewCopy])
  {
    v21 = MEMORY[0x1E69977A0];
    inputAccessoryView2 = [setCopy inputAccessoryView];
    if (inputAccessoryView2)
    {
      v23 = 4;
    }

    else
    {
      v23 = 3;
    }

    v24 = [v21 constraintWithItem:containerViewCopy attribute:4 relatedBy:0 toItem:v17 attribute:v23 multiplier:1.0 constant:0.0];

    goto LABEL_17;
  }

LABEL_16:
  v24 = 0;
LABEL_17:

  return v24;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  vCopy = v;
  setCopy = set;
  v6 = setCopy;
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  if (vCopy)
  {
    inputAccessoryView = [setCopy inputAccessoryView];

    if (inputAccessoryView)
    {
      inputAccessoryView2 = [v6 inputAccessoryView];
      [inputAccessoryView2 intrinsicContentSize];
      v12 = v11;

      if (v12 == -1.0)
      {
        inputAccessoryView3 = [v6 inputAccessoryView];
        [inputAccessoryView3 frame];
        v12 = v14;
      }

      v8 = v8 + v12;
    }
  }

  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);

  v17 = v15;
  v18 = v16;
  v19 = v7;
  v20 = v8;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)applicatorInfoForOwner:(id)owner
{
  v22[3] = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  inputViewSet = [ownerCopy inputViewSet];
  if ([inputViewSet isInputViewPlaceholder])
  {
    inputViewSet2 = [ownerCopy inputViewSet];
    inputAccessoryView = [inputViewSet2 inputAccessoryView];

    if (inputAccessoryView)
    {
      hostView = [ownerCopy hostView];
      _rootInputWindowController = [hostView _rootInputWindowController];
      [_rootInputWindowController keyboardSizeFromExternalUpdate];
      v11 = v10;

      if (v11 > 0.0)
      {
        v21[0] = @"Alpha";
        v12 = MEMORY[0x1E696AD98];
        [(UIInputViewSetPlacement *)self alpha];
        v13 = [v12 numberWithDouble:?];
        v22[0] = v13;
        v21[1] = @"Transform";
        v14 = MEMORY[0x1E696B098];
        [(UIInputViewSetPlacement *)self transform];
        v15 = [v14 valueWithCGAffineTransform:v20];
        v22[1] = v15;
        v21[2] = @"Origin";
        v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, v11}];
        v22[2] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v19.receiver = self;
  v19.super_class = UIInputViewSetPlacementAccessoryOnScreen;
  v17 = [(UIInputViewSetPlacement *)&v19 applicatorInfoForOwner:ownerCopy];
LABEL_7:

  return v17;
}

@end