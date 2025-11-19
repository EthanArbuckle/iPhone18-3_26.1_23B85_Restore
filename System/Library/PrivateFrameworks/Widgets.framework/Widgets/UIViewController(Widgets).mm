@interface UIViewController(Widgets)
- (uint64_t)wg_beginAppearanceTransitionIfNecessary:()Widgets animated:;
- (uint64_t)wg_endAppearanceTransitionIfNecessary;
@end

@implementation UIViewController(Widgets)

- (uint64_t)wg_beginAppearanceTransitionIfNecessary:()Widgets animated:
{
  result = [a1 isViewLoaded];
  if (result)
  {
    if (a3)
    {
      if (([a1 wg_isDisappearingOrDisappeared] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = [a1 wg_isAppearingOrAppeared];
      if (!result)
      {
        return result;
      }
    }

    [a1 beginAppearanceTransition:a3 animated:a4];
    return 1;
  }

  return result;
}

- (uint64_t)wg_endAppearanceTransitionIfNecessary
{
  result = [a1 isViewLoaded];
  if (result)
  {
    if (([a1 _appearState] & 0xFFFFFFFD) == 1)
    {
      [a1 endAppearanceTransition];
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