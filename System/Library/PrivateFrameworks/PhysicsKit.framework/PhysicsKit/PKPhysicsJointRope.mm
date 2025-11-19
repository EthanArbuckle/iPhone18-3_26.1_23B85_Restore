@interface PKPhysicsJointRope
+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6;
- (BOOL)isEqualToRopeJoint:(id)a3;
- (PKPhysicsJointRope)initWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6;
- (PKPhysicsJointRope)initWithCoder:(id)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
- (void)set_joint:(b2Joint *)a3;
@end

@implementation PKPhysicsJointRope

- (PKPhysicsJointRope)initWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v12 = a3;
  v13 = a4;
  v35.receiver = self;
  v35.super_class = PKPhysicsJointRope;
  v14 = [(PKPhysicsJoint *)&v35 init];
  v15 = v14;
  if (v14)
  {
    [(PKPhysicsJoint *)v14 setBodyA:v12];
    [(PKPhysicsJoint *)v15 setBodyB:v13];
    v15->_anchorA.x = v9;
    v15->_anchorA.y = v8;
    v15->_anchorB.x = x;
    v15->_anchorB.y = y;
    v16 = PKGet_INV_PTM_RATIO();
    v17 = PKGet_INV_PTM_RATIO();
    v18 = PKGet_INV_PTM_RATIO();
    v19 = PKGet_INV_PTM_RATIO();
    v15->_jointDef.bodyA = [v12 _body];
    v20 = [v13 _body];
    v21 = v9 * v16;
    v22 = v8 * v17;
    v23 = x * v18;
    v24 = y * v19;
    v15->_jointDef.bodyB = v20;
    p_var0 = &v15->_jointDef.bodyA->var0;
    v26 = v21 - p_var0[8];
    v27 = v22 - p_var0[9];
    v29 = p_var0[10];
    v28 = p_var0[11];
    v15->_jointDef.localAnchorA.x = (v27 * v29) + (v28 * v26);
    v15->_jointDef.localAnchorA.y = (v28 * v27) - (v29 * v26);
    v30 = v23 - v20[8];
    v31 = v24 - v20[9];
    v33 = v20[10];
    v32 = v20[11];
    v15->_jointDef.localAnchorB.x = (v31 * v33) + (v32 * v30);
    v15->_jointDef.localAnchorB.y = (v32 * v31) - (v33 * v30);
    v15->_jointDef.maxLength = sqrtf(((v22 - v24) * (v22 - v24)) + ((v21 - v23) * (v21 - v23)));
  }

  return v15;
}

+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchorA:(CGPoint)a5 anchorB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v11 = a3;
  v12 = a4;
  v13 = [[PKPhysicsJointRope alloc] initWithBodyA:v11 bodyB:v12 anchorA:v9 anchorB:v8, x, y];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRope;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:v4];
  [v4 encodeCGPoint:@"_anchorA" forKey:{self->_anchorA.x, self->_anchorA.y}];
  [v4 encodeCGPoint:@"_anchorB" forKey:{self->_anchorB.x, self->_anchorB.y}];
  [(PKPhysicsJointRope *)self maxLength];
  [v4 encodeDouble:@"maxLength" forKey:?];
}

- (PKPhysicsJointRope)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPhysicsJointRope;
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
    v12 = [(PKPhysicsJointRope *)v5 initWithBodyA:v10 bodyB:v11 anchorA:v5->_anchorA.x anchorB:v5->_anchorA.y, v5->_anchorB.x, v5->_anchorB.y];

    [v4 decodeDoubleForKey:@"maxLength"];
    [(PKPhysicsJointRope *)v12 setMaxLength:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToRopeJoint:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    [(PKPhysicsJointRope *)self maxLength];
    [(PKPhysicsJointRope *)v4 maxLength];
  }

  return 1;
}

- (void)set_joint:(b2Joint *)a3
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRope;
  [(PKPhysicsJoint *)&v5 set_joint:?];
  self->_joint = a3;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 72) = 0;
  *(self + 10) = 10;
  *(self + 76) = xmmword_25E7EAF90;
  *(self + 23) = 0;
  return self;
}

@end