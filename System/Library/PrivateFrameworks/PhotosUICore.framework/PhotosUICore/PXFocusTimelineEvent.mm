@interface PXFocusTimelineEvent
- (CGPoint)location;
- (PXFocusTimelineEvent)initWithTime:(id *)time type:(unint64_t)type;
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

- (PXFocusTimelineEvent)initWithTime:(id *)time type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = PXFocusTimelineEvent;
  result = [(PXFocusTimelineEvent *)&v8 init];
  if (result)
  {
    v7 = *&time->var0;
    result->_time.epoch = time->var3;
    *&result->_time.value = v7;
    result->_type = type;
  }

  return result;
}

@end