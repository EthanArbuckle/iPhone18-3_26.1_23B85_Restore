@interface _UIFeedbackGeneratorGestureRecognizerCompletedEvent
+ (id)completedEventFromEvent:(id)event inView:(id)view;
- (CGPoint)locationInView;
- (CGPoint)locationInView:(id)view;
@end

@implementation _UIFeedbackGeneratorGestureRecognizerCompletedEvent

+ (id)completedEventFromEvent:(id)event inView:(id)view
{
  viewCopy = view;
  eventCopy = event;
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (eventCopy)
  {
    v10 = eventCopy[11];
  }

  else
  {
    v10 = 0;
  }

  v8[1] = v10;
  [eventCopy locationInView:viewCopy];
  v12 = v11;
  v14 = v13;

  v9[2] = v12;
  v9[3] = v14;

  return v9;
}

- (CGPoint)locationInView:(id)view
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