@interface UIView(ControlCenterInvocationHint)
- (double)SBSUI_sourceRectForControlCenterInvocationHint;
@end

@implementation UIView(ControlCenterInvocationHint)

- (double)SBSUI_sourceRectForControlCenterInvocationHint
{
  v1 = a1;
  v2 = [a1 window];
  v3 = [v1 window];
  [v3 bounds];
  [v2 convertRect:v1 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    v13 = v12;
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v14 = 0;
    }

    else
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        if (v13)
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      v14 = v13 ^ 1;
    }
  }

  else
  {
    v1 = [MEMORY[0x1E69DC938] currentDevice];
    if (![v1 userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_9:

      goto LABEL_16;
    }

    v14 = 1;
  }

  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v14)
  {
  }

  if ((v16 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    MinX = CGRectGetMidX(v24) + -32.0;
    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    CGRectGetMaxY(v25);
    return MinX;
  }

LABEL_16:
  v17 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v11;
  if (v17 == 1)
  {
    MinX = CGRectGetMinX(*&v18);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v18) + -64.0;
  }

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  CGRectGetMinY(v26);
  return MinX;
}

@end