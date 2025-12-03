@interface OFUIWindowDraggingGestureRecognizer
- (CGPoint)initialPoint;
- (CGPoint)translation;
- (void)_beginDraggingIfNecessary;
- (void)_stopDraggingIfNecessary:(BOOL)necessary;
- (void)beginDragging;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
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

- (void)_stopDraggingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  state = [(OFUIWindowDraggingGestureRecognizer *)self state];
  v6 = 3;
  if (necessaryCopy)
  {
    v6 = 4;
  }

  if (state)
  {
    v7 = v6;
  }

  else
  {
    v7 = 5;
  }

  [(OFUIWindowDraggingGestureRecognizer *)self setState:v7];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  [(OFUIWindowDraggingGestureRecognizer *)self _beginDraggingIfNecessary];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  [(OFUIWindowDraggingGestureRecognizer *)self _beginDraggingIfNecessary];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(OFUIWindowDraggingGestureRecognizer *)self _stopDraggingIfNecessary:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = OFUIWindowDraggingGestureRecognizer;
  [(OFUIWindowDraggingGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
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