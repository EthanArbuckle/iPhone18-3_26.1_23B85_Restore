@interface PKPhysicsJointDistance
+ (id)jointWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB;
+ (id)jointWithBodyA:(id)a bodyB:(id)b localAnchorA:(CGPoint)anchorA localAnchorB:(CGPoint)anchorB;
- (BOOL)isEqualToDistanceJoint:(id)joint;
- (PKPhysicsJointDistance)initWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB;
- (PKPhysicsJointDistance)initWithBodyA:(id)a bodyB:(id)b localAnchorA:(CGPoint)anchorA localAnchorB:(CGPoint)anchorB;
- (PKPhysicsJointDistance)initWithCoder:(id)coder;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)coder;
- (void)setCollideConnected:(BOOL)connected;
- (void)setDamping:(double)damping;
- (void)setFrequency:(double)frequency;
- (void)setLength:(double)length;
- (void)set_joint:(b2Joint *)set_joint;
@end

@implementation PKPhysicsJointDistance

- (PKPhysicsJointDistance)initWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  aCopy = a;
  bCopy = b;
  v14 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v14 setBodyA:aCopy];
  [(PKPhysicsJoint *)v14 setBodyB:bCopy];
  v14->_anchorA.x = v9;
  v14->_anchorA.y = v8;
  v14->_anchorB.x = x;
  v14->_anchorB.y = y;

  return v14;
}

+ (id)jointWithBodyA:(id)a bodyB:(id)b localAnchorA:(CGPoint)anchorA localAnchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  aCopy = a;
  bCopy = b;
  v13 = [[PKPhysicsJointDistance alloc] initWithBodyA:aCopy bodyB:bCopy localAnchorA:v9 localAnchorB:v8, x, y];

  return v13;
}

- (PKPhysicsJointDistance)initWithBodyA:(id)a bodyB:(id)b localAnchorA:(CGPoint)anchorA localAnchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  aCopy = a;
  bCopy = b;
  v14 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v14 setBodyA:aCopy];
  [(PKPhysicsJoint *)v14 setBodyB:bCopy];
  v15 = PKGet_INV_PTM_RATIO();
  v16 = PKGet_INV_PTM_RATIO();
  v17 = PKGet_INV_PTM_RATIO();
  v33 = PKGet_INV_PTM_RATIO();
  _body = [aCopy _body];
  v19 = *(_body + 32);
  v34 = *(_body + 40);
  _body2 = [bCopy _body];
  v30 = *(_body2 + 40);
  v31 = *(_body2 + 32);
  v32 = PKGet_PTM_RATIO();
  v21 = PKGet_PTM_RATIO();
  v22 = v9 * v15;
  v23.i32[1] = v34.i32[1];
  v23.f32[0] = -*v34.i32;
  v24 = v8 * v16;
  v14->_anchorA = vcvtq_f64_f32(vmul_f32(vadd_f32(v19, vmla_n_f32(vmul_n_f32(v23, v24), vrev64_s32(v34), v22)), __PAIR64__(LODWORD(v21), LODWORD(v32))));
  v34.i32[0] = PKGet_PTM_RATIO();
  v25 = PKGet_PTM_RATIO();
  v26.i32[1] = v30.i32[1];
  v27 = x * v17;
  v28 = y * v33;
  v26.f32[0] = -*v30.i32;
  v14->_anchorB = vcvtq_f64_f32(vmul_f32(vadd_f32(v31, vmla_n_f32(vmul_n_f32(v26, v28), vrev64_s32(v30), v27)), __PAIR64__(LODWORD(v25), v34.u32[0])));

  return v14;
}

+ (id)jointWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  aCopy = a;
  bCopy = b;
  v13 = [[PKPhysicsJointDistance alloc] initWithBodyA:aCopy bodyB:bCopy anchorA:v9 anchorB:v8, x, y];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointDistance;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeCGPoint:@"_anchorA" forKey:{self->_anchorA.x, self->_anchorA.y}];
  [coderCopy encodeCGPoint:@"_anchorB" forKey:{self->_anchorB.x, self->_anchorB.y}];
  [(PKPhysicsJointDistance *)self damping];
  [coderCopy encodeDouble:@"damping" forKey:?];
  [(PKPhysicsJointDistance *)self frequency];
  [coderCopy encodeDouble:@"frequency" forKey:?];
}

- (PKPhysicsJointDistance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPhysicsJointDistance;
  v5 = [(PKPhysicsJoint *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeCGPointForKey:@"_anchorA"];
    v5->_anchorA.x = v6;
    v5->_anchorA.y = v7;
    [coderCopy decodeCGPointForKey:@"_anchorB"];
    v5->_anchorB.x = v8;
    v5->_anchorB.y = v9;
    bodyA = [(PKPhysicsJoint *)v5 bodyA];
    bodyB = [(PKPhysicsJoint *)v5 bodyB];
    v12 = [(PKPhysicsJointDistance *)v5 initWithBodyA:bodyA bodyB:bodyB anchorA:v5->_anchorA.x anchorB:v5->_anchorA.y, v5->_anchorB.x, v5->_anchorB.y];

    [coderCopy decodeDoubleForKey:@"damping"];
    [(PKPhysicsJointDistance *)v12 setDamping:?];
    [coderCopy decodeDoubleForKey:@"frequency"];
    [(PKPhysicsJointDistance *)v12 setFrequency:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToDistanceJoint:(id)joint
{
  jointCopy = joint;
  if (self != jointCopy)
  {
    [(PKPhysicsJointDistance *)self damping];
    [(PKPhysicsJointDistance *)jointCopy damping];
    [(PKPhysicsJointDistance *)self frequency];
    [(PKPhysicsJointDistance *)jointCopy frequency];
  }

  return 1;
}

- (void)set_joint:(b2Joint *)set_joint
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointDistance;
  [(PKPhysicsJoint *)&v5 set_joint:?];
  self->_joint = set_joint;
}

- (void)create
{
  bodyA = [(PKPhysicsJoint *)self bodyA];
  _body = [bodyA _body];
  bodyB = [(PKPhysicsJoint *)self bodyB];
  _body2 = [bodyB _body];
  x = self->_anchorA.x;
  v13 = PKGet_INV_PTM_RATIO();
  y = self->_anchorA.y;
  v7 = PKGet_INV_PTM_RATIO();
  v8.f64[0] = x;
  v8.f64[1] = y;
  v18 = vcvt_f32_f64(vmulq_f64(v8, vcvtq_f64_f32(__PAIR64__(LODWORD(v7), LODWORD(v13)))));
  v16 = self->_anchorB.x;
  v14 = PKGet_INV_PTM_RATIO();
  v12 = self->_anchorB.y;
  v9 = PKGet_INV_PTM_RATIO();
  v10.f64[0] = v16;
  v10.f64[1] = v12;
  v17 = vcvt_f32_f64(vmulq_f64(v10, vcvtq_f64_f32(__PAIR64__(LODWORD(v9), LODWORD(v14)))));
  b2DistanceJointDef::Initialize(&self->_jointDef, _body, _body2, &v18, &v17);
}

- (void)setDamping:(double)damping
{
  dampingCopy = damping;
  self->_jointDef.dampingRatio = dampingCopy;
  joint = self->_joint;
  if (joint)
  {
    joint->var12 = dampingCopy;
  }
}

- (void)setLength:(double)length
{
  v5 = PKGet_INV_PTM_RATIO() * length;
  self->_jointDef.length = v5;
  joint = self->_joint;
  if (joint)
  {
    v7 = PKGet_INV_PTM_RATIO() * length;
    joint->var18 = v7;
  }
}

- (void)setFrequency:(double)frequency
{
  frequencyCopy = frequency;
  self->_jointDef.frequencyHz = frequencyCopy;
  joint = self->_joint;
  if (joint)
  {
    joint->var11 = frequencyCopy;
  }
}

- (void)setCollideConnected:(BOOL)connected
{
  self->_jointDef.collideConnected = connected;
  joint = self->_joint;
  if (joint)
  {
    b2Joint::SetCollideConnected(joint, connected);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 72) = 0;
  *(self + 10) = 3;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 92) = 1065353216;
  *(self + 25) = 0;
  return self;
}

@end