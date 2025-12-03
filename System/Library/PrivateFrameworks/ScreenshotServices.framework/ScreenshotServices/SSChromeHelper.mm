@interface SSChromeHelper
+ (CGRect)availableRectForFullscreenContent:(CGRect)result layoutBounds:(CGRect)bounds bleedToBottom:(BOOL)bottom topBarHeight:(double)height bottomBarHeight:(double)barHeight userInterfaceIdiom:(int64_t)idiom multipleScreenshots:(BOOL)screenshots;
+ (double)cropsCornerWidth;
+ (double)cropsHandleOutset;
+ (double)roundedCropsCornerRadius;
+ (double)screenshotBottomMargin:(int64_t)margin;
+ (double)screenshotTopMargin:(int64_t)margin;
+ (double)screenshotTopMarginPhone;
+ (double)widthForOpacityControlInView:(id)view withContentSwitcher:(id)switcher;
+ (id)createFixedSpaceBarButtonItemWithWidth:(double)width;
+ (id)separatorView;
+ (int)statusBarVisibilityForTraitCollection:(id)collection isPortrait:(BOOL)portrait;
+ (void)configureNavigationBarAppearance:(id)appearance;
@end

@implementation SSChromeHelper

+ (void)configureNavigationBarAppearance:(id)appearance
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB650];
  v3 = MEMORY[0x1E69DC888];
  appearanceCopy = appearance;
  whiteColor = [v3 whiteColor];
  v13[0] = whiteColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [appearanceCopy setTitleTextAttributes:v6];

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [appearanceCopy setShadowImage:v8];

  v9 = [MEMORY[0x1E69DC730] effectWithStyle:1102];
  v11 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [appearanceCopy setBackgroundEffects:v10];

  [appearanceCopy setAlpha:1.0];
  [appearanceCopy setBarTintColor:0];
  [appearanceCopy setOpaque:0];
  [appearanceCopy setTranslucent:1];
  [appearanceCopy setBackgroundImage:v7 forBarMetrics:0];
}

+ (id)createFixedSpaceBarButtonItemWithWidth:(double)width
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:width];

  return v4;
}

+ (id)separatorView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 _setOverrideUserInterfaceStyle:2];
  v3 = +[SSChromeHelper barSeparatorColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

+ (double)cropsCornerWidth
{
  v2 = _SSScreenshotsRedesign2025Enabled();
  result = 4.0;
  if (v2)
  {
    return 2.0;
  }

  return result;
}

+ (double)cropsHandleOutset
{
  v2 = _SSScreenshotsRedesign2025Enabled();
  result = 0.0;
  if (v2)
  {
    return 2.0;
  }

  return result;
}

+ (double)roundedCropsCornerRadius
{
  v2 = _SSScreenshotsRedesign2025Enabled();
  result = 0.0;
  if (v2)
  {
    return 28.0;
  }

  return result;
}

+ (CGRect)availableRectForFullscreenContent:(CGRect)result layoutBounds:(CGRect)bounds bleedToBottom:(BOOL)bottom topBarHeight:(double)height bottomBarHeight:(double)barHeight userInterfaceIdiom:(int64_t)idiom multipleScreenshots:(BOOL)screenshots
{
  width = result.size.width;
  if (!bottom)
  {
    screenshotsCopy = screenshots;
    height = bounds.size.height;
    v13 = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v16 = *MEMORY[0x1E69DDCE0] + height;
    v26 = *(MEMORY[0x1E69DDCE0] + 16) + barHeight;
    [SSChromeHelper screenshotTopMargin:idiom];
    v18 = v17;
    [SSChromeHelper screenshotBottomMargin:idiom];
    v20 = v19;
    if (!idiom && screenshotsCopy)
    {
      [objc_opt_class() countIndicatorOffset];
      v20 = v20 + v21 * 2.0;
    }

    v22 = v16 + v18;
    if (idiom == 1)
    {
      v23 = width * 0.115;
    }

    else
    {
      v23 = v28;
    }

    if (idiom == 1)
    {
      v24 = width * 0.115;
    }

    else
    {
      v24 = v27;
    }

    result.origin.x = x + v24;
    result.origin.y = y + v22;
    width = v13 - (v24 + v23);
    result.size.height = height - (v22 + v26 + v20);
  }

  v25 = width;
  result.size.width = v25;
  return result;
}

+ (double)screenshotTopMargin:(int64_t)margin
{
  if (margin == 1)
  {
    +[SSChromeHelper screenshotTopBottomMarginPad];
  }

  else
  {
    +[SSChromeHelper screenshotTopMarginPhone];
  }

  return result;
}

+ (double)screenshotBottomMargin:(int64_t)margin
{
  if (margin == 1)
  {
    +[SSChromeHelper screenshotTopBottomMarginPad];
  }

  else
  {
    +[SSChromeHelper screenshotBottomMarginPhone];
  }

  return result;
}

+ (double)screenshotTopMarginPhone
{
  v2 = _SSScreenshotsRedesign2025Enabled();
  result = 30.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

+ (double)widthForOpacityControlInView:(id)view withContentSwitcher:(id)switcher
{
  switcherCopy = switcher;
  viewCopy = view;
  +[SSChromeHelper barButtonItemsLeftOfOpacitySlider];
  v9 = v8;
  +[SSChromeHelper defaultBarButtonWidth];
  v11 = v10;
  [SSChromeHelper widthForContentSwitcher:switcherCopy forView:viewCopy];
  v13 = v12;

  +[SSChromeHelper contentSwitcherPadding];
  v15 = v13 + v11 * v9 + v14;
  [self defaultBarButtonSpacing];
  v17 = v15 + v16 * 2.0;
  +[SSVellumOpacityControl preferredWidth];
  v19 = v18;
  [viewCopy bounds];
  v21 = v20;

  return fmin(v19, v21 * 0.5 - v17);
}

+ (int)statusBarVisibilityForTraitCollection:(id)collection isPortrait:(BOOL)portrait
{
  if (portrait)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if ([collection userInterfaceIdiom])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

@end