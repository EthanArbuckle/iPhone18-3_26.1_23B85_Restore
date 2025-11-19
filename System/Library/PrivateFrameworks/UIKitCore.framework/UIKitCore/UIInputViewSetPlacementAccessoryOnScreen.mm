@interface UIInputViewSetPlacementAccessoryOnScreen
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (id)applicatorInfoForOwner:(id)a3;
- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
@end

@implementation UIInputViewSetPlacementAccessoryOnScreen

- (id)verticalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 _rootInputWindowController];
  v12 = [v11 placement];

  v13 = [v12 subPlacements];
  v14 = [v13 firstObject];

  if (v14 == self)
  {
    v17 = v9;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = [v8 inputAccessoryView];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v18 = [v8 inputView];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v9;
      }

      v17 = v20;
    }

    if (!v17)
    {
      goto LABEL_16;
    }
  }

  if ([v17 isDescendantOfView:v10])
  {
    v21 = MEMORY[0x1E69977A0];
    v22 = [v8 inputAccessoryView];
    if (v22)
    {
      v23 = 4;
    }

    else
    {
      v23 = 3;
    }

    v24 = [v21 constraintWithItem:v10 attribute:4 relatedBy:0 toItem:v17 attribute:v23 multiplier:1.0 constant:0.0];

    goto LABEL_17;
  }

LABEL_16:
  v24 = 0;
LABEL_17:

  return v24;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  if (v4)
  {
    v9 = [v5 inputAccessoryView];

    if (v9)
    {
      v10 = [v6 inputAccessoryView];
      [v10 intrinsicContentSize];
      v12 = v11;

      if (v12 == -1.0)
      {
        v13 = [v6 inputAccessoryView];
        [v13 frame];
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

- (id)applicatorInfoForOwner:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 inputViewSet];
  if ([v5 isInputViewPlaceholder])
  {
    v6 = [v4 inputViewSet];
    v7 = [v6 inputAccessoryView];

    if (v7)
    {
      v8 = [v4 hostView];
      v9 = [v8 _rootInputWindowController];
      [v9 keyboardSizeFromExternalUpdate];
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
  v17 = [(UIInputViewSetPlacement *)&v19 applicatorInfoForOwner:v4];
LABEL_7:

  return v17;
}

@end