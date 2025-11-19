@interface _UIKBRTDecayingOffset
- (CGPoint)offset;
- (CGPoint)originalOffset;
- (_UIKBRTDecayingOffset)initWithTimeoutDuration:(double)a3 limitMovement:(BOOL)a4;
- (void)reset;
- (void)updateOffsetTo:(CGPoint)a3;
@end

@implementation _UIKBRTDecayingOffset

- (_UIKBRTDecayingOffset)initWithTimeoutDuration:(double)a3 limitMovement:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = _UIKBRTDecayingOffset;
  result = [(_UIKBRTDecayingObject *)&v6 initWithTimeoutDuration:a3];
  if (result)
  {
    result->_limitMovement = a4;
  }

  return result;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIKBRTDecayingOffset;
  [(_UIKBRTDecayingObject *)&v3 reset];
  self->_offset = *MEMORY[0x1E695EFF8];
}

- (void)updateOffsetTo:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIKBRTDecayingObject *)self isActive];
  [(_UIKBRTDecayingOffset *)self offset];
  if (v6 && self->_limitMovement)
  {
    v9 = x - v7;
    v10 = y - v8;
    v11 = v9 * v9 + v10 * v10;
    if (v11 > 625.0)
    {
      v12 = 25.0 / sqrt(v11);
      v9 = v9 * v12;
      v10 = v10 * v12;
    }

    p_offset = &self->_offset;
    x = trunc(v9 + self->_offset.x + 0.5);
    y = trunc(v10 + self->_offset.y + 0.5);
  }

  else
  {
    p_offset = &self->_offset;
  }

  p_offset->x = x;
  p_offset->y = y;
  v14 = fabs(y);
  if (fabs(x) < 1.0 && v14 < 1.0)
  {
    [(_UIKBRTDecayingOffset *)self reset];
    self->_offset = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v16 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;

    [(_UIKBRTDecayingObject *)self resetDecayTo:v16];
  }
}

- (CGPoint)offset
{
  [(_UIKBRTDecayingObject *)self updateDecay];
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)originalOffset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end