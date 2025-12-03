@interface TSWPShapeRep
- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)tap;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point;
- (BOOL)isDraggable;
- (BOOL)isInvisible;
- (BOOL)mustDrawTilingLayerOnMainThread:(id)thread;
- (BOOL)p_shouldShowTextOverflowGlyph;
- (BOOL)shouldIgnoreEditMenuTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)wantsToHandleTapsOnContainingGroup;
- (BOOL)wantsToHandleTapsWhenLocked;
- (TSDContainerInfo)containerInfo;
- (TSWPShapeRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)pParagraphAlignmentOffset;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)additionalLayersOverLayer;
- (id)childReps;
- (id)hitRep:(CGPoint)rep;
- (id)hitReps:(CGPoint)reps withSlop:(CGSize)slop;
- (id)hyperlinkRegions;
- (id)overlayLayers;
- (id)p_overflowKnobImage;
- (unint64_t)enabledKnobMask;
- (void)dealloc;
- (void)p_resetOverflowGlyphLayerIfNecessary;
- (void)processChangedProperty:(int)property;
- (void)shapeLayoutDidChangeContainedStorage:(id)storage;
- (void)updateChildrenFromLayout;
- (void)willBeRemoved;
- (void)willBeginEditingContainedRep;
- (void)willEndEditingContainedRep;
@end

@implementation TSWPShapeRep

- (TSWPShapeRep)initWithLayout:(id)layout canvas:(id)canvas
{
  objc_opt_class();
  if (!TSUDynamicCast())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeRep initWithLayout:canvas:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeRep.mm"), 69, @"bad layout class"}];
  }

  v12.receiver = self;
  v12.super_class = TSWPShapeRep;
  v9 = [(TSDShapeRep *)&v12 initWithLayout:layout canvas:canvas];
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
  layout = [(CALayer *)self->_overflowGlyphLayer layout];
  containedLayout = [(TSDLayout *)[(TSDRep *)self layout] containedLayout];
  overflowGlyphLayer = self->_overflowGlyphLayer;
  if (layout != containedLayout)
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

- (id)hitRep:(CGPoint)rep
{
  overflowGlyphLayer = self->_overflowGlyphLayer;
  if (!overflowGlyphLayer || ((x = rep.x, y = rep.y, (v5 = [-[CALayer layout](overflowGlyphLayer "layout")]) == 0) ? (v8 = 0uLL, v6 = 0uLL, v7 = 0uLL) : (objc_msgSend(v5, "inverseTransform"), v6 = v13, v7 = v14, v8 = v15), result = -[CALayer hitRep:](self->_overflowGlyphLayer, "hitRep:", vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, y), v6, x))), rep.x = x, rep.y = y, !result))
  {
    v12.receiver = self;
    v12.super_class = TSWPShapeRep;
    return [(TSDRep *)&v12 hitRep:rep.x, rep.y];
  }

  return result;
}

- (id)hitReps:(CGPoint)reps withSlop:(CGSize)slop
{
  height = slop.height;
  width = slop.width;
  v21.receiver = self;
  v21.super_class = TSWPShapeRep;
  y = reps.y;
  x = reps.x;
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

      height = [(CALayer *)self->_overflowGlyphLayer hitReps:vaddq_f64(v12 withSlop:vmlaq_n_f64(vmulq_n_f64(v11, y), v10, x)), width, height];
      if ([height count])
      {
        array = [MEMORY[0x277CBEB18] array];
        [array addObjectsFromArray:height];
        [array addObjectsFromArray:v7];
        return array;
      }
    }
  }

  return v7;
}

- (BOOL)shouldIgnoreEditMenuTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer
{
  [(CALayer *)self->_overflowGlyphLayer convertNaturalPointFromUnscaledCanvas:recognizer, point.x, point.y];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  [(CALayer *)self->_overflowGlyphLayer smartFieldAtPoint:v6, v8];
  return TSUDynamicCast() != 0;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  hyperlinkRegions = [(CALayer *)self->_overflowGlyphLayer hyperlinkRegions];
  v7.receiver = self;
  v7.super_class = TSWPShapeRep;
  result = [(TSDRep *)&v7 hyperlinkRegions];
  if (hyperlinkRegions)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return [hyperlinkRegions arrayByAddingObjectsFromArray:result];
  }

  if (result)
  {
    v6 = hyperlinkRegions == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return hyperlinkRegions;
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
  shouldShowTextOverflowGlyphs = [(TSDCanvas *)[(TSDRep *)self canvas] shouldShowTextOverflowGlyphs];
  if (shouldShowTextOverflowGlyphs)
  {
    if ([(TSDShapeRep *)self isEditingPath])
    {
      LOBYTE(shouldShowTextOverflowGlyphs) = 0;
    }

    else
    {
      shouldShowTextOverflowGlyphs = [(CALayer *)self->_overflowGlyphLayer isOverflowing];
      if (shouldShowTextOverflowGlyphs)
      {
        v5.receiver = self;
        v5.super_class = TSWPShapeRep;
        LOBYTE(shouldShowTextOverflowGlyphs) = [(TSDRep *)&v5 shouldShowKnobs];
      }
    }
  }

  return shouldShowTextOverflowGlyphs;
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

- (id)actionForLayer:(id)layer forKey:(id)key
{
  if (*&self->_editingContainedRep == layer && [key isEqualToString:@"position"])
  {
    v7 = MEMORY[0x277CBEB68];

    return [v7 null];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSWPShapeRep;
    return [(TSDStyledRep *)&v9 actionForLayer:layer forKey:key];
  }
}

- (BOOL)mustDrawTilingLayerOnMainThread:(id)thread
{
  if ([(TSDStyledRep *)self shadowLayer]!= thread && [(TSDStyledRep *)self reflectionLayer]!= thread)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPShapeRep mustDrawTilingLayerOnMainThread:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPShapeRep.mm"), 347, @"image rep's tiling layer delegate being called for wrong layer"}];
  }

  return -[TSDInteractiveCanvasController allowLayoutAndRenderOnThread](-[TSDRep interactiveCanvasController](self, "interactiveCanvasController"), "allowLayoutAndRenderOnThread") || [objc_msgSend(-[TSDLayout containedLayout](-[TSDRep layout](self "layout")] != 0;
}

- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)tap
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentEditors = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] editorController] currentEditors];
  v6 = [currentEditors countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(currentEditors);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (objc_opt_respondsToSelector())
      {
        isInTopLevelContainerForEditing = [v10 canBeginEditingRepOnDoubleTap:self];
        if (!isInTopLevelContainerForEditing)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [currentEditors countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    if (self->_overflowGlyphLayer == tap)
    {
      isInTopLevelContainerForEditing = [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing];
      if (!isInTopLevelContainerForEditing)
      {
        return isInTopLevelContainerForEditing;
      }

      if ((![-[TSDRep info](self "info")] || objc_msgSend(objc_msgSend(objc_msgSend(-[TSDRep info](self, "info"), "owningAttachment"), "parentStorage"), "wpKind") <= 2) && (objc_msgSend(-[TSDShapeRep shapeLayout](self, "shapeLayout"), "pathIsLineSegment") & 1) == 0)
      {
        LOBYTE(isInTopLevelContainerForEditing) = ![(TSDRep *)self isLocked];
        return isInTopLevelContainerForEditing;
      }
    }

    LOBYTE(isInTopLevelContainerForEditing) = 0;
  }

  return isInTopLevelContainerForEditing;
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

  p_overflowKnobImage = [(TSWPShapeRep *)self p_overflowKnobImage];
  *&self->_editingContainedRep = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [*&self->_editingContainedRep setContents:{objc_msgSend(p_overflowKnobImage, "CGImageForContentsScale:")}];
  [p_overflowKnobImage size];
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
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
    [(TSDRep *)self boundsForStandardKnobs];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:TSDPositionOfKnobOnRectangle(8, v5, v6, v7, v8)];
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
    v10 = v9;
    v12 = v11;
    [*&self->_editingContainedRep bounds];
    v17 = TSDCenterOfRect(v13, v14, v15, v16);
    v18 = TSDSubtractPoints(v10, v12, v17);
    v20 = v19;
    [(TSDCanvas *)[(TSDInteractiveCanvasController *)interactiveCanvasController canvas] contentsScale];
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
  additionalLayersOverLayer = [(TSDShapeRep *)&v28 additionalLayersOverLayer];
  if ([(TSWPShapeRep *)self p_shouldShowTextOverflowGlyph]&& ![(TSDRep *)self isSelectedIgnoringLocking])
  {
    if (additionalLayersOverLayer)
    {
      array = [additionalLayersOverLayer mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    additionalLayersOverLayer = array;
    [(TSWPShapeRep *)self p_resetOverflowGlyphLayerIfNecessary];
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
    [(TSDRep *)self boundsForStandardKnobs];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:TSDPositionOfKnobOnRectangle(8, v6, v7, v8, v9)];
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
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

    [(TSDCanvas *)[(TSDInteractiveCanvasController *)interactiveCanvasController canvas] contentsScale];
    v25 = TSDRoundedPointForScale(v19, v21, v24);
    [*&self->_editingContainedRep setPosition:{TSDAddPoints(v25, v26, v18)}];
    [additionalLayersOverLayer addObject:*&self->_editingContainedRep];
  }

  return additionalLayersOverLayer;
}

- (BOOL)isDraggable
{
  v5.receiver = self;
  v5.super_class = TSWPShapeRep;
  isDraggable = [(TSDShapeRep *)&v5 isDraggable];
  if (isDraggable)
  {
    LOBYTE(isDraggable) = [-[TSDRep info](self "info")];
  }

  return isDraggable;
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

- (void)processChangedProperty:(int)property
{
  v3 = *&property;
  switch(property)
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
    info = [objc_msgSend(-[TSDRep info](self info];
    result = 0.0;
    if (info)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)shapeLayoutDidChangeContainedStorage:(id)storage
{
  if ([(TSDRep *)self texture]&& self->super.super.super.mTextureDeliveryStyle)
  {
    [(TSDRep *)self setTexture:0];
  }

  if ([(TSDStyledRep *)self reflectionLayer])
  {
    reflectionLayer = [(TSDStyledRep *)self reflectionLayer];

    [(CALayer *)reflectionLayer setNeedsDisplay];
  }
}

@end