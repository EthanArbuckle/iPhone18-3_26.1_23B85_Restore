@interface PKPhysicsJointDistance
+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6;
+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 localAnchorA:(CGPoint)a5 localAnchorB:(CGPoint)a6;
- (BOOL)isEqualToDistanceJoint:(id)a3;
- (PKPhysicsJointDistance)initWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6;
- (PKPhysicsJointDistance)initWithBodyA:(id)a3 bodyB:(id)a4 localAnchorA:(CGPoint)a5 localAnchorB:(CGPoint)a6;
- (PKPhysicsJointDistance)initWithCoder:(id)a3;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)a3;
- (void)setCollideConnected:(BOOL)a3;
- (void)setDamping:(double)a3;
- (void)setFrequency:(double)a3;
- (void)setLength:(double)a3;
- (void)set_joint:(b2Joint *)a3;
@end

@implementation PKPhysicsJointDistance

- (PKPhysicsJointDistance)initWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v12 = a3;
  v13 = a4;
  v14 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v14 setBodyA:v12];
  [(PKPhysicsJoint *)v14 setBodyB:v13];
  v14->_anchorA.x = v9;
  v14->_anchorA.y = v8;
  v14->_anchorB.x = x;
  v14->_anchorB.y = y;

  return v14;
}

+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 localAnchorA:(CGPoint)a5 localAnchorB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v11 = a3;
  v12 = a4;
  v13 = [[PKPhysicsJointDistance alloc] initWithBodyA:v11 bodyB:v12 localAnchorA:v9 localAnchorB:v8, x, y];

  return v13;
}

- (PKPhysicsJointDistance)initWithBodyA:(id)a3 bodyB:(id)a4 localAnchorA:(CGPoint)a5 localAnchorB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v12 = a3;
  v13 = a4;
  v14 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v14 setBodyA:v12];
  [(PKPhysicsJoint *)v14 setBodyB:v13];
  v15 = PKGet_INV_PTM_RATIO();
  v16 = PKGet_INV_PTM_RATIO();
  v17 = PKGet_INV_PTM_RATIO();
  v33 = PKGet_INV_PTM_RATIO();
  v18 = [v12 _body];
  v19 = *(v18 + 32);
  v34 = *(v18 + 40);
  v20 = [v13 _body];
  v30 = *(v20 + 40);
  v31 = *(v20 + 32);
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

+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v11 = a3;
  v12 = a4;
  v13 = [[PKPhysicsJointDistance alloc] initWithBodyA:v11 bodyB:v12 anchorA:v9 anchorB:v8, x, y];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointDistance;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:v4];
  [v4 encodeCGPoint:@"_anchorA" forKey:{self->_anchorA.x, self->_anchorA.y}];
  [v4 encodeCGPoint:@"_anchorB" forKey:{self->_anchorB.x, self->_anchorB.y}];
  [(PKPhysicsJointDistance *)self damping];
  [v4 encodeDouble:@"damping" forKey:?];
  [(PKPhysicsJointDistance *)self frequency];
  [v4 encodeDouble:@"frequency" forKey:?];
}

- (PKPhysicsJointDistance)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPhysicsJointDistance;
  v5 = [(PKPhysicsJoint *)&v14 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeCGPointForKey:@"_anchorA"];
    v5->_anchorA.x = v6;
    v5->_anchorA.y = v7;
    [v4 decodeCGPointForKey:@"_anchorB"];
    v5->_anchorB.x = v8;
    v5->_anchorB.y = v9;
    v10 = [(PKPhysicsJoint *)v5 bodyA];
    v11 = [(PKPhysicsJoint *)v5 bodyB];
    v12 = [(PKPhysicsJointDistance *)v5 initWithBodyA:v10 bodyB:v11 anchorA:v5->_anchorA.x anchorB:v5->_anchorA.y, v5->_anchorB.x, v5->_anchorB.y];

    [v4 decodeDoubleForKey:@"damping"];
    [(PKPhysicsJointDistance *)v12 setDamping:?];
    [v4 decodeDoubleForKey:@"frequency"];
    [(PKPhysicsJointDistance *)v12 setFrequency:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToDistanceJoint:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    [(PKPhysicsJointDistance *)self damping];
    [(PKPhysicsJointDistance *)v4 damping];
    [(PKPhysicsJointDistance *)self frequency];
    [(PKPhysicsJointDistance *)v4 frequency];
  }

  return 1;
}

- (void)set_joint:(b2Joint *)a3
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointDistance;
  [(PKPhysicsJoint *)&v5 set_joint:?];
  self->_joint = a3;
}

- (void)create
{
  v3 = [(PKPhysicsJoint *)self bodyA];
  v4 = [v3 _body];
  v5 = [(PKPhysicsJoint *)self bodyB];
  v6 = [v5 _body];
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
  b2DistanceJointDef::Initialize(&self->_jointDef, v4, v6, &v18, &v17);
}

- (void)setDamping:(double)a3
{
  v3 = a3;
  self->_jointDef.dampingRatio = v3;
  joint = self->_joint;
  if (joint)
  {
    joint->var12 = v3;
  }
}

- (void)setLength:(double)a3
{
  v5 = PKGet_INV_PTM_RATIO() * a3;
  self->_jointDef.length = v5;
  joint = self->_joint;
  if (joint)
  {
    v7 = PKGet_INV_PTM_RATIO() * a3;
    joint->var18 = v7;
  }
}

- (void)setFrequency:(double)a3
{
  v3 = a3;
  self->_jointDef.frequencyHz = v3;
  joint = self->_joint;
  if (joint)
  {
    joint->var11 = v3;
  }
}

- (void)setCollideConnected:(BOOL)a3
{
  self->_jointDef.collideConnected = a3;
  joint = self->_joint;
  if (joint)
  {
    b2Joint::SetCollideConnected(joint, a3);
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