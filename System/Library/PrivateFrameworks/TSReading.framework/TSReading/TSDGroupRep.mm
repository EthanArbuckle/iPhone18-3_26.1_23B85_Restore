@interface TSDGroupRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)shouldShowCommentHighlight;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)wantsToHandleTapsWhenLocked;
- (CGColor)selectionHighlightColor;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (id)allRepsContainedInGroup;
- (void)processChangedProperty:(int)a3;
- (void)recursivelyDrawInContext:(CGContext *)a3;
- (void)setNeedsDisplay;
@end

@implementation TSDGroupRep

- (CGRect)clipRect
{
  v31 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  mChildReps = self->super.mChildReps;
  v7 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(mChildReps);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        [v11 clipRect];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v20 = [objc_msgSend(v11 "layout")];
        if (v20)
        {
          [v20 transform];
        }

        else
        {
          memset(&v25, 0, sizeof(v25));
        }

        v32.origin.x = v13;
        v32.origin.y = v15;
        v32.size.width = v17;
        v32.size.height = v19;
        v36 = CGRectApplyAffineTransform(v32, &v25);
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v34 = CGRectUnion(v33, v36);
        x = v34.origin.x;
        y = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
      }

      v8 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)recursivelyDrawInContext:(CGContext *)a3
{
  v5 = [(TSDAbstractLayout *)[(TSDRep *)self layout] geometry];
  if (v5)
  {
    [(TSDLayoutGeometry *)v5 transform];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  CGContextConcatCTM(a3, &v14);
  [(TSDGroupRep *)self clipRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(TSDRep *)self masksToBounds])
  {
    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    CGContextClipToRect(a3, v15);
    CGContextSaveGState(a3);
  }

  else
  {
    CGContextSaveGState(a3);
    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    CGContextClipToRect(a3, v16);
  }

  [(TSDGroupRep *)self drawInContext:a3, *&v14.a, *&v14.c, *&v14.tx];
  CGContextRestoreGState(a3);
  [(TSDRep *)self recursivelyDrawChildrenInContext:a3];
}

- (BOOL)shouldShowSelectionHighlight
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] topLevelContainerRepForEditing]== self)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    mChildReps = self->super.mChildReps;
    v5 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(mChildReps);
          }

          if ([*(*(&v10 + 1) + 8 * i) isInDynamicOperation])
          {
            return 0;
          }
        }

        v6 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v10 objects:v14 count:16];
        result = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDGroupRep;
    return [(TSDRep *)&v9 shouldShowSelectionHighlight];
  }

  return result;
}

- (CGColor)selectionHighlightColor
{
  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] topLevelContainerRepForEditing]== self)
  {
    if (selectionHighlightColor_sOnce_0 != -1)
    {
      [TSDGroupRep selectionHighlightColor];
    }

    return selectionHighlightColor_sTopLevelContainerSelectionHighlightColor;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TSDGroupRep;
    return [(TSDRep *)&v4 selectionHighlightColor];
  }
}

CGColorRef __38__TSDGroupRep_selectionHighlightColor__block_invoke()
{
  result = CGColorRetain([objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.85 green:0.85 blue:0.85 alpha:{1.0), "CGColor"}]);
  selectionHighlightColor_sTopLevelContainerSelectionHighlightColor = result;
  return result;
}

- (CGRect)frameInUnscaledCanvas
{
  v2 = [(TSDLayout *)[(TSDRep *)self layout] pureGeometryInRoot];

  [v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)shouldShowCommentHighlight
{
  v3 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] topLevelContainerRepForEditing];
  if (v3)
  {
    v4 = v3;
    while (v4 != self)
    {
      objc_opt_class();
      [(TSDRep *)v4 parentRep];
      v4 = TSUDynamicCast();
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v6.receiver = self;
    v6.super_class = TSDGroupRep;
    return [(TSDRep *)&v6 shouldShowCommentHighlight];
  }
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v3 = [(TSDRep *)self layout];
  if (v3)
  {
    [(TSDAbstractLayout *)v3 transformInRoot];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGAffineTransformInvert(&v9, &v8);
  v4 = vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  v14 = *&a3.x;
  y = a3.y;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(NSMutableArray *)self->super.mChildReps reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v15 = vdupq_lane_s64(v14, 0);
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [objc_msgSend(v8 layout];
        if (v9)
        {
          [v9 inverseTransform];
          v10 = v17;
          v11 = v18;
          v12 = v19;
        }

        else
        {
          v12 = 0uLL;
          v10 = 0uLL;
          v11 = 0uLL;
        }

        if ([v8 containsPoint:{vaddq_f64(v12, vmlaq_f64(vmulq_n_f64(v11, y), v15, v10))}])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v17 = *&a3.x;
  y = a3.y;
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(NSMutableArray *)self->super.mChildReps reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v18 = vdupq_lane_s64(v17, 0);
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [objc_msgSend(v11 layout];
        if (v12)
        {
          [v12 inverseTransform];
          v13 = v20;
          v14 = v21;
          v15 = v22;
        }

        else
        {
          v15 = 0uLL;
          v13 = 0uLL;
          v14 = 0uLL;
        }

        if ([v11 containsPoint:vaddq_f64(v15 withSlop:{vmlaq_f64(vmulq_n_f64(v14, y), v18, v13)), width, height}])
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSMutableArray *)self->super.mChildReps reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * v11) intersectsUnscaledRect:{x, y, width, height}])
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (void)processChangedProperty:(int)a3
{
  v4.receiver = self;
  v4.super_class = TSDGroupRep;
  [(TSDRep *)&v4 processChangedProperty:*&a3];
  [(TSDCanvas *)self->super.super.mCanvas layoutInvalidated];
}

- (void)setNeedsDisplay
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = TSDGroupRep;
  [(TSDRep *)&v12 setNeedsDisplay];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  mChildReps = self->super.mChildReps;
  v4 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mChildReps);
        }

        [*(*(&v8 + 1) + 8 * v7++) setNeedsDisplay];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)mChildReps countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)allRepsContainedInGroup
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TSDContainerRep *)self childReps];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObjectsFromArray:{objc_msgSend(v9, "allRepsContainedInGroup")}];
        }

        else
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)wantsToHandleTapsWhenLocked
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TSDContainerRep *)self childReps];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) wantsToHandleTapsWhenLocked])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v18 = *MEMORY[0x277D85DE8];
  [(TSDGroupRep *)self convertNaturalPointFromUnscaledCanvas:?];
  v6 = [TSDRep hitReps:"hitReps:withSlop:" withSlop:?];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([v11 wantsToHandleTapsOnContainingGroup] && (objc_msgSend(v11, "handleSingleTapAtPoint:", x, y) & 1) != 0)
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3
{
  [(TSDGroupRep *)self convertNaturalPointFromUnscaledCanvas:a3.x, a3.y];
  v4 = [(TSDContainerRep *)self hitRep:?];
  if (v4)
  {
    v5 = v4;
    if ([-[TSDRep info](self "info")])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor];
      objc_opt_class();
      [(TSDRep *)self info];
      [(TSDCanvasEditor *)v6 setSelection:[(TSDCanvasEditor *)v6 canvasSelectionWithInfos:0 andContainer:TSUDynamicCast()]];
      v7 = [v5 repForSelecting];
      v8 = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor];
      objc_opt_class();
      [v7 info];
      [(TSDCanvasEditor *)v8 setSelectionToInfo:TSUDynamicCast()];
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = [objc_msgSend(v4 "childReps")];
  v7 = 0.0;
  if (v6 == [objc_msgSend(v5 "childReps")])
  {
    v8 = [objc_msgSend(v4 "childReps")];
    if (v8)
    {
      v9 = 0;
      v10 = 0.0;
      while (1)
      {
        v11 = [objc_msgSend(v4 "childReps")];
        v12 = [objc_msgSend(v5 "childReps")];
        v13 = objc_opt_class();
        if (![v13 isEqual:objc_opt_class()])
        {
          break;
        }

        [objc_opt_class() magicMoveAttributeMatchPercentBetweenOutgoingObject:v11 incomingObject:v12];
        v10 = v10 + v14;
        if (v8 == ++v9)
        {
          return v10 / v8;
        }
      }
    }

    else
    {
      v10 = 0.0;
      return v10 / v8;
    }
  }

  return v7;
}

@end