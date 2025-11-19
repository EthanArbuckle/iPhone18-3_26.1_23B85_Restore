@interface SBFMouseButtonDownGestureRecognizer
- (void)_succesfullyRecognizeFromEvent:(__IOHIDEvent *)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SBFMouseButtonDownGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBFMouseButtonDownGestureRecognizer;
  v6 = a4;
  [(SBFMouseButtonDownGestureRecognizer *)&v8 touchesBegan:a3 withEvent:v6];
  v7 = [v6 _hidEvent];

  if ([(SBFMouseButtonDownGestureRecognizer *)self _isMouseButtonClickEvent:v7])
  {
    [(SBFMouseButtonDownGestureRecognizer *)self _succesfullyRecognizeFromEvent:v7];
  }

  else
  {
    [(SBFMouseButtonDownGestureRecognizer *)self setState:5];
  }
}

- (void)_succesfullyRecognizeFromEvent:(__IOHIDEvent *)a3
{
  v4 = +[SBWakeLogger sharedInstance];
  [v4 wakeMayBegin:6 withTimestamp:IOHIDEventGetTimeStamp()];

  if (![(SBFMouseButtonDownGestureRecognizer *)self state])
  {

    [(SBFMouseButtonDownGestureRecognizer *)self setState:3];
  }
}

@end