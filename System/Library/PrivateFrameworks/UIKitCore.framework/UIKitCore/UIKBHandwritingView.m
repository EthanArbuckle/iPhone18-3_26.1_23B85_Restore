@interface UIKBHandwritingView
- (BOOL)cancelTouchTracking;
- (BOOL)endStrokeWithTouches:(id)a3 event:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldAllowSelectionGestures:(BOOL)a3;
- (UIKBHandwritingView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (id)layerForRenderFlags:(int64_t)a3;
- (unint64_t)numberOfStrokes;
- (void)addInkPoint:(CGPoint)a3 value:(double)a4;
- (void)cancelPageOffsetTimer;
- (void)clearAndNotify:(BOOL)a3;
- (void)clearTouches;
- (void)dealloc;
- (void)deleteStrokesAtIndexes:(id)a3;
- (void)didMoveToWindow;
- (void)displayLayer:(id)a3;
- (void)layoutSubviews;
- (void)log;
- (void)pageOffsetTimerFired;
- (void)recreateInkMaskIfNeeded;
- (void)send;
- (void)setPreviousPoint:(id *)a3;
- (void)setRenderConfig:(id)a3;
- (void)startFadeOutAnimation;
- (void)touchPageOffsetTimer;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateCornerRadius;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
- (void)updateInkColor;
@end

@implementation UIKBHandwritingView

- (UIKBHandwritingView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v61.receiver = self;
  v61.super_class = UIKBHandwritingView;
  v13 = [(UIKBKeyView *)&v61 initWithFrame:v11 keyplane:v12 key:x, y, width, height];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  [(UIKBHandwritingView *)v13 setInkMask:0];
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
  v24 = [(UIKBHandwritingView *)v14 inputSpeedModel];
  [v24 setHandwritingFrame:{v17, v19, v21, v23}];

  v25 = [MEMORY[0x1E695DFA8] set];
  [(UIKBHandwritingView *)v14 setActiveTouches:v25];

  [(UIView *)v14 setMultipleTouchEnabled:0];
  v26 = +[UIDevice currentDevice];
  v27 = [v26 userInterfaceIdiom];
  v28 = 2.7;
  if (!v27)
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
  v31 = [MEMORY[0x1E695DF70] array];
  [(UIKBHandwritingView *)v14 setInterpolatedPoints:v31];

  v32 = [MEMORY[0x1E6963668] isCurrentProcessAnApplicationExtension];
  v33 = +[UIDevice currentDevice];
  if (([v33 _supportsForceTouch] & 1) == 0)
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v40 = +[UIDevice _isLowEnd]| v32;

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
  v34 = [MEMORY[0x1E695DF70] array];
  [(UIKBHandwritingView *)v14 setCurrentPoints:v34];
  v35 = [UIKBHandwritingQuadCurvePointFIFO alloc];
  v36 = [objc_opt_self() mainScreen];
  [v36 scale];
  v37 = [(UIKBHandwritingQuadCurvePointFIFO *)v35 initWithFIFO:0 scale:?];
  [(UIKBHandwritingView *)v14 setInterpolatingFIFO:v37];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __50__UIKBHandwritingView_initWithFrame_keyplane_key___block_invoke;
  v58[3] = &unk_1E7113F88;
  v38 = v34;
  v59 = v38;
  v60 = v30;
  v39 = [(UIKBHandwritingView *)v14 interpolatingFIFO];
  [v39 setEmissionHandler:v58];

LABEL_12:
  v45 = [UIKBHandwritingBoxcarFilterPointFIFO alloc];
  v46 = [(UIKBHandwritingView *)v14 bezierPathFIFO];
  v47 = v46;
  if (!v46)
  {
    v47 = [(UIKBHandwritingView *)v14 interpolatingFIFO];
  }

  v48 = [(UIKBHandwritingBoxcarFilterPointFIFO *)v45 initWithFIFO:v47 width:3];
  [(UIKBHandwritingView *)v14 setSmoothingFIFO:v48];

  if (!v46)
  {
  }

  v49 = [UIKBHandwritingStrokePointFIFO alloc];
  v50 = [(UIKBHandwritingView *)v14 smoothingFIFO];
  v51 = [(UIKBHandwritingStrokePointFIFO *)v49 initWithFIFO:v50];
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
  v3 = [(UIKBHandwritingView *)self strokeView];
  [v3 bounds];
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
        v18 = [(UIKBKeyView *)self keyplane];
        v19 = [v18 firstCachedKeyWithName:v17];

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
  v37 = [v36 currentHandBias];

  v38 = [(UIKBKeyView *)self screenTraits];
  if ([v38 idiom] != 1)
  {
    v39 = [(UIKBKeyView *)self screenTraits];
    if ([v39 idiom] != 24)
    {
      v40 = [(UIKBKeyView *)self screenTraits];
      if ([v40 idiom] != 25)
      {
        v69 = [(UIKBKeyView *)self screenTraits];
        if ([v69 idiom] == 26)
        {
          v70 = 1;
        }

        else
        {
          v71 = [(UIKBKeyView *)self screenTraits];
          v70 = [v71 idiom] == 23 || v37 != 0;
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
    if (v37)
    {
      v51 = +[UIKeyboardImpl activeInstance];
      v52 = [v51 _layout];
      [v52 biasedKeyboardWidthRatio];
      v54 = v53;

      v55 = v9 * (1.0 - v54);
      v57 = v74;
      v56 = v75;
      v58 = v7;
      v59 = v9;
      if (v37 == 2)
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

      v63 = UIKBCreateFadeClipImage(v37 == 1, 1, v75, v7, v9, v74, v62, 0.0, v55, v61, 1.0);
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

- (id)layerForRenderFlags:(int64_t)a3
{
  v3 = a3;
  v26.receiver = self;
  v26.super_class = UIKBHandwritingView;
  v5 = [(UIKBKeyView *)&v26 layerForRenderFlags:?];
  v6 = v5;
  if (v3)
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

- (void)displayLayer:(id)a3
{
  v4 = a3;
  [(UIKBHandwritingView *)self recreateInkMaskIfNeeded];
  v5.receiver = self;
  v5.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v5 displayLayer:v4];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v17 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(UIKBHandwritingView *)self strokeView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v6 < v13)
  {
    v6 = v13;
  }

  v14 = [(UIKBHandwritingView *)self strokeView];
  [v14 setFrame:{v9, v11, v4, v6}];

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
  v2 = [(UIKBHandwritingView *)self strokeFIFO];
  v3 = [v2 strokes];
  if (![v3 numberOfStrokes])
  {
    goto LABEL_20;
  }

  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"%Y-%m-%d-%H%M%S"];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 stringFromDate:v5];

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

  for (i = 0; i < [v3 numberOfStrokes]; ++i)
  {
    for (j = 0; j < [v3 numberOfPointsInStrokeAtIndex:i]; ++j)
    {
      [v3 pointAtIndex:j inStrokeAtIndex:i];
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

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __AudioServicesPlaySystemSound(SystemSoundID)"];
  [v20 handleFailureInFunction:v21 file:@"UIKBHandwritingView.mm" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)touchPageOffsetTimer
{
  v3 = [(UIKBHandwritingView *)self nextPageTimer];
  if (!v3)
  {
    v8 = [(UIKBHandwritingView *)self inputSpeedModel];
    v4 = [v8 autoConfirmationEnabled];

    if (!v4)
    {
      goto LABEL_10;
    }

    v9 = [(UIKBHandwritingView *)self inputSpeedModel];
    [v9 timeoutForNextPage];
    v6 = v5;

    v10 = +[UIDevice currentDevice];
    v7 = [v10 userInterfaceIdiom] == 1 && !+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating");

    if (v6 <= 0.0 || (v7 & 1) != 0)
    {
      goto LABEL_10;
    }

    v11 = [[UIDelayedAction alloc] initWithTarget:self action:sel_pageOffsetTimerFired userInfo:0 delay:v6];
    [(UIKBHandwritingView *)self setNextPageTimer:?];
    v3 = v11;
  }

LABEL_10:
  v12 = [(UIKBHandwritingView *)self nextPageTimer];
  [v12 touch];
}

- (void)cancelPageOffsetTimer
{
  v3 = [(UIKBHandwritingView *)self nextPageTimer];
  [v3 cancel];

  v4 = [(UIKBHandwritingView *)self nextPageTimer];
  [v4 setTarget:0];

  [(UIKBHandwritingView *)self setNextPageTimer:0];
}

- (void)pageOffsetTimerFired
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBHandwritingView *)self inputSpeedModel];
  [v3 endCharacter];

  [(UIKBHandwritingView *)self startFadeOutAnimation];
  v4 = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (v4)
  {
    y = *(MEMORY[0x1E695F050] + 8);
    r1[0] = *MEMORY[0x1E695F050];
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    memset(&r1[1], 0, 32);
    v30 = 0u;
    v31 = 0u;
    v8 = [(UIKBHandwritingView *)self interpolatedPoints];
    v9 = [v8 countByEnumeratingWithState:&r1[1] objects:v32 count:16];
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
            objc_enumerationMutation(v8);
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
        v9 = [v8 countByEnumeratingWithState:&r1[1] objects:v32 count:16];
      }

      while (v9);
    }

    [(UIKBHandwritingView *)self pageOffset];
    [(UIKBHandwritingView *)self setPageOffset:r1[0] + width + v24];
    v25 = [(UIKBHandwritingView *)self strokeView];
    [v25 setNeedsDisplay];
  }

  else
  {
    [(UIKBHandwritingView *)self pageOffset];
    [(UIKBHandwritingView *)self setPageOffset:v26 + 10000.0];
    v27 = [(UIKBHandwritingView *)self strokeView];
    v28 = [(UIKBHandwritingView *)self strokeView];
    [v28 bounds];
    [v27 clearRect:?];
  }

  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = UIKBHandwritingView;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (!v3)
  {
    [(UIKBHandwritingView *)self cancelPageOffsetTimer];
  }
}

- (void)startFadeOutAnimation
{
  v3 = [(UIKBHandwritingView *)self snapshotView];

  if (v3)
  {
    v4 = [(UIKBHandwritingView *)self snapshotView];
    [v4 removeFromSuperview];
  }

  v5 = [(UIView *)self snapshotViewAfterScreenUpdates:0];
  [(UIKBHandwritingView *)self setSnapshotView:v5];

  v6 = [(UIKBHandwritingView *)self snapshotView];
  [v6 setUserInteractionEnabled:0];

  v7 = [(UIKBHandwritingView *)self snapshotView];
  [(UIView *)self addSubview:v7];

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

- (void)setRenderConfig:(id)a3
{
  v4 = a3;
  v5 = [(UIKBKeyView *)self renderConfig];
  if (v5)
  {
    v6 = [(UIKBKeyView *)self renderConfig];
    v7 = [v6 whiteText];
    v8 = v7 ^ [v4 whiteText];
  }

  else
  {
    v8 = 1;
  }

  v10.receiver = self;
  v10.super_class = UIKBHandwritingView;
  [(UIKBKeyView *)&v10 setRenderConfig:v4];
  if (v8)
  {
    [(UIKBHandwritingView *)self updateInkColor];
  }

  [(UIKBHandwritingView *)self updateCornerRadius];
  v9 = [(UIKBHandwritingView *)self strokeView];
  [v9 setNeedsDisplay];
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  [(UIKBHandwritingView *)self updateInkColor:a3];

  [(UIKBHandwritingView *)self clearAndNotify:0];
}

- (void)updateInkColor
{
  v5 = [(UIKBKeyView *)self renderConfig];
  if ([v5 whiteText])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v3 = ;
  -[UIKBHandwritingView setInkColor:](self, "setInkColor:", [v3 CGColor]);

  v4 = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (!v4)
  {
    v6 = [(UIKBHandwritingView *)self strokeView];
    [v6 updateInkColor];
  }
}

- (void)updateCornerRadius
{
  v3 = [(UIKBKeyView *)self renderConfig];
  v4 = [v3 colorAdaptiveBackground];

  if (v4)
  {
    v5 = *MEMORY[0x1E69796E8];
    v6 = [(UIView *)self layer];
    [v6 setCornerCurve:v5];

    v7 = 27.0;
    v8 = 3;
  }

  else
  {
    v9 = [(UIKBKeyView *)self factory];
    v10 = [(UIKBKeyView *)self key];
    v11 = [(UIKBKeyView *)self keyplane];
    v18 = [v9 traitsForKey:v10 onKeyplane:v11];

    v12 = [v18 geometry];
    [v12 roundRectRadius];
    v7 = v13;

    if (v7 == 0.0)
    {
      v17 = v18;
      goto LABEL_7;
    }

    v14 = [v18 geometry];
    v8 = [v14 roundRectCorners] & 0xF;

    if (!v8)
    {
      return;
    }
  }

  v15 = [(UIView *)self layer];
  [v15 setMaskedCorners:v8];

  v16 = [(UIView *)self layer];
  [v16 setCornerRadius:v7];
  v17 = v16;
LABEL_7:
}

- (void)clearAndNotify:(BOOL)a3
{
  v3 = a3;
  v9 = [(UIKBHandwritingView *)self inputSpeedModel];
  [v9 endCharacter];

  v10 = [(UIKBHandwritingView *)self inputSpeedModel];
  [v10 updatePreferences];

  [(UIKBHandwritingView *)self setPageOffset:0.0];
  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
  v11 = [(UIKBHandwritingView *)self strokeFIFO];
  [v11 clear];

  v12 = [(UIKBHandwritingView *)self interpolatedPoints];
  [v12 removeAllObjects];

  v5 = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (v5)
  {
    [(UIKBHandwritingView *)self setCurrentPath:0];
    v13 = [(UIKBHandwritingView *)self strokeView];
    [v13 setNeedsDisplay];
  }

  else
  {
    v14 = [(UIKBHandwritingView *)self currentPoints];
    [v14 removeAllObjects];

    v13 = [(UIKBHandwritingView *)self strokeView];
    v6 = [(UIKBHandwritingView *)self strokeView];
    [v6 bounds];
    [v13 clearRect:?];
  }

  if (v3)
  {
    v15 = +[UIKeyboardImpl activeInstance];
    [v15 clearInput];
    v7 = [(UIKBHandwritingView *)self strokeFIFO];
    v8 = [v7 strokes];
    [v15 addInputObject:v8];
  }
}

- (void)deleteStrokesAtIndexes:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(UIKBHandwritingView *)self cancelPageOffsetTimer];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    for (i = [v4 lastIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v4, "indexLessThanIndex:", i))
    {
      v10 = [(UIKBHandwritingView *)self interpolatedPoints];
      if (i >= [v10 count])
      {

LABEL_18:
        NSLog(&cfstr_SInvalidStroke.isa, "[UIKBHandwritingView deleteStrokesAtIndexes:]", v4);
        v43 = [(UIKBHandwritingView *)self strokeView];
        [v43 bounds];
        x = v44;
        y = v45;
        width = v46;
        height = v47;

        [(UIKBHandwritingView *)self clearAndNotify:0];
        break;
      }

      v11 = [(UIKBHandwritingView *)self strokeFIFO];
      v12 = [v11 strokes];
      v13 = i < [v12 numberOfStrokes];

      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = [(UIKBHandwritingView *)self bezierPathFIFO];
      v15 = v14 == 0;

      if (v15)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v29 = [(UIKBHandwritingView *)self interpolatedPoints];
        v30 = [v29 objectAtIndexedSubscript:i];

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
              v35 = [(UIKBHandwritingView *)self strokeView];
              [v34 UIKBHandwritingPointValue];
              [v35 handwritingPointToRect:?];
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
        v16 = [(UIKBHandwritingView *)self interpolatedPoints];
        v17 = [v16 objectAtIndex:i];
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

      v40 = [(UIKBHandwritingView *)self interpolatedPoints];
      [v40 removeObjectAtIndex:i];

      v41 = [(UIKBHandwritingView *)self strokeFIFO];
      v42 = [v41 strokes];
      [v42 removeStrokeAtIndex:i];
    }

    [(UIKBHandwritingView *)self pageOffset];
    v49 = v48;
    v50 = [(UIKBHandwritingView *)self bezierPathFIFO];
    v51 = v50 == 0;

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
  v3 = [(UIKBHandwritingView *)self strokeFIFO];
  v4 = [v3 strokes];
  v5 = [v4 numberOfStrokes];

  if (v5)
  {
    [(UIView *)self bounds];
    v6 = 1.0;
    if (v7 > 0.0)
    {
      [(UIView *)self bounds];
      v6 = 1000.0 / v8;
    }

    v9 = [(UIKBHandwritingView *)self strokeFIFO];
    v11 = [v9 scaleStrokes:v6];

    v10 = +[UIKeyboardImpl activeInstance];
    [v10 addInputObject:v11];
  }
}

- (void)addInkPoint:(CGPoint)a3 value:(double)a4
{
  y = a3.y;
  x = a3.x;
  v10 = [(UIKBHandwritingView *)self strokeFIFO];
  [v10 addPoint:{x, y, a4}];

  v8 = [(UIKBHandwritingView *)self bezierPathFIFO];

  if (v8)
  {
    v11 = [(UIKBHandwritingView *)self bezierPathFIFO];
    v9 = [v11 path];
    [(UIKBHandwritingView *)self setCurrentPath:v9];
  }

  v12 = +[UIKeyboardImpl activeInstance];
  [v12 updateIdleDetection:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v18 = a3;
  v5 = [(UIKBHandwritingView *)self inputSpeedModel];
  [v5 beginStroke];

  v6 = [(UIKBHandwritingView *)self activeTouches];
  [v6 unionSet:v18];

  v7 = [v18 anyObject];
  [v7 locationInView:self];
  v9 = v8;
  v11 = v10;
  v12 = [(UIKBHandwritingView *)self inputSpeedModel];
  [v7 timestamp];
  [v12 addPoint:v9 timestamp:{v11, v13}];

  [(UIKBHandwritingView *)self pageOffset];
  v15 = v14;
  [v7 force];
  v17 = v16;
  [(UIKBHandwritingView *)self setInitialPointPosted:0];
  [(UIKBHandwritingView *)self setPreviousPoint:v9 + v15, v11, v17];
  [(UIKBHandwritingView *)self cancelPageOffsetTimer];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v9 = [(UIKBHandwritingView *)self activeTouches];
  [v8 intersectSet:v9];

  v10 = v8;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [v10 anyObject];
  v12 = [v7 coalescedTouchesForTouch:v11];

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
        v21 = [(UIKBHandwritingView *)self inputSpeedModel];
        [v16 timestamp];
        [v21 addPoint:v18 timestamp:{v20, v22}];

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

- (BOOL)endStrokeWithTouches:(id)a3 event:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBHandwritingView *)self activeTouches];
  v9 = [v6 isSubsetOfSet:v8];

  v10 = [(UIKBHandwritingView *)self activeTouches];
  [v10 minusSet:v6];

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
    v15 = [v6 anyObject];
    v16 = [v7 coalescedTouchesForTouch:v15];

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
          v25 = [(UIKBHandwritingView *)self inputSpeedModel];
          [v20 timestamp];
          [v25 addPoint:v22 timestamp:{v24, v26}];

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
    v33 = [(UIKBHandwritingView *)self bezierPathFIFO];
    v34 = v33 == 0;

    interpolatedPoints = self->_interpolatedPoints;
    if (v34)
    {
      v39 = [(NSMutableArray *)self->_currentPoints copy];
      [(NSMutableArray *)interpolatedPoints addObject:v39];

      [(NSMutableArray *)self->_currentPoints removeAllObjects];
    }

    else
    {
      v36 = [(UIKBHandwritingView *)self bezierPathFIFO];
      v37 = [v36 path];
      v38 = [v37 copy];
      [(NSMutableArray *)interpolatedPoints addObject:v38];

      [(UIKBHandwritingView *)self setCurrentPath:0];
    }

    v40 = [(UIKBHandwritingView *)self inputSpeedModel];
    [v40 endStroke];

    [(UIKBHandwritingView *)self touchPageOffsetTimer];
  }

  return v9;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(UIKBHandwritingView *)self endStrokeWithTouches:v7 event:v6])
  {
    [(UIKBHandwritingView *)self send];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(UIKBHandwritingView *)self endStrokeWithTouches:a3 event:a4])
  {
    v6 = [(UIKBHandwritingStrokePointFIFO *)self->_strokeFIFO strokes];
    v5 = [v6 numberOfStrokes];

    if (v5)
    {
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5 - 1];
      [(UIKBHandwritingView *)self deleteStrokesAtIndexes:?];
    }
  }
}

- (unint64_t)numberOfStrokes
{
  v2 = [(UIKBHandwritingView *)self strokeFIFO];
  v3 = [v2 strokes];
  v4 = [v3 numberOfStrokes];

  return v4;
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(UIKBHandwritingView *)self bezierPathFIFO];

  v6 = 1;
  if (v3 && !v5)
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
  v2 = [(UIKBHandwritingView *)self activeTouches];
  [v2 removeAllObjects];
}

- (BOOL)cancelTouchTracking
{
  [(UIKBHandwritingStrokePointFIFO *)self->_strokeFIFO flush];
  v3 = [(UIKBHandwritingView *)self bezierPathFIFO];

  interpolatedPoints = self->_interpolatedPoints;
  if (v3)
  {
    v5 = [(UIKBHandwritingView *)self bezierPathFIFO];
    v6 = [v5 path];
    v7 = [v6 copy];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self superview];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(UIKBKeyView *)self keyplane];
  v14 = [v13 firstCachedKeyWithName:@"Delete-Key"];

  if (v14 && ([v14 frame], v24.x = v10, v24.y = v12, CGRectContainsPoint(v26, v24)))
  {
    v15 = 0;
  }

  else
  {
    v16 = [(UIKBKeyView *)self keyplane];
    v17 = [v16 firstCachedKeyWithName:@"Candidate-Selection"];

    if (v17 && ([v17 frame], v25.x = v10, v25.y = v12, CGRectContainsPoint(v27, v25)) && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "candidateController"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "candidateResultSet"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasCandidates"), v20, v19, v18, (v21 & 1) != 0))
    {
      v15 = 0;
    }

    else
    {
      v23.receiver = self;
      v23.super_class = UIKBHandwritingView;
      v15 = [(UIView *)&v23 pointInside:v7 withEvent:x, y];
    }
  }

  return v15;
}

- (void)setPreviousPoint:(id *)a3
{
  self->_previousPoint.point.x = v3;
  self->_previousPoint.point.y = v4;
  self->_previousPoint.force = v5;
}

@end