@interface TSWPTextMagnifierCaret
+ (id)sharedCaretMagnifier;
- (BOOL)shouldHideCanvasLayer;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)offset;
- (CGPoint)terminalPoint;
- (TSWPTextMagnifierCaret)initWithDefaultFrame;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)dealloc;
- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context;
- (void)remove;
- (void)setFrame:(CGRect)frame;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)setNeedsDisplay;
- (void)setTarget:(id)target;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateFrameAndOffset;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation TSWPTextMagnifierCaret

+ (id)sharedCaretMagnifier
{
  result = +[TSWPTextMagnifierCaret sharedCaretMagnifier]::sharedInstance;
  if (!+[TSWPTextMagnifierCaret sharedCaretMagnifier]::sharedInstance)
  {
    result = [[TSWPTextMagnifierCaret alloc] initWithDefaultFrame];
    +[TSWPTextMagnifierCaret sharedCaretMagnifier]::sharedInstance = result;
  }

  return result;
}

- (void)setTarget:(id)target
{
  target = self->_target;
  if (target != target)
  {
    [(TSWPRep *)target enableCaretAnimation];

    self->_target = target;
    targetCopy = target;
    v7 = self->_target;

    [(TSWPRep *)v7 disableCaretAnimation];
  }
}

- (TSWPTextMagnifierCaret)initWithDefaultFrame
{
  v5.receiver = self;
  v5.super_class = TSWPTextMagnifierCaret;
  v2 = [(TSWPTextMagnifierCaret *)&v5 initWithFrame:0.0, 0.0, 106.0, 106.0];
  if (v2)
  {
    -[TSWPTextMagnifierCaret setBackgroundColor:](v2, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    v2->_weightedPoint = objc_alloc_init(TSWPTextMagnifierTimeWeightedPoint);
    v3 = [[TSWPTextMagnifierRenderer alloc] initWithFrame:0.0, 0.0, 106.0, 106.0];
    v2->_magnifierRenderer = v3;
    [(TSWPTextMagnifierRenderer *)v3 setDelegate:v2];
    [(TSWPTextMagnifierCaret *)v2 addSubview:v2->_magnifierRenderer];
  }

  return v2;
}

- (void)dealloc
{
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer setDelegate:0];
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer tearDown];

  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierCaret;
  [(TSWPTextMagnifierCaret *)&v3 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = TSWPTextMagnifierCaret;
  [(TSWPTextMagnifierCaret *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  magnifierRenderer = self->_magnifierRenderer;
  [(TSWPTextMagnifierCaret *)self bounds];
  [(TSWPTextMagnifierRenderer *)magnifierRenderer setFrame:?];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierCaret;
  [(TSWPTextMagnifierCaret *)&v3 setNeedsDisplay];
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer setNeedsDisplay];
}

- (CGPoint)magnificationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint addPoint:?];
  if (x != self->_magnificationPoint.x || y != self->_magnificationPoint.y)
  {
    self->_magnificationPoint.x = x;
    self->_magnificationPoint.y = y;
    [(TSWPTextMagnifierCaret *)self updateFrameAndOffset];
    magnifierRenderer = self->_magnifierRenderer;

    [(TSWPTextMagnifierRenderer *)magnifierRenderer canvasNeedsDisplay];
  }
}

- (CGPoint)terminalPoint
{
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint weightedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)terminalPointPlacedCarefully
{
  v3 = [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint historyCovers:0.5];
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint distanceCoveredInInterval:0.5];
  return v4 < 10.0 && v3;
}

- (CGPoint)animationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)zoomUpAnimation
{
  memset(&v7, 0, sizeof(v7));
  [(TSWPTextMagnifierCaret *)self bounds];
  MaxY = CGRectGetMaxY(v8);
  CGAffineTransformMakeTranslation(&v7, 0.0, MaxY * 0.5);
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, 0.25, 0.25);
  v7 = v6;
  [(TSWPTextMagnifierCaret *)self setTransform:&v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__TSWPTextMagnifierCaret_zoomUpAnimation__block_invoke;
  v4[3] = &unk_279D46770;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.075];
}

uint64_t __41__TSWPTextMagnifierCaret_zoomUpAnimation__block_invoke(uint64_t a1)
{
  v1 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v1;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [*(a1 + 32) setTransform:v3];
}

- (void)zoomDownAnimation
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__TSWPTextMagnifierCaret_zoomDownAnimation__block_invoke;
  v3[3] = &unk_279D46770;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__TSWPTextMagnifierCaret_zoomDownAnimation__block_invoke_2;
  v2[3] = &unk_279D479B0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.15];
}

uint64_t __43__TSWPTextMagnifierCaret_zoomDownAnimation__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  if ([objc_msgSend(*(a1 + 32) "target")] && objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "target"), "selection"), "type") != 3 && objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "target"), "selection"), "type") != 5)
  {
    v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "target")];
    v7 = [*(a1 + 32) target];
    if (v6)
    {
      [v7 caretRect];
    }

    else
    {
      [v7 caretRectForCharIndex:objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) caretAffinity:{"target"), "selection"), "range"), 0}];
    }

    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "target")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "target")];
    [v16 convertRect:objc_msgSend(*(a1 + 32) toView:{"superview"), v17, v18, v19, v20}];
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
  }

  v32.origin.x = v2;
  v32.origin.y = v3;
  v32.size.width = v4;
  v32.size.height = v5;
  if (CGRectIsEmpty(v32))
  {
    memset(&v30, 0, sizeof(v30));
    [*(a1 + 32) bounds];
    MaxY = CGRectGetMaxY(v33);
    CGAffineTransformMakeTranslation(&v30, 0.0, MaxY * 0.5);
    v28 = v30;
    CGAffineTransformScale(&v29, &v28, 0.25, 0.25);
    v30 = v29;
    return [*(a1 + 32) setTransform:&v29];
  }

  else
  {
    v27 = *(a1 + 32);

    return [v27 setFrame:{v2, v3, v4, v5}];
  }
}

uint64_t __43__TSWPTextMagnifierCaret_zoomDownAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) remove];
  v2 = *(a1 + 32);

  return [v2 setTarget:0];
}

- (void)remove
{
  [(TSWPTextMagnifierRenderer *)self->_magnifierRenderer tearDown];
  [(TSWPTextMagnifierCaret *)self removeFromSuperview];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSWPTextMagnifierCaret *)self setTransform:v4];
  [(TSWPTextMagnifierCaret *)self setFrame:0.0, 0.0, 106.0, 106.0];
}

- (void)updateFrameAndOffset
{
  superview = [(TSWPTextMagnifierCaret *)self superview];
  [(TSWPTextMagnifierCaret *)self magnificationPoint];
  [superview convertPoint:-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](-[TSDRep interactiveCanvasController](-[TSWPTextMagnifierCaret target](self fromView:{"target"), "interactiveCanvasController"), "layerHost"), "canvasView"), v4, v5}];
  v7 = v6;
  v9 = v8;
  [(TSWPTextMagnifierCaret *)self bounds];
  v11 = v9 + v10 * 0.5;
  v12 = v11 + -60.0;
  v13 = v11 + -75.0;
  if (v12 >= 75.0)
  {
    v14 = 60.0;
  }

  else
  {
    v14 = v13;
  }

  [(TSWPTextMagnifierCaret *)self offset];
  v16 = v7 + v15;
  [(TSWPTextMagnifierCaret *)self offset];
  self->_yOffset = v14;
  [(TSWPTextMagnifierCaret *)self setCenter:round(v16), round(v9 + v17 - v14)];
  [(TSWPTextMagnifierCaret *)self frame];
  v20 = CGRectIntegral(v19);

  [(TSWPTextMagnifierCaret *)self setFrame:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
}

- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  v9 = point.y;
  v10 = point.x;
  [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
  [+[TSWPTextMagnifierVerticalRanged sharedRangedMagnifier](TSWPTextMagnifierVerticalRanged "sharedRangedMagnifier")];
  [(TSWPTextMagnifierCaret *)self setTarget:target];
  [(TSWPTextMagnifierTimeWeightedPoint *)self->_weightedPoint clearHistory];
  [(TSWPTextMagnifierCaret *)self setAutoscrollDirections:0];
  [(TSWPTextMagnifierCaret *)self setNeedsLayout];
  [(TSWPTextMagnifierCaret *)self setNeedsDisplay];
  if (![(TSWPTextMagnifierCaret *)self window])
  {
    [+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:](TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:{objc_msgSend(objc_msgSend(target, "interactiveCanvasController"), "canvasView")), "addSubview:", self}];
  }

  [(TSWPTextMagnifierCaret *)self setMagnificationPoint:v10, v9];
  [(TSWPTextMagnifierCaret *)self setOffset:x, y];
  if (animatedCopy)
  {

    [(TSWPTextMagnifierCaret *)self zoomUpAnimation];
  }
}

- (void)stopMagnifying:(BOOL)magnifying
{
  if (magnifying)
  {
    [(TSWPTextMagnifierCaret *)self zoomDownAnimation];
  }

  else
  {
    [(TSWPTextMagnifierCaret *)self remove];
    [(TSWPTextMagnifierCaret *)self setTarget:0];
  }

  self->_magnificationPoint = vdupq_n_s64(0xC08F400000000000);
}

- (BOOL)shouldHideCanvasLayer
{
  [(TSDRep *)[(TSWPTextMagnifierCaret *)self target] interactiveCanvasController];
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  objc_opt_class();
  [v3 layerHost];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 1;
  }

  return [v4 shouldHideCanvasLayerInMagnifier];
}

- (void)drawMagnifierClippedCanvasLayer:(id)layer inContext:(CGContext *)context
{
  interactiveCanvasController = [(TSDRep *)[(TSWPTextMagnifierCaret *)self target] interactiveCanvasController];
  canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)interactiveCanvasController layerHost] canvasView];
  [(TSWPTextMagnifierCaret *)self frame];
  [canvasView convertRect:-[TSWPTextMagnifierCaret superview](self fromView:{"superview"), v8, v9, v10, v11}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  TSUScreenScale();
  v21 = v20;
  v35.width = v17;
  v35.height = v19;
  UIGraphicsBeginImageContextWithOptions(v35, 1, v21);
  CurrentContext = UIGraphicsGetCurrentContext();
  objc_opt_class();
  v23 = TSUDynamicCast();
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    [v24 layerHost];
    backgroundColorForMagnifier = [TSUDynamicCast() backgroundColorForMagnifier];
    if (backgroundColorForMagnifier)
    {
      CGContextSetFillColorWithColor(CurrentContext, [backgroundColorForMagnifier CGColor]);
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = v17;
      v36.size.height = v19;
      CGContextFillRect(CurrentContext, v36);
    }
  }

  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextScaleCTM(CurrentContext, 1.2, 1.2);
  [(TSWPTextMagnifierCaret *)self yOffset];
  CGContextTranslateCTM(CurrentContext, -v13, -v15 - v26);
  CGContextTranslateCTM(CurrentContext, v17 * -0.100000001, v19 * -0.899999999);
  canvasLayer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)interactiveCanvasController layerHost] canvasLayer];
  [canvasLayer shadowOpacity];
  v29 = v28;
  [canvasLayer setShadowOpacity:0.0];
  [canvasLayer renderInContext:CurrentContext];
  LODWORD(v30) = v29;
  [canvasLayer setShadowOpacity:v30];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGContextSaveGState(context);
  v32 = [objc_msgSend(MEMORY[0x277D755B8] imageNamed:-[TSWPTextMagnifierCaret maskImageName](self inBundle:"maskImageName") compatibleWithTraitCollection:{TSWPBundle(), 0), "CGImage"}];
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v17;
  v37.size.height = v19;
  CGContextClipToMask(context, v37, v32);
  cGImage = [(UIImage *)ImageFromCurrentImageContext CGImage];
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v17;
  v38.size.height = v19;
  CGContextDrawImage(context, v38, cGImage);

  CGContextRestoreGState(context);
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end