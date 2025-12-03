@interface PXGesturePerformer
+ (BOOL)isAvailable;
+ (CGRect)_frameInScreenSpaceForRect:(CGRect)rect inView:(id)view;
+ (CGRect)_rectInWindowCoordinateSpaceFromRect:(CGRect)rect inView:(id)view;
+ (CGRect)_viewFrameInScreenSpace:(id)space;
+ (double)_amplitudeFactorBySpeed:(unint64_t)speed;
+ (id)_rptPlatformScrollViewFromPXScrollView:(id)view;
+ (id)_rptPlatformViewFromPXView:(id)view;
+ (id)_swipeParametersForScrollView:(id)view rect:(CGRect)rect count:(int64_t)count speed:(unint64_t)speed direction:(int64_t)direction;
+ (id)swipeSpeedFactor:(unint64_t)factor;
+ (int64_t)_UIAccessibilityDirection:(int64_t)direction;
+ (int64_t)_oppositeDirection:(int64_t)direction;
+ (int64_t)_rptDirection:(int64_t)direction;
+ (void)_handleResult:(id)result success:(BOOL)success error:(id)error;
+ (void)performOscillatingInScrollView:(id)view rect:(CGRect)rect speed:(unint64_t)speed direction:(int64_t)direction completionHandler:(id)handler;
+ (void)performSwipingInScrollView:(id)view rect:(CGRect)rect count:(int64_t)count speed:(unint64_t)speed direction:(int64_t)direction roundTrip:(BOOL)trip completionHandler:(id)handler;
@end

@implementation PXGesturePerformer

+ (id)_swipeParametersForScrollView:(id)view rect:(CGRect)rect count:(int64_t)count speed:(unint64_t)speed direction:(int64_t)direction
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = [self _rptPlatformScrollViewFromPXScrollView:view];
  v16 = objc_alloc(MEMORY[0x1E69C6C20]);
  if (v15)
  {
    v17 = [v16 initWithTestName:@"swipe" scrollView:v15 completionHandler:0];
    [v17 setSwipeCount:count];
    [v17 setDirection:{objc_msgSend(self, "_UIAccessibilityDirection:", direction)}];
    [self _rectInWindowCoordinateSpaceFromRect:v15 inView:{x, y, width, height}];
    [v17 setScrollingBounds:?];
  }

  else
  {
    v17 = [v16 initWithTestName:@"swipe" scrollingBounds:count swipeCount:objc_msgSend(self direction:"_UIAccessibilityDirection:" completionHandler:{direction), 0, x, y, width, height}];
  }

  v18 = [self swipeSpeedFactor:speed];
  [v17 setSwipeSpeedFactor:v18];

  [v17 setShouldFlick:1];

  return v17;
}

+ (CGRect)_rectInWindowCoordinateSpaceFromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  superview = [viewCopy superview];
  if (superview)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (CGRectIsNull(v18))
    {
      [viewCopy frame];
      PXEdgeInsetsMake();
    }

    [viewCopy convertRect:superview toView:{x, y, width, height}];
    [superview convertRect:0 toView:?];
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

+ (id)_rptPlatformViewFromPXView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_rptPlatformScrollViewFromPXScrollView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGRect)_viewFrameInScreenSpace:(id)space
{
  v3 = [self _rptPlatformViewFromPXView:space];
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

+ (CGRect)_frameInScreenSpaceForRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [self _rptPlatformViewFromPXView:view];
  window = [v8 window];

  v10 = MEMORY[0x1E69C6C18];
  screen = [window screen];
  v12 = [v10 converterFromWindow:window toScreen:screen];

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

+ (double)_amplitudeFactorBySpeed:(unint64_t)speed
{
  result = 1.0;
  if (speed == 1)
  {
    result = 3.0;
  }

  if (speed == 2)
  {
    return 5.0;
  }

  return result;
}

+ (id)swipeSpeedFactor:(unint64_t)factor
{
  v3 = &unk_1F190E638;
  if (factor == 1)
  {
    v3 = &unk_1F190E648;
  }

  if (factor == 2)
  {
    return &unk_1F190E658;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_oppositeDirection:(int64_t)direction
{
  if ((direction - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1A53833A8[direction - 1];
  }
}

+ (int64_t)_rptDirection:(int64_t)direction
{
  if ((direction - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1A53833A8[direction - 1];
  }
}

+ (int64_t)_UIAccessibilityDirection:(int64_t)direction
{
  if ((direction - 1) >= 3)
  {
    return 4;
  }

  else
  {
    return 4 - direction;
  }
}

+ (void)_handleResult:(id)result success:(BOOL)success error:(id)error
{
  if (result)
  {
    (*(result + 2))(result, success, error);
  }
}

+ (void)performSwipingInScrollView:(id)view rect:(CGRect)rect count:(int64_t)count speed:(unint64_t)speed direction:(int64_t)direction roundTrip:(BOOL)trip completionHandler:(id)handler
{
  tripCopy = trip;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v22 = [self _swipeParametersForScrollView:viewCopy rect:count count:speed speed:direction direction:{x, y, width, height}];
  [array addObject:v22];
  if (tripCopy)
  {
    v23 = [self _swipeParametersForScrollView:viewCopy rect:count count:speed speed:objc_msgSend(self direction:{"_oppositeDirection:", direction), x, y, width, height}];

    [array addObject:v23];
    v22 = v23;
  }

  v24 = MEMORY[0x1E69C6C28];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __104__PXGesturePerformer_performSwipingInScrollView_rect_count_speed_direction_roundTrip_completionHandler___block_invoke;
  v30 = &unk_1E7747E18;
  v31 = handlerCopy;
  selfCopy = self;
  v25 = handlerCopy;
  v26 = [v24 newWithTestName:@"swipe" parameters:array completionHandler:&v27];
  [MEMORY[0x1E69C6C50] runTestWithParameters:{v26, v27, v28, v29, v30}];
}

+ (void)performOscillatingInScrollView:(id)view rect:(CGRect)rect speed:(unint64_t)speed direction:(int64_t)direction completionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  handlerCopy = handler;
  v16 = [self _rptPlatformScrollViewFromPXScrollView:view];
  v17 = [self _rptDirection:direction];
  [self _rectInWindowCoordinateSpaceFromRect:v16 inView:{x, y, width, height}];
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
    [v25 setDirection:{objc_msgSend(self, "_UIAccessibilityDirection:", direction)}];
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
  v31 = handlerCopy;
  selfCopy = self;
  v26 = handlerCopy;
  [v25 setCompletionHandler:&v27];
  [self _amplitudeFactorBySpeed:{speed, v27, v28, v29, v30}];
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