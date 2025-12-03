@interface TVRUITouchEvent
- (CGPoint)digitizerLocation;
- (TVRUITouchEvent)initWithTimestamp:(double)timestamp touchPhase:(int64_t)phase fingerIndex:(int64_t)index digitizerLocation:(CGPoint)location;
@end

@implementation TVRUITouchEvent

- (TVRUITouchEvent)initWithTimestamp:(double)timestamp touchPhase:(int64_t)phase fingerIndex:(int64_t)index digitizerLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v12.receiver = self;
  v12.super_class = TVRUITouchEvent;
  result = [(TVRUITouchEvent *)&v12 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_touchPhase = phase;
    result->_fingerIndex = index;
    result->_digitizerLocation.x = x;
    result->_digitizerLocation.y = y;
  }

  return result;
}

- (CGPoint)digitizerLocation
{
  x = self->_digitizerLocation.x;
  y = self->_digitizerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end