@interface TSWPTextMagnifierHorizontalRanged
- (BOOL)shouldHideCanvasLayer;
- (TSWPTextMagnifierHorizontalRanged)initWithDefaultFrame;
- (double)currentOffset;
- (void)beginMagnifyingTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6;
- (void)dealloc;
- (void)drawMagnifierClippedCanvasLayer:(id)a3 inContext:(CGContext *)a4;
- (void)remove;
- (void)stopMagnifying:(BOOL)a3;
- (void)updateFrame;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation TSWPTextMagnifierHorizontalRanged

- (TSWPTextMagnifierHorizontalRanged)initWithDefaultFrame
{
  v3.receiver = self;
  v3.super_class = TSWPTextMagnifierHorizontalRanged;
  return [(TSWPTextMagnifierRanged *)&v3 initWithFrame:0.0, 0.0, 145.0, 59.0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPTextMagnifierHorizontalRanged;
  [(TSWPTextMagnifierRanged *)&v2 dealloc];
}

- (void)zoomUpAnimation
{
  memset(&v7, 0, sizeof(v7));
  [(TSWPTextMagnifierHorizontalRanged *)self bounds];
  MaxY = CGRectGetMaxY(v8);
  CGAffineTransformMakeTranslation(&v7, 0.0, MaxY * 0.5);
  v5 = v7;
  CGAffineTransformScale(&v6, &v5, 0.25, 0.25);
  v7 = v6;
  [(TSWPTextMagnifierHorizontalRanged *)self setTransform:&v6];
  [(TSWPTextMagnifierHorizontalRanged *)self setAlpha:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TSWPTextMagnifierHorizontalRanged_zoomUpAnimation__block_invoke;
  v4[3] = &unk_279D46770;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.1];
}

uint64_t __52__TSWPTextMagnifierHorizontalRanged_zoomUpAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [*(a1 + 32) setTransform:v4];
}

- (void)zoomDownAnimation
{
  [(TSWPTextMagnifierRanged *)self animationPoint];
  self->super._magnificationPoint.x = v4;
  self->super._magnificationPoint.y = v3 + 8.0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TSWPTextMagnifierHorizontalRanged_zoomDownAnimation__block_invoke;
  v6[3] = &unk_279D46770;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__TSWPTextMagnifierHorizontalRanged_zoomDownAnimation__block_invoke_2;
  v5[3] = &unk_279D479B0;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.2];
}

uint64_t __54__TSWPTextMagnifierHorizontalRanged_zoomDownAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateFrame];
  memset(&v6, 0, sizeof(v6));
  [*(a1 + 32) bounds];
  MaxY = CGRectGetMaxY(v7);
  CGAffineTransformMakeTranslation(&v6, 0.0, MaxY * 0.5);
  v4 = v6;
  CGAffineTransformScale(&v5, &v4, 0.25, 0.25);
  v6 = v5;
  [*(a1 + 32) setTransform:&v5];
  return [*(a1 + 32) setAlpha:0.25];
}

uint64_t __54__TSWPTextMagnifierHorizontalRanged_zoomDownAnimation__block_invoke_2(uint64_t a1)
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
  v3 = [(TSWPTextMagnifierHorizontalRanged *)self superview];
  [(TSWPTextMagnifierRanged *)self magnificationPoint];
  [v3 convertPoint:-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](-[TSDRep interactiveCanvasController](-[TSWPTextMagnifierRanged target](self fromView:{"target"), "interactiveCanvasController"), "layerHost"), "canvasView"), v4, v5}];
  v7 = v6;
  v9 = v8;
  [(TSWPTextMagnifierHorizontalRanged *)self bounds];
  v11 = v10 * 0.5;
  self->super._inPlace = v9 + v10 * 0.5 + -41.0 < 45.0;
  [(TSWPTextMagnifierHorizontalRanged *)self currentOffset];
  v13 = v9 - v12;
  if (v13 >= v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = round(v7) + 0.5;
  v16 = round(v14) + 0.5;

  [(TSWPTextMagnifierHorizontalRanged *)self setCenter:v15, v16];
}

- (void)remove
{
  [(TSWPTextMagnifierRenderer *)self->super._magnifierRenderer tearDown];
  [(TSWPTextMagnifierHorizontalRanged *)self removeFromSuperview];
  [(TSWPTextMagnifierHorizontalRanged *)self setAlpha:1.0];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSWPTextMagnifierHorizontalRanged *)self setTransform:v4];
  [(TSWPTextMagnifierRanged *)self setFrame:0.0, 0.0, 145.0, 59.0];
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
  [(TSWPTextMagnifierHorizontalRanged *)self setNeedsLayout];
  [(TSWPTextMagnifierRanged *)self setNeedsDisplay];
  if (![(TSWPTextMagnifierHorizontalRanged *)self window])
  {
    [+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:](TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:{objc_msgSend(objc_msgSend(a3, "interactiveCanvasController"), "canvasView")), "addSubview:", self}];
  }

  if (y >= 0.0)
  {
    v13 = y;
  }

  else
  {
    v13 = 0.0;
  }

  [(TSWPTextMagnifierRanged *)self setOffset:round(x), round(v13)];
  [(TSWPTextMagnifierRanged *)self setMagnificationPoint:v10, v9];
  if (v6)
  {

    [(TSWPTextMagnifierHorizontalRanged *)self zoomUpAnimation];
  }
}

- (void)stopMagnifying:(BOOL)a3
{
  if (a3)
  {
    [(TSWPTextMagnifierHorizontalRanged *)self zoomDownAnimation];
  }

  else
  {
    [(TSWPTextMagnifierHorizontalRanged *)self remove];
    [(TSWPTextMagnifierRanged *)self setTarget:0];
  }

  self->super._magnificationPoint = vdupq_n_s64(0xC08F400000000000);
  [(TSWPTextMagnifierRanged *)self setOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

  [(TSWPTextMagnifierHorizontalRanged *)self setShouldIgnoreTextInputEditor:0];
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
  v49 = *MEMORY[0x277D85DE8];
  v6 = [(TSDRep *)[(TSWPTextMagnifierRanged *)self target] interactiveCanvasController];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)v6 layerHost];
  v7 = TSUDynamicCast();
  v8 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)v6 layerHost] canvasView];
  [(TSWPTextMagnifierHorizontalRanged *)self frame];
  [v8 convertRect:-[TSWPTextMagnifierHorizontalRanged superview](self fromView:{"superview"), v11, v9 + 3.0, v12, v10 + -3.0 + -18.0}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGContextSaveGState(a4);
  [(TSWPTextMagnifierHorizontalRanged *)self frame];
  v22 = v21;
  [(TSWPTextMagnifierHorizontalRanged *)self frame];
  v24 = v23;
  v25 = [objc_msgSend(MEMORY[0x277D755B8] imageNamed:-[TSWPTextMagnifierHorizontalRanged maskImageName](self inBundle:"maskImageName") compatibleWithTraitCollection:{TSWPBundle(), 0), "CGImage"}];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = v22;
  v50.size.height = v24;
  CGContextClipToMask(a4, v50, v25);
  if (v6)
  {
    v26 = [v7 backgroundColorForMagnifier];
    if (v26)
    {
      CGContextSetFillColorWithColor(a4, [v26 CGColor]);
      v51.origin.x = 0.0;
      v51.origin.y = 0.0;
      v51.size.width = v22;
      v51.size.height = v24;
      CGContextFillRect(a4, v51);
    }
  }

  CGContextScaleCTM(a4, 1.2, 1.2);
  [(TSWPTextMagnifierHorizontalRanged *)self currentOffset];
  v28 = -v16 - v27;
  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)v6 editorController] textInputEditor];
  v29 = TSUDynamicCast();
  if (v29 && !*(&self->super._inPlace + 1))
  {
    v30 = v29;
    objc_opt_class();
    [v30 selection];
    v31 = TSUDynamicCast();
    v32 = [[(TSDKnobTracker *)[(TSDRep *)[(TSWPTextMagnifierRanged *)self target] currentKnobTracker] knob] tag];
    if ([v31 isVisual])
    {
      v33 = v32 == 11 ? [v31 headChar] : objc_msgSend(v31, "tailChar");
    }

    else if (v32 == 11)
    {
      v33 = [v31 start];
    }

    else
    {
      v33 = v32 ? [v31 end] : -[TSWPRep charIndexForPointWithPinning:](-[TSWPTextMagnifierRanged target](self, "target"), "charIndexForPointWithPinning:", v14, v16);
    }

    v34 = v33;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = [(TSWPRep *)[(TSWPTextMagnifierRanged *)self target] columns];
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v36)
    {
      v37 = v36;
      v43 = v6;
      v38 = *v45;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v44 + 1) + 8 * i) lineFragmentForCharIndex:v34 knobTag:v32 selectionType:{objc_msgSend(v31, "type")}];
          if (v40)
          {
            [(TSDRep *)[(TSWPTextMagnifierRanged *)self target] convertNaturalPointToUnscaledCanvas:0.0, *(v40 + 32) + *(v40 + 40)];
            v6 = v43;
            [(TSDInteractiveCanvasController *)v43 convertUnscaledToBoundsPoint:?];
            v42 = v41;
            v52.origin.x = v14;
            v52.origin.y = v16;
            v52.size.width = v18;
            v52.size.height = v20;
            v28 = CGRectGetHeight(v52) - v42 + -7.0;
            goto LABEL_25;
          }
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

      v6 = v43;
    }
  }

LABEL_25:
  CGContextTranslateCTM(a4, -v14, v28);
  CGContextTranslateCTM(a4, v18 * -0.100000001, v20 * -0.100000001);
  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](v6 "layerHost")];
  CGContextRestoreGState(a4);
}

@end