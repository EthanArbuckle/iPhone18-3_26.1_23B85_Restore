@interface TVRUITouchEvent
- (CGPoint)digitizerLocation;
- (TVRUITouchEvent)initWithTimestamp:(double)a3 touchPhase:(int64_t)a4 fingerIndex:(int64_t)a5 digitizerLocation:(CGPoint)a6;
@end

@implementation TVRUITouchEvent

- (TVRUITouchEvent)initWithTimestamp:(double)a3 touchPhase:(int64_t)a4 fingerIndex:(int64_t)a5 digitizerLocation:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v12.receiver = self;
  v12.super_class = TVRUITouchEvent;
  result = [(TVRUITouchEvent *)&v12 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_touchPhase = a4;
    result->_fingerIndex = a5;
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