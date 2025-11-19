@interface SBIconView(SwitcherIconZooming)
- (double)adjustedCrossfadeProgressForCrossfadeProgress:()SwitcherIconZooming;
- (id)matchingIconZoomingViewOverlay;
- (uint64_t)cleanUpAfterCrossfadeCompletion;
- (uint64_t)hasSameOriginatingIconAsForIconZoomingView:()SwitcherIconZooming;
- (uint64_t)iconImageAlignment;
- (uint64_t)shouldClipToBoundsWhenSizeChanges;
- (void)prepareToCrossfadeImageWithView:()SwitcherIconZooming;
@end

@implementation SBIconView(SwitcherIconZooming)

- (id)matchingIconZoomingViewOverlay
{
  v2 = [a1 matchingIconViewByAddingConfigurationOptions:262 removingConfigurationOptions:0];
  [v2 setCustomIconImageViewControllerPriority:2];
  [v2 setShowsSquareCorners:1];
  [v2 setEnabled:0];
  [v2 setIconContentScale:1.0];
  if ([a1 iconImageSizeMatchesBoundsSize])
  {
    [v2 setIconImageSizeMatchesBoundsSize:1];
    [a1 bounds];
    [v2 setBounds:?];
  }

  return v2;
}

- (uint64_t)shouldClipToBoundsWhenSizeChanges
{
  v2 = [a1 icon];
  v3 = [v2 gridSizeClass];
  v4 = *MEMORY[0x277D66508];
  if (v3 == *MEMORY[0x277D66508])
  {
    v7 = 0;
  }

  else
  {
    v5 = [a1 icon];
    v6 = [v5 gridSizeClass];
    v7 = [v6 isEqualToString:v4] ^ 1;
  }

  return v7;
}

- (uint64_t)iconImageAlignment
{
  v1 = [a1 customIconImageViewController];
  v2 = [v1 imageViewAlignment];

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)cleanUpAfterCrossfadeCompletion
{
  [a1 cleanupAfterCrossfade];

  return [a1 setIcon:0];
}

- (void)prepareToCrossfadeImageWithView:()SwitcherIconZooming
{
  v13 = a3;
  v4 = [a1 icon];
  v5 = [v4 gridSizeClass];
  v6 = *MEMORY[0x277D66508];

  if (v5 <= v6)
  {
    v12 = 3;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = SBSafeCast(v7, v4);
    v9 = [v8 activeWidget];
    v10 = [v9 containerBundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.mobileslideshow"];

    if (v11)
    {
      v12 = 11;
    }

    else
    {
      v12 = 3;
    }
  }

  [a1 prepareToCrossfadeImageWithView:v13 options:v12];
}

- (uint64_t)hasSameOriginatingIconAsForIconZoomingView:()SwitcherIconZooming
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 icon];
    v10 = [a1 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)adjustedCrossfadeProgressForCrossfadeProgress:()SwitcherIconZooming
{
  v4 = [a1 icon];
  v5 = [v4 gridSizeClass];
  v6 = v5;
  v7 = *MEMORY[0x277D66520];
  if (v5 == *MEMORY[0x277D66520])
  {
  }

  else
  {
    v8 = [a1 icon];
    v9 = [v8 gridSizeClass];
    v10 = [v9 isEqualToString:v7];

    if (!v10)
    {
      v11 = (a2 + -0.25) / 0.35;
      goto LABEL_6;
    }
  }

  v11 = (a2 + -0.05) * 4.0;
LABEL_6:
  if (v11 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11 + 0.0;
  }

  return fmin(v12, 1.0);
}

@end