@interface UISDisplayContext(DisplayInfoProviding)
- (double)homeAffordanceOverlayAllowance;
- (double)peripheryInsets;
- (double)safeAreaInsetsLandscapeLeft;
- (double)safeAreaInsetsLandscapeRight;
- (double)safeAreaInsetsPortrait;
- (double)safeAreaInsetsPortraitUpsideDown;
- (double)systemMinimumMargin;
@end

@implementation UISDisplayContext(DisplayInfoProviding)

- (double)homeAffordanceOverlayAllowance
{
  v1 = [a1 displayEdgeInfo];
  v2 = [v1 homeAffordanceOverlayAllowance];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safeAreaInsetsPortrait
{
  v1 = [a1 displayEdgeInfo];
  v2 = [v1 safeAreaInsetsPortrait];
  v3 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(v2);

  return v3;
}

- (double)peripheryInsets
{
  v1 = [a1 displayEdgeInfo];
  v2 = [v1 peripheryInsets];
  v3 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(v2);

  return v3;
}

- (double)systemMinimumMargin
{
  v1 = [a1 displayEdgeInfo];
  v2 = [v1 systemMinimumMargin];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)safeAreaInsetsLandscapeLeft
{
  v2 = [a1 displayEdgeInfo];
  v3 = [v2 safeAreaInsetsLandscapeLeft];

  v4 = [a1 displayEdgeInfo];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 safeAreaInsetsLandscapeLeft];
  }

  else
  {
    v7 = [v4 safeAreaInsetsLandscapeRight];

    v8 = [a1 displayEdgeInfo];
    v5 = v8;
    if (v7)
    {
      [v8 safeAreaInsetsLandscapeRight];
    }

    else
    {
      [v8 safeAreaInsetsPortrait];
    }
    v6 = ;
  }

  v9 = v6;
  v10 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(v6);

  return v10;
}

- (double)safeAreaInsetsPortraitUpsideDown
{
  v2 = [a1 displayEdgeInfo];
  v3 = [v2 safeAreaInsetsPortraitUpsideDown];

  v4 = [a1 displayEdgeInfo];
  v5 = v4;
  if (v3)
  {
    [v4 safeAreaInsetsPortraitUpsideDown];
  }

  else
  {
    [v4 safeAreaInsetsPortrait];
  }
  v6 = ;
  v7 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(v6);

  return v7;
}

- (double)safeAreaInsetsLandscapeRight
{
  v2 = [a1 displayEdgeInfo];
  v3 = [v2 safeAreaInsetsLandscapeRight];

  v4 = [a1 displayEdgeInfo];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 safeAreaInsetsLandscapeRight];
  }

  else
  {
    v7 = [v4 safeAreaInsetsLandscapeLeft];

    v8 = [a1 displayEdgeInfo];
    v5 = v8;
    if (v7)
    {
      [v8 safeAreaInsetsLandscapeLeft];
    }

    else
    {
      [v8 safeAreaInsetsPortrait];
    }
    v6 = ;
  }

  v9 = v6;
  v10 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(v6);

  return v10;
}

@end