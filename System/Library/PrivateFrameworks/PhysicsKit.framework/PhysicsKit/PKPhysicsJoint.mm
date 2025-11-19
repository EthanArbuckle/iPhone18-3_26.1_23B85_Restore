@interface PKPhysicsJoint
- (BOOL)isEqualToJoint:(id)a3;
- (CGVector)reactionForce;
- (PKPhysicsJoint)init;
- (PKPhysicsJoint)initWithCoder:(id)a3;
- (double)reactionTorque;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPhysicsJoint

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(PKPhysicsJoint *)self bodyA];
  [v7 encodeObject:v4 forKey:@"_bodyA"];

  v5 = [(PKPhysicsJoint *)self bodyB];
  [v7 encodeObject:v5 forKey:@"_bodyB"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_implicit];
  [v7 encodeObject:v6 forKey:@"_implicit"];
}

- (PKPhysicsJoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPhysicsJoint *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bodyA"];
    bodyA = v5->_bodyA;
    v5->_bodyA = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bodyB"];
    bodyB = v5->_bodyB;
    v5->_bodyB = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_implicit"];
    v5->_implicit = [v10 BOOLValue];
  }

  return v5;
}

- (BOOL)isEqualToJoint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_17;
  }

  if ([(PKPhysicsBody *)self->_bodyA isEqualToBody:v4->_bodyA]&& [(PKPhysicsBody *)self->_bodyB isEqualToBody:v4->_bodyB]&& self->_implicit == v4->_implicit)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToRevoluteJoint:v4];
LABEL_16:
      v6 = v5;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToDistanceJoint:v4];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToRopeJoint:v4];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToWeldJoint:v4];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToPrismaticJoint:v4];
      goto LABEL_16;
    }

LABEL_17:
    v6 = 1;
    goto LABEL_18;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

- (PKPhysicsJoint)init
{
  v3.receiver = self;
  v3.super_class = PKPhysicsJoint;
  result = [(PKPhysicsJoint *)&v3 init];
  if (result)
  {
    *&result->_inUse = 0;
    result->_baseJoint = 0;
  }

  return result;
}

- (CGVector)reactionForce
{
  baseJoint = self->_baseJoint;
  if (baseJoint)
  {
    v3 = (*(baseJoint->var0 + 2))(baseJoint, a2, 1.0);
    v5 = v4;
  }

  else
  {
    v3 = 0.0;
    v5 = 0.0;
  }

  result.dy = v5;
  result.dx = v3;
  return result;
}

- (double)reactionTorque
{
  baseJoint = self->_baseJoint;
  if (baseJoint)
  {
    return (*(baseJoint->var0 + 3))(baseJoint, a2, 1.0);
  }

  else
  {
    return 0.0;
  }
}

@end