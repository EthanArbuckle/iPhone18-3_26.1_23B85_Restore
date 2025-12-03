@interface UITextMagnifierRanged
+ (id)sharedRangedMagnifier;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)adjustMagnificationPoint:(CGPoint)point;
- (CGPoint)clipPoint:(CGPoint)point inRect:(CGRect)rect;
- (CGRect)caretRectClosestToPoint:(CGPoint)point;
- (UITextMagnifierRanged)initWithFrame;
- (int)horizontalMovement;
- (int)horizontalMovementAtTime:(double)time;
- (void)beginMagnifyingTarget:(id)target text:(id)text magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)setIsHorizontal:(BOOL)horizontal;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrameAndOffset;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation UITextMagnifierRanged

+ (id)sharedRangedMagnifier
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = SharedInstance_0;
    if (!SharedInstance_0)
    {
      initWithFrame = [[UITextMagnifierRanged alloc] initWithFrame];
      v8 = SharedInstance_0;
      SharedInstance_0 = initWithFrame;

      v6 = SharedInstance_0;
    }

    v5 = v6;
  }

  return v5;
}

- (UITextMagnifierRanged)initWithFrame
{
  v6.receiver = self;
  v6.super_class = UITextMagnifierRanged;
  v2 = [(UITextMagnifier *)&v6 initWithFrame:0.0, 0.0, 139.0, 55.0];
  v3 = v2;
  if (v2)
  {
    v2->_isHorizontal = 1;
    v2->_isAnimating = 0;
    v2->_delayedAnimationType = 0;
    v4 = v2;
  }

  return v3;
}

- (void)setIsHorizontal:(BOOL)horizontal
{
  self->_isHorizontal = horizontal;
  if (!self->_isAnimating)
  {
    [(UITextMagnifierRanged *)self updateFrameAndOffset];
  }

  [(UIView *)self->super._magnifierRenderer update];
  autoscrollRenderer = self->super._autoscrollRenderer;

  [(UIView *)autoscrollRenderer update];
}

- (void)setMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6.receiver = self;
  v6.super_class = UITextMagnifierRanged;
  [(UITextMagnifier *)&v6 setMagnificationPoint:?];
  [(UITextMagnifier *)self setAnimationPoint:x, y];
}

- (BOOL)terminalPointPlacedCarefully
{
  v3 = [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint historyCovers:0.2];
  [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint distanceCoveredInInterval:0.2];
  return v4 < 20.0 && v3;
}

- (int)horizontalMovementAtTime:(double)time
{
  [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint distanceCoveredInInterval:3.40282347e38];
  v5 = v4;
  [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint displacementInInterval:0.5];
  v7 = fabs(v6);
  v9 = fabs(v8) * 4.0;
  v10 = v7 >= 16.0 && v9 <= v7;
  if (v10 && v7 * 1.5 >= v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (int)horizontalMovement
{
  [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint distanceCoveredInInterval:3.40282347e38];
  v4 = v3;
  [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint displacementInInterval:0.5];
  v6 = fabs(v5);
  v8 = fabs(v7) * 4.0;
  v9 = v6 >= 16.0 && v8 <= v6;
  if (v9 && v6 * 1.5 >= v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)zoomUpAnimation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__UITextMagnifierRanged_zoomUpAnimation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [(UITextMagnifier *)self beginZoomUpAnimation:v2 withDuration:0.1];
}

uint64_t __40__UITextMagnifierRanged_zoomUpAnimation__block_invoke(uint64_t a1)
{
  memset(&v14, 0, sizeof(v14));
  v2 = *(a1 + 32);
  v3 = v2[536];
  [v2 bounds];
  if (v3 == 1)
  {
    v8 = (v5 + v7) * 0.5;
    v9 = 0.0;
  }

  else
  {
    v9 = (v4 + v6) * 0.5;
    v8 = 0.0;
  }

  CGAffineTransformMakeTranslation(&v14, v9, v8);
  v12 = v14;
  CGAffineTransformScale(&v13, &v12, 0.25, 0.25);
  v10 = *(a1 + 32);
  v12 = v13;
  [v10 setTransform:&v12];
  return [*(a1 + 32) setAlpha:0.0];
}

- (void)zoomDownAnimation
{
  [(UITextMagnifier *)self animationPoint];
  if (self->_isHorizontal)
  {
    v4 = v4 + 8.0;
  }

  else
  {
    v3 = v3 + 8.0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__UITextMagnifierRanged_zoomDownAnimation__block_invoke;
  v6[3] = &unk_1E70F6848;
  v6[4] = self;
  *&v6[5] = v3;
  *&v6[6] = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__UITextMagnifierRanged_zoomDownAnimation__block_invoke_2;
  v5[3] = &unk_1E70F6848;
  v5[4] = self;
  *&v5[5] = v3;
  *&v5[6] = v4;
  [(UITextMagnifier *)self beginZoomDownAnimation:v6 withDuration:v5 postponeHandler:0.2];
}

uint64_t __42__UITextMagnifierRanged_zoomDownAnimation__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 416) = *(a1 + 40);
  [*(a1 + 32) updateFrameAndOffset];
  memset(&v13, 0, sizeof(v13));
  v2 = *(a1 + 32);
  v3 = v2[536];
  [v2 bounds];
  if (v3 == 1)
  {
    v8 = (v5 + v7) * 0.5;
    v9 = 0.0;
  }

  else
  {
    v9 = (v4 + v6) * 0.5;
    v8 = 0.0;
  }

  CGAffineTransformMakeTranslation(&v13, v9, v8);
  v11 = v13;
  CGAffineTransformScale(&v12, &v11, 0.25, 0.25);
  v13 = v12;
  [*(a1 + 32) setTransform:&v12];
  return [*(a1 + 32) setAlpha:0.0];
}

void __42__UITextMagnifierRanged_zoomDownAnimation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 69;
  v6 = [v2 superview];
  [v6 convertPoint:*(*(a1 + 32) + 408) fromView:{*(a1 + 40), *(a1 + 48)}];
  *v3 = v4;
  v3[1] = v5;
}

- (void)updateFrameAndOffset
{
  if (self->_isHorizontal)
  {
    v3 = 139.0;
  }

  else
  {
    v3 = 55.0;
  }

  if (self->_isHorizontal)
  {
    v4 = 55.0;
  }

  else
  {
    v4 = 139.0;
  }

  [(UIView *)self setSize:v3, v4];
  if (self->super._target)
  {
    superview = [(UIView *)self superview];
    [(UITextMagnifier *)self magnificationPoint];
    [superview convertPoint:self->super._target fromView:?];
    x = v6;
    y = v8;
  }

  else
  {
    x = self->_delayedAnimationPoint.x;
    y = self->_delayedAnimationPoint.y;
  }

  v10 = +[UIPeripheralHost sharedInstance];
  [v10 offHostPointForPoint:{x, y}];
  v12 = v11;
  v14 = v13;

  isHorizontal = self->_isHorizontal;
  [(UIView *)self bounds];
  v17 = v16;
  v19 = v18;
  self->_magnifierOffsetFromTouch = 48.0;
  [(UITextMagnifierRanged *)self offsetFromMagnificationPoint];
  if (isHorizontal)
  {
    v21 = v4 + v20 - (v14 + v19 * 0.5);
    if (v21 > 0.0)
    {
      self->_magnifierOffsetFromTouch = self->_magnifierOffsetFromTouch - v21;
    }

    [(UITextMagnifierRanged *)self offsetFromMagnificationPoint];
    v14 = v14 - v22;
  }

  else
  {
    v23 = v3 + v20 - (v12 + v17 * 0.5);
    if (v23 > 0.0)
    {
      self->_magnifierOffsetFromTouch = self->_magnifierOffsetFromTouch - v23;
    }

    [(UITextMagnifierRanged *)self offsetFromMagnificationPoint];
    v12 = v12 - v24;
  }

  v25 = COERCE_UNSIGNED_INT64(fabs(round(v12) + 0.5)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(round(v14) + 0.5)) <= 0x7FEFFFFFFFFFFFFFLL && !v25)
  {

    [(UIView *)self setCenter:?];
  }
}

- (void)beginMagnifyingTarget:(id)target text:(id)text magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v10 = point.y;
  v11 = point.x;
  textCopy = text;
  targetCopy = target;
  v16 = +[UITextMagnifierCaret sharedCaretMagnifier];
  [v16 stopMagnifying:0];

  v17 = round(y);
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  self->_touchOffsetFromMagnificationPoint = v17;
  v18.receiver = self;
  v18.super_class = UITextMagnifierRanged;
  [(UITextMagnifier *)&v18 beginMagnifyingTarget:targetCopy text:textCopy magnificationPoint:animatedCopy offset:v11 animated:v10, x, y];
}

- (void)stopMagnifying:(BOOL)magnifying
{
  v4.receiver = self;
  v4.super_class = UITextMagnifierRanged;
  [(UITextMagnifier *)&v4 stopMagnifying:magnifying];
  self->_touchOffsetFromMagnificationPoint = 0.0;
}

- (CGPoint)clipPoint:(CGPoint)point inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = point.y;
  v9 = point.x;
  if (point.x >= CGRectGetMinX(rect))
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (v9 <= CGRectGetMaxX(v16))
    {
      goto LABEL_6;
    }

    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MaxX = CGRectGetMaxX(v17);
  }

  else
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    MaxX = CGRectGetMinX(v15);
  }

  v9 = MaxX;
LABEL_6:
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (v8 < CGRectGetMinY(v18))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MinY = CGRectGetMinY(v19);
LABEL_10:
    v8 = MinY;
    goto LABEL_11;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (v8 > CGRectGetMaxY(v20))
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MinY = CGRectGetMaxY(v21);
    goto LABEL_10;
  }

LABEL_11:
  v12 = v9;
  v13 = v8;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)caretRectClosestToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  text = [(UITextMagnifier *)self text];
  v8 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  _usesAsynchronousProtocol = [text _usesAsynchronousProtocol];
  selectedTextRange = [text selectedTextRange];
  v13 = selectedTextRange;
  if (!_usesAsynchronousProtocol)
  {
    if (selectedTextRange)
    {
      selectedTextRange2 = [text selectedTextRange];
      v31 = [text closestPositionToPoint:selectedTextRange2 withinRange:{x, y}];

      if (!v31)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v31 = [text closestPositionToPoint:{x, y}];
      if (!v31)
      {
        goto LABEL_12;
      }
    }

    [text caretRectForPosition:v31];
    v8 = v32;
    v7 = v33;
    v9 = v34;
    v10 = v35;
    goto LABEL_12;
  }

  v40 = v10;
  v41 = v9;
  v42 = v7;
  v43 = v8;
  start = [selectedTextRange start];
  [text caretRectForPosition:start];
  v8 = v15;
  v7 = v16;
  v44 = v18;
  v45 = v17;

  selectedTextRange3 = [text selectedTextRange];
  v20 = [selectedTextRange3 end];
  [text caretRectForPosition:v20];
  v22 = v21;
  v24 = v23;
  v9 = v25;
  v10 = v26;

  v27 = vabdd_f64(v8, x);
  v28 = v22 - x;
  v29 = vabdd_f64(v7, y);
  if (self->_isHorizontal)
  {
    v28 = v24 - y;
    v27 = v29;
  }

  if (v27 >= fabs(v28))
  {
    v7 = v24;
    v8 = v22;
  }

  else
  {
    v9 = v45;
    v10 = v44;
  }

  v46.origin.x = v8;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v10;
  if (CGRectIsEmpty(v46))
  {
    v10 = v40;
    v9 = v41;
    v7 = v42;
    v8 = v43;
  }

LABEL_13:

  v36 = v8;
  v37 = v7;
  v38 = v9;
  v39 = v10;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGPoint)adjustMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  text = [(UITextMagnifier *)self text];
  textInputView = [text textInputView];

  [textInputView convertPoint:self->super._target fromView:{x, y}];
  v9 = v8;
  v11 = v10;
  if (textInputView)
  {
    [textInputView bounds];
    [(UITextMagnifierRanged *)self clipPoint:v9 inRect:v11, v12, v13, v14, v15];
    v9 = v16;
    v11 = v17;
  }

  [(UITextMagnifierRanged *)self caretRectClosestToPoint:v9, v11];
  v18 = v29.origin.x;
  v19 = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (!CGRectIsNull(v29))
  {
    if (self->_isHorizontal)
    {
      v11 = round(v19 + height / 1.3);
    }

    else
    {
      v9 = round(v18 + width / 1.3);
    }
  }

  [textInputView convertPoint:self->super._target toView:{v9, v11}];
  v23 = v22;
  v25 = v24;

  v26 = v23;
  v27 = v25;
  result.y = v27;
  result.x = v26;
  return result;
}

@end