@interface PKPhysicsJointWeld
+ (id)jointWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor;
- (PKPhysicsJointWeld)initWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor;
- (PKPhysicsJointWeld)initWithCoder:(id)coder;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)coder;
- (void)set_joint:(b2Joint *)set_joint;
@end

@implementation PKPhysicsJointWeld

- (PKPhysicsJointWeld)initWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  aCopy = a;
  bCopy = b;
  v11 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v11 setBodyA:aCopy];
  [(PKPhysicsJoint *)v11 setBodyB:bCopy];
  v11->_anchor.x = x;
  v11->_anchor.y = y;

  return v11;
}

+ (id)jointWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  aCopy = a;
  bCopy = b;
  v10 = [[PKPhysicsJointWeld alloc] initWithBodyA:aCopy bodyB:bCopy anchor:x, y];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointWeld;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeCGPoint:@"_anchor" forKey:{self->_anchor.x, self->_anchor.y}];
}

- (PKPhysicsJointWeld)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPhysicsJointWeld;
  v5 = [(PKPhysicsJoint *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeCGPointForKey:@"_anchor"];
    v5->_anchor.x = v6;
    v5->_anchor.y = v7;
    bodyA = [(PKPhysicsJoint *)v5 bodyA];
    bodyB = [(PKPhysicsJoint *)v5 bodyB];
    v5 = [(PKPhysicsJointWeld *)v5 initWithBodyA:bodyA bodyB:bodyB anchor:v5->_anchor.x, v5->_anchor.y];
  }

  return v5;
}

- (void)set_joint:(b2Joint *)set_joint
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointWeld;
  [(PKPhysicsJoint *)&v5 set_joint:?];
  self->_joint = set_joint;
}

- (void)create
{
  bodyA = [(PKPhysicsJoint *)self bodyA];
  _body = [bodyA _body];
  bodyB = [(PKPhysicsJoint *)self bodyB];
  _body2 = [bodyB _body];
  x = self->_anchor.x;
  v10 = PKGet_INV_PTM_RATIO();
  y = self->_anchor.y;
  v7 = PKGet_INV_PTM_RATIO();
  v8.f64[0] = x;
  v8.f64[1] = y;
  v12 = vcvt_f32_f64(vmulq_f64(v8, vcvtq_f64_f32(__PAIR64__(LODWORD(v7), LODWORD(v10)))));
  b2RevoluteJointDef::Initialize(&self->_jointDef, _body, _body2, &v12);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 72) = 0;
  *(self + 10) = 8;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 23) = 0;
  return self;
}

@end