@interface UIStatusBarLockScreenForegroundStyleAttributes
- (CGPoint)positionForMoonMaskInBounds:(CGRect)bounds;
- (UIEdgeInsets)edgeInsetsForBatteryInsides;
- (double)sizeForMoonMaskVisible:(BOOL)visible;
- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)activity;
@end

@implementation UIStatusBarLockScreenForegroundStyleAttributes

- (int64_t)activityIndicatorStyleWithSyncActivity:(BOOL)activity
{
  if (activity)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

- (UIEdgeInsets)edgeInsetsForBatteryInsides
{
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v2 <= 2.5)
  {
    v3 = 4.5;
  }

  else
  {
    v3 = 4.66666667;
  }

  v4 = 2.0;
  v5 = 2.0;
  v6 = 2.0;
  result.right = v3;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)sizeForMoonMaskVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v5 <= 2.5)
  {
    [(UIStatusBarForegroundStyleAttributes *)self scale];
    v8 = 15.0;
    if (visibleCopy)
    {
      v8 = 10.0;
    }

    v9 = 13.5;
    if (visibleCopy)
    {
      v9 = 9.5;
    }

    if (v7 > 1.5)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    result = 13.3333333;
    if (visibleCopy)
    {
      return 9.66666667;
    }
  }

  return result;
}

- (CGPoint)positionForMoonMaskInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIStatusBarForegroundStyleAttributes *)self scale];
  if (v8 <= 2.5)
  {
    [(UIStatusBarForegroundStyleAttributes *)self scale];
    if (v11 <= 1.5)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 1.5;
    }

    if (v11 <= 1.5)
    {
      v9 = 4.0;
    }

    else
    {
      v9 = 5.0;
    }
  }

  else
  {
    v9 = 5.66666667;
    v10 = 1.33333333;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v12 = v10 + CGRectGetMaxX(v15);
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

@end