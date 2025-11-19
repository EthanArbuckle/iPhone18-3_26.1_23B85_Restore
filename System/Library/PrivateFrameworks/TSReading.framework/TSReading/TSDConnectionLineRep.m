@interface TSDConnectionLineRep
+ (BOOL)canConnectToRep:(id)a3;
+ (id)infosToConnectFromSelection:(id)a3 withInteractiveCanvasController:(id)a4;
- (BOOL)canConnectToRep:(id)a3;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3;
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
- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4;
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

+ (id)infosToConnectFromSelection:(id)a3 withInteractiveCanvasController:(id)a4
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [a3 infos];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__TSDConnectionLineRep_infosToConnectFromSelection_withInteractiveCanvasController___block_invoke;
  v9[3] = &unk_279D491B8;
  v9[4] = a4;
  v9[5] = v6;
  [v7 enumerateObjectsUsingBlock:v9];
  if ([v6 count] == 2)
  {
    return v6;
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

+ (BOOL)canConnectToRep:(id)a3
{
  v3 = [a3 repForSelecting];
  objc_opt_class();
  [v3 layout];
  if (([TSUDynamicCast() pathIsLineSegment] & 1) == 0)
  {
    v4 = [objc_msgSend(v3 "layout")];
    if (!v4)
    {
      return v4;
    }

    if (([objc_msgSend(v3 "info")] & 1) == 0)
    {
      LOBYTE(v4) = [objc_msgSend(v3 "info")] ^ 1;
      return v4;
    }
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (BOOL)canConnectToRep:(id)a3
{
  v4 = [a3 repForSelecting];
  if (v4 == self)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = v4;
    v6 = [TSDConnectionLineRep canConnectToRep:v4];
    if (v6)
    {
      v7 = [(TSDAbstractLayout *)[(TSDRep *)v5 layout] parent];
      LOBYTE(v6) = v7 == [(TSDAbstractLayout *)[(TSDRep *)self layout] parent];
    }
  }

  return v6;
}

- (BOOL)shouldShowSmartShapeKnobs
{
  v3 = [objc_msgSend(-[TSDConnectionLineRep connectionLineLayout](self "connectionLineLayout")];
  v4 = [(TSDConnectionLineRep *)self shouldCreateKnobs];
  if (v3 == 1 || !v4)
  {
    if (!v4)
    {
      return v4;
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
      LOBYTE(v4) = ![(TSDRep *)self isLocked];
      return v4;
    }
  }

LABEL_11:
  LOBYTE(v4) = 0;
  return v4;
}

- (BOOL)shouldCreateKnobs
{
  v2 = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([v2 isInvisible])
  {
    return 0;
  }

  return [v2 validLine];
}

- (BOOL)shouldShowCommentHighlight
{
  v3 = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([v3 isInvisible])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 validLine];
    if (v4)
    {
      v6.receiver = self;
      v6.super_class = TSDConnectionLineRep;
      LOBYTE(v4) = [(TSDRep *)&v6 shouldShowCommentHighlight];
    }
  }

  return v4;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([v6 isInvisible])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [v6 validLine];
    if (v7)
    {
      v9.receiver = self;
      v9.super_class = TSDConnectionLineRep;
      LOBYTE(v7) = [(TSDShapeRep *)&v9 containsPoint:x, y];
    }
  }

  return v7;
}

- (double)shortestDistanceToPoint:(CGPoint)a3 countAsHit:(BOOL *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(TSDConnectionLineRep *)self connectionLineLayout];
  v9 = 3.40282347e38;
  if (([v8 isInvisible] & 1) == 0 && objc_msgSend(v8, "validLine"))
  {
    v12.receiver = self;
    v12.super_class = TSDConnectionLineRep;
    [(TSDShapeRep *)&v12 shortestDistanceToPoint:a4 countAsHit:x, y];
    return v10;
  }

  return v9;
}

- (unint64_t)enabledKnobMask
{
  v6.receiver = self;
  v6.super_class = TSDConnectionLineRep;
  v3 = [(TSDShapeRep *)&v6 enabledKnobMask];
  v5.receiver = self;
  v5.super_class = TSDConnectionLineRep;
  if ([(TSDRep *)&v5 shouldCreateKnobs])
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFFFFFFFFF3FFLL;
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
    LOBYTE(v3) = 0;
    return v3;
  }

  v4 = [(TSDConnectionLineRep *)self connectionLineLayout];
  if ([v4 connectedFrom] && objc_msgSend(-[TSDCanvas repForLayout:](-[TSDRep canvas](self, "canvas"), "repForLayout:", objc_msgSend(v4, "connectedFrom")), "shouldCreateKnobs") && objc_msgSend(objc_msgSend(v4, "connectedFrom"), "layoutState") == 2)
  {
LABEL_2:
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [v4 connectedTo];
    if (v3)
    {
      LODWORD(v3) = [-[TSDCanvas repForLayout:](-[TSDRep canvas](self "canvas")];
      if (v3)
      {
        LOBYTE(v3) = [objc_msgSend(v4 "connectedTo")] == 2;
      }
    }
  }

  return v3;
}

- (id)additionalRepsForDragging
{
  if ([(TSDConnectionLineRep *)self p_isConnected])
  {
    v3 = [(TSDConnectionLineRep *)self connectionLineLayout];
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v3 connectedFrom])
    {
      [v4 addObject:{-[TSDCanvas repForLayout:](-[TSDRep canvas](self, "canvas"), "repForLayout:", objc_msgSend(v3, "connectedFrom"))}];
    }

    if ([v3 connectedTo])
    {
      [v4 addObject:{-[TSDCanvas repForLayout:](-[TSDRep canvas](self, "canvas"), "repForLayout:", objc_msgSend(v3, "connectedTo"))}];
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
  v2 = [(TSDRep *)self layout];

  return [(TSDLayout *)v2 isInTopLevelContainerForEditing];
}

- (BOOL)isDraggable
{
  v5.receiver = self;
  v5.super_class = TSDConnectionLineRep;
  v3 = [(TSDShapeRep *)&v5 isDraggable];
  if (v3)
  {
    LOBYTE(v3) = ![(TSDConnectionLineRep *)self p_isConnectedToLockedObjects];
  }

  return v3;
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

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  if ([a3 tag] == 12)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = TSDConnectionLineRep;
  return [(TSDShapeRep *)&v6 canUseSpecializedHitRegionForKnob:a3];
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
  v3 = [(TSDConnectionLineRep *)self connectionLineLayout];
  v4 = [v3 connectedTo] == 0;
  if ((v4 ^ ([v3 connectedFrom] != 0)))
  {
    v7.receiver = self;
    v7.super_class = TSDConnectionLineRep;
    [(TSDRep *)&v7 i_dragOffset];
  }

  else
  {
    if ([v3 isBeingTransformed])
    {
      [v3 pauseDynamicTransformation];
    }

    [v3 i_accumulatedDrag];
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
  v6 = [(TSDRep *)self canvas];
  [v3 position];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  [(TSDCanvas *)v6 convertUnscaledToBoundsPoint:?];
  v8 = v7;
  v10 = v9;
  v11 = [(TSDRep *)self canvas];
  [v4 position];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  [(TSDCanvas *)v11 convertUnscaledToBoundsPoint:?];
  v13 = v12;
  v15 = v14;
  v16 = [(TSDRep *)self canvas];
  [v5 position];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
  [(TSDCanvas *)v16 convertUnscaledToBoundsPoint:?];
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
  v2 = [(TSDConnectionLineRep *)self connectionLineLayout];
  objc_opt_class();
  [objc_msgSend(v2 "connectedFrom")];
  v3 = TSUDynamicCast();
  objc_opt_class();
  [objc_msgSend(v2 "connectedTo")];
  v4 = TSUDynamicCast();
  if ([v3 isLocked])
  {
    return 1;
  }

  return [v4 isLocked];
}

- (BOOL)p_controlKnobVisible
{
  v3 = [(TSDConnectionLineRep *)self shouldShowSmartShapeKnobs];
  if (v3)
  {
    v4 = [(TSDRep *)self knobForTag:12];
    v5 = [(TSDRep *)self canvas];
    [v4 position];
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:?];
    [(TSDCanvas *)v5 convertUnscaledToBoundsPoint:?];
    v7 = v6;
    v9 = v8;
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] visibleBoundsRect];
    v14 = v7;
    v15 = v9;

    LOBYTE(v3) = CGRectContainsPoint(*&v10, *&v14);
  }

  return v3;
}

@end