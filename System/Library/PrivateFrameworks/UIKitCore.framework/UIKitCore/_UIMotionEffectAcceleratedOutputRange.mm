@interface _UIMotionEffectAcceleratedOutputRange
- (BOOL)isEqual:(id)a3;
- (CGPoint)acceleration;
- (UIOffset)acceleratedOutputForViewerOffset:(UIOffset)a3 accelerationBoostFactor:(CGPoint)a4;
- (_UIMotionEffectAcceleratedOutputRange)init;
- (_UIMotionEffectAcceleratedOutputRange)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)setAcceleration:(CGPoint)a3 fixingOutputForViewerOffset:(UIOffset)a4;
@end

@implementation _UIMotionEffectAcceleratedOutputRange

- (_UIMotionEffectAcceleratedOutputRange)init
{
  v6.receiver = self;
  v6.super_class = _UIMotionEffectAcceleratedOutputRange;
  v2 = [(_UIMotionEffectAcceleratedOutputRange *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_UIMotionEffectAcceleratedOutputRange *)v2 reset];
    v4 = v3;
  }

  return v3;
}

- (void)reset
{
  v2 = *MEMORY[0x1E695EFF8];
  self->_referenceAcceleration = *MEMORY[0x1E695EFF8];
  self->_acceleration = v2;
  self->_referenceOffset.horizontal = 0.0;
  self->_referenceOffset.vertical = 0.0;
}

- (_UIMotionEffectAcceleratedOutputRange)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIMotionEffectAcceleratedOutputRange;
  v5 = [(_UIMotionEffectAcceleratedOutputRange *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(_UIMotionEffectAcceleratedOutputRange *)v5 reset];
    [v4 decodeUIOffsetForKey:@"UIReferenceOffset"];
    v6->_referenceOffset.horizontal = v7;
    v6->_referenceOffset.vertical = v8;
    [v4 decodeCGPointForKey:@"UIReferenceAcceleration"];
    v6->_referenceAcceleration.x = v9;
    v6->_referenceAcceleration.y = v10;
    [v4 decodeCGPointForKey:@"UIAcceleration"];
    v6->_acceleration.x = v11;
    v6->_acceleration.y = v12;
    v13 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  horizontal = self->_referenceOffset.horizontal;
  vertical = self->_referenceOffset.vertical;
  v6 = a3;
  [v6 encodeUIOffset:@"UIReferenceOffset" forKey:{horizontal, vertical}];
  [v6 encodeCGPoint:@"UIReferenceAcceleration" forKey:{self->_referenceAcceleration.x, self->_referenceAcceleration.y}];
  [v6 encodeCGPoint:@"UIAcceleration" forKey:{self->_acceleration.x, self->_acceleration.y}];
}

- (void)setAcceleration:(CGPoint)a3 fixingOutputForViewerOffset:(UIOffset)a4
{
  vertical = a4.vertical;
  horizontal = a4.horizontal;
  y = a3.y;
  x = a3.x;
  _AssertPointComponentsArePositive(a3.x, a3.y);
  v9 = self->_acceleration.x;
  if (vabdd_f64(x, v9) >= 2.22044605e-16)
  {
    self->_referenceOffset.horizontal = horizontal - self->_referenceOffset.horizontal;
    self->_referenceAcceleration.x = v9;
  }

  v10 = self->_acceleration.y;
  if (vabdd_f64(y, v10) >= 2.22044605e-16)
  {
    self->_referenceOffset.vertical = vertical - self->_referenceOffset.vertical;
    self->_referenceAcceleration.y = v10;
  }

  self->_acceleration.x = x;
  self->_acceleration.y = y;
}

- (UIOffset)acceleratedOutputForViewerOffset:(UIOffset)a3 accelerationBoostFactor:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  _AssertPointComponentsArePositive(a4.x, a4.y);
  v5.f64[0] = x;
  v5.f64[1] = y;
  __asm { FMOV            V0.2D, #1.0 }

  v11 = vaddq_f64(v5, _Q0);
  v12 = vnegq_f64(v11);
  v13 = vaddq_f64(vmulq_f64(v5, self->_referenceAcceleration), _Q0);
  v14 = vaddq_f64(vmulq_f64(v5, self->_acceleration), _Q0);
  v15.f64[0] = horizontal;
  v15.f64[1] = vertical;
  v16 = vaddq_f64(vmulq_f64(v15, v14), vmulq_f64(self->_referenceOffset, vsubq_f64(v13, v14)));
  v17 = vbslq_s8(vcgtq_f64(v16, v11), v11, v16);
  v18 = vbslq_s8(vcgtq_f64(v17, v12), v17, v12);
  v19 = *&v18.i64[1];
  result.horizontal = *v18.i64;
  result.vertical = v19;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromUIOffset(self->_referenceOffset);
  v7 = NSStringFromCGPoint(self->_referenceAcceleration);
  v8 = NSStringFromCGPoint(self->_acceleration);
  v9 = [v3 stringWithFormat:@"<%@: %p referenceOffset=%@ lastAcceleration=%@ acceleration=%@>", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = self->_referenceAcceleration.x == v5[3] && self->_referenceAcceleration.y == v5[4];
    v8 = v6 && (self->_referenceOffset.horizontal == v5[1] ? (v7 = self->_referenceOffset.vertical == v5[2]) : (v7 = 0), v7) && self->_acceleration.y == v5[6] && self->_acceleration.x == v5[5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(_UIMotionEffectAcceleratedOutputRange);
  *(result + 8) = self->_referenceOffset;
  *(result + 24) = self->_referenceAcceleration;
  *(result + 40) = self->_acceleration;
  return result;
}

- (CGPoint)acceleration
{
  x = self->_acceleration.x;
  y = self->_acceleration.y;
  result.y = y;
  result.x = x;
  return result;
}

@end