@interface TSDCanvasZoomPinchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ((*(&self->super._flags + 1) & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = TSDCanvasZoomPinchGestureRecognizer;
    [(TSDCanvasZoomPinchGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ((*(&self->super._flags + 1) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = TSDCanvasZoomPinchGestureRecognizer;
    [(TSDCanvasZoomPinchGestureRecognizer *)&v4 touchesMoved:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSDCanvasZoomPinchGestureRecognizer;
  [(TSDCanvasZoomPinchGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(TSDCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (*(&self->super._flags + 4) == 1)
  {
    [(TSDCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSDCanvasZoomPinchGestureRecognizer;
  [(TSDCanvasZoomPinchGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(TSDCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (*(&self->super._flags + 4) == 1)
  {
    [(TSDCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

@end