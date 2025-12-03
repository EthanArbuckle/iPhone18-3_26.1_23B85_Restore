@interface PKPhysicsJointRevolute
+ (id)jointWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor;
- (BOOL)isEqualToRevoluteJoint:(id)joint;
- (CGPoint)anchor;
- (PKPhysicsJointRevolute)initWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor;
- (PKPhysicsJointRevolute)initWithCoder:(id)coder;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)coder;
- (void)setFrictionTorque:(double)torque;
- (void)setLowerAngleLimit:(double)limit;
- (void)setRotationSpeed:(double)speed;
- (void)setShouldEnableLimits:(BOOL)limits;
- (void)setUpperAngleLimit:(double)limit;
- (void)set_joint:(b2Joint *)set_joint;
@end

@implementation PKPhysicsJointRevolute

- (PKPhysicsJointRevolute)initWithBodyA:(id)a bodyB:(id)b anchor:(CGPoint)anchor
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
  v10 = [[PKPhysicsJointRevolute alloc] initWithBodyA:aCopy bodyB:bCopy anchor:x, y];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRevolute;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeCGPoint:@"_anchor" forKey:{self->_anchor.x, self->_anchor.y}];
  [coderCopy encodeBool:-[PKPhysicsJointRevolute shouldEnableLimits](self forKey:{"shouldEnableLimits"), @"enableLimits"}];
  [(PKPhysicsJointRevolute *)self lowerAngleLimit];
  [coderCopy encodeDouble:@"lowerAngleLimit" forKey:?];
  [(PKPhysicsJointRevolute *)self upperAngleLimit];
  [coderCopy encodeDouble:@"upperAngleLimit" forKey:?];
  [(PKPhysicsJointRevolute *)self frictionTorque];
  [coderCopy encodeDouble:@"frictionTorque" forKey:?];
}

- (PKPhysicsJointRevolute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPhysicsJointRevolute;
  v5 = [(PKPhysicsJoint *)&v13 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    bodyA = [(PKPhysicsJoint *)v5 bodyA];
    bodyB = [v6 bodyB];
    v9 = [v6 initWithBodyA:bodyA bodyB:bodyB anchor:{v6[16], v6[17]}];

    [coderCopy decodeCGPointForKey:@"_anchor"];
    *(v9 + 128) = v10;
    *(v9 + 136) = v11;
    [v9 setShouldEnableLimits:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"enableLimits"}];
    [coderCopy decodeDoubleForKey:@"lowerAngleLimit"];
    [v9 setLowerAngleLimit:?];
    [coderCopy decodeDoubleForKey:@"upperAngleLimit"];
    [v9 setUpperAngleLimit:?];
    [coderCopy decodeDoubleForKey:@"frictionTorque"];
    [v9 setFrictionTorque:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToRevoluteJoint:(id)joint
{
  jointCopy = joint;
  if (self == jointCopy)
  {
    goto LABEL_5;
  }

  shouldEnableLimits = [(PKPhysicsJointRevolute *)self shouldEnableLimits];
  if (shouldEnableLimits == [(PKPhysicsJointRevolute *)jointCopy shouldEnableLimits])
  {
    [(PKPhysicsJointRevolute *)self lowerAngleLimit];
    [(PKPhysicsJointRevolute *)jointCopy lowerAngleLimit];
    [(PKPhysicsJointRevolute *)self upperAngleLimit];
    [(PKPhysicsJointRevolute *)jointCopy upperAngleLimit];
    [(PKPhysicsJointRevolute *)self frictionTorque];
    [(PKPhysicsJointRevolute *)jointCopy frictionTorque];
    [(PKPhysicsJointRevolute *)self rotationSpeed];
    [(PKPhysicsJointRevolute *)jointCopy rotationSpeed];
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
    b2RevoluteJoint::EnableLimit(joint, limits);
  }
}

- (void)setLowerAngleLimit:(double)limit
{
  limitCopy = limit;
  p_jointDef = &self->_jointDef;
  self->_jointDef.lowerAngle = limitCopy;
  joint = self->_joint;
  if (joint)
  {
    b2RevoluteJoint::SetLimits(joint, limitCopy, p_jointDef->upperAngle);
  }
}

- (void)setUpperAngleLimit:(double)limit
{
  limitCopy = limit;
  p_jointDef = &self->_jointDef;
  self->_jointDef.upperAngle = limitCopy;
  joint = self->_joint;
  if (joint)
  {
    b2RevoluteJoint::SetLimits(joint, p_jointDef->lowerAngle, limitCopy);
  }
}

- (void)setFrictionTorque:(double)torque
{
  torqueCopy = torque;
  p_jointDef = &self->_jointDef;
  self->_jointDef.maxMotorTorque = torqueCopy;
  v6 = (LODWORD(torqueCopy) & 0x60000000) != 0 || (HIBYTE(self->_jointDef.motorSpeed) & 0x60) != 0;
  self->_jointDef.enableMotor = v6;
  joint = self->_joint;
  if (joint)
  {
    b2RevoluteJoint::SetMaxMotorTorque(joint, torqueCopy);
    b2RevoluteJoint::SetMotorSpeed(self->_joint, p_jointDef->motorSpeed);
    v8 = self->_joint;
    enableMotor = p_jointDef->enableMotor;

    b2RevoluteJoint::EnableMotor(v8, enableMotor);
  }
}

- (void)setRotationSpeed:(double)speed
{
  speedCopy = speed;
  self->_jointDef.motorSpeed = speedCopy;
  [(PKPhysicsJointRevolute *)self setFrictionTorque:self->_jointDef.maxMotorTorque];
}

- (void)set_joint:(b2Joint *)set_joint
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRevolute;
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

- (CGPoint)anchor
{
  objc_copyStruct(v4, &self->_anchor, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 72) = 0;
  *(self + 10) = 1;
  *(self + 14) = 0;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 89) = 0;
  *(self + 100) = 0;
  *(self + 108) = 0;
  return self;
}

@end