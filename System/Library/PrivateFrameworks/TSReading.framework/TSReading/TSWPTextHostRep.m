@interface TSWPTextHostRep
- (TSWPTextHostRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)childReps;
- (id)hitRep:(CGPoint)a3;
- (id)lineSearchReferencesForSearchReference:(id)a3;
- (id)overlayLayers;
- (void)dealloc;
- (void)drawTextBackground:(CGContext *)a3 insetRect:(CGRect)a4 pulsating:(BOOL)a5;
- (void)p_activeFindHighlightChangedNotification:(id)a3;
- (void)p_findUIStateChangedNotification:(id)a3;
- (void)p_setActiveSearchReference:(id)a3;
- (void)p_setSearchReferencesToHighlight:(id)a3;
- (void)pulseAnimationDidStop:(id)a3;
- (void)selectChildRep:(id)a3;
- (void)setPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4;
- (void)updateChildrenFromLayout;
- (void)updateFindAnimationWithAnimatingPulse:(BOOL)a3;
- (void)updateHighlights;
- (void)willBeRemoved;
@end

@implementation TSWPTextHostRep

- (TSWPTextHostRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSWPTextHostRep;
  v5 = [(TSDRep *)&v8 initWithLayout:a3 canvas:?];
  if (v5 && [a4 isCanvasInteractive])
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel_p_activeFindHighlightChangedNotification_ name:@"TSKActiveFindHighlightChangedNotification" object:{-[TSDRep interactiveCanvasController](v5, "interactiveCanvasController")}];
    [v6 addObserver:v5 selector:sel_p_findUIStateChangedNotification_ name:@"TSKFindUIStateChanged" object:{-[TSDRep interactiveCanvasController](v5, "interactiveCanvasController")}];
    [(TSWPTextHostRep *)v5 p_setActiveSearchReference:[(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSDRep *)v5 interactiveCanvasController] documentRoot] activeSearchReference]];
    [(TSWPTextHostRep *)v5 p_setSearchReferencesToHighlight:[(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSDRep *)v5 interactiveCanvasController] documentRoot] searchReferencesToHighlight]];
  }

  return v5;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(TSDRep *)self->_editingRep setParentRep:0];

  self->_editingRep = 0;
  v3.receiver = self;
  v3.super_class = TSWPTextHostRep;
  [(TSDRep *)&v3 dealloc];
}

- (void)willBeRemoved
{
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:@"TSKActiveFindHighlightChangedNotification" object:0];

    [v3 removeObserver:self name:@"TSKFindUIStateChanged" object:0];
  }
}

- (void)updateChildrenFromLayout
{
  v3 = [(TSDLayout *)[(TSDRep *)self layout] editingShapeLayout];
  v4 = [(TSDRep *)self->_editingRep layout];
  editingRep = self->_editingRep;
  if (v4 != v3)
  {
    [(TSDRep *)editingRep setParentRep:0];

    editingRep = 0;
    self->_editingRep = 0;
  }

  if (editingRep)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = [objc_alloc(-[TSDLayout repClassOverride](v3 "repClassOverride"))];
    self->_editingRep = v7;
    [(TSDRep *)v7 setParentRep:self];
    editingRep = self->_editingRep;
  }

  [(TSWPShapeRep *)editingRep updateChildrenFromLayout];
}

- (id)hitRep:(CGPoint)a3
{
  editingRep = self->_editingRep;
  if (!editingRep || ((x = a3.x, y = a3.y, (v5 = [(TSDAbstractLayout *)[(TSDRep *)editingRep layout] geometry]) == 0) ? (v8 = 0uLL, v6 = 0uLL, v7 = 0uLL) : ([(TSDLayoutGeometry *)v5 inverseTransform], v6 = v13, v7 = v14, v8 = v15), result = [(TSWPShapeRep *)self->_editingRep hitRep:vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, y), v6, x))], a3.x = x, a3.y = y, !result))
  {
    v12.receiver = self;
    v12.super_class = TSWPTextHostRep;
    return [(TSDRep *)&v12 hitRep:a3.x, a3.y];
  }

  return result;
}

- (id)childReps
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (!self->_editingRep)
  {
    return 0;
  }

  v3[0] = self->_editingRep;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (void)selectChildRep:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTextHostRep selectChildRep:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTextHostRep.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:154 description:@"can't select children of a text editing host rep"];
}

- (void)setPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    if (![(TSWPTextHostRep *)self pulseArrayController])
    {
      self->_pulseArrayController = [[TSKHighlightArrayController alloc] initWithZOrder:self delegate:8.0];
    }

    [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] setShouldPulsate:1];
    [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] setAutohide:v5];
    v6 = [(TSDRep *)self layout];
    if (v6)
    {
      [(TSDAbstractLayout *)v6 transformInRoot];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
    }

    v7 = [(TSWPTextHostRep *)self pulseArrayController];
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    [(TSKHighlightArrayController *)v7 setTransform:v9];
    [(TSDCanvas *)self->super.mCanvas viewScale];
    [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] setViewScale:v8];
  }

  else
  {

    [(TSWPTextHostRep *)self setPulseArrayController:0, a4];
  }
}

- (void)pulseAnimationDidStop:(id)a3
{
  if ([(TSWPTextHostRep *)self pulseArrayController]== a3)
  {
    if ([(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] autohide])
    {
      [(TSWPTextHostRep *)self setPulseControllerActive:0 autohide:0];
      [(TSDRep *)self invalidateKnobs];
      [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layoutInvalidated];
    }

    v4 = [(TSWPTextHostRep *)self activeSearchReference];

    [(TSKSearchReference *)v4 setPulseHighlight:0];
  }
}

- (void)p_activeFindHighlightChangedNotification:(id)a3
{
  -[TSWPTextHostRep p_setActiveSearchReference:](self, "p_setActiveSearchReference:", [objc_msgSend(a3 "userInfo")]);
  v4 = [(TSDRep *)self canvas];

  [(TSDCanvas *)v4 invalidateLayers];
}

- (void)p_setActiveSearchReference:(id)a3
{
  if (a3 && [(TSWPTextHostRep *)self doesRepContainSearchReference:?])
  {
    if (([(TSKSearchReference *)[(TSWPTextHostRep *)self activeSearchReference] isEqual:a3]& 1) == 0)
    {
      [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] stop];
      -[TSWPTextHostRep setPulseControllerActive:autohide:](self, "setPulseControllerActive:autohide:", 1, [a3 autohideHighlight]);
      [(TSWPTextHostRep *)self setActiveSearchReference:a3];
      v5 = [a3 pulseHighlight];

      [(TSWPTextHostRep *)self updateFindAnimationWithAnimatingPulse:v5];
    }
  }

  else
  {
    [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] stop];
    [(TSWPTextHostRep *)self setPulseControllerActive:0 autohide:0];

    [(TSWPTextHostRep *)self setActiveSearchReference:0];
  }
}

- (void)p_findUIStateChangedNotification:(id)a3
{
  v4 = [objc_msgSend(a3 "userInfo")];

  [(TSWPTextHostRep *)self p_setSearchReferencesToHighlight:v4];
}

- (void)p_setSearchReferencesToHighlight:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:{-[TSDRep info](self, "info")}];
  if ([(TSWPTextHostRep *)self searchReferences]!= v4)
  {
    [(TSWPTextHostRep *)self setSearchReferences:v4];

    [(TSWPTextHostRep *)self updateHighlights];
  }
}

- (void)updateFindAnimationWithAnimatingPulse:(BOOL)a3
{
  v3 = a3;
  if (![(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] pulsating])
  {
    if ([(TSWPTextHostRep *)self activeSearchReference])
    {
      v5 = [(TSWPTextHostRep *)self lineSearchReferencesForSearchReference:[(TSWPTextHostRep *)self activeSearchReference]];
      [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] reset];
      v6 = [(TSWPTextHostRep *)self pulseArrayController];
      [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
      [(TSKHighlightArrayController *)v6 buildHighlightsForSearchReferences:v5 contentsScaleForLayers:?];
      if (v3)
      {
        v7 = [(TSWPTextHostRep *)self pulseArrayController];

        [(TSKHighlightArrayController *)v7 startAnimating];
      }
    }
  }
}

- (id)lineSearchReferencesForSearchReference:(id)a3
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a3;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

- (void)updateHighlights
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)[(TSWPTextHostRep *)self searchReferences] count])
  {
    if (![(TSWPTextHostRep *)self highlightArrayController])
    {
      self->_highlightArrayController = [[TSKHighlightArrayController alloc] initWithZOrder:self delegate:3.0];
    }

    v3 = [(TSDRep *)self layout];
    if (v3)
    {
      [(TSDAbstractLayout *)v3 transformInRoot];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
    }

    v4 = [(TSWPTextHostRep *)self highlightArrayController];
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    [(TSKHighlightArrayController *)v4 setTransform:v18];
    [(TSDCanvas *)self->super.mCanvas viewScale];
    [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self highlightArrayController] setViewScale:v5];
    [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self highlightArrayController] reset];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(TSWPTextHostRep *)self searchReferences];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(TSWPTextHostRep *)self highlightArrayController];
          v22 = v11;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
          [v11 setFindHighlights:{-[TSKHighlightArrayController buildHighlightsForSearchReferences:contentsScaleForLayers:](v12, "buildHighlightsForSearchReferences:contentsScaleForLayers:", v13)}];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {

    [(TSWPTextHostRep *)self setHighlightArrayController:0];
  }
}

- (id)overlayLayers
{
  v7.receiver = self;
  v7.super_class = TSWPTextHostRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDRep overlayLayers](&v7, sel_overlayLayers)}];
  if ([(TSWPTextHostRep *)self useFindOverlayers])
  {
    v4 = [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self highlightArrayController] layers];
    if ([(NSArray *)v4 count])
    {
      [(NSArray *)v4 makeObjectsPerformSelector:sel_setDelegate_ withObject:[(TSDRep *)self interactiveCanvasController]];
      [v3 addObjectsFromArray:v4];
    }

    v5 = [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] layers];
    if ([(NSArray *)v5 count])
    {
      [(NSArray *)v5 makeObjectsPerformSelector:sel_setDelegate_ withObject:[(TSDRep *)self interactiveCanvasController]];
      [v3 addObjectsFromArray:v5];
    }
  }

  return v3;
}

- (void)drawTextBackground:(CGContext *)a3 insetRect:(CGRect)a4 pulsating:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v20[2] = *MEMORY[0x277D85DE8];
  CGContextBeginTransparencyLayer(a3, 0);
  CGContextSaveGState(a3);
  v11 = [MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v12 = v11;
  if (v5)
  {
    v13 = [MEMORY[0x277D6C2A8] colorWithRed:0.960784316 green:0.917647064 blue:0.184313729 alpha:1.0];
    v14 = [MEMORY[0x277D6C2A8] colorWithRed:0.941176474 green:0.776470602 blue:0.156862751 alpha:1.0];
    v20[0] = [v13 CGColor];
    v20[1] = [v14 CGColor];
    v15 = CGGradientCreateWithColors(0, [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2], 0);
    v16 = TSDCreateRoundRectPathForRectWithRadius(x, y, width, height, 3.0);
    if (v12)
    {
      CGContextSaveGState(a3);
      v17 = [v12 CGColor];
      v21.width = 0.0;
      v21.height = -1.0;
      CGContextSetShadowWithColor(a3, v21, 2.0, v17);
      CGContextAddPath(a3, v16);
      CGContextSetFillColorWithColor(a3, [v13 CGColor]);
      CGContextFillPath(a3);
      CGContextRestoreGState(a3);
    }

    CGContextAddPath(a3, v16);
    CGContextClip(a3);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinY = CGRectGetMinY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v24.y = CGRectGetMaxY(v26);
    v22.x = 0.0;
    v24.x = 0.0;
    v22.y = MinY;
    CGContextDrawLinearGradient(a3, v15, v22, v24, 0);
    CGGradientRelease(v15);
    CGPathRelease(v16);
  }

  else
  {
    v19 = [v11 CGColor];
    v23.width = 0.0;
    v23.height = -1.0;
    CGContextSetShadowWithColor(a3, v23, 2.0, v19);
    CGContextSetRGBFillColor(a3, 1.0, 1.0, 1.0, 1.0);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    CGContextFillRect(a3, v27);
  }

  CGContextRestoreGState(a3);
  CGContextEndTransparencyLayer(a3);
}

@end