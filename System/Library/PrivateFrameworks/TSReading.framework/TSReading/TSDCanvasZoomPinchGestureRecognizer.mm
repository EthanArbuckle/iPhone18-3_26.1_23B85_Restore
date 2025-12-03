@interface TSDCanvasZoomPinchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TSDCanvasZoomPinchGestureRecognizer

- (void)reset
{
  [(TSDCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  *(&self->super._flags + 4) = 0;
  v3.receiver = self;
  v3.super_class = TSDCanvasZoomPinchGestureRecognizer;
  [(TSDCanvasZoomPinchGestureRecognizer *)&v3 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ((*(&self->super._flags + 1) & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = TSDCanvasZoomPinchGestureRecognizer;
    [(TSDCanvasZoomPinchGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
    if ([(UIPinchGestureRecognizer *)self numberOfTouches]== 1)
    {
      [(TSDCanvasZoomPinchGestureRecognizer *)self p_startCancellationTimer];
    }

    else
    {
      [(TSDCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ((*(&self->super._flags + 1) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = TSDCanvasZoomPinchGestureRecognizer;
    [(TSDCanvasZoomPinchGestureRecognizer *)&v4 touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TSDCanvasZoomPinchGestureRecognizer;
  [(TSDCanvasZoomPinchGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(TSDCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (*(&self->super._flags + 4) == 1)
  {
    [(TSDCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TSDCanvasZoomPinchGestureRecognizer;
  [(TSDCanvasZoomPinchGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(TSDCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (*(&self->super._flags + 4) == 1)
  {
    [(TSDCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

@end