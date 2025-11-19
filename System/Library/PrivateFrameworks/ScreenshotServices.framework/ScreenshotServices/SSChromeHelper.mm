@interface SSChromeHelper
+ (CGRect)availableRectForFullscreenContent:(CGRect)result layoutBounds:(CGRect)a4 bleedToBottom:(BOOL)a5 topBarHeight:(double)a6 bottomBarHeight:(double)a7 userInterfaceIdiom:(int64_t)a8 multipleScreenshots:(BOOL)a9;
+ (double)cropsCornerWidth;
+ (double)cropsHandleOutset;
+ (double)roundedCropsCornerRadius;
+ (double)screenshotBottomMargin:(int64_t)a3;
+ (double)screenshotTopMargin:(int64_t)a3;
+ (double)screenshotTopMarginPhone;
+ (double)widthForOpacityControlInView:(id)a3 withContentSwitcher:(id)a4;
+ (id)createFixedSpaceBarButtonItemWithWidth:(double)a3;
+ (id)separatorView;
+ (int)statusBarVisibilityForTraitCollection:(id)a3 isPortrait:(BOOL)a4;
+ (void)configureNavigationBarAppearance:(id)a3;
@end

@implementation SSChromeHelper

+ (void)configureNavigationBarAppearance:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB650];
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 whiteColor];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v4 setTitleTextAttributes:v6];

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v4 setShadowImage:v8];

  v9 = [MEMORY[0x1E69DC730] effectWithStyle:1102];
  v11 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v4 setBackgroundEffects:v10];

  [v4 setAlpha:1.0];
  [v4 setBarTintColor:0];
  [v4 setOpaque:0];
  [v4 setTranslucent:1];
  [v4 setBackgroundImage:v7 forBarMetrics:0];
}

+ (id)createFixedSpaceBarButtonItemWithWidth:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:a3];

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

+ (CGRect)availableRectForFullscreenContent:(CGRect)result layoutBounds:(CGRect)a4 bleedToBottom:(BOOL)a5 topBarHeight:(double)a6 bottomBarHeight:(double)a7 userInterfaceIdiom:(int64_t)a8 multipleScreenshots:(BOOL)a9
{
  width = result.size.width;
  if (!a5)
  {
    v10 = a9;
    height = a4.size.height;
    v13 = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v28 = *(MEMORY[0x1E69DDCE0] + 24);
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v16 = *MEMORY[0x1E69DDCE0] + a6;
    v26 = *(MEMORY[0x1E69DDCE0] + 16) + a7;
    [SSChromeHelper screenshotTopMargin:a8];
    v18 = v17;
    [SSChromeHelper screenshotBottomMargin:a8];
    v20 = v19;
    if (!a8 && v10)
    {
      [objc_opt_class() countIndicatorOffset];
      v20 = v20 + v21 * 2.0;
    }

    v22 = v16 + v18;
    if (a8 == 1)
    {
      v23 = width * 0.115;
    }

    else
    {
      v23 = v28;
    }

    if (a8 == 1)
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

+ (double)screenshotTopMargin:(int64_t)a3
{
  if (a3 == 1)
  {
    +[SSChromeHelper screenshotTopBottomMarginPad];
  }

  else
  {
    +[SSChromeHelper screenshotTopMarginPhone];
  }

  return result;
}

+ (double)screenshotBottomMargin:(int64_t)a3
{
  if (a3 == 1)
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

+ (double)widthForOpacityControlInView:(id)a3 withContentSwitcher:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[SSChromeHelper barButtonItemsLeftOfOpacitySlider];
  v9 = v8;
  +[SSChromeHelper defaultBarButtonWidth];
  v11 = v10;
  [SSChromeHelper widthForContentSwitcher:v6 forView:v7];
  v13 = v12;

  +[SSChromeHelper contentSwitcherPadding];
  v15 = v13 + v11 * v9 + v14;
  [a1 defaultBarButtonSpacing];
  v17 = v15 + v16 * 2.0;
  +[SSVellumOpacityControl preferredWidth];
  v19 = v18;
  [v7 bounds];
  v21 = v20;

  return fmin(v19, v21 * 0.5 - v17);
}

+ (int)statusBarVisibilityForTraitCollection:(id)a3 isPortrait:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if ([a3 userInterfaceIdiom])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

@end