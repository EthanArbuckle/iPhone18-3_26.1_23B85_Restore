@interface TSDGuidedPanController
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement;
- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement;
- (CATransform3D)p_transformForContentLocation:(SEL)location placement:(id)placement;
- (CGPoint)movement;
- (CGPoint)p_boundsOffsetForContentLocation:(id)location placement:(id)placement;
- (CGPoint)startPoint;
- (CGPoint)velocity;
- (TSDGuidedPanController)initWithInteractiveCanvasController:(id)controller;
- (id)p_currentContentLocationWithPlacement:(id)placement;
- (void)dealloc;
- (void)handlePanGesture:(id)gesture;
- (void)p_scrollToContentLocation:(id)location placement:(id)placement;
- (void)p_willBegin;
@end

@implementation TSDGuidedPanController

- (TSDGuidedPanController)initWithInteractiveCanvasController:(id)controller
{
  v7.receiver = self;
  v7.super_class = TSDGuidedPanController;
  v4 = [(TSDGuidedPanController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_interactiveCanvasController = controller;
    v4->_canvasView = [objc_msgSend(controller "layerHost")];
    v5->_canvasLayer = [objc_msgSend(controller "layerHost")];
    v5->_canvasScrollView = [(TSDCanvasView *)v5->_canvasView enclosingScrollView];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDGuidedPanController;
  [(TSDGuidedPanController *)&v3 dealloc];
}

- (void)handlePanGesture:(id)gesture
{
  [gesture translationInView:{-[TSDCanvasView superview](self->_canvasView, "superview")}];
  self->_movement.x = v5;
  self->_movement.y = v6;
  [gesture velocityInView:{-[TSDCanvasView superview](self->_canvasView, "superview")}];
  self->_velocity.x = v7;
  self->_velocity.y = v8;
  v9 = [(TSDGuidedPanController *)self p_currentContentLocationWithPlacement:0.5, 0.5];
  state = [gesture state];
  if (state > 2)
  {
    if (state == 3)
    {
      canvasLayer = self->_canvasLayer;
      v23 = *(MEMORY[0x277CD9DE8] + 80);
      v38 = *(MEMORY[0x277CD9DE8] + 64);
      v39 = v23;
      v24 = *(MEMORY[0x277CD9DE8] + 112);
      v40 = *(MEMORY[0x277CD9DE8] + 96);
      v41 = v24;
      v25 = *(MEMORY[0x277CD9DE8] + 16);
      v34 = *MEMORY[0x277CD9DE8];
      v35 = v25;
      v26 = *(MEMORY[0x277CD9DE8] + 48);
      v36 = *(MEMORY[0x277CD9DE8] + 32);
      v37 = v26;
      [(TSDCanvasLayer *)canvasLayer setTransform:&v34];
      v27 = [(TSDPanGuide *)self->_guide completionAnimationFromContentLocation:v9 movement:self->_movement.x velocity:self->_movement.y, self->_velocity.x, self->_velocity.y];
      if (v27)
      {
        v28 = v27;
        [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
        v29 = self->_canvasLayer;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __43__TSDGuidedPanController_handlePanGesture___block_invoke;
        v33[3] = &unk_279D49208;
        v33[4] = self;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __43__TSDGuidedPanController_handlePanGesture___block_invoke_2;
        v32[3] = &unk_279D49230;
        v32[4] = self;
        [v28 i_applyToLayer:v29 withTransformBlock:v33 completionBlock:v32];
        return;
      }

      [(TSDGuidedPanController *)self p_scrollToContentLocation:v9 placement:0.5, 0.5];
    }

    else
    {
      if (state != 4)
      {
        return;
      }

      v15 = self->_canvasLayer;
      v16 = *(MEMORY[0x277CD9DE8] + 80);
      v38 = *(MEMORY[0x277CD9DE8] + 64);
      v39 = v16;
      v17 = *(MEMORY[0x277CD9DE8] + 112);
      v40 = *(MEMORY[0x277CD9DE8] + 96);
      v41 = v17;
      v18 = *(MEMORY[0x277CD9DE8] + 16);
      v34 = *MEMORY[0x277CD9DE8];
      v35 = v18;
      v19 = *(MEMORY[0x277CD9DE8] + 48);
      v36 = *(MEMORY[0x277CD9DE8] + 32);
      v37 = v19;
      [(TSDCanvasLayer *)v15 setTransform:&v34];
    }

    [(TSDGuidedPanController *)self p_didEnd];
  }

  else if (state == 1)
  {
    [gesture locationInView:self->_canvasView];
    self->_startPoint.x = v20;
    self->_startPoint.y = v21;

    [(TSDGuidedPanController *)self p_willBegin];
  }

  else if (state == 2)
  {
    [(TSDGuidedPanController *)self touchContentPlacement];
    v50 = v11;
    v51 = v12;
    v13 = [(TSDPanGuide *)self->_guide contentLocationForMovement:&v50 velocity:v9 placement:self->_movement.x currentLocation:self->_movement.y, self->_velocity.x, self->_velocity.y];
    if (v13)
    {
      [(TSDGuidedPanController *)self p_transformForContentLocation:v13 placement:v50, v51];
      v14 = self->_canvasLayer;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      [(TSDCanvasLayer *)v14 setTransform:&v34];
      [(TSDPanGuide *)self->_guide guidedPanDidPanWithContentLocation:[(TSDGuidedPanController *)self p_currentContentLocationWithPlacement:0.5, 0.5]];
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGuidedPanController handlePanGesture:]"];
      [currentHandler handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGuidedPanController.m"), 100, @"invalid nil value for '%s'", "contentLocation"}];
    }
  }
}

double __43__TSDGuidedPanController_handlePanGesture___block_invoke@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 p_transformForContentLocation:a2 placement:{0.5, 0.5}];
  }

  else
  {
    result = 0.0;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t __43__TSDGuidedPanController_handlePanGesture___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 40) guidedPanDidFinishCompletionAnimation];
  if ([*(*(a1 + 32) + 40) guidedPanShouldPreserveCompletionAnimationEndLocation])
  {
    [*(a1 + 32) p_scrollToContentLocation:a2 placement:{0.5, 0.5}];
  }

  [*(a1 + 32) p_didEnd];
  v4 = [MEMORY[0x277D75128] sharedApplication];

  return [v4 endIgnoringInteractionEvents];
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)touchContentPlacement
{
  [(UIScrollView *)self->_canvasScrollView contentOffset];
  v4 = TSDSubtractPoints(self->_startPoint.x, self->_startPoint.y, v3);
  v6 = TSDAddPoints(v4, v5, self->_movement.x);
  v8 = v7;
  [(UIScrollView *)self->_canvasScrollView bounds];
  v10 = v6 / v9;
  bounds = [(UIScrollView *)self->_canvasScrollView bounds];
  v14.n128_f64[0] = v10;

  v12.n128_f64[0] = v8 / v13;
  TSDContentPlacementWithAnchorPoint(bounds, v14, v12);
  result.var0.y = v16;
  result.var0.x = v15;
  return result;
}

- ($F5A7A7B85D6989FBEC7A5CF4432B5A5E)centerPlusMovementContentPlacement
{
  x = self->_movement.x;
  y = self->_movement.y;
  [(UIScrollView *)self->_canvasScrollView bounds];
  v6 = x / v5;
  bounds = [(UIScrollView *)self->_canvasScrollView bounds];

  v8.n128_f64[0] = v6 + 0.5;
  v9.n128_f64[0] = y / v10 + 0.5;
  TSDContentPlacementWithAnchorPoint(bounds, v8, v9);
  result.var0.y = v12;
  result.var0.x = v11;
  return result;
}

- (id)p_currentContentLocationWithPlacement:(id)placement
{
  y = placement.var0.y;
  x = placement.var0.x;
  layer = [(UIScrollView *)self->_canvasScrollView layer];
  [(UIScrollView *)self->_canvasScrollView bounds];
  [layer convertRect:self->_canvasLayer toLayer:?];
  v8 = v7;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v10 = v9;
  v12 = v11;
  [(UIScrollView *)self->_canvasScrollView bounds];
  v14 = v13 / v8;
  [(TSDCanvasLayer *)self->_canvasLayer viewScale];
  v16 = [TSDContentLocation contentLocationWithUnscaledPoint:v10 viewScale:v12, v15 * v14];

  return [(TSDGuidedPanController *)self p_convertContentLocation:v16 fromPlacement:0.0 toPlacement:0.0, x, y];
}

- (CGPoint)p_boundsOffsetForContentLocation:(id)location placement:(id)placement
{
  y = placement.var0.y;
  x = placement.var0.x;
  interactiveCanvasController = self->_interactiveCanvasController;
  [location unscaledPoint];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v9 = v8;
  v11 = v10;
  [(UIScrollView *)self->_canvasScrollView contentOffset];
  v13 = TSDSubtractPoints(v9, v11, v12);
  v15 = v14;
  [(UIScrollView *)self->_canvasScrollView bounds];
  v17 = v13 - v16 * x;
  [(UIScrollView *)self->_canvasScrollView bounds];
  v19 = v15 - v18 * y;
  v20 = v17;
  result.y = v19;
  result.x = v20;
  return result;
}

- (CATransform3D)p_transformForContentLocation:(SEL)location placement:(id)placement
{
  [(TSDGuidedPanController *)self p_boundsOffsetForContentLocation:a5.var0.x placement:a5.var0.y];
  v9 = v8;
  v11 = v10;
  interactiveCanvasController = self->_interactiveCanvasController;
  [placement unscaledPoint];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v14 = v13;
  v16 = v15;
  [placement viewScale];
  v18 = v17;
  [(TSDCanvasLayer *)self->_canvasLayer viewScale];
  result = self->_canvasLayer;
  if (result)
  {
    v21 = v18 / v19;

    return [(CATransform3D *)result transformToScale:v21 aroundBoundsPoint:v14 afterOffset:v16, -v9, -v11];
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)p_scrollToContentLocation:(id)location placement:(id)placement
{
  if (location)
  {
    v5 = [(TSDGuidedPanController *)self p_convertContentLocation:placement.var0.x fromPlacement:placement.var0.y toPlacement:0.0, 0.0];
    interactiveCanvasController = self->_interactiveCanvasController;
    [v5 viewScale];
    v8 = v7;
    [v5 unscaledPoint];

    [(TSDInteractiveCanvasController *)interactiveCanvasController setViewScale:1 contentOffset:0 clampOffset:v8 animated:v9, v10];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGuidedPanController p_scrollToContentLocation:placement:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGuidedPanController.m"), 239, @"invalid nil value for '%s'", "contentLocation"}];
  }
}

- (void)p_willBegin
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:self->_startPoint.x, self->_startPoint.y];
  v4 = v3;
  v6 = v5;
  v7 = [(TSDGuidedPanController *)self p_currentContentLocationWithPlacement:0.5, 0.5];
  guide = self->_guide;
  [v7 unscaledPoint];

  [(TSDPanGuide *)guide guidedPanWillBeginAtPoint:v4 withCenterPoint:v6, v9, v10];
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)movement
{
  x = self->_movement.x;
  y = self->_movement.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end