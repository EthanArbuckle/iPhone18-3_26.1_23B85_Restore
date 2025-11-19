@interface PXGesturePerformer
+ (BOOL)isAvailable;
+ (CGRect)_frameInScreenSpaceForRect:(CGRect)a3 inView:(id)a4;
+ (CGRect)_rectInWindowCoordinateSpaceFromRect:(CGRect)a3 inView:(id)a4;
+ (CGRect)_viewFrameInScreenSpace:(id)a3;
+ (double)_amplitudeFactorBySpeed:(unint64_t)a3;
+ (id)_rptPlatformScrollViewFromPXScrollView:(id)a3;
+ (id)_rptPlatformViewFromPXView:(id)a3;
+ (id)_swipeParametersForScrollView:(id)a3 rect:(CGRect)a4 count:(int64_t)a5 speed:(unint64_t)a6 direction:(int64_t)a7;
+ (id)swipeSpeedFactor:(unint64_t)a3;
+ (int64_t)_UIAccessibilityDirection:(int64_t)a3;
+ (int64_t)_oppositeDirection:(int64_t)a3;
+ (int64_t)_rptDirection:(int64_t)a3;
+ (void)_handleResult:(id)a3 success:(BOOL)a4 error:(id)a5;
+ (void)performOscillatingInScrollView:(id)a3 rect:(CGRect)a4 speed:(unint64_t)a5 direction:(int64_t)a6 completionHandler:(id)a7;
+ (void)performSwipingInScrollView:(id)a3 rect:(CGRect)a4 count:(int64_t)a5 speed:(unint64_t)a6 direction:(int64_t)a7 roundTrip:(BOOL)a8 completionHandler:(id)a9;
@end

@implementation PXGesturePerformer

+ (id)_swipeParametersForScrollView:(id)a3 rect:(CGRect)a4 count:(int64_t)a5 speed:(unint64_t)a6 direction:(int64_t)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = [a1 _rptPlatformScrollViewFromPXScrollView:a3];
  v16 = objc_alloc(MEMORY[0x1E69C6C20]);
  if (v15)
  {
    v17 = [v16 initWithTestName:@"swipe" scrollView:v15 completionHandler:0];
    [v17 setSwipeCount:a5];
    [v17 setDirection:{objc_msgSend(a1, "_UIAccessibilityDirection:", a7)}];
    [a1 _rectInWindowCoordinateSpaceFromRect:v15 inView:{x, y, width, height}];
    [v17 setScrollingBounds:?];
  }

  else
  {
    v17 = [v16 initWithTestName:@"swipe" scrollingBounds:a5 swipeCount:objc_msgSend(a1 direction:"_UIAccessibilityDirection:" completionHandler:{a7), 0, x, y, width, height}];
  }

  v18 = [a1 swipeSpeedFactor:a6];
  [v17 setSwipeSpeedFactor:v18];

  [v17 setShouldFlick:1];

  return v17;
}

+ (CGRect)_rectInWindowCoordinateSpaceFromRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [v8 superview];
  if (v9)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (CGRectIsNull(v18))
    {
      [v8 frame];
      PXEdgeInsetsMake();
    }

    [v8 convertRect:v9 toView:{x, y, width, height}];
    [v9 convertRect:0 toView:?];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (id)_rptPlatformViewFromPXView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_rptPlatformScrollViewFromPXScrollView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGRect)_viewFrameInScreenSpace:(id)a3
{
  v3 = [a1 _rptPlatformViewFromPXView:a3];
  RPTViewFrameInScreenSpace();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (CGRect)_frameInScreenSpaceForRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [a1 _rptPlatformViewFromPXView:a4];
  v9 = [v8 window];

  v10 = MEMORY[0x1E69C6C18];
  v11 = [v9 screen];
  v12 = [v10 converterFromWindow:v9 toScreen:v11];

  [v12 convertRect:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (double)_amplitudeFactorBySpeed:(unint64_t)a3
{
  result = 1.0;
  if (a3 == 1)
  {
    result = 3.0;
  }

  if (a3 == 2)
  {
    return 5.0;
  }

  return result;
}

+ (id)swipeSpeedFactor:(unint64_t)a3
{
  v3 = &unk_1F190E638;
  if (a3 == 1)
  {
    v3 = &unk_1F190E648;
  }

  if (a3 == 2)
  {
    return &unk_1F190E658;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_oppositeDirection:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1A53833A8[a3 - 1];
  }
}

+ (int64_t)_rptDirection:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1A53833A8[a3 - 1];
  }
}

+ (int64_t)_UIAccessibilityDirection:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 4;
  }

  else
  {
    return 4 - a3;
  }
}

+ (void)_handleResult:(id)a3 success:(BOOL)a4 error:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, a4, a5);
  }
}

+ (void)performSwipingInScrollView:(id)a3 rect:(CGRect)a4 count:(int64_t)a5 speed:(unint64_t)a6 direction:(int64_t)a7 roundTrip:(BOOL)a8 completionHandler:(id)a9
{
  v10 = a8;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v20 = a9;
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [a1 _swipeParametersForScrollView:v19 rect:a5 count:a6 speed:a7 direction:{x, y, width, height}];
  [v21 addObject:v22];
  if (v10)
  {
    v23 = [a1 _swipeParametersForScrollView:v19 rect:a5 count:a6 speed:objc_msgSend(a1 direction:{"_oppositeDirection:", a7), x, y, width, height}];

    [v21 addObject:v23];
    v22 = v23;
  }

  v24 = MEMORY[0x1E69C6C28];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __104__PXGesturePerformer_performSwipingInScrollView_rect_count_speed_direction_roundTrip_completionHandler___block_invoke;
  v30 = &unk_1E7747E18;
  v31 = v20;
  v32 = a1;
  v25 = v20;
  v26 = [v24 newWithTestName:@"swipe" parameters:v21 completionHandler:&v27];
  [MEMORY[0x1E69C6C50] runTestWithParameters:{v26, v27, v28, v29, v30}];
}

+ (void)performOscillatingInScrollView:(id)a3 rect:(CGRect)a4 speed:(unint64_t)a5 direction:(int64_t)a6 completionHandler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a7;
  v16 = [a1 _rptPlatformScrollViewFromPXScrollView:a3];
  v17 = [a1 _rptDirection:a6];
  [a1 _rectInWindowCoordinateSpaceFromRect:v16 inView:{x, y, width, height}];
  if (v17 > 1)
  {
    v22 = CGRectGetWidth(*&v18);
  }

  else
  {
    v22 = CGRectGetHeight(*&v18);
  }

  v23 = v22;
  v24 = objc_alloc(MEMORY[0x1E69C6C40]);
  if (v16)
  {
    v25 = [v24 initWithTestName:@"oscillating" scrollView:v16 completionHandler:0];
    [v25 setDirection:{objc_msgSend(a1, "_UIAccessibilityDirection:", a6)}];
    [v25 setShouldFlick:1];
    [v25 setScrollingContentLength:v23];
  }

  else
  {
    v25 = [v24 initWithTestName:@"oscillating" scrollBounds:v17 scrollContentLength:0 direction:x completionHandler:{y, width, height, v23}];
  }

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __92__PXGesturePerformer_performOscillatingInScrollView_rect_speed_direction_completionHandler___block_invoke;
  v30 = &unk_1E7747E18;
  v31 = v15;
  v32 = a1;
  v26 = v15;
  [v25 setCompletionHandler:&v27];
  [a1 _amplitudeFactorBySpeed:{a5, v27, v28, v29, v30}];
  [v25 setAmplitudeFactor:?];
  [MEMORY[0x1E69C6C50] runTestWithParameters:v25];
}

+ (BOOL)isAvailable
{
  if (isAvailable_onceToken != -1)
  {
    dispatch_once(&isAvailable_onceToken, &__block_literal_global_227031);
  }

  return isAvailable_supportsRPT;
}

uint64_t __33__PXGesturePerformer_isAvailable__block_invoke()
{
  result = [MEMORY[0x1E69C6C50] isRecapAvailable];
  isAvailable_supportsRPT = result;
  return result;
}

@end