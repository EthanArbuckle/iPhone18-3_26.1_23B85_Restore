@interface UIView(ControlCenterInvocationHint)
- (double)SBSUI_sourceRectForControlCenterInvocationHint;
@end

@implementation UIView(ControlCenterInvocationHint)

- (double)SBSUI_sourceRectForControlCenterInvocationHint
{
  selfCopy = self;
  window = [self window];
  window2 = [selfCopy window];
  [window2 bounds];
  [window convertRect:selfCopy toView:?];
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
    selfCopy = [MEMORY[0x1E69DC938] currentDevice];
    if (![selfCopy userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_9:

      goto LABEL_16;
    }

    v14 = 1;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (v14)
  {
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v11;
  if (userInterfaceLayoutDirection == 1)
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