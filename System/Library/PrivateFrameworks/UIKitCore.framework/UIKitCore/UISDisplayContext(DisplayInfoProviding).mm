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
  displayEdgeInfo = [self displayEdgeInfo];
  homeAffordanceOverlayAllowance = [displayEdgeInfo homeAffordanceOverlayAllowance];
  [homeAffordanceOverlayAllowance doubleValue];
  v4 = v3;

  return v4;
}

- (double)safeAreaInsetsPortrait
{
  displayEdgeInfo = [self displayEdgeInfo];
  safeAreaInsetsPortrait = [displayEdgeInfo safeAreaInsetsPortrait];
  v3 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(safeAreaInsetsPortrait);

  return v3;
}

- (double)peripheryInsets
{
  displayEdgeInfo = [self displayEdgeInfo];
  peripheryInsets = [displayEdgeInfo peripheryInsets];
  v3 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(peripheryInsets);

  return v3;
}

- (double)systemMinimumMargin
{
  displayEdgeInfo = [self displayEdgeInfo];
  systemMinimumMargin = [displayEdgeInfo systemMinimumMargin];
  [systemMinimumMargin doubleValue];
  v4 = v3;

  return v4;
}

- (double)safeAreaInsetsLandscapeLeft
{
  displayEdgeInfo = [self displayEdgeInfo];
  safeAreaInsetsLandscapeLeft = [displayEdgeInfo safeAreaInsetsLandscapeLeft];

  displayEdgeInfo2 = [self displayEdgeInfo];
  v5 = displayEdgeInfo2;
  if (safeAreaInsetsLandscapeLeft)
  {
    safeAreaInsetsLandscapeLeft2 = [displayEdgeInfo2 safeAreaInsetsLandscapeLeft];
  }

  else
  {
    safeAreaInsetsLandscapeRight = [displayEdgeInfo2 safeAreaInsetsLandscapeRight];

    displayEdgeInfo3 = [self displayEdgeInfo];
    v5 = displayEdgeInfo3;
    if (safeAreaInsetsLandscapeRight)
    {
      [displayEdgeInfo3 safeAreaInsetsLandscapeRight];
    }

    else
    {
      [displayEdgeInfo3 safeAreaInsetsPortrait];
    }
    safeAreaInsetsLandscapeLeft2 = ;
  }

  v9 = safeAreaInsetsLandscapeLeft2;
  v10 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(safeAreaInsetsLandscapeLeft2);

  return v10;
}

- (double)safeAreaInsetsPortraitUpsideDown
{
  displayEdgeInfo = [self displayEdgeInfo];
  safeAreaInsetsPortraitUpsideDown = [displayEdgeInfo safeAreaInsetsPortraitUpsideDown];

  displayEdgeInfo2 = [self displayEdgeInfo];
  v5 = displayEdgeInfo2;
  if (safeAreaInsetsPortraitUpsideDown)
  {
    [displayEdgeInfo2 safeAreaInsetsPortraitUpsideDown];
  }

  else
  {
    [displayEdgeInfo2 safeAreaInsetsPortrait];
  }
  v6 = ;
  v7 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(v6);

  return v7;
}

- (double)safeAreaInsetsLandscapeRight
{
  displayEdgeInfo = [self displayEdgeInfo];
  safeAreaInsetsLandscapeRight = [displayEdgeInfo safeAreaInsetsLandscapeRight];

  displayEdgeInfo2 = [self displayEdgeInfo];
  v5 = displayEdgeInfo2;
  if (safeAreaInsetsLandscapeRight)
  {
    safeAreaInsetsLandscapeRight2 = [displayEdgeInfo2 safeAreaInsetsLandscapeRight];
  }

  else
  {
    safeAreaInsetsLandscapeLeft = [displayEdgeInfo2 safeAreaInsetsLandscapeLeft];

    displayEdgeInfo3 = [self displayEdgeInfo];
    v5 = displayEdgeInfo3;
    if (safeAreaInsetsLandscapeLeft)
    {
      [displayEdgeInfo3 safeAreaInsetsLandscapeLeft];
    }

    else
    {
      [displayEdgeInfo3 safeAreaInsetsPortrait];
    }
    safeAreaInsetsLandscapeRight2 = ;
  }

  v9 = safeAreaInsetsLandscapeRight2;
  v10 = UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper(safeAreaInsetsLandscapeRight2);

  return v10;
}

@end