@interface TSWPTextMagnifierVerticalRanged
+ (id)sharedRangedMagnifier;
- (BOOL)shouldHideCanvasLayer;
- (TSWPTextMagnifierVerticalRanged)initWithDefaultFrame;
- (double)currentOffset;
- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6;
- (void)dealloc;
- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4;
- (void)remove;
- (void)stopMagnifying:(BOOL)a3;
- (void)updateFrame;
- (void)zoomLeftAnimation;
- (void)zoomRightAnimation;
@end

@implementation TSWPTextMagnifierVerticalRanged

+ (id)sharedRangedMagnifier
{
  result = +[TSWPTextMagnifierVerticalRanged sharedRangedMagnifier]::SharedInstance;
  if (!+[TSWPTextMagnifierVerticalRanged sharedRangedMagnifier]::SharedInstance)
  {
    result = [[TSWPTextMagnifierVerticalRanged alloc] initWithDefaultFrame];
    +[TSWPTextMagnifierVerticalRanged sharedRangedMagnifier]::SharedInstance = result;
  }

  return result;
}

- (TSWPTextMagnifierVerticalRanged)initWithDefaultFrame
{
  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierVerticalRanged;
  return [(TSWPTextMagnifierRanged *)&v3 initWithFrame:0.0, 0.0, 65.0, 150.0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPTextMagnifierVerticalRanged;
  [(TSWPTextMagnifierRanged *)&v2 dealloc];
}

- (void)zoomLeftAnimation
{
  memset(&v7, 0, sizeof(v7));
  [(TSWPTextMagnifierVerticalRanged *)self bounds];
  MaxX = CGRectGetMaxX(v8);
  CGAffineTransformMakeTranslation(&v7, MaxX * 0.5, 0.0);
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, 0.25, 0.25);
  v7 = v6;
  [(TSWPTextMagnifierVerticalRanged *)self setTransform:&v6];
  [(TSWPTextMagnifierVerticalRanged *)self setAlpha:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TSWPTextMagnifierVerticalRanged_zoomLeftAnimation__block_invoke;
  v4[3] = &unk_279D46770;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.1];
}

uint64_t __52__TSWPTextMagnifierVerticalRanged_zoomLeftAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [*(a1 + 32) setTransform:v4];
}

- (void)zoomRightAnimation
{
  [(TSWPTextMagnifierRanged *)self animationPoint];
  self->super._magnificationPoint.x = v3 + -8.0;
  self->super._magnificationPoint.y = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TSWPTextMagnifierVerticalRanged_zoomRightAnimation__block_invoke;
  v6[3] = &unk_279D46770;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__TSWPTextMagnifierVerticalRanged_zoomRightAnimation__block_invoke_2;
  v5[3] = &unk_279D479B0;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.2];
}

uint64_t __53__TSWPTextMagnifierVerticalRanged_zoomRightAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateFrame];
  memset(&v6, 0, sizeof(v6));
  [*(a1 + 32) bounds];
  MaxX = CGRectGetMaxX(v7);
  CGAffineTransformMakeTranslation(&v6, MaxX * 0.5, 0.0);
  v4 = v6;
  CGAffineTransformScale(&v5, &v4, 0.25, 0.25);
  v6 = v5;
  [*(a1 + 32) setTransform:&v5];
  return [*(a1 + 32) setAlpha:0.25];
}

uint64_t __53__TSWPTextMagnifierVerticalRanged_zoomRightAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) remove];
  v2 = *(a1 + 32);

  return [v2 setTarget:0];
}

- (double)currentOffset
{
  result = 19.0;
  if (!self->super._inPlace)
  {
    [(TSWPTextMagnifierRanged *)self offset];
    return v3 + 41.0 + 7.0;
  }

  return result;
}

- (void)updateFrame
{
  v3 = [(TSWPTextMagnifierVerticalRanged *)self superview];
  [(TSWPTextMagnifierRanged *)self magnificationPoint];
  [v3 convertPoint:-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](-[TSDRep interactiveCanvasController](-[TSWPTextMagnifierRanged target](self fromView:{"target"), "interactiveCanvasController"), "layerHost"), "canvasView"), v4, v5}];
  v7 = v6;
  v9 = v8;
  [(TSWPTextMagnifierVerticalRanged *)self bounds];
  v11 = v10 * 0.5;
  self->super._inPlace = v7 + v10 * 0.5 + -41.0 < 45.0;
  [(TSWPTextMagnifierVerticalRanged *)self currentOffset];
  v13 = v7 - v12;
  if (v13 < v11)
  {
    v13 = v11;
  }

  v14 = round(v13) + -0.5;
  v15 = round(v9) + 0.5;

  [(TSWPTextMagnifierVerticalRanged *)self setCenter:v14, v15];
}

- (void)remove
{
  [(TSWPTextMagnifierRenderer *)self->super._magnifierRenderer tearDown];
  [(TSWPTextMagnifierVerticalRanged *)self removeFromSuperview];
  [(TSWPTextMagnifierVerticalRanged *)self setAlpha:1.0];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSWPTextMagnifierVerticalRanged *)self setTransform:v4];
  [(TSWPTextMagnifierRanged *)self setFrame:0.0, 0.0, 65.0, 150.0];
}

- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  [+[TSWPTextMagnifierCaret sharedCaretMagnifier](TSWPTextMagnifierCaret "sharedCaretMagnifier")];
  [(TSWPTextMagnifierRanged *)self setTarget:a3];
  [(TSWPTextMagnifierTimeWeightedPoint *)self->super._weightedPoint clearHistory];
  [(TSWPTextMagnifierRanged *)self setAutoscrollDirections:0];
  [(TSWPTextMagnifierVerticalRanged *)self setNeedsLayout];
  [(TSWPTextMagnifierRanged *)self setNeedsDisplay];
  if (![(TSWPTextMagnifierVerticalRanged *)self window])
  {
    [+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:](TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:{objc_msgSend(objc_msgSend(a3, "interactiveCanvasController"), "canvasView")), "addSubview:", self}];
  }

  v13 = 0.0;
  if (x >= 0.0)
  {
    v13 = x;
  }

  [(TSWPTextMagnifierRanged *)self setOffset:round(v13), round(y)];
  [(TSWPTextMagnifierRanged *)self setMagnificationPoint:v10, v9];
  if (v6)
  {

    [(TSWPTextMagnifierVerticalRanged *)self zoomLeftAnimation];
  }
}

- (void)stopMagnifying:(BOOL)a3
{
  if (a3)
  {
    [(TSWPTextMagnifierVerticalRanged *)self zoomRightAnimation];
  }

  else
  {
    [(TSWPTextMagnifierVerticalRanged *)self remove];
    [(TSWPTextMagnifierRanged *)self setTarget:0];
  }

  self->super._magnificationPoint = vdupq_n_s64(0xC08F400000000000);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);

  [(TSWPTextMagnifierRanged *)self setOffset:v4, v5];
}

- (BOOL)shouldHideCanvasLayer
{
  [(TSDRep *)[(TSWPTextMagnifierRanged *)self target] interactiveCanvasController];
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

- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = [(TSDRep *)[(TSWPTextMagnifierRanged *)self target] interactiveCanvasController];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)v6 layerHost];
  v7 = TSUDynamicCast();
  v8 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)v6 layerHost] canvasView];
  [(TSWPTextMagnifierVerticalRanged *)self frame];
  [v8 convertRect:-[TSWPTextMagnifierVerticalRanged superview](self fromView:{"superview"), v9 + -18.0, v11, v10 + -3.0 + -18.0, v12}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGContextSaveGState(a4);
  [(TSWPTextMagnifierVerticalRanged *)self frame];
  v22 = v21;
  [(TSWPTextMagnifierVerticalRanged *)self frame];
  v24 = v23;
  v25 = [objc_msgSend(MEMORY[0x277D755B8] imageNamed:-[TSWPTextMagnifierVerticalRanged maskImageName](self inBundle:"maskImageName") compatibleWithTraitCollection:{TSWPBundle(), 0), "CGImage"}];
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v22;
  v62.size.height = v24;
  CGContextClipToMask(a4, v62, v25);
  if (v6)
  {
    v26 = [v7 backgroundColorForMagnifier];
    if (v26)
    {
      CGContextSetFillColorWithColor(a4, [v26 CGColor]);
      v63.origin.x = 0.0;
      v63.origin.y = 0.0;
      v63.size.width = v22;
      v63.size.height = v24;
      CGContextFillRect(a4, v63);
    }
  }

  CGContextScaleCTM(a4, 1.2, 1.2);
  [(TSWPTextMagnifierVerticalRanged *)self currentOffset];
  v28 = v27;
  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)v6 editorController] textInputEditor];
  v29 = [TSUDynamicCast() selection];
  v30 = [[(TSDKnobTracker *)[(TSDRep *)[(TSWPTextMagnifierRanged *)self target] currentKnobTracker] knob] tag];
  if (v30 == 11)
  {
    v31 = [v29 start];
  }

  else
  {
    v31 = [v29 end];
  }

  v32 = v31;
  v33 = v14 + v28;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v34 = [(TSWPRep *)[(TSWPTextMagnifierRanged *)self target] columns];
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v35)
  {
    v36 = v35;
    v50 = v6;
    v51 = v8;
    v52 = a4;
    v37 = *v57;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v56 + 1) + 8 * i);
        v40 = [v39 lineFragmentForCharIndex:v32 knobTag:v30 selectionType:{objc_msgSend(v29, "type")}];
        if (v40)
        {
          v41 = v40;
          v42 = 0uLL;
          v43 = 0uLL;
          v44 = 0uLL;
          v45 = 0uLL;
          if (v39)
          {
            [v39 transformFromWP];
            v42 = 0uLL;
            v44 = v53;
            v45 = v54;
            v43 = v55;
          }

          v46 = [(TSWPTextMagnifierRanged *)self target:vaddq_f64(v43];
          [(TSDRep *)v46 convertNaturalPointToUnscaledCanvas:v48, v49];
          [(TSDInteractiveCanvasController *)v50 convertUnscaledToBoundsPoint:?];
          v33 = 21.0 - v47;
          goto LABEL_19;
        }
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }

LABEL_19:
    v8 = v51;
    a4 = v52;
  }

  CGContextTranslateCTM(a4, v33, -v16);
  CGContextTranslateCTM(a4, v18 * -0.100000001, v20 * -0.100000001);
  [objc_msgSend(v8 "canvasLayer")];
  CGContextRestoreGState(a4);
}

@end