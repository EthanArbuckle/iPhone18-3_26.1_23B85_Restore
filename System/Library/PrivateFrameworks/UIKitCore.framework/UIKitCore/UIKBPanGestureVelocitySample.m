@interface UIKBPanGestureVelocitySample
- (CGPoint)end;
- (CGPoint)start;
- (void)pullValuesFrom:(id)a3;
- (void)resetValues;
@end

@implementation UIKBPanGestureVelocitySample

- (void)pullValuesFrom:(id)a3
{
  v4 = a3;
  [v4 start];
  [(UIKBPanGestureVelocitySample *)self setStart:?];
  [v4 end];
  [(UIKBPanGestureVelocitySample *)self setEnd:?];
  [v4 dt];
  [(UIKBPanGestureVelocitySample *)self setDt:?];
  [v4 force];
  [(UIKBPanGestureVelocitySample *)self setForce:?];
  [v4 majorRadius];
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