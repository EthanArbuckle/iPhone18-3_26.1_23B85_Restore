@interface TSDMediaRep
- (BOOL)i_shouldRenderStroke:(id)stroke;
- (BOOL)isPlaceholder;
- (BOOL)replaceButtonContainsPoint:(CGPoint)point;
- (BOOL)shouldCreateKnobs;
- (BOOL)shouldShowMediaReplaceUI;
- (CGPoint)p_scaledPositionOfImageReplaceKnob;
- (CGPoint)positionOfHyperlinkKnob;
- (CGSize)p_replaceButtonSize;
- (TSDMediaInfo)mediaInfo;
- (TSDMediaLayout)mediaLayout;
- (id)additionalLayersOverLayer;
- (id)currentReplaceButtonHighlightedImage;
- (id)currentReplaceButtonImage;
- (id)overlayLayers;
- (id)p_tapToReplaceLayer;
- (void)addKnobsToArray:(id)array;
- (void)dealloc;
- (void)didEndZooming;
- (void)i_updateFrameRep;
- (void)p_addLayerForReplaceButtonToArray:(id)array;
- (void)p_updateTapToReplaceLayerPosition;
- (void)processChangedProperty:(int)property;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)willBeginZooming;
@end

@implementation TSDMediaRep

- (void)dealloc
{
  [*&self->mIsZooming setDelegate:0];

  v3.receiver = self;
  v3.super_class = TSDMediaRep;
  [(TSDStyledRep *)&v3 dealloc];
}

- (TSDMediaInfo)mediaInfo
{
  objc_opt_class();
  [(TSDRep *)self info];

  return TSUDynamicCast();
}

- (TSDMediaLayout)mediaLayout
{
  objc_opt_class();
  [(TSDRep *)self layout];

  return TSUDynamicCast();
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDMediaRep;
  [(TSDStyledRep *)&v5 processChangedProperty:?];
  if (property == 527)
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] invalidateLayers];
  }
}

- (void)willBeginZooming
{
  *(&self->super.mFlags + 4) = 1;
  if ([(TSDMediaRep *)self shouldShowMediaReplaceUI])
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
  }
}

- (void)didEndZooming
{
  *(&self->super.mFlags + 4) = 0;
  if ([(TSDMediaRep *)self shouldShowMediaReplaceUI])
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
  }
}

- (id)overlayLayers
{
  v5.receiver = self;
  v5.super_class = TSDMediaRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDRep overlayLayers](&v5, sel_overlayLayers)}];
  if ([(TSDRep *)self isSelected]&& [(TSDMediaRep *)self shouldShowMediaReplaceUI])
  {
    [(TSDMediaRep *)self p_addLayerForReplaceButtonToArray:v3];
  }

  return v3;
}

- (id)additionalLayersOverLayer
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  v6.receiver = self;
  v6.super_class = TSDMediaRep;
  array = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDRep additionalLayersOverLayer](&v6, sel_additionalLayersOverLayer)}];
  if ((*(&self->super.mFlags + 1) & 1) == 0 && ![(TSDInteractiveCanvasController *)interactiveCanvasController inReadMode]&& [(TSDMediaRep *)self shouldShowMediaReplaceUI]&& ![(TSDRep *)self isSelected])
  {
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    [(TSDMediaRep *)self p_addLayerForReplaceButtonToArray:array];
  }

  return array;
}

- (BOOL)shouldCreateKnobs
{
  v4.receiver = self;
  v4.super_class = TSDMediaRep;
  return [(TSDRep *)&v4 shouldCreateKnobs]|| [(TSDMediaRep *)self shouldShowMediaReplaceUI];
}

- (void)addKnobsToArray:(id)array
{
  v3.receiver = self;
  v3.super_class = TSDMediaRep;
  [(TSDRep *)&v3 addKnobsToArray:array];
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  v3.receiver = self;
  v3.super_class = TSDMediaRep;
  [(TSDRep *)&v3 updatePositionsOfKnobs:knobs];
}

- (CGPoint)positionOfHyperlinkKnob
{
  v12.receiver = self;
  v12.super_class = TSDMediaRep;
  [(TSDRep *)&v12 positionOfHyperlinkKnob];
  v4 = v3;
  v6 = v5;
  if ([(TSDMediaRep *)self shouldShowMediaReplaceUI])
  {
    [objc_msgSend(MEMORY[0x277D6C2F8] imageNamed:@"sf-mac_canvas_btn_placeholder-small-N" inBundle:{TSDBundle()), "size"}];
    v8 = v7;
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    v4 = v4 - v8 / v9;
  }

  v10 = v4;
  v11 = v6;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)isPlaceholder
{
  mediaInfo = [(TSDMediaRep *)self mediaInfo];

  return [(TSDMediaInfo *)mediaInfo isPlaceholder];
}

- (BOOL)shouldShowMediaReplaceUI
{
  mediaInfo = [(TSDMediaRep *)self mediaInfo];
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  delegate = [(TSDInteractiveCanvasController *)interactiveCanvasController delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(TSDInteractiveCanvasControllerDelegate *)delegate interactiveCanvasController:interactiveCanvasController imageReplaceBadgeBehaviorForRep:self];
  }

  else
  {
    v6 = 0;
  }

  wasMediaReplaced = [(TSDMediaInfo *)mediaInfo wasMediaReplaced];
  v8 = v6 != 2 && wasMediaReplaced;
  isCanvasInteractive = [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive];
  if (isCanvasInteractive)
  {
    isCanvasInteractive = [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing];
    if (isCanvasInteractive)
    {
      if (v8 | ![(TSDMediaInfo *)mediaInfo isPlaceholder])
      {
        LOBYTE(isCanvasInteractive) = 0;
      }

      else
      {
        isLocked = [(TSDRep *)self isLocked];
        LOBYTE(isCanvasInteractive) = 0;
        if (!isLocked && v6 != 1)
        {
          [(TSDMediaRep *)self p_replaceButtonSize];
          v13 = TSDAddSizes(v11, v12, 3.0);
          v15 = v14;
          interactiveCanvasController2 = [(TSDRep *)self interactiveCanvasController];
          [(TSDRep *)self boundsForStandardKnobs];
          [(TSDInteractiveCanvasController *)interactiveCanvasController2 convertUnscaledToBoundsSize:v17, v18];
          LOBYTE(isCanvasInteractive) = v15 <= v20 && v13 <= v19;
        }
      }
    }
  }

  return isCanvasInteractive;
}

- (id)currentReplaceButtonImage
{
  v2 = MEMORY[0x277D6C2F8];
  v3 = TSDBundle();

  return [v2 imageNamed:@"sf-canvas-placeholder" inBundle:v3];
}

- (id)currentReplaceButtonHighlightedImage
{
  v2 = MEMORY[0x277D6C2F8];
  v3 = TSDBundle();

  return [v2 imageNamed:@"sf-canvas-placeholder-P" inBundle:v3];
}

- (BOOL)replaceButtonContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  shouldShowMediaReplaceUI = [(TSDMediaRep *)self shouldShowMediaReplaceUI];
  if (shouldShowMediaReplaceUI)
  {
    p_tapToReplaceLayer = [(TSDMediaRep *)self p_tapToReplaceLayer];
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] convertUnscaledToBoundsPoint:x, y];
    [p_tapToReplaceLayer convertPoint:-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](-[TSDRep interactiveCanvasController](self fromLayer:{"interactiveCanvasController"), "layerHost"), "canvasLayer"), v8, v9}];
    v11 = v10;
    v13 = v12;
    shouldShowMediaReplaceUI = [p_tapToReplaceLayer containsPoint:?];
    if (shouldShowMediaReplaceUI)
    {
      [(TSDMediaRep *)self p_replaceButtonSize];
      v15 = v14 * 0.5;
      [p_tapToReplaceLayer bounds];
      v20 = TSDCenterOfRect(v16, v17, v18, v19);
      LOBYTE(shouldShowMediaReplaceUI) = v15 > TSDDistance(v20, v21, v11, v13);
    }
  }

  return shouldShowMediaReplaceUI;
}

- (id)p_tapToReplaceLayer
{
  currentReplaceButtonImage = [(TSDMediaRep *)self currentReplaceButtonImage];
  if (!*&self->mIsZooming)
  {
    *&self->mIsZooming = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
  }

  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [*&self->mIsZooming setContents:{objc_msgSend(currentReplaceButtonImage, "CGImageForContentsScale:")}];
  [currentReplaceButtonImage size];
  [*&self->mIsZooming setBounds:TSDRectWithSize()];
  return *&self->mIsZooming;
}

- (void)p_addLayerForReplaceButtonToArray:(id)array
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(TSDMediaRep *)self p_updateTapToReplaceLayerPosition];
  [array addObject:{-[TSDMediaRep p_tapToReplaceLayer](self, "p_tapToReplaceLayer")}];
  v5 = MEMORY[0x277CD9FF0];

  [v5 commit];
}

- (CGSize)p_replaceButtonSize
{
  shouldDisplayHyperlinkUI = [(TSDRep *)self shouldDisplayHyperlinkUI];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (shouldDisplayHyperlinkUI)
  {
    v5 = &sTapToReplaceButtonImageSmallSize;
  }

  else
  {
    v5 = &sTapToReplaceButtonImageSize;
  }

  v6 = *v5;
  v7 = *(v5 + 1);
  if (*v5 == *MEMORY[0x277CBF3A8] && v7 == v4)
  {
    [-[TSDMediaRep currentReplaceButtonImage](self currentReplaceButtonImage];
    *v5 = v6;
    *(v5 + 1) = v7;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGPoint)p_scaledPositionOfImageReplaceKnob
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  [(TSDRep *)self boundsForStandardKnobs];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v13 = v12;
  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = v9;
  v43.size.height = v11;
  MaxX = CGRectGetMaxX(v43);
  [(TSDMediaRep *)self p_replaceButtonSize];
  v16 = -1.0 / v13;
  v17 = MaxX + -1.0 / v13 * (v15 * 0.5 + 3.0);
  v44.origin.x = v5;
  v44.origin.y = v7;
  v44.size.width = v9;
  v44.size.height = v11;
  MaxY = CGRectGetMaxY(v44);
  [(TSDMediaRep *)self p_replaceButtonSize];
  [(TSDRep *)self convertNaturalPointToUnscaledCanvas:v17, MaxY + v16 * (v19 * 0.5 + 3.0)];
  v21 = v20;
  v23 = v22;
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v25 = v24;
  v27 = v26;
  if ([(TSDRep *)self parentRep])
  {
    [[(TSDRep *)self parentRep] convertNaturalPointFromUnscaledCanvas:v21, v23];
    [[(TSDRep *)self parentRep] convertNaturalPointToLayerRelative:v28, v29];
    v25 = v30;
    v27 = v31;
  }

  [(TSDMediaRep *)self p_replaceButtonSize];
  v32 = TSDRectWithSize();
  v36 = TSDCenterOfRect(v32, v33, v34, v35);
  TSDSubtractPoints(v25, v27, v36);
  v37 = TSDRoundedPoint();

  v39 = TSDAddPoints(v37, v38, v36);
  result.y = v40;
  result.x = v39;
  return result;
}

- (void)p_updateTapToReplaceLayerPosition
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  p_tapToReplaceLayer = [(TSDMediaRep *)self p_tapToReplaceLayer];
  [(TSDMediaRep *)self p_scaledPositionOfImageReplaceKnob];
  [p_tapToReplaceLayer setPosition:?];
  if ([(TSDAbstractLayout *)[(TSDRep *)self layout] parent]&& [(TSDRep *)self isSelected])
  {
    parent = [(TSDAbstractLayout *)[(TSDRep *)self layout] parent];
    if (parent)
    {
      [(TSDAbstractLayout *)parent transformInRoot];
      v6 = v13;
      v7 = v14;
      v8 = v15;
    }

    else
    {
      v8 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
    }

    [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, *(MEMORY[0x277CBF348] + 8)), v6, *MEMORY[0x277CBF348]))];
    v10 = v9;
    [-[TSDMediaRep p_tapToReplaceLayer](self "p_tapToReplaceLayer")];
    [p_tapToReplaceLayer setPosition:{TSDAddPoints(v11, v12, v10)}];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)i_updateFrameRep
{
  stroke = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (-[TSDMediaRep i_shouldRenderStroke:](self, "i_shouldRenderStroke:", stroke) && [stroke isFrame])
  {
    mFrameMaskLayer = self->mFrameMaskLayer;
    if (!mFrameMaskLayer)
    {
LABEL_6:
      self->mFrameMaskLayer = [[TSDFrameRep alloc] initWithTSDFrame:stroke];
      return;
    }

    frame = [(CALayer *)mFrameMaskLayer frame];
    v6 = self->mFrameMaskLayer;
    if (frame != stroke)
    {

      self->mFrameMaskLayer = 0;
      goto LABEL_6;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = self->mFrameMaskLayer;
    if (v7)
    {

      self->mFrameMaskLayer = 0;
    }
  }
}

- (BOOL)i_shouldRenderStroke:(id)stroke
{
  null = [MEMORY[0x277CBEB68] null];
  LOBYTE(shouldRender) = 0;
  if (stroke)
  {
    if (null != stroke)
    {
      shouldRender = [stroke shouldRender];
      if (shouldRender)
      {
        if ([stroke isFrame])
        {
          mediaLayout = [(TSDMediaRep *)self mediaLayout];

          LOBYTE(shouldRender) = [(TSDMediaLayout *)mediaLayout shouldRenderFrameStroke];
        }

        else
        {
          LOBYTE(shouldRender) = 1;
        }
      }
    }
  }

  return shouldRender;
}

@end