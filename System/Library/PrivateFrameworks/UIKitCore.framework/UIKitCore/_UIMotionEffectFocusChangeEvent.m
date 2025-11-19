@interface _UIMotionEffectFocusChangeEvent
- (CGPoint)focusPosition;
- (_UIMotionEffectFocusChangeEvent)initWithTimestamp:(double)a3 focusPosition:(CGPoint)a4;
- (double)velocityRelativeToPreviousEvent:(id)a3;
- (id)copyWithTimestamp:(double)a3;
@end

@implementation _UIMotionEffectFocusChangeEvent

- (_UIMotionEffectFocusChangeEvent)initWithTimestamp:(double)a3 focusPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7.receiver = self;
  v7.super_class = _UIMotionEffectFocusChangeEvent;
  result = [(_UIMotionEffectEvent *)&v7 initWithTimestamp:a3];
  if (result)
  {
    result->_focusPosition.x = x;
    result->_focusPosition.y = y;
  }

  return result;
}

- (id)copyWithTimestamp:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  [(_UIMotionEffectFocusChangeEvent *)self focusPosition];

  return [v5 initWithTimestamp:a3 focusPosition:{v6, v7}];
}

- (double)velocityRelativeToPreviousEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [(_UIMotionEffectFocusChangeEvent *)self focusPosition];
    v7 = v6;
    v9 = v8;
    [v4 focusPosition];
    v11 = v7 - v10;
    v13 = v9 - v12;
    [(_UIMotionEffectEvent *)self timestamp];
    v15 = v14;
    [v4 timestamp];
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