@interface PXFocusTimelineEvent
- (CGPoint)location;
- (PXFocusTimelineEvent)initWithTime:(id *)a3 type:(unint64_t)a4;
@end

@implementation PXFocusTimelineEvent

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXFocusTimelineEvent)initWithTime:(id *)a3 type:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = PXFocusTimelineEvent;
  result = [(PXFocusTimelineEvent *)&v8 init];
  if (result)
  {
    v7 = *&a3->var0;
    result->_time.epoch = a3->var3;
    *&result->_time.value = v7;
    result->_type = a4;
  }

  return result;
}

@end