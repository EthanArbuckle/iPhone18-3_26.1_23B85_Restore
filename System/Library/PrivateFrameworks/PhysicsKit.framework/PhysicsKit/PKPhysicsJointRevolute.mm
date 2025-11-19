@interface PKPhysicsJointRevolute
+ (id)jointWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5;
- (BOOL)isEqualToRevoluteJoint:(id)a3;
- (CGPoint)anchor;
- (PKPhysicsJointRevolute)initWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5;
- (PKPhysicsJointRevolute)initWithCoder:(id)a3;
- (id).cxx_construct;
- (void)create;
- (void)encodeWithCoder:(id)a3;
- (void)setFrictionTorque:(double)a3;
- (void)setLowerAngleLimit:(double)a3;
- (void)setRotationSpeed:(double)a3;
- (void)setShouldEnableLimits:(BOOL)a3;
- (void)setUpperAngleLimit:(double)a3;
- (void)set_joint:(b2Joint *)a3;
@end

@implementation PKPhysicsJointRevolute

- (PKPhysicsJointRevolute)initWithBodyA:(id)a3 bodyB:(id)a4 anchor:(CGPoint)a5
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
  v10 = [[PKPhysicsJointRevolute alloc] initWithBodyA:v8 bodyB:v9 anchor:x, y];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRevolute;
  [(PKPhysicsJoint *)&v5 encodeWithCoder:v4];
  [v4 encodeCGPoint:@"_anchor" forKey:{self->_anchor.x, self->_anchor.y}];
  [v4 encodeBool:-[PKPhysicsJointRevolute shouldEnableLimits](self forKey:{"shouldEnableLimits"), @"enableLimits"}];
  [(PKPhysicsJointRevolute *)self lowerAngleLimit];
  [v4 encodeDouble:@"lowerAngleLimit" forKey:?];
  [(PKPhysicsJointRevolute *)self upperAngleLimit];
  [v4 encodeDouble:@"upperAngleLimit" forKey:?];
  [(PKPhysicsJointRevolute *)self frictionTorque];
  [v4 encodeDouble:@"frictionTorque" forKey:?];
}

- (PKPhysicsJointRevolute)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPhysicsJointRevolute;
  v5 = [(PKPhysicsJoint *)&v13 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(PKPhysicsJoint *)v5 bodyA];
    v8 = [v6 bodyB];
    v9 = [v6 initWithBodyA:v7 bodyB:v8 anchor:{v6[16], v6[17]}];

    [v4 decodeCGPointForKey:@"_anchor"];
    *(v9 + 128) = v10;
    *(v9 + 136) = v11;
    [v9 setShouldEnableLimits:{objc_msgSend(v4, "decodeBoolForKey:", @"enableLimits"}];
    [v4 decodeDoubleForKey:@"lowerAngleLimit"];
    [v9 setLowerAngleLimit:?];
    [v4 decodeDoubleForKey:@"upperAngleLimit"];
    [v9 setUpperAngleLimit:?];
    [v4 decodeDoubleForKey:@"frictionTorque"];
    [v9 setFrictionTorque:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToRevoluteJoint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_5;
  }

  v5 = [(PKPhysicsJointRevolute *)self shouldEnableLimits];
  if (v5 == [(PKPhysicsJointRevolute *)v4 shouldEnableLimits])
  {
    [(PKPhysicsJointRevolute *)self lowerAngleLimit];
    [(PKPhysicsJointRevolute *)v4 lowerAngleLimit];
    [(PKPhysicsJointRevolute *)self upperAngleLimit];
    [(PKPhysicsJointRevolute *)v4 upperAngleLimit];
    [(PKPhysicsJointRevolute *)self frictionTorque];
    [(PKPhysicsJointRevolute *)v4 frictionTorque];
    [(PKPhysicsJointRevolute *)self rotationSpeed];
    [(PKPhysicsJointRevolute *)v4 rotationSpeed];
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
    b2RevoluteJoint::EnableLimit(joint, a3);
  }
}

- (void)setLowerAngleLimit:(double)a3
{
  v3 = a3;
  p_jointDef = &self->_jointDef;
  self->_jointDef.lowerAngle = v3;
  joint = self->_joint;
  if (joint)
  {
    b2RevoluteJoint::SetLimits(joint, v3, p_jointDef->upperAngle);
  }
}

- (void)setUpperAngleLimit:(double)a3
{
  v3 = a3;
  p_jointDef = &self->_jointDef;
  self->_jointDef.upperAngle = v3;
  joint = self->_joint;
  if (joint)
  {
    b2RevoluteJoint::SetLimits(joint, p_jointDef->lowerAngle, v3);
  }
}

- (void)setFrictionTorque:(double)a3
{
  v4 = a3;
  p_jointDef = &self->_jointDef;
  self->_jointDef.maxMotorTorque = v4;
  v6 = (LODWORD(v4) & 0x60000000) != 0 || (HIBYTE(self->_jointDef.motorSpeed) & 0x60) != 0;
  self->_jointDef.enableMotor = v6;
  joint = self->_joint;
  if (joint)
  {
    b2RevoluteJoint::SetMaxMotorTorque(joint, v4);
    b2RevoluteJoint::SetMotorSpeed(self->_joint, p_jointDef->motorSpeed);
    v8 = self->_joint;
    enableMotor = p_jointDef->enableMotor;

    b2RevoluteJoint::EnableMotor(v8, enableMotor);
  }
}

- (void)setRotationSpeed:(double)a3
{
  v3 = a3;
  self->_jointDef.motorSpeed = v3;
  [(PKPhysicsJointRevolute *)self setFrictionTorque:self->_jointDef.maxMotorTorque];
}

- (void)set_joint:(b2Joint *)a3
{
  v5.receiver = self;
  v5.super_class = PKPhysicsJointRevolute;
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