@interface TSWPShapeRep
- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3;
- (BOOL)isDraggable;
- (BOOL)isInvisible;
- (BOOL)mustDrawTilingLayerOnMainThread:(id)a3;
- (BOOL)p_shouldShowTextOverflowGlyph;
- (BOOL)shouldIgnoreEditMenuTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)wantsToHandleTapsOnContainingGroup;
- (BOOL)wantsToHandleTapsWhenLocked;
- (TSDContainerInfo)containerInfo;
- (TSWPShapeRep)initWithLayout:(id)a3 canvas:(id)a4;
- (double)pParagraphAlignmentOffset;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)additionalLayersOverLayer;
- (id)childReps;
- (id)hitRep:(CGPoint)a3;
- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)hyperlinkRegions;
- (id)overlayLayers;
- (id)p_overflowKnobImage;
- (unint64_t)enabledKnobMask;
- (void)dealloc;
- (void)p_resetOverflowGlyphLayerIfNecessary;
- (void)processChangedProperty:(int)a3;
- (void)shapeLayoutDidChangeContainedStorage:(id)a3;
- (void)updateChildrenFromLayout;
- (void)willBeRemoved;
- (void)willBeginEditingContainedRep;
- (void)willEndEditingContainedRep;
@end

@implementation TSWPShapeRep

- (TSWPShapeRep)initWithLayout:(id)a3 canvas:(id)a4
{
  objc_opt_class();
  if (!TSUDynamicCast())
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeRep initWithLayout:canvas:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeRep.mm"), 69, @"bad layout class"}];
  }

  v12.receiver = self;
  v12.super_class = TSWPShapeRep;
  v9 = [(TSDShapeRep *)&v12 initWithLayout:a3 canvas:a4];
  v10 = v9;
  if (v9)
  {
    [(TSDLayout *)[(TSDRep *)v9 layout] setDelegate:v9];
  }

  return v10;
}

- (void)dealloc
{
  *&self->_editingContainedRep = 0;
  [(CALayer *)self->_overflowGlyphLayer setParentRep:0];

  v3.receiver = self;
  v3.super_class = TSWPShapeRep;
  [(TSDStyledRep *)&v3 dealloc];
}

- (void)updateChildrenFromLayout
{
  v3 = [(CALayer *)self->_overflowGlyphLayer layout];
  v4 = [(TSDLayout *)[(TSDRep *)self layout] containedLayout];
  overflowGlyphLayer = self->_overflowGlyphLayer;
  if (v3 != v4)
  {
    [(CALayer *)overflowGlyphLayer setParentRep:0];

    self->_overflowGlyphLayer = 0;
LABEL_3:
    v6 = [objc_alloc(objc_msgSend(-[TSDLayout containedLayout](-[TSDRep layout](self "layout")];
    self->_overflowGlyphLayer = v6;
    [(CALayer *)v6 setParentRep:self];
    overflowGlyphLayer = self->_overflowGlyphLayer;
    goto LABEL_5;
  }

  if (!overflowGlyphLayer)
  {
    goto LABEL_3;
  }

LABEL_5:

  [(CALayer *)overflowGlyphLayer updateChildrenFromLayout];
}

- (void)willBeginEditingContainedRep
{
  *(&self->super.mShadowOnChildrenDisabled + 1) = 1;
  [(TSDLayout *)[(TSDRep *)self layout] createContainedLayoutForEditing];
  [(TSWPShapeRep *)self updateChildrenFromLayout];

  [(TSDStyledRep *)self setNeedsDisplay];
}

- (void)willEndEditingContainedRep
{
  if (![objc_msgSend(-[TSDRep info](self "info")])
  {
    [(TSDLayout *)[(TSDRep *)self layout] createContainedLayoutForInstructionalText];
    [(TSWPShapeRep *)self updateChildrenFromLayout];
    [(TSDStyledRep *)self setNeedsDisplay];
  }

  *(&self->super.mShadowOnChildrenDisabled + 1) = 0;
}

- (id)hitRep:(CGPoint)a3
{
  overflowGlyphLayer = self->_overflowGlyphLayer;
  if (!overflowGlyphLayer || ((x = a3.x, y = a3.y, (v5 = [-[CALayer layout](overflowGlyphLayer "layout")]) == 0) ? (v8 = 0uLL, v6 = 0uLL, v7 = 0uLL) : (objc_msgSend(v5, "inverseTransform"), v6 = v13, v7 = v14, v8 = v15), result = -[CALayer hitRep:](self->_overflowGlyphLayer, "hitRep:", vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, y), v6, x))), a3.x = x, a3.y = y, !result))
  {
    v12.receiver = self;
    v12.super_class = TSWPShapeRep;
    return [(TSDRep *)&v12 hitRep:a3.x, a3.y];
  }

  return result;
}

- (id)hitReps:(CGPoint)a3 withSlop:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v21.receiver = self;
  v21.super_class = TSWPShapeRep;
  y = a3.y;
  x = a3.x;
  v7 = [TSDRep hitReps:sel_hitReps_withSlop_ withSlop:?];
  if (v7)
  {
    overflowGlyphLayer = self->_overflowGlyphLayer;
    if (overflowGlyphLayer)
    {
      v9 = [-[CALayer layout](overflowGlyphLayer "layout")];
      if (v9)
      {
        [v9 inverseTransform];
        v10 = v18;
        v11 = v19;
        v12 = v20;
      }

      else
      {
        v12 = 0uLL;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      v13 = [(CALayer *)self->_overflowGlyphLayer hitReps:vaddq_f64(v12 withSlop:vmlaq_n_f64(vmulq_n_f64(v11, y), v10, x)), width, height];
      if ([v13 count])
      {
        v14 = [MEMORY[0x277CBEB18] array];
        [v14 addObjectsFromArray:v13];
        [v14 addObjectsFromArray:v7];
        return v14;
      }
    }
  }

  return v7;
}

- (BOOL)shouldIgnoreEditMenuTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4
{
  [(CALayer *)self->_overflowGlyphLayer convertNaturalPointFromUnscaledCanvas:a4, a3.x, a3.y];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  [(CALayer *)self->_overflowGlyphLayer smartFieldAtPoint:v6, v8];
  return TSUDynamicCast() != 0;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([(CALayer *)self->_overflowGlyphLayer handleSingleTapAtPoint:?]& 1) != 0)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = TSWPShapeRep;
  return [(TSDRep *)&v7 handleSingleTapAtPoint:x, y];
}

- (BOOL)wantsToHandleTapsOnContainingGroup
{
  if (([(CALayer *)self->_overflowGlyphLayer wantsToHandleTapsOnContainingGroup]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeRep;
  return [(TSDRep *)&v4 wantsToHandleTapsOnContainingGroup];
}

- (BOOL)wantsToHandleTapsWhenLocked
{
  if (([(CALayer *)self->_overflowGlyphLayer wantsToHandleTapsWhenLocked]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeRep;
  return [(TSDRep *)&v4 wantsToHandleTapsWhenLocked];
}

- (void)willBeRemoved
{
  [(TSDLayout *)[(TSDRep *)self layout] setDelegate:0];
  [*&self->_editingContainedRep setDelegate:0];

  *&self->_editingContainedRep = 0;
  v3.receiver = self;
  v3.super_class = TSWPShapeRep;
  [(TSDShapeRep *)&v3 willBeRemoved];
}

- (id)hyperlinkRegions
{
  v3 = [(CALayer *)self->_overflowGlyphLayer hyperlinkRegions];
  v7.receiver = self;
  v7.super_class = TSWPShapeRep;
  result = [(TSDRep *)&v7 hyperlinkRegions];
  if (v3)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return [v3 arrayByAddingObjectsFromArray:result];
  }

  if (result)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return v3;
  }

  return result;
}

- (BOOL)shouldShowSelectionHighlight
{
  if ([(TSWPRep *)[(TSWPShapeRep *)self containedRep] isEditing])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeRep;
  return [(TSDShapeRep *)&v4 shouldShowSelectionHighlight];
}

- (BOOL)shouldShowKnobs
{
  if ([(TSWPRep *)[(TSWPShapeRep *)self containedRep] isEditing])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSWPShapeRep;
  return [(TSDRep *)&v4 shouldShowKnobs];
}

- (BOOL)p_shouldShowTextOverflowGlyph
{
  v3 = [(TSDCanvas *)[(TSDRep *)self canvas] shouldShowTextOverflowGlyphs];
  if (v3)
  {
    if ([(TSDShapeRep *)self isEditingPath])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [(CALayer *)self->_overflowGlyphLayer isOverflowing];
      if (v3)
      {
        v5.receiver = self;
        v5.super_class = TSWPShapeRep;
        LOBYTE(v3) = [(TSDRep *)&v5 shouldShowKnobs];
      }
    }
  }

  return v3;
}

- (TSDContainerInfo)containerInfo
{
  [(TSDRep *)self info];

  return TSUProtocolCast();
}

- (id)childReps
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (!self->_overflowGlyphLayer)
  {
    return 0;
  }

  v3[0] = self->_overflowGlyphLayer;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  if (*&self->_editingContainedRep == a3 && [a4 isEqualToString:@"position"])
  {
    v7 = MEMORY[0x277CBEB68];

    return [v7 null];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSWPShapeRep;
    return [(TSDStyledRep *)&v9 actionForLayer:a3 forKey:a4];
  }
}

- (BOOL)mustDrawTilingLayerOnMainThread:(id)a3
{
  if ([(TSDStyledRep *)self shadowLayer]!= a3 && [(TSDStyledRep *)self reflectionLayer]!= a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeRep mustDrawTilingLayerOnMainThread:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeRep.mm"), 347, @"image rep's tiling layer delegate being called for wrong layer"}];
  }

  return -[TSDInteractiveCanvasController allowLayoutAndRenderOnThread](-[TSDRep interactiveCanvasController](self, "interactiveCanvasController"), "allowLayoutAndRenderOnThread") || [objc_msgSend(-[TSDLayout containedLayout](-[TSDRep layout](self "layout")] != 0;
}

- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] editorController] currentEditors];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 canBeginEditingRepOnDoubleTap:self];
        if (!v11)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (self->_overflowGlyphLayer == a3)
    {
      v11 = [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing];
      if (!v11)
      {
        return v11;
      }

      if ((![-[TSDRep info](self "info")] || objc_msgSend(objc_msgSend(objc_msgSend(-[TSDRep info](self, "info"), "owningAttachment"), "parentStorage"), "wpKind") <= 2) && (objc_msgSend(-[TSDShapeRep shapeLayout](self, "shapeLayout"), "pathIsLineSegment") & 1) == 0)
      {
        LOBYTE(v11) = ![(TSDRep *)self isLocked];
        return v11;
      }
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)p_resetOverflowGlyphLayerIfNecessary
{
  if (*&self->_editingContainedRep)
  {
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v4 = v3;
    [*&self->_editingContainedRep contentsScale];
    v5 = *&self->_editingContainedRep;
    if (v4 == v6)
    {
      if (v5)
      {
        return;
      }
    }

    else
    {

      *&self->_editingContainedRep = 0;
    }
  }

  v7 = [(TSWPShapeRep *)self p_overflowKnobImage];
  *&self->_editingContainedRep = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [*&self->_editingContainedRep setContents:{objc_msgSend(v7, "CGImageForContentsScale:")}];
  [v7 size];
  [*&self->_editingContainedRep setBounds:TSDRectWithSize()];
  v8 = *&self->_editingContainedRep;

  [v8 setDelegate:self];
}

- (id)overlayLayers
{
  v25.receiver = self;
  v25.super_class = TSWPShapeRep;
  v3 = [-[TSDShapeRep overlayLayers](&v25 overlayLayers)];
  if ([(TSWPShapeRep *)self p_shouldShowTextOverflowGlyph]&& [(TSDRep *)self isSelectedIgnoringLocking])
  {
    [(TSWPShapeRep *)self p_resetOverflowGlyphLayerIfNecessary];
    v4 = [(TSDRep *)self interactiveCanvasController];
    [(TSDRep *)self boundsForStandardKnobs];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:TSDPositionOfKnobOnRectangle(8, v5, v6, v7, v8)];
    [(TSDInteractiveCanvasController *)v4 convertUnscaledToBoundsPoint:?];
    v10 = v9;
    v12 = v11;
    [*&self->_editingContainedRep bounds];
    v17 = TSDCenterOfRect(v13, v14, v15, v16);
    v18 = TSDSubtractPoints(v10, v12, v17);
    v20 = v19;
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)v4 canvas] contentsScale];
    v22 = TSDRoundedPointForScale(v18, v20, v21);
    [*&self->_editingContainedRep setPosition:{TSDAddPoints(v22, v23, v17)}];
    [v3 addObject:*&self->_editingContainedRep];
  }

  return v3;
}

- (id)additionalLayersOverLayer
{
  v28.receiver = self;
  v28.super_class = TSWPShapeRep;
  v3 = [(TSDShapeRep *)&v28 additionalLayersOverLayer];
  if ([(TSWPShapeRep *)self p_shouldShowTextOverflowGlyph]&& ![(TSDRep *)self isSelectedIgnoringLocking])
  {
    if (v3)
    {
      v4 = [v3 mutableCopy];
    }

    else
    {
      v4 = [MEMORY[0x277CBEB18] array];
    }

    v3 = v4;
    [(TSWPShapeRep *)self p_resetOverflowGlyphLayerIfNecessary];
    v5 = [(TSDRep *)self interactiveCanvasController];
    [(TSDRep *)self boundsForStandardKnobs];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:TSDPositionOfKnobOnRectangle(8, v6, v7, v8, v9)];
    [(TSDInteractiveCanvasController *)v5 convertUnscaledToBoundsPoint:?];
    v11 = v10;
    v13 = v12;
    [*&self->_editingContainedRep bounds];
    v18 = TSDCenterOfRect(v14, v15, v16, v17);
    v19 = TSDSubtractPoints(v11, v13, v18);
    v21 = v20;
    if ([(TSDRep *)self parentRep])
    {
      [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
      v19 = TSDSubtractPoints(v19, v21, v22);
      v21 = v23;
    }

    [(TSDCanvas *)[(TSDInteractiveCanvasController *)v5 canvas] contentsScale];
    v25 = TSDRoundedPointForScale(v19, v21, v24);
    [*&self->_editingContainedRep setPosition:{TSDAddPoints(v25, v26, v18)}];
    [v3 addObject:*&self->_editingContainedRep];
  }

  return v3;
}

- (BOOL)isDraggable
{
  v5.receiver = self;
  v5.super_class = TSWPShapeRep;
  v3 = [(TSDShapeRep *)&v5 isDraggable];
  if (v3)
  {
    LOBYTE(v3) = [-[TSDRep info](self "info")];
  }

  return v3;
}

- (BOOL)isInvisible
{
  v5.receiver = self;
  v5.super_class = TSWPShapeRep;
  if (-[TSDShapeRep isInvisible](&v5, sel_isInvisible) || (v3 = [-[TSDShapeRep shapeLayout](self "shapeLayout")]) != 0)
  {
    if ([objc_msgSend(-[TSDLayout containedLayout](-[TSDRep layout](self "layout")])
    {
      LOBYTE(v3) = ([objc_msgSend(-[TSDShapeRep shapeInfo](self "shapeInfo")] & 1) == 0 && -[TSDStyledRep reflection](self, "reflection") == 0;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)processChangedProperty:(int)a3
{
  v3 = *&a3;
  switch(a3)
  {
    case 146:
      goto LABEL_4;
    case 153:
      [(CALayer *)self->_overflowGlyphLayer verticalTextPropertyChanged];
      [(TSDRep *)self invalidateKnobs];
      break;
    case 149:
LABEL_4:
      [(CALayer *)self->_overflowGlyphLayer invalidateKnobs];
      [(CALayer *)self->_overflowGlyphLayer setNeedsDisplay];
      break;
  }

  v5.receiver = self;
  v5.super_class = TSWPShapeRep;
  [(TSDShapeRep *)&v5 processChangedProperty:v3];
}

- (id)p_overflowKnobImage
{
  v2 = MEMORY[0x277D6C2F8];
  v3 = TSWPBundle();

  return [v2 imageNamed:@"TSWPOverflowGlyph" inBundle:v3];
}

- (unint64_t)enabledKnobMask
{
  if ([(TSDLayout *)[(TSDRep *)self layout] autosizes])
  {
    if ([-[TSDRep info](self "info")])
    {
      return 260;
    }

    else
    {
      return 80;
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TSWPShapeRep;
    return [(TSDShapeRep *)&v4 enabledKnobMask];
  }
}

- (double)pParagraphAlignmentOffset
{
  v3 = [objc_msgSend(objc_msgSend(-[TSDRep info](self "info")];
  if (v3 == 1)
  {
    return 1.0;
  }

  if (v3 == 2)
  {
    return 0.5;
  }

  result = 0.0;
  if (v3 == 4)
  {
    v5 = [objc_msgSend(-[TSDRep info](self info];
    result = 0.0;
    if (v5)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)shapeLayoutDidChangeContainedStorage:(id)a3
{
  if ([(TSDRep *)self texture]&& self->super.super.super.mTextureDeliveryStyle)
  {
    [(TSDRep *)self setTexture:0];
  }

  if ([(TSDStyledRep *)self reflectionLayer])
  {
    v4 = [(TSDStyledRep *)self reflectionLayer];

    [(CALayer *)v4 setNeedsDisplay];
  }
}

@end