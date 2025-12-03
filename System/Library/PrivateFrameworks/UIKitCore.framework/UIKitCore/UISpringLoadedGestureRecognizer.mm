@interface UISpringLoadedGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (BOOL)shouldReceiveEvent:(id)event;
- (CGPoint)locationInView:(id)view;
- (void)_draggingEndedWithEvent:(id)event;
- (void)_draggingExitedWithEvent:(id)event;
- (void)spring;
@end

@implementation UISpringLoadedGestureRecognizer

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = UISpringLoadedGestureRecognizer;
    v5 = [(UIDragGestureRecognizer *)&v7 canPreventGestureRecognizer:recognizerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = UISpringLoadedGestureRecognizer;
    v5 = [(UIDragGestureRecognizer *)&v7 canBePreventedByGestureRecognizer:recognizerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  _dragEvent = [(UIDragGestureRecognizer *)self _dragEvent];
  v6 = _dragEvent;
  if (viewCopy)
  {
    [_dragEvent locationInView:viewCopy];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    view = [(UIGestureRecognizer *)self view];
    [v6 locationInView:view];
    v8 = v12;
    v10 = v13;
  }

  v14 = v8;
  v15 = v10;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 9 && (objc_msgSend(eventCopy, "isFromAccessibilitySession") & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = UISpringLoadedGestureRecognizer;
    v5 = [(UIDragGestureRecognizer *)&v7 shouldReceiveEvent:eventCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_draggingExitedWithEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)_draggingEndedWithEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)spring
{
  if ([(UIGestureRecognizer *)self state]< UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateEnded)
  {
    v3 = 5;
  }

  else
  {
    v3 = 3;
  }

  [(UIGestureRecognizer *)self setState:v3];
}

@end