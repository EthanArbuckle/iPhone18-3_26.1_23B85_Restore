@interface UIKBPanGestureVelocitySample
- (CGPoint)end;
- (CGPoint)start;
- (void)pullValuesFrom:(id)from;
- (void)resetValues;
@end

@implementation UIKBPanGestureVelocitySample

- (void)pullValuesFrom:(id)from
{
  fromCopy = from;
  [fromCopy start];
  [(UIKBPanGestureVelocitySample *)self setStart:?];
  [fromCopy end];
  [(UIKBPanGestureVelocitySample *)self setEnd:?];
  [fromCopy dt];
  [(UIKBPanGestureVelocitySample *)self setDt:?];
  [fromCopy force];
  [(UIKBPanGestureVelocitySample *)self setForce:?];
  [fromCopy majorRadius];
  v6 = v5;

  [(UIKBPanGestureVelocitySample *)self setMajorRadius:v6];
}

- (void)resetValues
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIKBPanGestureVelocitySample *)self setStart:*MEMORY[0x1E695EFF8], v4];
  [(UIKBPanGestureVelocitySample *)self setEnd:v3, v4];
  [(UIKBPanGestureVelocitySample *)self setDt:0.0];
  [(UIKBPanGestureVelocitySample *)self setForce:0.0];

  [(UIKBPanGestureVelocitySample *)self setMajorRadius:0.0];
}

- (CGPoint)start
{
  objc_copyStruct(v4, &self->start, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)end
{
  objc_copyStruct(v4, &self->end, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end