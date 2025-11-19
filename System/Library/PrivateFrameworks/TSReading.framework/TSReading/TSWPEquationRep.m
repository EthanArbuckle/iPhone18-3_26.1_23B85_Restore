@interface TSWPEquationRep
- (CGRect)clipRect;
- (CGRect)visibleBoundsForTilingLayer:(id)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)didUpdateLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)drawInLayerContext:(CGContext *)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)screenScaleDidChange;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)willBeRemoved;
@end

@implementation TSWPEquationRep

- (void)dealloc
{
  if (self->_equationLayer)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationRep dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationRep.m"), 33, @"layer should have been cleaned up in willBeRemoved"}];
  }

  v5.receiver = self;
  v5.super_class = TSWPEquationRep;
  [(TSDRep *)&v5 dealloc];
}

- (void)willBeRemoved
{
  [(CALayer *)self->_equationLayer setDelegate:0];

  self->_equationLayer = 0;
  v3.receiver = self;
  v3.super_class = TSWPEquationRep;
  [(TSDRep *)&v3 willBeRemoved];
}

- (void)didUpdateLayer:(id)a3
{
  v27.receiver = self;
  v27.super_class = TSWPEquationRep;
  [(TSDRep *)&v27 didUpdateLayer:?];
  if ([(TSDLayout *)[(TSDRep *)self layout] equationIsValid])
  {
    if (!self->_equationLayer)
    {
      v5 = objc_alloc_init(TSDTilingLayer);
      self->_equationLayer = &v5->super;
      [(TSDTilingLayer *)v5 setDelegate:self];
      [(CALayer *)self->_equationLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
      [(CALayer *)self->_equationLayer setContentsScale:?];
    }

    [(TSWPEquationRep *)self clipRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(TSDRep *)self layout];
    if (v14)
    {
      [(TSDAbstractLayout *)v14 transformInRoot];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    v29 = CGRectApplyAffineTransform(v28, &v26);
    width = v29.size.width;
    height = v29.size.height;
    v17 = [(TSDRep *)self layout:v29.origin.x];
    if (v17)
    {
      [(TSDAbstractLayout *)v17 transformInRoot];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    v18 = TSDTransformScale(&v26.a);
    v19 = TSDMultiplyPointScalar(v7, v9, v18);
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] convertUnscaledToBoundsRect:v19, v20, width, height];
    v31 = CGRectIntegral(v30);
    x = v31.origin.x;
    y = v31.origin.y;
    v23 = v31.size.width;
    v24 = v31.size.height;
    [(CALayer *)self->_equationLayer bounds];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = v23;
    v33.size.height = v24;
    if (!CGRectEqualToRect(v32, v33))
    {
      [(CALayer *)self->_equationLayer setBounds:x, y, v23, v24];
      [a3 bounds];
      [(CALayer *)self->_equationLayer setPosition:TSDSubtractPoints(x, y, v25)];
      [(CALayer *)self->_equationLayer setNeedsDisplay];
    }

    if ([(CALayer *)self->_equationLayer superlayer:*&v26.a]!= a3)
    {
      [a3 addSublayer:self->_equationLayer];
    }
  }
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = TSWPEquationRep;
  [(TSDRep *)&v3 screenScaleDidChange];
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [(CALayer *)self->_equationLayer setContentsScale:?];
}

- (void)setNeedsDisplay
{
  if ([(TSDLayout *)[(TSDRep *)self layout] equationIsValid]&& [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    v3 = [(TSDRep *)self interactiveCanvasController];
    equationLayer = self->_equationLayer;

    [(TSDInteractiveCanvasController *)v3 setNeedsDisplayOnLayer:equationLayer];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(TSDLayout *)[(TSDRep *)self layout] equationIsValid])
  {
    if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      if (!CGRectIsNull(v19))
      {
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        if (!CGRectIsEmpty(v20))
        {
          [(TSDRep *)self convertNaturalRectToLayerRelative:x, y, width, height];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v16 = [(TSDRep *)self interactiveCanvasController];
          equationLayer = self->_equationLayer;

          [(TSDInteractiveCanvasController *)v16 setNeedsDisplayInRect:equationLayer onLayer:v9, v11, v13, v15];
        }
      }
    }
  }
}

- (CGRect)clipRect
{
  v3 = [(TSDLayout *)[(TSDRep *)self layout] equationLayout];
  if (!v3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationRep clipRect]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationRep.m"), 134, @"invalid nil value for '%s'", "equationLayout"}];
  }

  v26.receiver = self;
  v26.super_class = TSWPEquationRep;
  [(TSDRep *)&v26 clipRect];
  v7 = v6;
  v9 = v8;
  width = v10;
  height = v12;
  if ([(TSDLayout *)[(TSDRep *)self layout] equationIsValid])
  {
    [v3 erasableBounds];
    v28 = CGRectIntegral(v27);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    [v3 height];
    v7 = x + 0.0;
    v9 = v16 + y;
    v17 = [(TSDLayout *)[(TSDRep *)self layout] textShadow];
    if ([v17 isEnabled])
    {
      [v17 shadowBoundsForRect:{v7, v9, width, height}];
      v7 = v18;
      v9 = v19;
      width = v20;
      height = v21;
    }
  }

  v22 = v7;
  v23 = v9;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)drawInContext:(CGContext *)a3
{
  if ([(TSDLayout *)[(TSDRep *)self layout] equationIsValid])
  {
    CGContextSaveGState(a3);
    CGContextSetFillColorWithColor(a3, [(TSDLayout *)[(TSDRep *)self layout] textColor]);
    CGContextSetStrokeColorWithColor(a3, [(TSDLayout *)[(TSDRep *)self layout] textColor]);
    v5 = [(TSDLayout *)[(TSDRep *)self layout] textShadow];
    [(TSDCanvas *)self->super.mCanvas viewScale];
    [v5 applyToContext:a3 viewScale:0 flipped:?];
    v6 = [(TSDLayout *)[(TSDRep *)self layout] equationLayout];
    if (!v6)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationRep drawInContext:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationRep.m"), 175, @"invalid nil value for '%s'", "equationLayout"}];
    }

    [v6 height];
    [v6 renderIntoContext:a3 offset:{0.0, v9}];

    CGContextRestoreGState(a3);
  }
}

- (void)drawInLayerContext:(CGContext *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationRep drawInLayerContext:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationRep.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:185 description:@"shouldn't draw into our own layer"];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (self->_equationLayer == a3)
  {
    CGContextSaveGState(a4);
    [(TSDRep *)self setupForDrawingInLayer:self->_equationLayer context:a4];
    CGContextSetFillColorWithColor(a4, [(TSDLayout *)[(TSDRep *)self layout] textColor]);
    CGContextSetStrokeColorWithColor(a4, [(TSDLayout *)[(TSDRep *)self layout] textColor]);
    v6 = [(TSDLayout *)[(TSDRep *)self layout] textShadow];
    [(TSDCanvas *)self->super.mCanvas viewScale];
    [v6 applyToContext:a4 viewScale:-[CALayer contentsAreFlipped](self->_equationLayer flipped:{"contentsAreFlipped"), v7}];
    v8 = [(TSDLayout *)[(TSDRep *)self layout] equationLayout];
    if (!v8)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationRep drawLayer:inContext:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationRep.m"), 203, @"invalid nil value for '%s'", "equationLayout"}];
    }

    [v8 height];
    [v8 renderIntoContext:a4 offset:{0.0, v11}];
    [(TSDRep *)self didDrawInLayer:self->_equationLayer context:a4];

    CGContextRestoreGState(a4);
  }
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  if (self->_equationLayer == a3)
  {
    return [MEMORY[0x277CBEB68] null];
  }

  else
  {
    return 0;
  }
}

- (CGRect)visibleBoundsForTilingLayer:(id)a3
{
  v4 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v4 visibleBoundsForTilingLayer:a3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end