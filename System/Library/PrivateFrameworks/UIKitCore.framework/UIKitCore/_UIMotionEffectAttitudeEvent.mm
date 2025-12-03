@interface _UIMotionEffectAttitudeEvent
- ($01BB1521EC52D44A8E7628F5261DCEC8)attitude;
- (_UIMotionEffectAttitudeEvent)initWithTimestamp:(double)timestamp attitude:(id)attitude;
- (double)velocityRelativeToPreviousEvent:(id)event;
- (id)copyWithTimestamp:(double)timestamp;
@end

@implementation _UIMotionEffectAttitudeEvent

- ($01BB1521EC52D44A8E7628F5261DCEC8)attitude
{
  x = self->_attitude.x;
  y = self->_attitude.y;
  z = self->_attitude.z;
  w = self->_attitude.w;
  result.var3 = w;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (_UIMotionEffectAttitudeEvent)initWithTimestamp:(double)timestamp attitude:(id)attitude
{
  var3 = attitude.var3;
  var2 = attitude.var2;
  var1 = attitude.var1;
  var0 = attitude.var0;
  v9.receiver = self;
  v9.super_class = _UIMotionEffectAttitudeEvent;
  result = [(_UIMotionEffectEvent *)&v9 initWithTimestamp:timestamp];
  if (result)
  {
    result->_attitude.x = var0;
    result->_attitude.y = var1;
    result->_attitude.z = var2;
    result->_attitude.w = var3;
  }

  return result;
}

- (id)copyWithTimestamp:(double)timestamp
{
  v5 = objc_alloc(objc_opt_class());
  [(_UIMotionEffectAttitudeEvent *)self attitude];

  return [v5 initWithTimestamp:timestamp attitude:{v6, v7, v8, v9}];
}

- (double)velocityRelativeToPreviousEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [(_UIMotionEffectAttitudeEvent *)self attitude];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [eventCopy attitude];
    v15 = v7 - v14;
    v17 = v9 - v16;
    v19 = v11 - v18;
    v21 = v13 - v20;
    [(_UIMotionEffectEvent *)self timestamp];
    v23 = v22;
    [eventCopy timestamp];
    v5 = (v21 * v21 + v19 * v19 + v15 * v15 + v17 * v17) / (v23 - v24);
  }

  return v5;
}

@end