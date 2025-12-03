@interface PKPhysicsJointPrismatic
+ (id)jointWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor axis:(CGVector)axis;
- (BOOL)isEqualToPrismaticJoint:(id)joint;
- (PKPhysicsJointPrismatic)initWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor axis:(CGVector)axis;
- (PKPhysicsJointPrismatic)initWithCoder:(id)coder;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)coder;
- (void)setLowerDistanceLimit:(double)limit;
- (void)setShouldEnableLimits:(BOOL)limits;
- (void)setUpperDistanceLimit:(double)limit;
- (void)set_joint:(b2Joint *)set_joint;
@end

@implementation PKPhysicsJointPrismatic

- (PKPhysicsJointPrismatic)initWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor axis:(CGVector)axis
{
  dy = axis.dy;
  dx = axis.dx;
  y = anchor.y;
  x = anchor.x;
  aCopy = a;
  bCopy = b;
  v14 = [(PKPhysicsJoint *)self init];
  [(PKPhysicsJoint *)v14 setBodyA:aCopy];
  [(PKPhysicsJoint *)v14 setBodyB:bCopy];
  v14->_anchor.x = x;
  v14->_anchor.y = y;
  v14->_axis.dx = dx;
  v14->_axis.dy = dy;

  return v14;
}

+ (id)jointWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor axis:(CGVector)axis
{
  dy = axis.dy;
  dx = axis.dx;
  y = anchor.y;
  x = anchor.x;
  aCopy = a;
  bCopy = b;
  v13 = [[PKPhysicsJointPrismatic alloc] initWithBodyA:aCopy bodyB:bCopy anchor:x axis:y, dx, dy];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointPrismatic;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeCGPoint:@"_anchor" forKey:{self->_anchor.x, self->_anchor.y}];
  [coderCopy encodeCGVector:@"_axis" forKey:{self->_axis.dx, self->_axis.dy}];
  [coderCopy encodeBool:-[PKPhysicsJointPrismatic shouldEnableLimits](self forKey:{"shouldEnableLimits"), @"enableLimits"}];
  [(PKPhysicsJointPrismatic *)self lowerDistanceLimit];
  [coderCopy encodeDouble:@"lowerDistanceLimit" forKey:?];
  [(PKPhysicsJointPrismatic *)self upperDistanceLimit];
  [coderCopy encodeDouble:@"upperDistanceLimit" forKey:?];
}

- (PKPhysicsJointPrismatic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPhysicsJointPrismatic;
  v5 = [(PKPhysicsJoint *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeCGPointForKey:@"_anchor"];
    v5->_anchor.x = v6;
    v5->_anchor.y = v7;
    [coderCopy decodeCGVectorForKey:@"_axis"];
    v5->_axis.dx = v8;
    v5->_axis.dy = v9;
    bodyA = [(PKPhysicsJoint *)v5 bodyA];
    bodyB = [(PKPhysicsJoint *)v5 bodyB];
    v12 = [(PKPhysicsJointPrismatic *)v5 initWithBodyA:bodyA bodyB:bodyB anchor:v5->_anchor.x axis:v5->_anchor.y, v5->_axis.dx, v5->_axis.dy];

    -[PKPhysicsJointPrismatic setShouldEnableLimits:](v12, "setShouldEnableLimits:", [coderCopy decodeBoolForKey:@"enableLimits"]);
    [coderCopy decodeDoubleForKey:@"lowerDistanceLimit"];
    [(PKPhysicsJointPrismatic *)v12 setLowerDistanceLimit:?];
    [coderCopy decodeDoubleForKey:@"upperDistanceLimit"];
    [(PKPhysicsJointPrismatic *)v12 setUpperDistanceLimit:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToPrismaticJoint:(id)joint
{
  jointCopy = joint;
  if (self == jointCopy)
  {
    goto LABEL_5;
  }

  shouldEnableLimits = [(PKPhysicsJointPrismatic *)self shouldEnableLimits];
  if (shouldEnableLimits == [(PKPhysicsJointPrismatic *)jointCopy shouldEnableLimits])
  {
    [(PKPhysicsJointPrismatic *)self lowerDistanceLimit];
    [(PKPhysicsJointPrismatic *)jointCopy lowerDistanceLimit];
    [(PKPhysicsJointPrismatic *)self upperDistanceLimit];
    [(PKPhysicsJointPrismatic *)jointCopy upperDistanceLimit];
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)setShouldEnableLimits:(BOOL)limits
{
  self->_jointDef.enableLimit = limits;
  joint = self->_joint;
  if (joint)
  {
    b2PrismaticJoint::EnableLimit(joint, limits);
  }
}

- (void)setLowerDistanceLimit:(double)limit
{
  v4 = PKGet_INV_PTM_RATIO() * limit;
  self->_jointDef.lowerTranslation = v4;
  joint = self->_joint;
  if (joint)
  {
    upperTranslation = self->_jointDef.upperTranslation;

    b2PrismaticJoint::SetLimits(joint, v4, upperTranslation);
  }
}

- (void)setUpperDistanceLimit:(double)limit
{
  v4 = PKGet_INV_PTM_RATIO() * limit;
  self->_jointDef.upperTranslation = v4;
  joint = self->_joint;
  if (joint)
  {
    lowerTranslation = self->_jointDef.lowerTranslation;

    b2PrismaticJoint::SetLimits(joint, lowerTranslation, v4);
  }
}

- (void)set_joint:(b2Joint *)set_joint
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointPrismatic;
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
  v12 = vcvt_f32_f64(self->_axis);
  v13 = vcvt_f32_f64(vmulq_f64(v8, vcvtq_f64_f32(__PAIR64__(LODWORD(v7), LODWORD(v10)))));
  b2PrismaticJointDef::Initialize(&self->_jointDef, _body, _body2, &v13, &v12);
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