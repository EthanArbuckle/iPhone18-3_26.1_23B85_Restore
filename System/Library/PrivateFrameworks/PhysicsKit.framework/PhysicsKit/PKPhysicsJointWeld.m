@interface PKPhysicsJointWeld
+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5;
- (PKPhysicsJointWeld)initWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5;
- (PKPhysicsJointWeld)initWithCoder:(id)a3;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)a3;
- (void)set_joint:(b2Joint *)a3;
@end

@implementation PKPhysicsJointWeld

- (PKPhysicsJointWeld)initWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v11 setBodyA:v9];
  [(PKPhysicsJoint *)v11 setBodyB:v10];
  v11->_anchor.x = x;
  v11->_anchor.y = y;

  return v11;
}

+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3;
  v9 = a4;
  v10 = [[PKPhysicsJointWeld alloc] initWithBodyA:v8 bodyB:v9 anchor:x, y];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointWeld;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:v4];
  [v4 encodeCGPoint:@"_anchor" forKey:{self->_anchor.x, self->_anchor.y}];
}

- (PKPhysicsJointWeld)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPhysicsJointWeld;
  v5 = [(PKPhysicsJoint *)&v11 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeCGPointForKey:@"_anchor"];
    v5->_anchor.x = v6;
    v5->_anchor.y = v7;
    v8 = [(PKPhysicsJoint *)v5 bodyA];
    v9 = [(PKPhysicsJoint *)v5 bodyB];
    v5 = [(PKPhysicsJointWeld *)v5 initWithBodyA:v8 bodyB:v9 anchor:v5->_anchor.x, v5->_anchor.y];
  }

  return v5;
}

- (void)set_joint:(b2Joint *)a3
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointWeld;
  [(PKPhysicsJoint *)&v5 set_joint:?];
  self->_joint = a3;
}

- (void)create
{
  v3 = [(PKPhysicsJoint *)self bodyA];
  v4 = [v3 _body];
  v5 = [(PKPhysicsJoint *)self bodyB];
  v6 = [v5 _body];
  x = self->_anchor.x;
  v10 = PKGet_INV_PTM_RATIO();
  y = self->_anchor.y;
  v7 = PKGet_INV_PTM_RATIO();
  v8.f64[0] = x;
  v8.f64[1] = y;
  v12 = vcvt_f32_f64(vmulq_f64(v8, vcvtq_f64_f32(__PAIR64__(LODWORD(v7), LODWORD(v10)))));
  b2RevoluteJointDef::Initialize(&self->_jointDef, v4, v6, &v12);
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