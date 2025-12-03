@interface PKPhysicsJointRope
+ (id)jointWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB;
- (BOOL)isEqualToRopeJoint:(id)joint;
- (PKPhysicsJointRope)initWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB;
- (PKPhysicsJointRope)initWithCoder:(id)coder;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)set_joint:(b2Joint *)set_joint;
@end

@implementation PKPhysicsJointRope

- (PKPhysicsJointRope)initWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  aCopy = a;
  bCopy = b;
  v35.receiver = self;
  v35.super_class = PKPhysicsJointRope;
  v14 = [(PKPhysicsJoint *)&v35 init];
  v15 = v14;
  if (v14)
  {
    [(PKPhysicsJoint *)v14 setBodyA:aCopy];
    [(PKPhysicsJoint *)v15 setBodyB:bCopy];
    v15->_anchorA.x = v9;
    v15->_anchorA.y = v8;
    v15->_anchorB.x = x;
    v15->_anchorB.y = y;
    v16 = PKGet_INV_PTM_RATIO();
    v17 = PKGet_INV_PTM_RATIO();
    v18 = PKGet_INV_PTM_RATIO();
    v19 = PKGet_INV_PTM_RATIO();
    v15->_jointDef.bodyA = [aCopy _body];
    _body = [bCopy _body];
    v21 = v9 * v16;
    v22 = v8 * v17;
    v23 = x * v18;
    v24 = y * v19;
    v15->_jointDef.bodyB = _body;
    p_var0 = &v15->_jointDef.bodyA->var0;
    v26 = v21 - p_var0[8];
    v27 = v22 - p_var0[9];
    v29 = p_var0[10];
    v28 = p_var0[11];
    v15->_jointDef.localAnchorA.x = (v27 * v29) + (v28 * v26);
    v15->_jointDef.localAnchorA.y = (v28 * v27) - (v29 * v26);
    v30 = v23 - _body[8];
    v31 = v24 - _body[9];
    v33 = _body[10];
    v32 = _body[11];
    v15->_jointDef.localAnchorB.x = (v31 * v33) + (v32 * v30);
    v15->_jointDef.localAnchorB.y = (v32 * v31) - (v33 * v30);
    v15->_jointDef.maxLength = sqrtf(((v22 - v24) * (v22 - v24)) + ((v21 - v23) * (v21 - v23)));
  }

  return v15;
}

+ (id)jointWithBodyA:(id)a bodyB:(id)b anchorA:(CGPoint)anchorA anchorB:(CGPoint)anchorB
{
  y = anchorB.y;
  x = anchorB.x;
  v8 = anchorA.y;
  v9 = anchorA.x;
  aCopy = a;
  bCopy = b;
  v13 = [[PKPhysicsJointRope alloc] initWithBodyA:aCopy bodyB:bCopy anchorA:v9 anchorB:v8, x, y];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRope;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeCGPoint:@"_anchorA" forKey:{self->_anchorA.x, self->_anchorA.y}];
  [coderCopy encodeCGPoint:@"_anchorB" forKey:{self->_anchorB.x, self->_anchorB.y}];
  [(PKPhysicsJointRope *)self maxLength];
  [coderCopy encodeDouble:@"maxLength" forKey:?];
}

- (PKPhysicsJointRope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPhysicsJointRope;
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
    v12 = [(PKPhysicsJointRope *)v5 initWithBodyA:bodyA bodyB:bodyB anchorA:v5->_anchorA.x anchorB:v5->_anchorA.y, v5->_anchorB.x, v5->_anchorB.y];

    [coderCopy decodeDoubleForKey:@"maxLength"];
    [(PKPhysicsJointRope *)v12 setMaxLength:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToRopeJoint:(id)joint
{
  jointCopy = joint;
  if (self != jointCopy)
  {
    [(PKPhysicsJointRope *)self maxLength];
    [(PKPhysicsJointRope *)jointCopy maxLength];
  }

  return 1;
}

- (void)set_joint:(b2Joint *)set_joint
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRope;
  [(PKPhysicsJoint *)&v5 set_joint:?];
  self->_joint = set_joint;
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