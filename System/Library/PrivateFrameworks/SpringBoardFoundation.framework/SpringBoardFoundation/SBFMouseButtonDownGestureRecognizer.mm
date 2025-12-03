@interface SBFMouseButtonDownGestureRecognizer
- (void)_succesfullyRecognizeFromEvent:(__IOHIDEvent *)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SBFMouseButtonDownGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBFMouseButtonDownGestureRecognizer;
  eventCopy = event;
  [(SBFMouseButtonDownGestureRecognizer *)&v8 touchesBegan:began withEvent:eventCopy];
  _hidEvent = [eventCopy _hidEvent];

  if ([(SBFMouseButtonDownGestureRecognizer *)self _isMouseButtonClickEvent:_hidEvent])
  {
    [(SBFMouseButtonDownGestureRecognizer *)self _succesfullyRecognizeFromEvent:_hidEvent];
  }

  else
  {
    [(SBFMouseButtonDownGestureRecognizer *)self setState:5];
  }
}

- (void)_succesfullyRecognizeFromEvent:(__IOHIDEvent *)event
{
  v4 = +[SBWakeLogger sharedInstance];
  [v4 wakeMayBegin:6 withTimestamp:IOHIDEventGetTimeStamp()];

  if (![(SBFMouseButtonDownGestureRecognizer *)self state])
  {

    [(SBFMouseButtonDownGestureRecognizer *)self setState:3];
  }
}

@end