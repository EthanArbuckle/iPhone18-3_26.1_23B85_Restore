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
  v2 = [self matchingIconViewByAddingConfigurationOptions:262 removingConfigurationOptions:0];
  [v2 setCustomIconImageViewControllerPriority:2];
  [v2 setShowsSquareCorners:1];
  [v2 setEnabled:0];
  [v2 setIconContentScale:1.0];
  if ([self iconImageSizeMatchesBoundsSize])
  {
    [v2 setIconImageSizeMatchesBoundsSize:1];
    [self bounds];
    [v2 setBounds:?];
  }

  return v2;
}

- (uint64_t)shouldClipToBoundsWhenSizeChanges
{
  icon = [self icon];
  gridSizeClass = [icon gridSizeClass];
  v4 = *MEMORY[0x277D66508];
  if (gridSizeClass == *MEMORY[0x277D66508])
  {
    v7 = 0;
  }

  else
  {
    icon2 = [self icon];
    gridSizeClass2 = [icon2 gridSizeClass];
    v7 = [gridSizeClass2 isEqualToString:v4] ^ 1;
  }

  return v7;
}

- (uint64_t)iconImageAlignment
{
  customIconImageViewController = [self customIconImageViewController];
  imageViewAlignment = [customIconImageViewController imageViewAlignment];

  if (imageViewAlignment)
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
  [self cleanupAfterCrossfade];

  return [self setIcon:0];
}

- (void)prepareToCrossfadeImageWithView:()SwitcherIconZooming
{
  v13 = a3;
  icon = [self icon];
  gridSizeClass = [icon gridSizeClass];
  v6 = *MEMORY[0x277D66508];

  if (gridSizeClass <= v6)
  {
    v12 = 3;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = SBSafeCast(v7, icon);
    activeWidget = [v8 activeWidget];
    containerBundleIdentifier = [activeWidget containerBundleIdentifier];
    v11 = [containerBundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];

    if (v11)
    {
      v12 = 11;
    }

    else
    {
      v12 = 3;
    }
  }

  [self prepareToCrossfadeImageWithView:v13 options:v12];
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
    icon = [v8 icon];
    v10 = [self isEqual:icon];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)adjustedCrossfadeProgressForCrossfadeProgress:()SwitcherIconZooming
{
  icon = [self icon];
  gridSizeClass = [icon gridSizeClass];
  v6 = gridSizeClass;
  v7 = *MEMORY[0x277D66520];
  if (gridSizeClass == *MEMORY[0x277D66520])
  {
  }

  else
  {
    icon2 = [self icon];
    gridSizeClass2 = [icon2 gridSizeClass];
    v10 = [gridSizeClass2 isEqualToString:v7];

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