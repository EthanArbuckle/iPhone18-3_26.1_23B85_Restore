@interface UIDropInteractionGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (void)_draggingEndedWithEvent:(id)event;
- (void)_draggingExitedWithEvent:(id)event;
@end

@implementation UIDropInteractionGestureRecognizer

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

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = UIDropInteractionGestureRecognizer;
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
    v7.super_class = UIDropInteractionGestureRecognizer;
    v5 = [(UIDragGestureRecognizer *)&v7 canBePreventedByGestureRecognizer:recognizerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end