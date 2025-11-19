@interface OFUIWindowDraggingGestureRecognizer
- (CGPoint)initialPoint;
- (CGPoint)translation;
- (void)_beginDraggingIfNecessary;
- (void)_stopDraggingIfNecessary:(BOOL)a3;
- (void)beginDragging;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation OFUIWindowDraggingGestureRecognizer

- (void)reset
{
  self->_allowDragging = 0;
  self->_initialPoint = *MEMORY[0x277CBF348];
  v2.receiver = self;
  v2.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v2 reset];
}

- (void)beginDragging
{
  if (!self->_allowDragging)
  {
    self->_allowDragging = 1;
    [(OFUIWindowDraggingGestureRecognizer *)self _beginDraggingIfNecessary];
  }
}

- (CGPoint)translation
{
  [(OFUIWindowDraggingGestureRecognizer *)self locationInView:[(OFUIWindowDraggingGestureRecognizer *)self view]];
  v4 = v3 - self->_initialPoint.x;
  v6 = v5 - self->_initialPoint.y;
  result.y = v6;
  result.x = v4;
  return result;
}

- (void)_beginDraggingIfNecessary
{
  if (self->_allowDragging && ![(OFUIWindowDraggingGestureRecognizer *)self state]&& [(OFUIWindowDraggingGestureRecognizer *)self numberOfTouches]== 1)
  {
    [(OFUIWindowDraggingGestureRecognizer *)self setState:1];
    [(OFUIWindowDraggingGestureRecognizer *)self locationInView:[(OFUIWindowDraggingGestureRecognizer *)self view]];
    self->_initialPoint.x = v3;
    self->_initialPoint.y = v4;
  }
}

- (void)_stopDraggingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(OFUIWindowDraggingGestureRecognizer *)self state];
  v6 = 3;
  if (v3)
  {
    v6 = 4;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 5;
  }

  [(OFUIWindowDraggingGestureRecognizer *)self setState:v7];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  [(OFUIWindowDraggingGestureRecognizer *)self _beginDraggingIfNecessary];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(OFUIWindowDraggingGestureRecognizer *)self _beginDraggingIfNecessary];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(OFUIWindowDraggingGestureRecognizer *)self _stopDraggingIfNecessary:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(OFUIWindowDraggingGestureRecognizer *)self _stopDraggingIfNecessary:1];
}

- (CGPoint)initialPoint
{
  x = self->_initialPoint.x;
  y = self->_initialPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end