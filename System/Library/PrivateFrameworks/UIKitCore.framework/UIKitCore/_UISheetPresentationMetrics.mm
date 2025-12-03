@interface _UISheetPresentationMetrics
+ (id)_defaultMetrics;
- (BOOL)shouldScaleDownBehindDescendantsForContainer:(id)container withBounds:(CGRect)bounds;
- (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)size;
- (CGSize)formSheetSizeForViewController:(id)controller windowSize:(CGSize)size screenSize:(CGSize)screenSize;
- (id)_init;
- (id)transitionSpringParametersHighSpeed:(BOOL)speed;
@end

@implementation _UISheetPresentationMetrics

+ (id)_defaultMetrics
{
  if (qword_1ED49C080 != -1)
  {
    dispatch_once(&qword_1ED49C080, &__block_literal_global_478);
  }

  v3 = _MergedGlobals_15_7;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _UISheetPresentationMetrics;
  return [(_UISheetPresentationMetrics *)&v3 init];
}

- (id)transitionSpringParametersHighSpeed:(BOOL)speed
{
  speedCopy = speed;
  if (qword_1ED49C098 != -1)
  {
    dispatch_once(&qword_1ED49C098, &__block_literal_global_3_11);
  }

  v4 = 2;
  if (speedCopy)
  {
    v4 = 3;
  }

  v5 = _MergedGlobals_15_7[v4];

  return v5;
}

- (CGSize)formSheetSizeForViewController:(id)controller windowSize:(CGSize)size screenSize:(CGSize)screenSize
{
  height = screenSize.height;
  width = screenSize.width;
  v7 = size.height;
  v8 = size.width;
  controllerCopy = controller;
  [controllerCopy preferredContentSize];
  v12 = v11;
  v14 = v13;
  [(_UISheetPresentationMetrics *)self defaultFormSheetSizeForScreenSize:width, height];
  v17 = v15;
  v18 = v16;
  if (v12 <= 0.0 || v14 <= 0.0)
  {
    if (v15 <= 0.0 || v16 <= 0.0 || (_UISheetPresentationControllerStylesSheetsAsCards(controllerCopy) & 1) == 0 && (v17 >= v8 || v18 >= v7))
    {
      v17 = v8;
      v18 = v7;
    }
  }

  else
  {
    v17 = v12;
    v18 = v14;
  }

  v19 = v17;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [objc_opt_self() mainScreen];
  _wantsWideContentMargins = [mainScreen _wantsWideContentMargins];

  if (_wantsWideContentMargins)
  {
    v7 = 394.0;
    v8 = 414.0;
  }

  else
  {
    v9 = fmax(width, height);
    if (v9 >= 1590.0)
    {
      v7 = 680.0;
      v8 = 620.0;
    }

    else if (v9 <= 1024.0)
    {
      v7 = 600.0;
      v8 = 540.0;
    }

    else
    {
      v7 = 640.0;
      v8 = 580.0;
    }
  }

  result.height = v7;
  result.width = v8;
  return result;
}

- (BOOL)shouldScaleDownBehindDescendantsForContainer:(id)container withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  window = [container window];
  screen = [window screen];
  [screen bounds];
  v8 = height == v7;

  return v8;
}

@end