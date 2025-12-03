@interface TSDConnectionLineRep
+ (BOOL)canConnectToRep:(id)rep;
+ (id)infosToConnectFromSelection:(id)selection withInteractiveCanvasController:(id)controller;
- (BOOL)canConnectToRep:(id)rep;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)directlyManagesLayerContent;
- (BOOL)i_editMenuOverlapsEndKnobs;
- (BOOL)isDraggable;
- (BOOL)isSelectable;
- (BOOL)p_controlKnobVisible;
- (BOOL)p_isConnectedToLockedObjects;
- (BOOL)shouldCreateKnobs;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldShowCommentHighlight;
- (BOOL)shouldShowSmartShapeKnobs;
- (CGPoint)i_dragOffset;
- (CGRect)targetRectForEditMenu;
- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit;
- (id)additionalRepsForDragging;
- (id)connectionLineLayout;
- (unint64_t)enabledKnobMask;
- (void)dealloc;
- (void)updateFromLayout;
@end

@implementation TSDConnectionLineRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDConnectionLineRep;
  [(TSDStyledRep *)&v3 dealloc];
}

- (id)connectionLineLayout
{
  objc_opt_class();
  [(TSDRep *)self layout];

  return TSUDynamicCast();
}

+ (id)infosToConnectFromSelection:(id)selection withInteractiveCanvasController:(id)controller
{
  array = [MEMORY[0x277CBEB18] array];
  infos = [selection infos];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__TSDConnectionLineRep_infosToConnectFromSelection_withInteractiveCanvasController___block_invoke;
  v9[3] = &unk_279D491B8;
  v9[4] = controller;
  v9[5] = array;
  [infos enumerateObjectsUsingBlock:v9];
  if ([array count] == 2)
  {
    return array;
  }

  else
  {
    return 0;
  }
}

unint64_t __84__TSDConnectionLineRep_infosToConnectFromSelection_withInteractiveCanvasController___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = +[TSDConnectionLineRep canConnectToRep:](TSDConnectionLineRep, "canConnectToRep:", [*(a1 + 32) repForInfo:a2]);
  if (result)
  {
    [*(a1 + 40) addObject:a2];
    result = [*(a1 + 40) count];
    if (result >= 3)
    {
      *a3 = 1;
    }
  }

  return result;
}

+ (BOOL)canConnectToRep:(id)rep
{
  repForSelecting = [rep repForSelecting];
  objc_opt_class();
  [repForSelecting layout];
  if (([TSUDynamicCast() pathIsLineSegment] & 1) == 0)
  {
    v4 = [objc_msgSend(repForSelecting "layout")];
    if (!v4)
    {
      return v4;
    }

    if (([objc_msgSend(repForSelecting "info")] & 1) == 0)
    {
      LOBYTE(v4) = [objc_msgSend(repForSelecting "info")] ^ 1;
      return v4;
    }
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (BOOL)canConnectToRep:(id)rep
{
  repForSelecting = [rep repForSelecting];
  if (repForSelecting == self)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = repForSelecting;
    v6 = [TSDConnectionLineRep canConnectToRep:repForSelecting];
    if (v6)
    {
      parent = [(TSDAbstractLayout *)[(TSDRep *)v5 layout] parent];
      LOBYTE(v6) = parent == [(TSDAbstractLayout *)[(TSDRep *)self layout] parent];
    }
  }

  return v6;
}

- (BOOL)shouldShowSmartShapeKnobs
{
  v3 = [objc_msgSend(-[TSDConnectionLineRep connectionLineLayout](self "connectionLineLayout")];
  shouldCreateKnobs = [(TSDConnectionLineRep *)self shouldCreateKnobs];
  if (v3 == 1 || !shouldCreateKnobs)
  {
    if (!shouldCreateKnobs)
    {
      return shouldCreateKnobs;
    }
  }

  else
  {
    [(TSDRep *)self boundsForStandardKnobs];
    v7 = v6;
    v9 = v8;
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v11 = TSDMultiplySizeScalar(v7, v9, v10);
    *&v11 = v12 * v12 + v11 * v11;
    if (sqrtf(*&v11) < 60.0)
    {
      goto LABEL_11;
    }
  }

  if (![(TSDRep *)self isPlaceholder])
  {
    v14.receiver = self;
    v14.super_class = TSDConnectionLineRep;
    if (([(TSDShapeRep *)&v14 enabledKnobMask]& 0x800) != 0)
    {
      LOBYTE(shouldCreateKnobs) = ![(TSDRep *)self isLocked];
      return shouldCreateKnobs;
    }
  }

LABEL_11:
  LOBYTE(shouldCreateKnobs) = 0;
  return shouldCreateKnobs;
}

- (BOOL)shouldCreateKnobs
{
  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([connectionLineLayout isInvisible])
  {
    return 0;
  }

  return [connectionLineLayout validLine];
}

- (BOOL)shouldShowCommentHighlight
{
  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([connectionLineLayout isInvisible])
  {
    LOBYTE(validLine) = 0;
  }

  else
  {
    validLine = [connectionLineLayout validLine];
    if (validLine)
    {
      v6.receiver = self;
      v6.super_class = TSDConnectionLineRep;
      LOBYTE(validLine) = [(TSDRep *)&v6 shouldShowCommentHighlight];
    }
  }

  return validLine;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([connectionLineLayout isInvisible])
  {
    LOBYTE(validLine) = 0;
  }

  else
  {
    validLine = [connectionLineLayout validLine];
    if (validLine)
    {
      v9.receiver = self;
      v9.super_class = TSDConnectionLineRep;
      LOBYTE(validLine) = [(TSDShapeRep *)&v9 containsPoint:x, y];
    }
  }

  return validLine;
}

- (double)shortestDistanceToPoint:(CGPoint)point countAsHit:(BOOL *)hit
{
  y = point.y;
  x = point.x;
  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  v9 = 3.40282347e38;
  if (([connectionLineLayout isInvisible] & 1) == 0 && objc_msgSend(connectionLineLayout, "validLine"))
  {
    v12.receiver = self;
    v12.super_class = TSDConnectionLineRep;
    [(TSDShapeRep *)&v12 shortestDistanceToPoint:hit countAsHit:x, y];
    return v10;
  }

  return v9;
}

- (unint64_t)enabledKnobMask
{
  v6.receiver = self;
  v6.super_class = TSDConnectionLineRep;
  enabledKnobMask = [(TSDShapeRep *)&v6 enabledKnobMask];
  v5.receiver = self;
  v5.super_class = TSDConnectionLineRep;
  if ([(TSDRep *)&v5 shouldCreateKnobs])
  {
    return enabledKnobMask;
  }

  else
  {
    return enabledKnobMask & 0xFFFFFFFFFFFFF3FFLL;
  }
}

- (BOOL)shouldCreateSelectionKnobs
{
  v6.receiver = self;
  v6.super_class = TSDConnectionLineRep;
  if ([(TSDRep *)&v6 shouldCreateSelectionKnobs])
  {
    goto LABEL_2;
  }

  if ([objc_msgSend(-[TSDConnectionLineRep connectionLineLayout](self "connectionLineLayout")] != 1)
  {
    LOBYTE(connectedTo) = 0;
    return connectedTo;
  }

  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([connectionLineLayout connectedFrom] && objc_msgSend(-[TSDCanvas repForLayout:](-[TSDRep canvas](self, "canvas"), "repForLayout:", objc_msgSend(connectionLineLayout, "connectedFrom")), "shouldCreateKnobs") && objc_msgSend(objc_msgSend(connectionLineLayout, "connectedFrom"), "layoutState") == 2)
  {
LABEL_2:
    LOBYTE(connectedTo) = 1;
  }

  else
  {
    connectedTo = [connectionLineLayout connectedTo];
    if (connectedTo)
    {
      LODWORD(connectedTo) = [-[TSDCanvas repForLayout:](-[TSDRep canvas](self "canvas")];
      if (connectedTo)
      {
        LOBYTE(connectedTo) = [objc_msgSend(connectionLineLayout "connectedTo")] == 2;
      }
    }
  }

  return connectedTo;
}

- (id)additionalRepsForDragging
{
  if ([(TSDConnectionLineRep *)self p_isConnected])
  {
    connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([connectionLineLayout connectedFrom])
    {
      [v4 addObject:{-[TSDCanvas repForLayout:](-[TSDRep canvas](self, "canvas"), "repForLayout:", objc_msgSend(connectionLineLayout, "connectedFrom"))}];
    }

    if ([connectionLineLayout connectedTo])
    {
      [v4 addObject:{-[TSDCanvas repForLayout:](-[TSDRep canvas](self, "canvas"), "repForLayout:", objc_msgSend(connectionLineLayout, "connectedTo"))}];
    }

    return v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEB98];

    return [v6 set];
  }
}

- (BOOL)isSelectable
{
  layout = [(TSDRep *)self layout];

  return [(TSDLayout *)layout isInTopLevelContainerForEditing];
}

- (BOOL)isDraggable
{
  v5.receiver = self;
  v5.super_class = TSDConnectionLineRep;
  isDraggable = [(TSDShapeRep *)&v5 isDraggable];
  if (isDraggable)
  {
    LOBYTE(isDraggable) = ![(TSDConnectionLineRep *)self p_isConnectedToLockedObjects];
  }

  return isDraggable;
}

- (CGRect)targetRectForEditMenu
{
  v3 = [(TSDRep *)self knobForTag:12];
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  if ([(TSDConnectionLineRep *)self p_controlKnobVisible]&& ![(TSDConnectionLineRep *)self i_editMenuOverlapsEndKnobs])
  {
    [v3 position];
    v4 = TSDRectWithCenterAndSize(v8, v9, 2.0);
    v5 = v10;
    v6 = v11;
    v7 = v12;
  }

  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  if ([knob tag] == 12)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = TSDConnectionLineRep;
  return [(TSDShapeRep *)&v6 canUseSpecializedHitRegionForKnob:knob];
}

- (BOOL)directlyManagesLayerContent
{
  if ([-[TSDConnectionLineRep connectionLineLayout](self "connectionLineLayout")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSDConnectionLineRep;
  return [(TSDShapeRep *)&v4 directlyManagesLayerContent];
}

- (void)updateFromLayout
{
  v4.receiver = self;
  v4.super_class = TSDConnectionLineRep;
  [(TSDRep *)&v4 updateFromLayout];
  v3 = [-[TSDShapeRep shapeLayout](self "shapeLayout")];
  if (([v3 isEqual:self->mLastPathSource] & 1) == 0)
  {
    [(TSDShapeRep *)self layoutInRootChangedFrom:0 to:0 translatedOnly:0];

    self->mLastPathSource = [v3 copy];
  }
}

- (CGPoint)i_dragOffset
{
  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  v4 = [connectionLineLayout connectedTo] == 0;
  if ((v4 ^ ([connectionLineLayout connectedFrom] != 0)))
  {
    v7.receiver = self;
    v7.super_class = TSDConnectionLineRep;
    [(TSDRep *)&v7 i_dragOffset];
  }

  else
  {
    if ([connectionLineLayout isBeingTransformed])
    {
      [connectionLineLayout pauseDynamicTransformation];
    }

    [connectionLineLayout i_accumulatedDrag];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (BOOL)i_editMenuOverlapsEndKnobs
{
  v3 = [(TSDRep *)self knobForTag:12];
  v4 = [(TSDRep *)self knobForTag:11];
  v5 = [(TSDRep *)self knobForTag:10];
  canvas = [(TSDRep *)self canvas];
  [v3 position];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  [(TSDCanvas *)canvas convertUnscaledToBoundsPoint:?];
  v8 = v7;
  v10 = v9;
  canvas2 = [(TSDRep *)self canvas];
  [v4 position];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  [(TSDCanvas *)canvas2 convertUnscaledToBoundsPoint:?];
  v13 = v12;
  v15 = v14;
  canvas3 = [(TSDRep *)self canvas];
  [v5 position];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  [(TSDCanvas *)canvas3 convertUnscaledToBoundsPoint:?];
  v18 = v17;
  v20 = v19;
  [(TSDCanvas *)[(TSDRep *)self canvas] i_approximateScaledFrameOfEditingMenuAtPoint:v8, v10];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v33.x = v13;
  v33.y = v15;
  if (CGRectContainsPoint(v34, v33))
  {
    return 1;
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  v30 = v18;
  v31 = v20;

  return CGRectContainsPoint(*&v26, *&v30);
}

- (BOOL)p_isConnectedToLockedObjects
{
  connectionLineLayout = [(TSDConnectionLineRep *)self connectionLineLayout];
  objc_opt_class();
  [objc_msgSend(connectionLineLayout "connectedFrom")];
  v3 = TSUDynamicCast();
  objc_opt_class();
  [objc_msgSend(connectionLineLayout "connectedTo")];
  v4 = TSUDynamicCast();
  if ([v3 isLocked])
  {
    return 1;
  }

  return [v4 isLocked];
}

- (BOOL)p_controlKnobVisible
{
  shouldShowSmartShapeKnobs = [(TSDConnectionLineRep *)self shouldShowSmartShapeKnobs];
  if (shouldShowSmartShapeKnobs)
  {
    v4 = [(TSDRep *)self knobForTag:12];
    canvas = [(TSDRep *)self canvas];
    [v4 position];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
    [(TSDCanvas *)canvas convertUnscaledToBoundsPoint:?];
    v7 = v6;
    v9 = v8;
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] visibleBoundsRect];
    v14 = v7;
    v15 = v9;

    LOBYTE(shouldShowSmartShapeKnobs) = CGRectContainsPoint(*&v10, *&v14);
  }

  return shouldShowSmartShapeKnobs;
}

@end