@interface _UISheetPresentationMetrics
+ (id)_defaultMetrics;
- (BOOL)shouldScaleDownBehindDescendantsForContainer:(id)a3 withBounds:(CGRect)a4;
- (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)a3;
- (CGSize)formSheetSizeForViewController:(id)a3 windowSize:(CGSize)a4 screenSize:(CGSize)a5;
- (id)_init;
- (id)transitionSpringParametersHighSpeed:(BOOL)a3;
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

- (id)transitionSpringParametersHighSpeed:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED49C098 != -1)
  {
    dispatch_once(&qword_1ED49C098, &__block_literal_global_3_11);
  }

  v4 = 2;
  if (v3)
  {
    v4 = 3;
  }

  v5 = _MergedGlobals_15_7[v4];

  return v5;
}

- (CGSize)formSheetSizeForViewController:(id)a3 windowSize:(CGSize)a4 screenSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v10 = a3;
  [v10 preferredContentSize];
  v12 = v11;
  v14 = v13;
  [(_UISheetPresentationMetrics *)self defaultFormSheetSizeForScreenSize:width, height];
  v17 = v15;
  v18 = v16;
  if (v12 <= 0.0 || v14 <= 0.0)
  {
    if (v15 <= 0.0 || v16 <= 0.0 || (_UISheetPresentationControllerStylesSheetsAsCards(v10) & 1) == 0 && (v17 >= v8 || v18 >= v7))
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

- (CGSize)defaultFormSheetSizeForScreenSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 _wantsWideContentMargins];

  if (v6)
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

- (BOOL)shouldScaleDownBehindDescendantsForContainer:(id)a3 withBounds:(CGRect)a4
{
  height = a4.size.height;
  v5 = [a3 window];
  v6 = [v5 screen];
  [v6 bounds];
  v8 = height == v7;

  return v8;
}

@end