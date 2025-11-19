@interface PXFocusTimelineView
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (BOOL)_isEventWithinZoomRange:(id)a3;
- (BOOL)_isTickWithinActiveTrackRange:(double)a3;
- (CGPoint)_closestTickPointToPointOnTrack:(CGPoint)a3;
- (CGPoint)_trackPointFromTimestamp:(id *)a3;
- (CGRect)_trackFrame;
- (CGSize)intrinsicContentSize;
- (PXFocusTimelineView)initWithFrame:(CGRect)a3;
- (PXFocusTimelineViewDelegate)delegate;
- (double)_zoomAdjustedTickGap;
- (id)_axDescriptionForFocusEvent:(id)a3;
- (id)_eventAtLocation:(CGPoint)a3 threshold:(double)a4;
- (id)_imageViewForFocusEvent:(id)a3;
- (void)_addEventToTimeline:(id)a3 atIndex:(unint64_t)a4;
- (void)_animateFocusChangeFrom:(id)a3 to:(id)a4 completion:(id)a5;
- (void)_updateTrack;
- (void)_updateTrackingProgress;
- (void)addFocusEvent:(id *)a3 userInitiated:(BOOL)a4 shouldAnimate:(BOOL)a5;
- (void)handleEventSelectedAtLocation:(CGPoint)a3;
- (void)layoutSubviews;
- (void)objectTrackingFinishedWithSuccess:(BOOL)a3;
- (void)objectTrackingStartedAtTime:(id *)a3;
- (void)resetTimeline;
- (void)setDimmed:(BOOL)a3;
- (void)setTimeRange:(id *)a3;
- (void)setZoomMinValue:(double)a3 maxValue:(double)a4;
- (void)unzoom;
- (void)updateObjectTrackingProgressAtTime:(id *)a3 shouldStop:(BOOL *)a4;
- (void)updateTimeline;
@end

@implementation PXFocusTimelineView

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self[11].var0.var1;
  *&retstr->var0.var0 = *&self[10].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[11].var1.var0;
  return self;
}

- (PXFocusTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_axDescriptionForFocusEvent:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXFocusTimelineView *)self delegate];
    [v4 time];

    v6 = [v5 axDescriptionForFocusEventATime:v8];
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  return v6;
}

- (double)_zoomAdjustedTickGap
{
  v2 = self->_zoomMaxValue - self->_zoomMinValue;
  v3 = v2 > 0.0;
  result = 3.0 / (1.0 / v2) + 1.0;
  if (!self->_zoomed || !v3)
  {
    return 4.0;
  }

  return result;
}

- (BOOL)_isTickWithinActiveTrackRange:(double)a3
{
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"disableTimelineAnimations"];

  if ((v6 & 1) != 0 || ![(NSMutableArray *)self->_focusEvents count])
  {
    v8 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    focusEvents = self->_focusEvents;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PXFocusTimelineView__isTickWithinActiveTrackRange___block_invoke;
    v10[3] = &unk_1E773E8F8;
    *&v10[6] = a3;
    v10[4] = self;
    v10[5] = &v11;
    [(NSMutableArray *)focusEvents enumerateObjectsUsingBlock:v10];
    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v8 & 1;
}

void __53__PXFocusTimelineView__isTickWithinActiveTrackRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 location];
  v9 = v8;
  v10 = a3 + 1;
  v11 = [*(*(a1 + 32) + 408) count];
  if (v11 <= v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:v10];
  }

  v13 = *(a1 + 32);
  if (v13[480] == 1)
  {
    if (v7)
    {
      [v7 time];
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }

    [v13 _trackPointFromTimestamp:&v18];
    v9 = v14;
  }

  v15 = 0.0;
  if (v11 > v10)
  {
    v16 = *(a1 + 32);
    if (v16[480] == 1)
    {
      if (v12)
      {
        [v12 time];
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
      }

      [v16 _trackPointFromTimestamp:&v18];
    }

    else
    {
      [v12 location];
    }

    v15 = v17;
  }

  if ([v7 type] == 1 && *(*(a1 + 32) + 472) != v7 && (objc_msgSend(v7, "shouldAnimate") & 1) == 0 && *(a1 + 48) >= v9 && (objc_msgSend(*(*(a1 + 32) + 408), "count") == v10 || v11 > v10 && *(a1 + 48) <= v15))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)_isEventWithinZoomRange:(id)a3
{
  v4 = a3;
  v5 = v4;
  memset(&v19, 0, sizeof(v19));
  zoomMinValue = self->_zoomMinValue;
  if (v4)
  {
    [v4 time];
    LODWORD(v4) = v17;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  CMTimeMakeWithSeconds(&v19, zoomMinValue, v4);
  memset(&v15, 0, sizeof(v15));
  zoomMaxValue = self->_zoomMaxValue;
  if (!v5)
  {
    v12 = 0;
    *preferredTimescale = 0;
    v14 = 0;
    CMTimeMakeWithSeconds(&v15, zoomMaxValue, 0);
    if (self->_zoomed)
    {
      memset(&time2, 0, sizeof(time2));
      goto LABEL_9;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  [v5 time];
  CMTimeMakeWithSeconds(&v15, zoomMaxValue, preferredTimescale[0]);
  if (!self->_zoomed)
  {
    goto LABEL_15;
  }

  [v5 time];
LABEL_9:
  v10 = v19;
  if (CMTimeCompare(&v10, &time2) <= 0)
  {
    if (v5)
    {
      [v5 time];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v10 = v15;
    if ((CMTimeCompare(&v10, &time2) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = 1;
LABEL_16:

  return v8;
}

- (id)_eventAtLocation:(CGPoint)a3 threshold:(double)a4
{
  x = a3.x;
  v37 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  focusEvents = self->_focusEvents;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __50__PXFocusTimelineView__eventAtLocation_threshold___block_invoke;
  v31[3] = &unk_1E773E8D0;
  v33 = x;
  v34 = 0x401C000000000000;
  v35 = a4;
  v9 = v7;
  v32 = v9;
  [(NSMutableArray *)focusEvents enumerateObjectsUsingBlock:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v17 location];
        v19 = v18 - x;
        if (v18 - x < a4)
        {
          v20 = v17;

          v14 = v20;
          a4 = v19;
        }

        if ([v17 type] == 1)
        {
          v21 = v17;

          v13 = v21;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v22 = [v14 type];
  if (v13)
  {
    v23 = v22 == 1;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = v14;
  }

  else
  {
    v24 = v13;
  }

  v25 = v24;

  return v25;
}

void __50__PXFocusTimelineView__eventAtLocation_threshold___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  [v12 location];
  v7 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v8 >= v7 - v9 - v10 && v8 <= v7 + v9 + v10)
  {
    [*(a1 + 32) addObject:v12];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
  }

  if (v7 > v8 + v9 + v10)
  {
    *a4 = 1;
  }
}

- (CGPoint)_closestTickPointToPointOnTrack:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXFocusTimelineView *)self _zoomAdjustedTickGap];
  v6 = v5 * round(x / v5);
  v7 = y;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)_trackPointFromTimestamp:(id *)a3
{
  var0 = a3->var0;
  [(PXFocusTimelineView *)self _trackFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PXFocusTimelineView *)self timeRange];
  v14 = v27;
  [(PXFocusTimelineView *)self timeRange];
  v15 = v26;
  CMTimeMakeWithSeconds(&v25, self->_zoomMinValue, a3->var1);
  value = v25.value;
  CMTimeMakeWithSeconds(&v24, self->_zoomMaxValue, a3->var1);
  v17 = v24.value - value;
  zoomed = self->_zoomed;
  v19 = v17 > 0.0;
  if (zoomed && v19)
  {
    v20 = value;
  }

  else
  {
    v20 = v15;
  }

  if (!zoomed || !v19)
  {
    v17 = v14;
  }

  v21 = v11 * ((var0 - v20) / v17);
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  MidY = CGRectGetMidY(v29);
  v23 = v21;
  result.y = MidY;
  result.x = v23;
  return result;
}

- (CGRect)_trackFrame
{
  [(PXFocusTimelineView *)self bounds];
  v3 = v2 + -14.0;
  v5 = v4 + 7.0;
  *&v6 = (v6 + -6.0) * 0.5;
  v8 = v7 + roundf(*&v6);
  v9 = 6.0;

  return CGRectIntegral(*&v5);
}

- (void)_updateTrackingProgress
{
  objectTrackingEvent = self->_objectTrackingEvent;
  if (objectTrackingEvent && (self->_currentTrackingTime.flags & 1) != 0)
  {
    [(PXFocusTimelineEvent *)objectTrackingEvent location];
    v5 = v4;
    v12 = *&self->_currentTrackingTime.value;
    epoch = self->_currentTrackingTime.epoch;
    [(PXFocusTimelineView *)self _trackPointFromTimestamp:&v12];
    v7 = v6 - v5;
    [(PXFocusTimelineView *)self _trackFrame];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    CGRectGetMidY(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGRectGetMaxX(v15);
    if (v7 > 0.0)
    {
      [(UIView *)self->_progressView setFrame:?];
    }
  }
}

- (void)_animateFocusChangeFrom:(id)a3 to:(id)a4 completion:(id)a5
{
  v60[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = [(PXFocusTimelineView *)self _imageViewForFocusEvent:v8];
  v37 = [v38 layer];
  [v37 setOpacity:0.0];
  [(UIView *)self->_focusEventsView addSubview:v38];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__157649;
  v58 = __Block_byref_object_dispose__157650;
  v11 = v9;
  v59 = v11;
  if (v11 || (focusEvents = self->_focusEvents, v50[0] = MEMORY[0x1E69E9820], v50[1] = 3221225472, v50[2] = __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke, v50[3] = &unk_1E773E880, v51 = v8, v52 = self, v53 = &v54, [(NSMutableArray *)focusEvents enumerateObjectsUsingBlock:v50], v11 = v55[5], v51, v11))
  {
    v13 = [(PXFocusTimelineView *)self _imageViewForFocusEvent:v11];
    v36 = [v13 layer];
    if ([v11 shouldAnimate])
    {
      [v36 setOpacity:0.0];
    }

    [(UIView *)self->_focusEventsView addSubview:v13];
  }

  else
  {
    v36 = 0;
    v13 = 0;
  }

  v14 = [(NSMutableArray *)self->_animatableFocusEvents indexOfObject:v8];
  if ([(NSMutableArray *)self->_animatableFocusEvents count]<= (v14 - 1))
  {
    v16 = 0;
  }

  else
  {
    v15 = [(NSMutableArray *)self->_animatableFocusEvents objectAtIndexedSubscript:?];
    v16 = [v15 shouldAnimate];
  }

  [MEMORY[0x1E6979518] begin];
  LODWORD(v17) = 1036831949;
  LODWORD(v18) = 0.25;
  LODWORD(v19) = 0.25;
  LODWORD(v20) = 1.0;
  v21 = [MEMORY[0x1E69793D0] functionWithControlPoints:v18 :v17 :v19 :v20];
  v22 = objc_alloc_init(MEMORY[0x1E6979308]);
  [v22 setBeginTime:CACurrentMediaTime() + 0.3];
  [v22 setRemovedOnCompletion:0];
  [v22 setFillMode:*MEMORY[0x1E69797E8]];
  v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v23 setDuration:0.3];
  [v23 setTimingFunction:v21];
  [v23 setFromValue:&unk_1F190E178];
  [v23 setToValue:&unk_1F190E188];
  v24 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v24 setStiffness:600.0];
  [v24 setDamping:20.0];
  [v24 setFromValue:&unk_1F190E198];
  [v24 setToValue:&unk_1F190CD00];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke_64;
  aBlock[3] = &unk_1E773E8A8;
  v25 = v8;
  v42 = v25;
  v43 = self;
  v26 = v11;
  v44 = v26;
  v27 = v21;
  v45 = v27;
  v28 = v23;
  v46 = v28;
  v29 = v24;
  v47 = v29;
  v30 = v10;
  v49 = v30;
  v31 = v13;
  v48 = v31;
  v32 = _Block_copy(aBlock);
  v33 = v32;
  if (v16)
  {
    (*(v32 + 2))(v32);
  }

  else
  {
    v60[0] = v28;
    v60[1] = v29;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    [v22 setAnimations:v34];

    v35 = MEMORY[0x1E6979518];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke_76;
    v39[3] = &unk_1E774C250;
    v40 = v33;
    [v35 setCompletionBlock:v39];
    [v37 addAnimation:v22 forKey:@"appearAnimations"];
    [MEMORY[0x1E6979518] commit];
  }

  _Block_object_dispose(&v54, 8);
}

void __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[4] == a2)
  {
    v4 = a3 + 1;
    if (a3 + 1 < [*(a1[5] + 408) count])
    {
      v5 = [*(a1[5] + 408) objectAtIndexedSubscript:v4];
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

void __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke_64(uint64_t a1)
{
  v2 = [MEMORY[0x1E6979430] layer];
  [*(a1 + 32) location];
  [*(a1 + 40) _closestTickPointToPointOnTrack:?];
  v4 = v3 + 1.0;
  v5 = *(a1 + 48);
  if (v5)
  {
    [v5 location];
  }

  else
  {
    [*(a1 + 40) _trackFrame];
    MaxX = CGRectGetMaxX(v36);
  }

  v7 = MaxX - v4 + 7.0;
  [*(a1 + 40) _zoomAdjustedTickGap];
  v9 = v8;
  v10 = (v7 / v8);
  [v2 setFrame:{0.0, 0.0, v7, 6.0}];
  [v2 setPosition:{v4 + v7 * 0.5, 4.0}];
  [v2 setInstanceCount:v10];
  [v2 setInstanceDelay:0.005];
  v11 = *(MEMORY[0x1E69792E8] + 64);
  v12 = *(MEMORY[0x1E69792E8] + 96);
  v13 = *(MEMORY[0x1E69792E8] + 112);
  *&v34.m33 = *(MEMORY[0x1E69792E8] + 80);
  *&v34.m41 = v12;
  *&v34.m43 = v13;
  v14 = *(MEMORY[0x1E69792E8] + 16);
  *&v34.m11 = *MEMORY[0x1E69792E8];
  *&v34.m13 = v14;
  v15 = *(MEMORY[0x1E69792E8] + 48);
  *&v34.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v34.m23 = v15;
  *&v34.m31 = v11;
  CATransform3DTranslate(&v35, &v34, v9, 0.0, 0.0);
  v34 = v35;
  [v2 setInstanceTransform:&v34];
  v16 = [MEMORY[0x1E6979398] layer];
  [v16 setOpacity:0.0];
  [v16 setBounds:{0.0, 0.0, 1.0, 4.0}];
  [v16 setPosition:{0.0, 2.0}];
  v17 = [MEMORY[0x1E69DC888] systemYellowColor];
  [v16 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];
  [v2 addSublayer:v16];
  v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v18 setDuration:0.1];
  [v18 setTimingFunction:*(a1 + 56)];
  [v18 setFromValue:&unk_1F190E178];
  [v18 setToValue:&unk_1F190E188];
  [v18 setFillMode:*MEMORY[0x1E69797E8]];
  [v18 setRemovedOnCompletion:0];
  v19 = [*(*(a1 + 40) + 424) layer];
  [v19 addSublayer:v2];

  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = MEMORY[0x1E6979518];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke_2;
    v28[3] = &unk_1E77426E0;
    v32 = v10;
    v33 = 0x3F747AE147AE147BLL;
    v29 = v20;
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    *&v25 = *(a1 + 80);
    *(&v25 + 1) = v24;
    *&v26 = v22;
    *(&v26 + 1) = v23;
    v30 = v26;
    v31 = v25;
    [v21 setCompletionBlock:v28];
  }

  else
  {
    v27 = dispatch_time(0, (v10 * 0.005 * 1000000000.0));
    dispatch_after(v27, MEMORY[0x1E69E96A0], *(a1 + 88));
  }

  [v16 addAnimation:v18 forKey:@"opacityAnimation"];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke_76(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __61__PXFocusTimelineView__animateFocusChangeFrom_to_completion___block_invoke_2(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  v2 = objc_alloc_init(MEMORY[0x1E6979308]);
  [v2 setBeginTime:CACurrentMediaTime() + *(a1 + 72) * *(a1 + 80)];
  [v2 setRemovedOnCompletion:0];
  [v2 setFillMode:*MEMORY[0x1E69797E8]];
  if ([*(a1 + 32) shouldAnimate])
  {
    v3 = [*(a1 + 40) copy];
    v4 = [*(a1 + 48) copy];
    v8[0] = v3;
    v8[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    [v2 setAnimations:v5];
  }

  else
  {
    v3 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
    [v3 setStiffness:600.0];
    [v3 setDamping:20.0];
    [v3 setFromValue:&unk_1F190E1A8];
    [v3 setToValue:&unk_1F190CD00];
    v7 = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [v2 setAnimations:v4];
  }

  [MEMORY[0x1E6979518] setCompletionBlock:*(a1 + 64)];
  v6 = [*(a1 + 56) layer];
  [v6 addAnimation:v2 forKey:@"appearAnimations"];
  [MEMORY[0x1E6979518] commit];
}

- (id)_imageViewForFocusEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 time];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  [(PXFocusTimelineView *)self _trackPointFromTimestamp:v13];
  v7 = v6;
  v9 = v8;
  [v5 setLocation:?];
  if ([v5 type])
  {
    [(PXFocusTimelineView *)self userInitiatedFocusEventMarkerImage];
  }

  else
  {
    [(PXFocusTimelineView *)self autoFocusEventMarkerImage];
  }
  v10 = ;
  v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v11 setFrame:{v7, v9 + -7.0, 14.0, 14.0}];
  [v11 setImage:v10];

  return v11;
}

- (void)_addEventToTimeline:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (![(PXFocusTimelineView *)self _isEventWithinZoomRange:v6])
  {
    v7 = [(PXFocusTimelineView *)self _imageViewForFocusEvent:v6];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = a4;
    v8 = [(NSMutableArray *)self->_animatableFocusEvents count];
    if (v8 <= a4 - 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = [(NSMutableArray *)self->_animatableFocusEvents objectAtIndexedSubscript:?];
      v10 = [v9 shouldAnimate];
    }

    v11 = (a4 + 1);
    if (v8 <= a4 + 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(NSMutableArray *)self->_animatableFocusEvents objectAtIndexedSubscript:a4 + 1];
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PXFocusTimelineView__addEventToTimeline_atIndex___block_invoke;
    aBlock[3] = &unk_1E773E858;
    objc_copyWeak(v20, &location);
    v19 = v22;
    v20[1] = (v8 - 1);
    v13 = v12;
    v18 = v13;
    v20[2] = v11;
    v14 = _Block_copy(aBlock);
    if ([v6 shouldAnimate])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__PXFocusTimelineView__addEventToTimeline_atIndex___block_invoke_3;
      v15[3] = &unk_1E774C250;
      v16 = v14;
      [(PXFocusTimelineView *)self _animateFocusChangeFrom:v6 to:v13 completion:v15];
    }

    else
    {
      if ((v10 & 1) == 0)
      {
        [(UIView *)self->_focusEventsView addSubview:v7];
      }

      v14[2](v14);
    }

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);

    _Block_object_dispose(v22, 8);
  }
}

void __51__PXFocusTimelineView__addEventToTimeline_atIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 56))
    {
      v4 = WeakRetained;
      [WeakRetained[52] enumerateObjectsUsingBlock:&__block_literal_global_157679];
      [v4 _updateTrack];
    }

    else
    {
      v3 = *(a1 + 32);
      if (!v3)
      {
        goto LABEL_7;
      }

      v4 = WeakRetained;
      [WeakRetained _addEventToTimeline:v3 atIndex:*(a1 + 64)];
    }

    WeakRetained = v4;
  }

LABEL_7:
}

- (void)updateTimeline
{
  v24 = *MEMORY[0x1E69E9840];
  [(PXFocusTimelineView *)self timeRange];
  if ((v22 & 1) != 0 && [(NSMutableArray *)self->_focusEvents count])
  {
    v3 = [(UIView *)self->_focusEventsView subviews];
    v4 = [v3 copy];
    [v4 makeObjectsPerformSelector:sel_removeFromSuperview];

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    LODWORD(v4) = [v5 BOOLForKey:@"disableTimelineAnimations"];

    if (v4)
    {
      focusEvents = self->_focusEvents;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __37__PXFocusTimelineView_updateTimeline__block_invoke;
      v21[3] = &unk_1E773E810;
      v21[4] = self;
      [(NSMutableArray *)focusEvents enumerateObjectsUsingBlock:v21];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithArray:self->_focusEvents];
      [v7 removeObjectsInArray:self->_animatableFocusEvents];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __37__PXFocusTimelineView_updateTimeline__block_invoke_2;
      v20[3] = &unk_1E773E810;
      v20[4] = self;
      [v7 enumerateObjectsUsingBlock:v20];
      [(PXFocusTimelineView *)self _updateTrack];
      if ([(NSMutableArray *)self->_animatableFocusEvents count])
      {
        v8 = [(NSMutableArray *)self->_animatableFocusEvents objectAtIndexedSubscript:0];
        [(PXFocusTimelineView *)self _addEventToTimeline:v8 atIndex:0];
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_focusEvents;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 type] == 1)
          {
            v15 = [(PXFocusTimelineView *)self _imageViewForFocusEvent:v14];
            [(UIView *)self->_focusEventsView bringSubviewToFront:v15];
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v11);
    }
  }
}

void __37__PXFocusTimelineView_updateTimeline__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) _isEventWithinZoomRange:?] & 1) == 0)
  {
    v3 = [*(a1 + 32) _imageViewForFocusEvent:v4];
    [*(*(a1 + 32) + 432) addSubview:v3];
  }
}

void __37__PXFocusTimelineView_updateTimeline__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) _isEventWithinZoomRange:?] & 1) == 0)
  {
    v3 = [*(a1 + 32) _imageViewForFocusEvent:v4];
    [*(*(a1 + 32) + 432) addSubview:v3];
  }
}

- (void)_updateTrack
{
  v3 = [(UIImageView *)self->_trackImageView layer];
  v4 = [v3 sublayers];
  v5 = [v4 copy];
  [v5 makeObjectsPerformSelector:sel_removeFromSuperlayer];

  [(PXFocusTimelineView *)self _trackFrame];
  v7 = v6;
  v9 = v8;
  [(PXFocusTimelineView *)self px_screenScale];
  v11 = v10;
  v12 = vcvtpd_s64_f64(v10 * v7);
  v13 = vcvtpd_s64_f64(v10 * v9);
  [(PXFocusTimelineView *)self timeRange];
  *&v41.a = v44;
  v41.c = v45;
  Seconds = CMTimeGetSeconds(&v41);
  [(PXFocusTimelineView *)self timeRange];
  *&v41.a = v42;
  v41.c = v43;
  v15 = CMTimeGetSeconds(&v41);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = CGBitmapContextCreate(0, v12, v13, 8uLL, 0, DeviceRGB, 2u);
  CGColorSpaceRelease(DeviceRGB);
  if (v17)
  {
    v46.size.width = v12;
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v46.size.height = v13;
    CGContextClearRect(v17, v46);
    CGContextTranslateCTM(v17, 0.0, v13);
    CGContextScaleCTM(v17, v11, -v11);
    CGContextGetCTM(&v41, v17);
    CGContextSetBaseCTM();
  }

  v18 = [MEMORY[0x1E69DC888] systemYellowColor];
  v19 = [MEMORY[0x1E69DC888] labelColor];
  v20 = [(PXFocusTimelineView *)self traitCollection];
  v21 = [v19 resolvedColorWithTraitCollection:v20];
  v22 = [v21 colorWithAlphaComponent:0.6];
  v23 = [v22 CGColor];

  v24 = [(PXFocusTimelineView *)self traitCollection];
  v25 = [v18 resolvedColorWithTraitCollection:v24];
  v26 = [v25 CGColor];

  v27 = 1.0;
  CGContextSetLineWidth(v17, 1.0);
  if (self->_zoomed)
  {
    zoomMinValue = self->_zoomMinValue;
    if (zoomMinValue > v15)
    {
      v29 = 2.0;
    }

    else
    {
      v29 = 0.0;
    }

    if (zoomMinValue > v15)
    {
      v30 = 2.0;
    }

    else
    {
      v30 = 6.0;
    }
  }

  else
  {
    v30 = 6.0;
    v29 = 0.0;
  }

  CGContextBeginPath(v17);
  if ([(PXFocusTimelineView *)self _isTickWithinActiveTrackRange:1.0])
  {
    v31 = v26;
  }

  else
  {
    v31 = v23;
  }

  CGContextSetStrokeColorWithColor(v17, v31);
  CGContextMoveToPoint(v17, 1.0, v29);
  CGContextAddLineToPoint(v17, 1.0, v29 + v30);
  CGContextStrokePath(v17);
  [(PXFocusTimelineView *)self _zoomAdjustedTickGap];
  v33 = v7 - v32;
  if (v7 - v32 > 1.0)
  {
    v34 = v32;
    do
    {
      v27 = v34 + v27;
      CGContextBeginPath(v17);
      if ([(PXFocusTimelineView *)self _isTickWithinActiveTrackRange:v27])
      {
        CGContextSetStrokeColorWithColor(v17, v26);
        CGContextMoveToPoint(v17, v27, 1.0);
        CGContextAddLineToPoint(v17, v27, 5.0);
      }

      else
      {
        CGContextMoveToPoint(v17, v27, 2.0);
        CGContextAddLineToPoint(v17, v27, 4.0);
        CGContextSetStrokeColorWithColor(v17, v23);
      }

      CGContextStrokePath(v17);
    }

    while (v27 < v33);
  }

  if (!self->_zoomed || (v35 = Seconds + v15, v36 = 2.0, v37 = 2.0, self->_zoomMaxValue >= v35))
  {
    v27 = v7 + -1.0;
    v37 = 6.0;
    v36 = 0.0;
  }

  CGContextBeginPath(v17);
  if ([(PXFocusTimelineView *)self _isTickWithinActiveTrackRange:v27])
  {
    v38 = v26;
  }

  else
  {
    v38 = v23;
  }

  CGContextSetStrokeColorWithColor(v17, v38);
  CGContextMoveToPoint(v17, v27, v36);
  CGContextAddLineToPoint(v17, v27, v36 + v37);
  CGContextStrokePath(v17);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  v40 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v11];
  CGImageRelease(Image);
  [(UIImageView *)self->_trackImageView setImage:v40];
}

- (void)objectTrackingFinishedWithSuccess:(BOOL)a3
{
  v4 = [(PXFocusTimelineView *)self delegate];
  [v4 hideFocusTimelineActions:self];

  self->_currentTrackingTime = **&MEMORY[0x1E6960C70];
  [(UIView *)self->_progressView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(PXFocusTimelineView *)self setUserInteractionEnabled:1];
}

- (void)updateObjectTrackingProgressAtTime:(id *)a3 shouldStop:(BOOL *)a4
{
  if (self->_objectTrackingEvent && (a3->var2 & 1) != 0)
  {
    v7 = *&self->_timeRange.start.epoch;
    *&range.start.value = *&self->_timeRange.start.value;
    *&range.start.epoch = v7;
    *&range.duration.timescale = *&self->_timeRange.duration.timescale;
    v10 = *a3;
    if (CMTimeRangeContainsTime(&range, &v10))
    {
      v8 = [(PXFocusTimelineView *)self delegate];
      [v8 focusTimeline:self updateTrackingProgressShouldStop:a4];

      var3 = a3->var3;
      *&self->_currentTrackingTime.value = *&a3->var0;
      self->_currentTrackingTime.epoch = var3;
      [(PXFocusTimelineView *)self _updateTrackingProgress];
    }
  }
}

- (void)objectTrackingStartedAtTime:(id *)a3
{
  if (a3->var2)
  {
    v5 = *&self->_timeRange.start.epoch;
    *&range.start.value = *&self->_timeRange.start.value;
    *&range.start.epoch = v5;
    *&range.duration.timescale = *&self->_timeRange.duration.timescale;
    v11 = *a3;
    if (CMTimeRangeContainsTime(&range, &v11))
    {
      if (!self->_objectTrackingEvent)
      {
        v6 = [PXFocusTimelineEvent alloc];
        *&range.start.value = *&a3->var0;
        range.start.epoch = a3->var3;
        v7 = [(PXFocusTimelineEvent *)v6 initWithTime:&range type:1];
        objectTrackingEvent = self->_objectTrackingEvent;
        self->_objectTrackingEvent = v7;

        [(NSMutableArray *)self->_focusEvents addObject:self->_objectTrackingEvent];
        [(PXFocusTimelineView *)self updateTimeline];
      }

      v9 = objc_alloc_init(PXFocusTimelineAction);
      *&range.start.value = *&a3->var0;
      range.start.epoch = a3->var3;
      [(PXFocusTimelineAction *)v9 setTime:&range];
      [(PXFocusTimelineAction *)v9 setKind:1];
      v10 = [(PXFocusTimelineView *)self delegate];
      [(PXFocusTimelineEvent *)self->_objectTrackingEvent location];
      [v10 focusTimeline:self presentAction:v9 locationInTimeline:?];

      [(PXFocusTimelineView *)self setUserInteractionEnabled:0];
    }
  }
}

- (void)setDimmed:(BOOL)a3
{
  v3 = a3 || !self->_viewCanBeEnabled;
  if (self->_dimmed != v3)
  {
    self->_dimmed = v3;
    [(PXFocusTimelineView *)self setUserInteractionEnabled:!v3];
    v5 = 0.3;
    if (!v3)
    {
      v5 = 1.0;
    }

    [(PXFocusTimelineView *)self setAlpha:v5];
  }
}

- (void)resetTimeline
{
  [(NSMutableArray *)self->_focusEvents removeAllObjects];
  [(NSMutableArray *)self->_animatableFocusEvents removeAllObjects];
  [(PXFocusTimelineView *)self setNeedsLayout];

  [(PXFocusTimelineView *)self layoutIfNeeded];
}

- (void)setTimeRange:(id *)a3
{
  if ((a3->var0.var2 & 1) != 0 && (a3->var1.var2 & 1) != 0 && !a3->var1.var3 && (a3->var1.var0 & 0x8000000000000000) == 0)
  {
    p_timeRange = &self->_timeRange;
    v6 = *&a3->var0.var3;
    *&range1.start.value = *&a3->var0.var0;
    *&range1.start.epoch = v6;
    *&range1.duration.timescale = *&a3->var1.var1;
    v7 = *&self->_timeRange.start.epoch;
    *&v10.start.value = *&self->_timeRange.start.value;
    *&v10.start.epoch = v7;
    *&v10.duration.timescale = *&self->_timeRange.duration.timescale;
    if (!CMTimeRangeEqual(&range1, &v10))
    {
      v8 = *&a3->var0.var0;
      v9 = *&a3->var1.var1;
      *&p_timeRange->start.epoch = *&a3->var0.var3;
      *&p_timeRange->duration.timescale = v9;
      *&p_timeRange->start.value = v8;
      [(PXFocusTimelineView *)self updateTimeline];
    }
  }
}

- (void)addFocusEvent:(id *)a3 userInitiated:(BOOL)a4 shouldAnimate:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [PXFocusTimelineEvent alloc];
  time1 = *a3;
  v10 = [(PXFocusTimelineEvent *)v9 initWithTime:&time1 type:v8];
  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [v11 BOOLForKey:@"disableTimelineAnimations"];

  if ((v12 & 1) == 0)
  {
    if (v5)
    {
      objectTrackingEvent = self->_objectTrackingEvent;
      if (!objectTrackingEvent || ([(PXFocusTimelineEvent *)objectTrackingEvent time], v15 = *a3, CMTimeCompare(&time1, &v15)))
      {
        [(PXFocusTimelineEvent *)v10 setShouldAnimate:1];
        [(NSMutableArray *)self->_animatableFocusEvents addObject:v10];
        goto LABEL_8;
      }

      v14 = self->_objectTrackingEvent;
      self->_objectTrackingEvent = 0;
    }

    [(PXFocusTimelineEvent *)v10 setShouldAnimate:0];
  }

LABEL_8:
  time1 = *a3;
  [(PXFocusTimelineView *)self _trackPointFromTimestamp:&time1];
  [(PXFocusTimelineEvent *)v10 setLocation:?];
  [(NSMutableArray *)self->_focusEvents addObject:v10];
}

- (void)handleEventSelectedAtLocation:(CGPoint)a3
{
  v4 = [(PXFocusTimelineView *)self _eventAtLocation:a3.x threshold:a3.y, 10.0];
  if (v4)
  {
    v5 = objc_alloc_init(PXFocusTimelineAction);
    [v4 time];
    v7 = v9;
    v8 = v10;
    [(PXFocusTimelineAction *)v5 setTime:&v7];
    -[PXFocusTimelineAction setKind:](v5, "setKind:", 2 * ([v4 type] != 1));
    v6 = [(PXFocusTimelineView *)self delegate];
    [v4 location];
    [v6 focusTimeline:self presentAction:v5 locationInTimeline:?];
  }
}

- (void)unzoom
{
  self->_zoomed = 0;
  [(PXFocusTimelineView *)self setNeedsLayout];

  [(PXFocusTimelineView *)self layoutIfNeeded];
}

- (void)setZoomMinValue:(double)a3 maxValue:(double)a4
{
  self->_zoomed = 1;
  self->_zoomMinValue = a3;
  self->_zoomMaxValue = a4;
  [(PXFocusTimelineView *)self setNeedsLayout];

  [(PXFocusTimelineView *)self layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  [(PXFocusTimelineView *)self bounds];

  [(PXFocusTimelineView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXFocusTimelineView;
  [(PXFocusTimelineView *)&v3 layoutSubviews];
  if (![(PXFocusTimelineView *)self skipLayoutUpdates])
  {
    [(PXFocusTimelineView *)self _trackFrame];
    [(UIImageView *)self->_trackImageView setFrame:?];
    [(PXFocusTimelineView *)self _updateTrack];
    [(PXFocusTimelineView *)self bounds];
    [(UIView *)self->_focusEventsView setFrame:?];
    [(PXFocusTimelineView *)self updateTimeline];
    [(PXFocusTimelineView *)self _updateTrackingProgress];
  }
}

- (PXFocusTimelineView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = PXFocusTimelineView;
  v3 = [(PXFocusTimelineView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXFocusTimelineView *)v3 setOpaque:0];
    [(PXFocusTimelineView *)v4 setDimmed:1];
    v4->_viewCanBeEnabled = 1;
    v5 = [MEMORY[0x1E695DF70] array];
    focusEvents = v4->_focusEvents;
    v4->_focusEvents = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    animatableFocusEvents = v4->_animatableFocusEvents;
    v4->_animatableFocusEvents = v7;

    v9 = MEMORY[0x1E6960C70];
    *&v4->_currentTrackingTime.value = *MEMORY[0x1E6960C70];
    v4->_currentTrackingTime.epoch = *(v9 + 16);
    objectTrackingEvent = v4->_objectTrackingEvent;
    v4->_objectTrackingEvent = 0;

    v4->_zoomMinValue = 0.0;
    v4->_zoomMaxValue = 0.0;
    v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
    trackImageView = v4->_trackImageView;
    v4->_trackImageView = v16;

    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
    focusEventsView = v4->_focusEventsView;
    v4->_focusEventsView = v18;

    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
    progressView = v4->_progressView;
    v4->_progressView = v20;

    v22 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIView *)v4->_progressView setBackgroundColor:v22];
    [(PXFocusTimelineView *)v4 addSubview:v4->_trackImageView];
    [(PXFocusTimelineView *)v4 addSubview:v4->_progressView];
    [(PXFocusTimelineView *)v4 addSubview:v4->_focusEventsView];
  }

  return v4;
}

@end