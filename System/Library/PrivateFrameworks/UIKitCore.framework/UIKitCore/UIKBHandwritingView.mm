@interface UIKBHandwritingView
- (BOOL)cancelTouchTracking;
- (BOOL)endStrokeWithTouches:(id)touches event:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures;
- (UIKBHandwritingView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (id)layerForRenderFlags:(int64_t)flags;
- (unint64_t)numberOfStrokes;
- (void)addInkPoint:(CGPoint)point value:(double)value;
- (void)cancelPageOffsetTimer;
- (void)clearAndNotify:(BOOL)notify;
- (void)clearTouches;
- (void)dealloc;
- (void)deleteStrokesAtIndexes:(id)indexes;
- (void)didMoveToWindow;
- (void)displayLayer:(id)layer;
- (void)layoutSubviews;
- (void)log;
- (void)pageOffsetTimerFired;
- (void)recreateInkMaskIfNeeded;
- (void)send;
- (void)setPreviousPoint:(id *)point;
- (void)setRenderConfig:(id)config;
- (void)startFadeOutAnimation;
- (void)touchPageOffsetTimer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateCornerRadius;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
- (void)updateInkColor;
@end

@implementation UIKBHandwritingView

- (UIKBHandwritingView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  v61.receiver = self;
  v61.super_class = UIKBHandwritingView;
  height = [(UIKBKeyView *)&v61 initWithFrame:keyplaneCopy keyplane:keyCopy key:x, y, width, height];
  v14 = height;
  if (!height)
  {
    goto LABEL_17;
  }

  [(UIKBHandwritingView *)height setInkMask:0];
  [(UIView *)v14 setOpaque:0];
  [(UIView *)v14 setClipsToBounds:1];
  [(UIView *)v14 setEnabled:1];
  v15 = objc_alloc_init(UIKBHandwritingInputSpeedModel);
  [(UIKBHandwritingView *)v14 setInputSpeedModel:v15];

  [(UIView *)v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  inputSpeedModel = [(UIKBHandwritingView *)v14 inputSpeedModel];
  [inputSpeedModel setHandwritingFrame:{v17, v19, v21, v23}];

  v25 = [MEMORY[0x1E695DFA8] set];
  [(UIKBHandwritingView *)v14 setActiveTouches:v25];

  [(UIView *)v14 setMultipleTouchEnabled:0];
  v26 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v26 userInterfaceIdiom];
  v28 = 2.7;
  if (!userInterfaceIdiom)
  {
    v28 = 2.5;
  }

  [(UIKBHandwritingView *)v14 setInkWidth:v28];

  [(UIKBHandwritingView *)v14 updateInkColor];
  v29 = [UIKBHandwritingStrokeView alloc];
  [(UIView *)v14 bounds];
  v30 = [(UIView *)v29 initWithFrame:?];
  [(UIView *)v30 setUserInteractionEnabled:0];
  [(UIView *)v30 setOpaque:0];
  [(UIKBHandwritingStrokeView *)v30 setKeyView:v14];
  [(UIView *)v30 setContentMode:5];
  [(UIView *)v14 addSubview:v30];
  [(UIKBHandwritingView *)v14 setStrokeView:v30];
  [(UIKBHandwritingView *)v14 recreateInkMaskIfNeeded];
  array = [MEMORY[0x1E695DF70] array];
  [(UIKBHandwritingView *)v14 setInterpolatedPoints:array];

  isCurrentProcessAnApplicationExtension = [MEMORY[0x1E6963668] isCurrentProcessAnApplicationExtension];
  v33 = +[UIDevice currentDevice];
  if (([v33 _supportsForceTouch] & 1) == 0)
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v40 = +[UIDevice _isLowEnd]| isCurrentProcessAnApplicationExtension;

      if ((v40 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    objc_initWeak(&location, v14);
    [(UIKBHandwritingView *)v14 inkWidth];
    v42 = v41;
    v43 = [[UIKBHandwritingBezierPathPointFIFO alloc] initWithFIFO:0];
    [(UIKBHandwritingView *)v14 setBezierPathFIFO:v43];

    v54 = MEMORY[0x1E69E9820];
    objc_copyWeak(v56, &location);
    v56[1] = v42;
    v55 = v30;
    v44 = [(UIKBHandwritingView *)v14 bezierPathFIFO:v54];
    [v44 setEmissionHandler:&v54];

    objc_destroyWeak(v56);
    objc_destroyWeak(&location);
    goto LABEL_12;
  }

LABEL_6:
  array2 = [MEMORY[0x1E695DF70] array];
  [(UIKBHandwritingView *)v14 setCurrentPoints:array2];
  v35 = [UIKBHandwritingQuadCurvePointFIFO alloc];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v37 = [(UIKBHandwritingQuadCurvePointFIFO *)v35 initWithFIFO:0 scale:?];
  [(UIKBHandwritingView *)v14 setInterpolatingFIFO:v37];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __50__UIKBHandwritingView_initWithFrame_keyplane_key___block_invoke;
  v58[3] = &unk_1E7113F88;
  v38 = array2;
  v59 = v38;
  v60 = v30;
  interpolatingFIFO = [(UIKBHandwritingView *)v14 interpolatingFIFO];
  [interpolatingFIFO setEmissionHandler:v58];

LABEL_12:
  v45 = [UIKBHandwritingBoxcarFilterPointFIFO alloc];
  bezierPathFIFO = [(UIKBHandwritingView *)v14 bezierPathFIFO];
  interpolatingFIFO2 = bezierPathFIFO;
  if (!bezierPathFIFO)
  {
    interpolatingFIFO2 = [(UIKBHandwritingView *)v14 interpolatingFIFO];
  }

  v48 = [(UIKBHandwritingBoxcarFilterPointFIFO *)v45 initWithFIFO:interpolatingFIFO2 width:3];
  [(UIKBHandwritingView *)v14 setSmoothingFIFO:v48];

  if (!bezierPathFIFO)
  {
  }

  v49 = [UIKBHandwritingStrokePointFIFO alloc];
  smoothingFIFO = [(UIKBHandwritingView *)v14 smoothingFIFO];
  v51 = [(UIKBHandwritingStrokePointFIFO *)v49 initWithFIFO:smoothingFIFO];
  [(UIKBHandwritingView *)v14 setStrokeFIFO:v51];

  [(UIKBHandwritingView *)v14 updateCornerRadius];
  v52 = v14;

LABEL_17:
  return v14;
}

void __50__UIKBHandwritingView_initWithFrame_keyplane_key___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) lastObject];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v8);
        [v10 UIKBHandwritingPointValue];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        if (v9)
        {
          v17 = *(a1 + 40);
          [v9 UIKBHandwritingPointValue];
          [v17 addTrapezoidFromFirstPoint:? secondPoint:?];
        }

        [*(a1 + 32) addObject:v10];
        [*(a1 + 40) addHandwritingPoint:{v12, v14, v16}];
        v4 = v10;

        ++v8;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) displayAggregateInvalidRect];
}

void __50__UIKBHandwritingView_initWithFrame_keyplane_key___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if ([v40 count] == 1)
    {
      v8 = [v40 objectAtIndexedSubscript:0];
      [v8 CGPointValue];
      v10 = v9;
      v11 = *(a1 + 48);
      v12 = [v40 objectAtIndexedSubscript:0];
      [v12 CGPointValue];
      x = v10 + v11 * -0.5;
      width = *(a1 + 48);
      y = v13 + width * -0.5;

      height = width;
    }

    else if ([v40 count] >= 2)
    {
      v14 = [v40 objectAtIndexedSubscript:0];
      [v14 CGPointValue];
      v16 = v15;
      v18 = v17;

      v19 = [v40 objectAtIndexedSubscript:1];
      [v19 CGPointValue];
      v21 = v20;
      v23 = v22;

      v24 = v16 >= v21 ? v21 : v16;
      v25 = *(a1 + 48);
      v26 = v18 >= v23 ? v23 : v18;
      x = v24 - v25 * 0.5;
      y = v26 - v25 * 0.5;
      width = vabdd_f64(v21, v16) + v25;
      height = vabdd_f64(v23, v18) + v25;
      if ([v40 count] == 3)
      {
        v27 = [v40 objectAtIndexedSubscript:2];
        [v27 CGPointValue];
        v29 = v28;
        v31 = v30;

        if (v21 >= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v21;
        }

        v33 = *(a1 + 48);
        v34 = v32 - v33 * 0.5;
        if (v23 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v23;
        }

        v36 = v35 - v33 * 0.5;
        v37 = vabdd_f64(v29, v21) + v33;
        v38 = vabdd_f64(v31, v23) + v33;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v43 = CGRectUnion(v42, *&v34);
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        height = v43.size.height;
      }
    }

    [WeakRetained pageOffset];
    [*(a1 + 32) setNeedsDisplayInRect:{x - v39, y, width, height}];
  }
}

- (void)recreateInkMaskIfNeeded
{
  v82 = *MEMORY[0x1E69E9840];
  strokeView = [(UIKBHandwritingView *)self strokeView];
  [strokeView bounds];
  v74 = v5;
  v75 = v4;
  v7 = v6;
  v9 = v8;

  sx = UIKBScale();
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v14 = [&unk_1EFE2C310 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (v14)
  {
    v15 = *v78;
    do
    {
      v16 = 0;
      do
      {
        if (*v78 != v15)
        {
          objc_enumerationMutation(&unk_1EFE2C310);
        }

        v17 = *(*(&v77 + 1) + 8 * v16);
        keyplane = [(UIKBKeyView *)self keyplane];
        v19 = [keyplane firstCachedKeyWithName:v17];

        if (v19)
        {
          [v19 frame];
          v93.origin.x = v20;
          v93.origin.y = v21;
          v93.size.width = v22;
          v93.size.height = v23;
          v83.origin.x = x;
          v83.origin.y = y;
          v83.size.width = width;
          v83.size.height = height;
          v84 = CGRectUnion(v83, v93);
          x = v84.origin.x;
          y = v84.origin.y;
          width = v84.size.width;
          height = v84.size.height;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [&unk_1EFE2C310 countByEnumeratingWithState:&v77 objects:v81 count:16];
    }

    while (v14);
  }

  v24 = [(UIKBKeyView *)self key];
  [v24 frame];
  v26 = v25;

  v27 = [(UIKBKeyView *)self key];
  [v27 frame];
  v29 = v28;

  v30 = x - v26;
  v31 = y - v29;
  v85.origin.x = v30;
  v85.origin.y = v31;
  v85.size.width = width;
  v85.size.height = height;
  if (CGRectIsEmpty(v85))
  {
    return;
  }

  v86.size.height = v74;
  v86.origin.x = v75;
  v86.origin.y = v7;
  v86.size.width = v9;
  v94.origin.x = v30;
  v94.origin.y = v31;
  v94.size.width = width;
  v94.size.height = height;
  if (!CGRectIntersectsRect(v86, v94))
  {
    return;
  }

  v87.size.height = v74;
  v87.origin.x = v75;
  v87.origin.y = v7;
  v87.size.width = v9;
  v95.origin.x = v30;
  v95.origin.y = v31;
  v95.size.width = width;
  v95.size.height = height;
  v88 = CGRectIntersection(v87, v95);
  v32 = v88.origin.x;
  v33 = v88.origin.y;
  v34 = v88.size.width;
  v35 = v88.size.height;
  v36 = +[UIKeyboardImpl activeInstance];
  currentHandBias = [v36 currentHandBias];

  screenTraits = [(UIKBKeyView *)self screenTraits];
  if ([screenTraits idiom] != 1)
  {
    screenTraits2 = [(UIKBKeyView *)self screenTraits];
    if ([screenTraits2 idiom] != 24)
    {
      screenTraits3 = [(UIKBKeyView *)self screenTraits];
      if ([screenTraits3 idiom] != 25)
      {
        screenTraits4 = [(UIKBKeyView *)self screenTraits];
        if ([screenTraits4 idiom] == 26)
        {
          v70 = 1;
        }

        else
        {
          screenTraits5 = [(UIKBKeyView *)self screenTraits];
          v70 = [screenTraits5 idiom] == 23 || currentHandBias != 0;
        }

        v41 = 0.0;
        if (v70)
        {
          v42 = v9;
        }

        else
        {
          v41 = v32;
          v42 = v34;
        }

        goto LABEL_18;
      }
    }
  }

  v41 = 0.0;
  v42 = v9;
LABEL_18:
  v43 = v35 + v35;
  v44 = v33;
  v89 = CGRectOffset(*&v41, -v75, -v7);
  v45 = v89.origin.x;
  v46 = v89.origin.y;
  v47 = v89.size.width;
  v48 = v89.size.height;
  inkMask = self->_inkMask;
  if (!inkMask)
  {
    goto LABEL_23;
  }

  v50 = CGImageGetHeight(inkMask) - v74 * sx;
  if (v50 < 0.0)
  {
    v50 = -v50;
  }

  if (v50 >= 1.0)
  {
    CFRelease(self->_inkMask);
    self->_inkMask = 0;
LABEL_23:
    self->_inkMask = UIKBCreateFadeClipImage(1, 0, v75, v7, v9, v74, v45, v46, v47, v48, 1.0);
    if (currentHandBias)
    {
      v51 = +[UIKeyboardImpl activeInstance];
      _layout = [v51 _layout];
      [_layout biasedKeyboardWidthRatio];
      v54 = v53;

      v55 = v9 * (1.0 - v54);
      v57 = v74;
      v56 = v75;
      v58 = v7;
      v59 = v9;
      if (currentHandBias == 2)
      {
        v60 = CGRectGetWidth(*&v56);
        v90.size.height = v74;
        v90.origin.x = v75;
        v90.origin.y = v7;
        v90.size.width = v9;
        v61 = CGRectGetHeight(v90);
        v62 = v60 - v55;
      }

      else
      {
        v61 = CGRectGetHeight(*&v56);
        v62 = 0.0;
      }

      v63 = UIKBCreateFadeClipImage(currentHandBias == 1, 1, v75, v7, v9, v74, v62, 0.0, v55, v61, 1.0);
      v64 = CGImageGetWidth(self->_inkMask);
      v65 = CGImageGetHeight(self->_inkMask);
      v66 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C8]);
      v67 = CGBitmapContextCreate(0, v64, v65, 8uLL, v64, v66, 0);
      CGAffineTransformMakeScale(&transform, sx, sx);
      CGContextConcatCTM(v67, &transform);
      v91.size.height = v74;
      v91.origin.x = v75;
      v91.origin.y = v7;
      v91.size.width = v9;
      CGContextClipToMask(v67, v91, self->_inkMask);
      v92.size.height = v74;
      v92.origin.x = v75;
      v92.origin.y = v7;
      v92.size.width = v9;
      CGContextDrawImage(v67, v92, v63);
      Image = CGBitmapContextCreateImage(v67);
      CGContextRelease(v67);
      CGColorSpaceRelease(v66);
      CGImageRelease(v63);
      CGImageRelease(self->_inkMask);
      self->_inkMask = Image;
    }
  }
}

- (id)layerForRenderFlags:(int64_t)flags
{
  flagsCopy = flags;
  v26.receiver = self;
  v26.super_class = UIKBHandwritingView;
  v5 = [(UIKBKeyView *)&v26 layerForRenderFlags:?];
  v6 = v5;
  if (flagsCopy)
  {
    [v5 setContentsScaling:*MEMORY[0x1E6979678]];
    v7 = [(UIKBKeyView *)self key];
    [v7 originalFrame];
    v9 = v8;

    v10 = [(UIKBKeyView *)self key];
    [v10 frame];
    v12 = v11;

    if (v12 >= 1.0)
    {
      if (v12 <= v9)
      {
        height = 1.0;
      }

      else
      {
        height = v9 / v12;
      }

      if (v6)
      {
        [v6 affineTransform];
        if (v25.d < 0.0)
        {
          v23 = *&[UIKBHandwritingView layerForRenderFlags:]::invertTransform[16];
          v24 = *[UIKBHandwritingView layerForRenderFlags:]::invertTransform;
          v25 = *[UIKBHandwritingView layerForRenderFlags:]::invertTransform;
          v22 = *&[UIKBHandwritingView layerForRenderFlags:]::invertTransform[32];
          v28.origin.x = 0.0;
          v28.origin.y = 0.0;
          v28.size.width = 1.0;
          v28.size.height = height;
          v29 = CGRectApplyAffineTransform(v28, &v25);
          x = v29.origin.x;
          y = v29.origin.y;
          width = v29.size.width;
          height = v29.size.height;
          v25 = *[UIKBHandwritingView layerForRenderFlags:]::invertTransform;
          v29.origin.y = 0.99;
          v29.size.height = 0.01;
          v29.origin.x = 0.0;
          v29.size.width = 1.0;
          v30 = CGRectApplyAffineTransform(v29, &v25);
          v17 = v30.origin.x;
          v18 = v30.origin.y;
          v19 = v30.size.width;
          v20 = v30.size.height;
LABEL_12:
          [v6 setContentsRect:{x, y, width, height, v22, v23, v24}];
          [v6 setContentsCenter:{v17, v18, v19, v20}];
          goto LABEL_13;
        }

        v17 = 0.0;
        v19 = 1.0;
        v18 = 0.99;
        v20 = 0.01;
      }

      else
      {
        v17 = 0.0;
        v19 = 1.0;
        v18 = 0.99;
        v20 = 0.01;
      }

      width = 1.0;
      y = 0.0;
      x = 0.0;
      goto LABEL_12;
    }
  }

LABEL_13:

  return v6;
}

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  [(UIKBHandwritingView *)self recreateInkMaskIfNeeded];
  v5.receiver = self;
  v5.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v5 displayLayer:layerCopy];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v17 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  strokeView = [(UIKBHandwritingView *)self strokeView];
  [strokeView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v6 < v13)
  {
    v6 = v13;
  }

  strokeView2 = [(UIKBHandwritingView *)self strokeView];
  [strokeView2 setFrame:{v9, v11, v4, v6}];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v16.receiver = self;
  v16.super_class = UIKBHandwritingView;
  v15 = [(UIKBKeyView *)&v16 layerForRenderFlags:1];
  [(UIView *)self bounds];
  [v15 setFrame:?];
  [MEMORY[0x1E6979518] commit];
}

- (void)dealloc
{
  inkMask = self->_inkMask;
  if (inkMask)
  {
    CGImageRelease(inkMask);
  }

  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
  v4.receiver = self;
  v4.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)log
{
  strokeFIFO = [(UIKBHandwritingView *)self strokeFIFO];
  strokes = [strokeFIFO strokes];
  if (![strokes numberOfStrokes])
  {
    goto LABEL_20;
  }

  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"%Y-%m-%d-%H%M%S"];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v4 stringFromDate:date];

  v22 = v6;
  if (geteuid())
  {
    v7 = NSHomeDirectory();
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  v8 = [(__CFString *)v7 stringByAppendingPathComponent:@"/Library/Logs/CrashReporter/HandwritingCapture/"];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Capture_%@.log", v6];
  v10 = [v8 stringByAppendingPathComponent:v9];

  v11 = v10;
  v12 = fopen([v10 UTF8String], "w+");
  if (!v12)
  {
    if (*__error() != 2 || ([MEMORY[0x1E696AC08] defaultManager], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 1, 0, 0), v18, !v19) || (v12 = fopen(objc_msgSend(v11, "UTF8String"), "w+")) == 0)
    {
LABEL_19:

LABEL_20:
      return;
    }
  }

  for (i = 0; i < [strokes numberOfStrokes]; ++i)
  {
    for (j = 0; j < [strokes numberOfPointsInStrokeAtIndex:i]; ++j)
    {
      [strokes pointAtIndex:j inStrokeAtIndex:i];
      fprintf(v12, "%d %d\n", v15, v16);
    }

    fwrite(";\n", 2uLL, 1uLL, v12);
  }

  fclose(v12);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v17 = _MergedGlobals_5_15;
  v27 = _MergedGlobals_5_15;
  if (!_MergedGlobals_5_15)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZL40getAudioServicesPlaySystemSoundSymbolLocv_block_invoke;
    v23[3] = &unk_1E7106BC8;
    v23[4] = &v24;
    ___ZL40getAudioServicesPlaySystemSoundSymbolLocv_block_invoke(v23);
    v17 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (v17)
  {
    v17(1108);
    goto LABEL_19;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __AudioServicesPlaySystemSound(SystemSoundID)"];
  [currentHandler handleFailureInFunction:v21 file:@"UIKBHandwritingView.mm" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)touchPageOffsetTimer
{
  nextPageTimer = [(UIKBHandwritingView *)self nextPageTimer];
  if (!nextPageTimer)
  {
    inputSpeedModel = [(UIKBHandwritingView *)self inputSpeedModel];
    autoConfirmationEnabled = [inputSpeedModel autoConfirmationEnabled];

    if (!autoConfirmationEnabled)
    {
      goto LABEL_10;
    }

    inputSpeedModel2 = [(UIKBHandwritingView *)self inputSpeedModel];
    [inputSpeedModel2 timeoutForNextPage];
    v6 = v5;

    v10 = +[UIDevice currentDevice];
    v7 = [v10 userInterfaceIdiom] == 1 && !+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating");

    if (v6 <= 0.0 || (v7 & 1) != 0)
    {
      goto LABEL_10;
    }

    v11 = [[UIDelayedAction alloc] initWithTarget:self action:sel_pageOffsetTimerFired userInfo:0 delay:v6];
    [(UIKBHandwritingView *)self setNextPageTimer:?];
    nextPageTimer = v11;
  }

LABEL_10:
  nextPageTimer2 = [(UIKBHandwritingView *)self nextPageTimer];
  [nextPageTimer2 touch];
}

- (void)cancelPageOffsetTimer
{
  nextPageTimer = [(UIKBHandwritingView *)self nextPageTimer];
  [nextPageTimer cancel];

  nextPageTimer2 = [(UIKBHandwritingView *)self nextPageTimer];
  [nextPageTimer2 setTarget:0];

  [(UIKBHandwritingView *)self setNextPageTimer:0];
}

- (void)pageOffsetTimerFired
{
  v33 = *MEMORY[0x1E69E9840];
  inputSpeedModel = [(UIKBHandwritingView *)self inputSpeedModel];
  [inputSpeedModel endCharacter];

  [(UIKBHandwritingView *)self startFadeOutAnimation];
  bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (bezierPathFIFO)
  {
    y = *(MEMORY[0x1E695F050] + 8);
    r1[0] = *MEMORY[0x1E695F050];
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    memset(&r1[1], 0, 32);
    v30 = 0u;
    v31 = 0u;
    interpolatedPoints = [(UIKBHandwritingView *)self interpolatedPoints];
    v9 = [interpolatedPoints countByEnumeratingWithState:&r1[1] objects:v32 count:16];
    if (v9)
    {
      v10 = **&r1[3];
      do
      {
        v11 = 0;
        do
        {
          if (**&r1[3] != v10)
          {
            objc_enumerationMutation(interpolatedPoints);
          }

          [*(*&r1[2] + 8 * v11) bounds];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          [(UIKBHandwritingView *)self inkWidth];
          v21 = v20;
          [(UIKBHandwritingView *)self inkWidth];
          v23 = v22 * -0.5;
          v34.origin.x = v13;
          v34.origin.y = v15;
          v34.size.width = v17;
          v34.size.height = v19;
          v37 = CGRectInset(v34, v21 * -0.5, v23);
          v35.origin.x = r1[0];
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v36 = CGRectUnion(v35, v37);
          r1[0] = v36.origin.x;
          y = v36.origin.y;
          width = v36.size.width;
          height = v36.size.height;
          ++v11;
        }

        while (v9 != v11);
        v9 = [interpolatedPoints countByEnumeratingWithState:&r1[1] objects:v32 count:16];
      }

      while (v9);
    }

    [(UIKBHandwritingView *)self pageOffset];
    [(UIKBHandwritingView *)self setPageOffset:r1[0] + width + v24];
    strokeView = [(UIKBHandwritingView *)self strokeView];
    [strokeView setNeedsDisplay];
  }

  else
  {
    [(UIKBHandwritingView *)self pageOffset];
    [(UIKBHandwritingView *)self setPageOffset:v26 + 10000.0];
    strokeView2 = [(UIKBHandwritingView *)self strokeView];
    strokeView3 = [(UIKBHandwritingView *)self strokeView];
    [strokeView3 bounds];
    [strokeView2 clearRect:?];
  }

  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = UIKBHandwritingView;
  [(UIView *)&v4 didMoveToWindow];
  window = [(UIView *)self window];

  if (!window)
  {
    [(UIKBHandwritingView *)self cancelPageOffsetTimer];
  }
}

- (void)startFadeOutAnimation
{
  snapshotView = [(UIKBHandwritingView *)self snapshotView];

  if (snapshotView)
  {
    snapshotView2 = [(UIKBHandwritingView *)self snapshotView];
    [snapshotView2 removeFromSuperview];
  }

  v5 = [(UIView *)self snapshotViewAfterScreenUpdates:0];
  [(UIKBHandwritingView *)self setSnapshotView:v5];

  snapshotView3 = [(UIKBHandwritingView *)self snapshotView];
  [snapshotView3 setUserInteractionEnabled:0];

  snapshotView4 = [(UIKBHandwritingView *)self snapshotView];
  [(UIView *)self addSubview:snapshotView4];

  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__UIKBHandwritingView_startFadeOutAnimation__block_invoke;
  v9[3] = &unk_1E7113FD8;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UIKBHandwritingView_startFadeOutAnimation__block_invoke_2;
  v8[3] = &unk_1E7114000;
  [UIView animateWithDuration:v9 animations:v8 completion:0.25];
}

void __44__UIKBHandwritingView_startFadeOutAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) snapshotView];
  [v1 setAlpha:0.0];
}

void __44__UIKBHandwritingView_startFadeOutAnimation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setSnapshotView:0];
  v3 = [*(a1 + 32) inputSpeedModel];
  [v3 endCharacter];
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  renderConfig = [(UIKBKeyView *)self renderConfig];
  if (renderConfig)
  {
    renderConfig2 = [(UIKBKeyView *)self renderConfig];
    whiteText = [renderConfig2 whiteText];
    v8 = whiteText ^ [configCopy whiteText];
  }

  else
  {
    v8 = 1;
  }

  v10.receiver = self;
  v10.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v10 setRenderConfig:configCopy];
  if (v8)
  {
    [(UIKBHandwritingView *)self updateInkColor];
  }

  [(UIKBHandwritingView *)self updateCornerRadius];
  strokeView = [(UIKBHandwritingView *)self strokeView];
  [strokeView setNeedsDisplay];
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  [(UIKBHandwritingView *)self updateInkColor:keyplane];

  [(UIKBHandwritingView *)self clearAndNotify:0];
}

- (void)updateInkColor
{
  renderConfig = [(UIKBKeyView *)self renderConfig];
  if ([renderConfig whiteText])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v3 = ;
  -[UIKBHandwritingView setInkColor:](self, "setInkColor:", [v3 CGColor]);

  bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (!bezierPathFIFO)
  {
    strokeView = [(UIKBHandwritingView *)self strokeView];
    [strokeView updateInkColor];
  }
}

- (void)updateCornerRadius
{
  renderConfig = [(UIKBKeyView *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    v5 = *MEMORY[0x1E69796E8];
    layer = [(UIView *)self layer];
    [layer setCornerCurve:v5];

    v7 = 27.0;
    v8 = 3;
  }

  else
  {
    factory = [(UIKBKeyView *)self factory];
    v10 = [(UIKBKeyView *)self key];
    keyplane = [(UIKBKeyView *)self keyplane];
    v18 = [factory traitsForKey:v10 onKeyplane:keyplane];

    geometry = [v18 geometry];
    [geometry roundRectRadius];
    v7 = v13;

    if (v7 == 0.0)
    {
      v17 = v18;
      goto LABEL_7;
    }

    geometry2 = [v18 geometry];
    v8 = [geometry2 roundRectCorners] & 0xF;

    if (!v8)
    {
      return;
    }
  }

  layer2 = [(UIView *)self layer];
  [layer2 setMaskedCorners:v8];

  layer3 = [(UIView *)self layer];
  [layer3 setCornerRadius:v7];
  v17 = layer3;
LABEL_7:
}

- (void)clearAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  inputSpeedModel = [(UIKBHandwritingView *)self inputSpeedModel];
  [inputSpeedModel endCharacter];

  inputSpeedModel2 = [(UIKBHandwritingView *)self inputSpeedModel];
  [inputSpeedModel2 updatePreferences];

  [(UIKBHandwritingView *)self setPageOffset:0.0];
  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
  strokeFIFO = [(UIKBHandwritingView *)self strokeFIFO];
  [strokeFIFO clear];

  interpolatedPoints = [(UIKBHandwritingView *)self interpolatedPoints];
  [interpolatedPoints removeAllObjects];

  bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (bezierPathFIFO)
  {
    [(UIKBHandwritingView *)self setCurrentPath:0];
    strokeView = [(UIKBHandwritingView *)self strokeView];
    [strokeView setNeedsDisplay];
  }

  else
  {
    currentPoints = [(UIKBHandwritingView *)self currentPoints];
    [currentPoints removeAllObjects];

    strokeView = [(UIKBHandwritingView *)self strokeView];
    strokeView2 = [(UIKBHandwritingView *)self strokeView];
    [strokeView2 bounds];
    [strokeView clearRect:?];
  }

  if (notifyCopy)
  {
    v15 = +[UIKeyboardImpl activeInstance];
    [v15 clearInput];
    strokeFIFO2 = [(UIKBHandwritingView *)self strokeFIFO];
    strokes = [strokeFIFO2 strokes];
    [v15 addInputObject:strokes];
  }
}

- (void)deleteStrokesAtIndexes:(id)indexes
{
  v60 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  if (indexesCopy)
  {
    [(UIKBHandwritingView *)self cancelPageOffsetTimer];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    for (i = [indexesCopy lastIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(indexesCopy, "indexLessThanIndex:", i))
    {
      interpolatedPoints = [(UIKBHandwritingView *)self interpolatedPoints];
      if (i >= [interpolatedPoints count])
      {

LABEL_18:
        NSLog(&cfstr_SInvalidStroke.isa, "[UIKBHandwritingView deleteStrokesAtIndexes:]", indexesCopy);
        strokeView = [(UIKBHandwritingView *)self strokeView];
        [strokeView bounds];
        x = v44;
        y = v45;
        width = v46;
        height = v47;

        [(UIKBHandwritingView *)self clearAndNotify:0];
        break;
      }

      strokeFIFO = [(UIKBHandwritingView *)self strokeFIFO];
      strokes = [strokeFIFO strokes];
      v13 = i < [strokes numberOfStrokes];

      if (!v13)
      {
        goto LABEL_18;
      }

      bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];
      v15 = bezierPathFIFO == 0;

      if (v15)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        interpolatedPoints2 = [(UIKBHandwritingView *)self interpolatedPoints];
        v30 = [interpolatedPoints2 objectAtIndexedSubscript:i];

        v31 = [v30 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v31)
        {
          v32 = *v56;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v56 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = *(*(&v55 + 1) + 8 * j);
              strokeView2 = [(UIKBHandwritingView *)self strokeView];
              [v34 UIKBHandwritingPointValue];
              [strokeView2 handwritingPointToRect:?];
              v69.origin.x = v36;
              v69.origin.y = v37;
              v69.size.width = v38;
              v69.size.height = v39;
              v64.origin.x = x;
              v64.origin.y = y;
              v64.size.width = width;
              v64.size.height = height;
              v65 = CGRectUnion(v64, v69);
              x = v65.origin.x;
              y = v65.origin.y;
              width = v65.size.width;
              height = v65.size.height;
            }

            v31 = [v30 countByEnumeratingWithState:&v55 objects:v59 count:16];
          }

          while (v31);
        }

        v66.origin.x = x;
        v66.origin.y = y;
        v66.size.width = width;
        v66.size.height = height;
        v67 = CGRectInset(v66, -0.200000003, -0.200000003);
        x = v67.origin.x;
        y = v67.origin.y;
        width = v67.size.width;
        height = v67.size.height;
      }

      else
      {
        interpolatedPoints3 = [(UIKBHandwritingView *)self interpolatedPoints];
        v17 = [interpolatedPoints3 objectAtIndex:i];
        [v17 bounds];
        rect = v18;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [(UIKBHandwritingView *)self inkWidth];
        v26 = v25;
        [(UIKBHandwritingView *)self inkWidth];
        v28 = v27 * -0.5;
        v61.origin.x = v20;
        v61.origin.y = v22;
        v61.size.width = v24;
        v61.size.height = rect;
        v68 = CGRectInset(v61, v26 * -0.5, v28);
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        v63 = CGRectUnion(v62, v68);
        x = v63.origin.x;
        y = v63.origin.y;
        width = v63.size.width;
        height = v63.size.height;
      }

      interpolatedPoints4 = [(UIKBHandwritingView *)self interpolatedPoints];
      [interpolatedPoints4 removeObjectAtIndex:i];

      strokeFIFO2 = [(UIKBHandwritingView *)self strokeFIFO];
      strokes2 = [strokeFIFO2 strokes];
      [strokes2 removeStrokeAtIndex:i];
    }

    [(UIKBHandwritingView *)self pageOffset];
    v49 = v48;
    bezierPathFIFO2 = [(UIKBHandwritingView *)self bezierPathFIFO];
    v51 = bezierPathFIFO2 == 0;

    v52 = x - v49;
    [(UIKBHandwritingView *)self strokeView];
    if (v51)
      v53 = {;
      [v53 clearRect:{v52, y, width, height}];
    }

    else
      v53 = {;
      [v53 setNeedsDisplayInRect:{v52, y, width, height}];
    }
  }
}

- (void)send
{
  strokeFIFO = [(UIKBHandwritingView *)self strokeFIFO];
  strokes = [strokeFIFO strokes];
  numberOfStrokes = [strokes numberOfStrokes];

  if (numberOfStrokes)
  {
    [(UIView *)self bounds];
    v6 = 1.0;
    if (v7 > 0.0)
    {
      [(UIView *)self bounds];
      v6 = 1000.0 / v8;
    }

    strokeFIFO2 = [(UIKBHandwritingView *)self strokeFIFO];
    v11 = [strokeFIFO2 scaleStrokes:v6];

    v10 = +[UIKeyboardImpl activeInstance];
    [v10 addInputObject:v11];
  }
}

- (void)addInkPoint:(CGPoint)point value:(double)value
{
  y = point.y;
  x = point.x;
  strokeFIFO = [(UIKBHandwritingView *)self strokeFIFO];
  [strokeFIFO addPoint:{x, y, value}];

  bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (bezierPathFIFO)
  {
    bezierPathFIFO2 = [(UIKBHandwritingView *)self bezierPathFIFO];
    path = [bezierPathFIFO2 path];
    [(UIKBHandwritingView *)self setCurrentPath:path];
  }

  v12 = +[UIKeyboardImpl activeInstance];
  [v12 updateIdleDetection:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  inputSpeedModel = [(UIKBHandwritingView *)self inputSpeedModel];
  [inputSpeedModel beginStroke];

  activeTouches = [(UIKBHandwritingView *)self activeTouches];
  [activeTouches unionSet:beganCopy];

  anyObject = [beganCopy anyObject];
  [anyObject locationInView:self];
  v9 = v8;
  v11 = v10;
  inputSpeedModel2 = [(UIKBHandwritingView *)self inputSpeedModel];
  [anyObject timestamp];
  [inputSpeedModel2 addPoint:v9 timestamp:{v11, v13}];

  [(UIKBHandwritingView *)self pageOffset];
  v15 = v14;
  [anyObject force];
  v17 = v16;
  [(UIKBHandwritingView *)self setInitialPointPosted:0];
  [(UIKBHandwritingView *)self setPreviousPoint:v9 + v15, v11, v17];
  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v33 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v8 = [movedCopy mutableCopy];
  activeTouches = [(UIKBHandwritingView *)self activeTouches];
  [v8 intersectSet:activeTouches];

  v10 = v8;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  anyObject = [v10 anyObject];
  v12 = [eventCopy coalescedTouchesForTouch:anyObject];

  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        [v16 locationInView:self];
        v18 = v17;
        v20 = v19;
        inputSpeedModel = [(UIKBHandwritingView *)self inputSpeedModel];
        [v16 timestamp];
        [inputSpeedModel addPoint:v18 timestamp:{v20, v22}];

        [(UIKBHandwritingView *)self pageOffset];
        v24 = v23;
        [v16 force];
        v26 = v25;
        if (![(UIKBHandwritingView *)self initialPointPosted])
        {
          [(UIKBHandwritingView *)self previousPoint];
          [UIKBHandwritingView addInkPoint:"addInkPoint:value:" value:?];
          [(UIKBHandwritingView *)self setInitialPointPosted:1];
        }

        v27 = v18 + v24;
        [(UIKBHandwritingView *)self addInkPoint:v27 value:v20, v26];
        [(UIKBHandwritingView *)self setPreviousPoint:v27, v20, v26];
      }

      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
}

- (BOOL)endStrokeWithTouches:(id)touches event:(id)event
{
  v47 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  eventCopy = event;
  activeTouches = [(UIKBHandwritingView *)self activeTouches];
  v9 = [touchesCopy isSubsetOfSet:activeTouches];

  activeTouches2 = [(UIKBHandwritingView *)self activeTouches];
  [activeTouches2 minusSet:touchesCopy];

  if (v9)
  {
    if (![(UIKBHandwritingView *)self initialPointPosted])
    {
      [(UIKBHandwritingView *)self previousPoint];
      v12 = v11;
      v14 = v13;
      [(UIKBHandwritingView *)self previousPoint];
      [(UIKBHandwritingView *)self addInkPoint:v12 value:v14];
      [(UIKBHandwritingView *)self setInitialPointPosted:1];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    anyObject = [touchesCopy anyObject];
    v16 = [eventCopy coalescedTouchesForTouch:anyObject];

    v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      v18 = *v43;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          [v20 locationInView:self];
          v22 = v21;
          v24 = v23;
          inputSpeedModel = [(UIKBHandwritingView *)self inputSpeedModel];
          [v20 timestamp];
          [inputSpeedModel addPoint:v22 timestamp:{v24, v26}];

          [(UIKBHandwritingView *)self pageOffset];
          v28 = v27;
          [v20 force];
          v30 = v29;
          [(UIKBHandwritingView *)self previousPoint];
          v31 = v22 + v28;
          [(UIKBHandwritingView *)self addInkPoint:v31 value:v24, v32 * 0.5];
          [(UIKBHandwritingView *)self setPreviousPoint:v31, v24, v30];
        }

        v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    [(UIKBHandwritingStrokePointFIFO *)self->_strokeFIFO flush];
    bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];
    v34 = bezierPathFIFO == 0;

    interpolatedPoints = self->_interpolatedPoints;
    if (v34)
    {
      v39 = [(NSMutableArray *)self->_currentPoints copy];
      [(NSMutableArray *)interpolatedPoints addObject:v39];

      [(NSMutableArray *)self->_currentPoints removeAllObjects];
    }

    else
    {
      bezierPathFIFO2 = [(UIKBHandwritingView *)self bezierPathFIFO];
      path = [bezierPathFIFO2 path];
      v38 = [path copy];
      [(NSMutableArray *)interpolatedPoints addObject:v38];

      [(UIKBHandwritingView *)self setCurrentPath:0];
    }

    inputSpeedModel2 = [(UIKBHandwritingView *)self inputSpeedModel];
    [inputSpeedModel2 endStroke];

    [(UIKBHandwritingView *)self touchPageOffsetTimer];
  }

  return v9;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UIKBHandwritingView *)self endStrokeWithTouches:endedCopy event:eventCopy])
  {
    [(UIKBHandwritingView *)self send];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(UIKBHandwritingView *)self endStrokeWithTouches:cancelled event:event])
  {
    strokes = [(UIKBHandwritingStrokePointFIFO *)self->_strokeFIFO strokes];
    numberOfStrokes = [strokes numberOfStrokes];

    if (numberOfStrokes)
    {
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:numberOfStrokes - 1];
      [(UIKBHandwritingView *)self deleteStrokesAtIndexes:?];
    }
  }
}

- (unint64_t)numberOfStrokes
{
  strokeFIFO = [(UIKBHandwritingView *)self strokeFIFO];
  strokes = [strokeFIFO strokes];
  numberOfStrokes = [strokes numberOfStrokes];

  return numberOfStrokes;
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures
{
  gesturesCopy = gestures;
  v27 = *MEMORY[0x1E69E9840];
  bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];

  v6 = 1;
  if (gesturesCopy && !bezierPathFIFO)
  {
    if ([(NSMutableArray *)self->_currentPoints count]<= 0xF)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = self->_currentPoints;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = 0;
        v10 = *v23;
        v11 = 0.0;
        while (2)
        {
          v12 = 0;
          v13 = v9;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v22 + 1) + 8 * v12);
            if (v13)
            {
              [*(*(&v22 + 1) + 8 * v12) UIKBHandwritingPointValue];
              v16 = v15;
              v18 = v17;
              [v13 UIKBHandwritingPointValue];
              v11 = v11 + hypot(v16 - v19, v18 - v20);
              if (v11 > 15.0)
              {
                v6 = 0;
                goto LABEL_17;
              }
            }

            v9 = v14;

            ++v12;
            v13 = v9;
          }

          while (v8 != v12);
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v6 = 1;
        v13 = v9;
      }

      else
      {
        v13 = 0;
        v6 = 1;
      }

LABEL_17:
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)clearTouches
{
  activeTouches = [(UIKBHandwritingView *)self activeTouches];
  [activeTouches removeAllObjects];
}

- (BOOL)cancelTouchTracking
{
  [(UIKBHandwritingStrokePointFIFO *)self->_strokeFIFO flush];
  bezierPathFIFO = [(UIKBHandwritingView *)self bezierPathFIFO];

  interpolatedPoints = self->_interpolatedPoints;
  if (bezierPathFIFO)
  {
    bezierPathFIFO2 = [(UIKBHandwritingView *)self bezierPathFIFO];
    path = [bezierPathFIFO2 path];
    v7 = [path copy];
    [(NSMutableArray *)interpolatedPoints addObject:v7];

    [(UIKBHandwritingView *)self setCurrentPath:0];
  }

  else
  {
    v8 = [(NSMutableArray *)self->_currentPoints copy];
    [(NSMutableArray *)interpolatedPoints addObject:v8];

    [(NSMutableArray *)self->_currentPoints removeAllObjects];
  }

  v10.receiver = self;
  v10.super_class = UIKBHandwritingView;
  return [(UIView *)&v10 cancelTouchTracking];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  superview = [(UIView *)self superview];
  [superview convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  keyplane = [(UIKBKeyView *)self keyplane];
  v14 = [keyplane firstCachedKeyWithName:@"Delete-Key"];

  if (v14 && ([v14 frame], v24.x = v10, v24.y = v12, CGRectContainsPoint(v26, v24)))
  {
    v15 = 0;
  }

  else
  {
    keyplane2 = [(UIKBKeyView *)self keyplane];
    v17 = [keyplane2 firstCachedKeyWithName:@"Candidate-Selection"];

    if (v17 && ([v17 frame], v25.x = v10, v25.y = v12, CGRectContainsPoint(v27, v25)) && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "candidateController"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "candidateResultSet"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasCandidates"), v20, v19, v18, (v21 & 1) != 0))
    {
      v15 = 0;
    }

    else
    {
      v23.receiver = self;
      v23.super_class = UIKBHandwritingView;
      v15 = [(UIView *)&v23 pointInside:eventCopy withEvent:x, y];
    }
  }

  return v15;
}

- (void)setPreviousPoint:(id *)point
{
  self->_previousPoint.point.x = v3;
  self->_previousPoint.point.y = v4;
  self->_previousPoint.force = v5;
}

@end