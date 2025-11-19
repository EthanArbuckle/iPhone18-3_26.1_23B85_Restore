@interface PKPhysicsJointPrismatic
+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5 axis:(CGVector)a6;
- (BOOL)isEqualToPrismaticJoint:(id)a3;
- (PKPhysicsJointPrismatic)initWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5 axis:(CGVector)a6;
- (PKPhysicsJointPrismatic)initWithCoder:(id)a3;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)a3;
- (void)setLowerDistanceLimit:(double)a3;
- (void)setShouldEnableLimits:(BOOL)a3;
- (void)setUpperDistanceLimit:(double)a3;
- (void)set_joint:(b2Joint *)a3;
@end

@implementation PKPhysicsJointPrismatic

- (PKPhysicsJointPrismatic)initWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5 axis:(CGVector)a6
{
  dy = a6.dy;
  dx = a6.dx;
  y = a5.y;
  x = a5.x;
  v12 = a3;
  v13 = a4;
  v14 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v14 setBodyA:v12];
  [(PKPhysicsJoint *)v14 setBodyB:v13];
  v14->_anchor.x = x;
  v14->_anchor.y = y;
  v14->_axis.dx = dx;
  v14->_axis.dy = dy;

  return v14;
}

+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5 axis:(CGVector)a6
{
  dy = a6.dy;
  dx = a6.dx;
  y = a5.y;
  x = a5.x;
  v11 = a3;
  v12 = a4;
  v13 = [[PKPhysicsJointPrismatic alloc] initWithBodyA:v11 bodyB:v12 anchor:x axis:y, dx, dy];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointPrismatic;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:v4];
  [v4 encodeCGPoint:@"_anchor" forKey:{self->_anchor.x, self->_anchor.y}];
  [v4 encodeCGVector:@"_axis" forKey:{self->_axis.dx, self->_axis.dy}];
  [v4 encodeBool:-[PKPhysicsJointPrismatic shouldEnableLimits](self forKey:{"shouldEnableLimits"), @"enableLimits"}];
  [(PKPhysicsJointPrismatic *)self lowerDistanceLimit];
  [v4 encodeDouble:@"lowerDistanceLimit" forKey:?];
  [(PKPhysicsJointPrismatic *)self upperDistanceLimit];
  [v4 encodeDouble:@"upperDistanceLimit" forKey:?];
}

- (PKPhysicsJointPrismatic)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPhysicsJointPrismatic;
  v5 = [(PKPhysicsJoint *)&v14 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeCGPointForKey:@"_anchor"];
    v5->_anchor.x = v6;
    v5->_anchor.y = v7;
    [v4 decodeCGVectorForKey:@"_axis"];
    v5->_axis.dx = v8;
    v5->_axis.dy = v9;
    v10 = [(PKPhysicsJoint *)v5 bodyA];
    v11 = [(PKPhysicsJoint *)v5 bodyB];
    v12 = [(PKPhysicsJointPrismatic *)v5 initWithBodyA:v10 bodyB:v11 anchor:v5->_anchor.x axis:v5->_anchor.y, v5->_axis.dx, v5->_axis.dy];

    -[PKPhysicsJointPrismatic setShouldEnableLimits:](v12, "setShouldEnableLimits:", [v4 decodeBoolForKey:@"enableLimits"]);
    [v4 decodeDoubleForKey:@"lowerDistanceLimit"];
    [(PKPhysicsJointPrismatic *)v12 setLowerDistanceLimit:?];
    [v4 decodeDoubleForKey:@"upperDistanceLimit"];
    [(PKPhysicsJointPrismatic *)v12 setUpperDistanceLimit:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToPrismaticJoint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_5;
  }

  v5 = [(PKPhysicsJointPrismatic *)self shouldEnableLimits];
  if (v5 == [(PKPhysicsJointPrismatic *)v4 shouldEnableLimits])
  {
    [(PKPhysicsJointPrismatic *)self lowerDistanceLimit];
    [(PKPhysicsJointPrismatic *)v4 lowerDistanceLimit];
    [(PKPhysicsJointPrismatic *)self upperDistanceLimit];
    [(PKPhysicsJointPrismatic *)v4 upperDistanceLimit];
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)setShouldEnableLimits:(BOOL)a3
{
  self->_jointDef.enableLimit = a3;
  joint = self->_joint;
  if (joint)
  {
    b2PrismaticJoint::EnableLimit(joint, a3);
  }
}

- (void)setLowerDistanceLimit:(double)a3
{
  v4 = PKGet_INV_PTM_RATIO() * a3;
  self->_jointDef.lowerTranslation = v4;
  joint = self->_joint;
  if (joint)
  {
    upperTranslation = self->_jointDef.upperTranslation;

    b2PrismaticJoint::SetLimits(joint, v4, upperTranslation);
  }
}

- (void)setUpperDistanceLimit:(double)a3
{
  v4 = PKGet_INV_PTM_RATIO() * a3;
  self->_jointDef.upperTranslation = v4;
  joint = self->_joint;
  if (joint)
  {
    lowerTranslation = self->_jointDef.lowerTranslation;

    b2PrismaticJoint::SetLimits(joint, lowerTranslation, v4);
  }
}

- (void)set_joint:(b2Joint *)a3
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointPrismatic;
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
  v12 = vcvt_f32_f64(self->_axis);
  v13 = vcvt_f32_f64(vmulq_f64(v8, vcvtq_f64_f32(__PAIR64__(LODWORD(v7), LODWORD(v10)))));
  b2PrismaticJointDef::Initialize(&self->_jointDef, v4, v6, &v13, &v12);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 72) = 0;
  *(self + 10) = 2;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 23) = 1065353216;
  *(self + 15) = 0;
  *(self + 12) = 0;
  *(self + 104) = 0;
  *(self + 108) = 0;
  *(self + 116) = 0;
  return self;
}

@end