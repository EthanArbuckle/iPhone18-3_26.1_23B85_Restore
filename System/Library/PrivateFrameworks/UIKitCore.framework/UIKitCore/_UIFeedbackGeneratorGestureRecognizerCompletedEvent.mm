@interface _UIFeedbackGeneratorGestureRecognizerCompletedEvent
+ (id)completedEventFromEvent:(id)a3 inView:(id)a4;
- (CGPoint)locationInView;
- (CGPoint)locationInView:(id)a3;
@end

@implementation _UIFeedbackGeneratorGestureRecognizerCompletedEvent

+ (id)completedEventFromEvent:(id)a3 inView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v7)
  {
    v10 = v7[11];
  }

  else
  {
    v10 = 0;
  }

  v8[1] = v10;
  [v7 locationInView:v6];
  v12 = v11;
  v14 = v13;

  v9[2] = v12;
  v9[3] = v14;

  return v9;
}

- (CGPoint)locationInView:(id)a3
{
  x = self->_locationInView.x;
  y = self->_locationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)locationInView
{
  x = self->_locationInView.x;
  y = self->_locationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end