@interface _UIMotionEffectFocusChangeEvent
- (CGPoint)focusPosition;
- (_UIMotionEffectFocusChangeEvent)initWithTimestamp:(double)timestamp focusPosition:(CGPoint)position;
- (double)velocityRelativeToPreviousEvent:(id)event;
- (id)copyWithTimestamp:(double)timestamp;
@end

@implementation _UIMotionEffectFocusChangeEvent

- (_UIMotionEffectFocusChangeEvent)initWithTimestamp:(double)timestamp focusPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v7.receiver = self;
  v7.super_class = _UIMotionEffectFocusChangeEvent;
  result = [(_UIMotionEffectEvent *)&v7 initWithTimestamp:timestamp];
  if (result)
  {
    result->_focusPosition.x = x;
    result->_focusPosition.y = y;
  }

  return result;
}

- (id)copyWithTimestamp:(double)timestamp
{
  v5 = objc_alloc(objc_opt_class());
  [(_UIMotionEffectFocusChangeEvent *)self focusPosition];

  return [v5 initWithTimestamp:timestamp focusPosition:{v6, v7}];
}

- (double)velocityRelativeToPreviousEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [(_UIMotionEffectFocusChangeEvent *)self focusPosition];
    v7 = v6;
    v9 = v8;
    [eventCopy focusPosition];
    v11 = v7 - v10;
    v13 = v9 - v12;
    [(_UIMotionEffectEvent *)self timestamp];
    v15 = v14;
    [eventCopy timestamp];
    v5 = (v11 * v11 + v13 * v13) / (v15 - v16);
  }

  return v5;
}

- (CGPoint)focusPosition
{
  x = self->_focusPosition.x;
  y = self->_focusPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end