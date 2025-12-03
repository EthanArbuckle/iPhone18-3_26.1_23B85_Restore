@interface UIViewController(Widgets)
- (uint64_t)wg_beginAppearanceTransitionIfNecessary:()Widgets animated:;
- (uint64_t)wg_endAppearanceTransitionIfNecessary;
@end

@implementation UIViewController(Widgets)

- (uint64_t)wg_beginAppearanceTransitionIfNecessary:()Widgets animated:
{
  result = [self isViewLoaded];
  if (result)
  {
    if (a3)
    {
      if (([self wg_isDisappearingOrDisappeared] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = [self wg_isAppearingOrAppeared];
      if (!result)
      {
        return result;
      }
    }

    [self beginAppearanceTransition:a3 animated:a4];
    return 1;
  }

  return result;
}

- (uint64_t)wg_endAppearanceTransitionIfNecessary
{
  result = [self isViewLoaded];
  if (result)
  {
    if (([self _appearState] & 0xFFFFFFFD) == 1)
    {
      [self endAppearanceTransition];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end