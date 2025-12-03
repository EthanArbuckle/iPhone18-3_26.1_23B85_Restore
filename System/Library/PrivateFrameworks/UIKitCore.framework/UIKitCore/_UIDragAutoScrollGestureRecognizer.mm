@interface _UIDragAutoScrollGestureRecognizer
- (BOOL)shouldReceiveEvent:(id)event;
- (void)_draggingEndedWithEvent:(id)event;
- (void)_draggingExitedWithEvent:(id)event;
@end

@implementation _UIDragAutoScrollGestureRecognizer

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 9 && (objc_msgSend(eventCopy, "isFromAccessibilitySession") & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = _UIDragAutoScrollGestureRecognizer;
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

    [(UIGestureRecognizer *)self setState:4];
  }
}

- (void)_draggingEndedWithEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

@end