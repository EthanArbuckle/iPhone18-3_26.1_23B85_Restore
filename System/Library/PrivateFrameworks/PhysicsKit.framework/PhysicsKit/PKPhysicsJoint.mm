@interface PKPhysicsJoint
- (BOOL)isEqualToJoint:(id)joint;
- (CGVector)reactionForce;
- (PKPhysicsJoint)init;
- (PKPhysicsJoint)initWithCoder:(id)coder;
- (double)reactionTorque;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPhysicsJoint

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bodyA = [(PKPhysicsJoint *)self bodyA];
  [coderCopy encodeObject:bodyA forKey:@"_bodyA"];

  bodyB = [(PKPhysicsJoint *)self bodyB];
  [coderCopy encodeObject:bodyB forKey:@"_bodyB"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_implicit];
  [coderCopy encodeObject:v6 forKey:@"_implicit"];
}

- (PKPhysicsJoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKPhysicsJoint *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bodyA"];
    bodyA = v5->_bodyA;
    v5->_bodyA = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bodyB"];
    bodyB = v5->_bodyB;
    v5->_bodyB = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_implicit"];
    v5->_implicit = [v10 BOOLValue];
  }

  return v5;
}

- (BOOL)isEqualToJoint:(id)joint
{
  jointCopy = joint;
  if (self == jointCopy)
  {
    goto LABEL_17;
  }

  if ([(PKPhysicsBody *)self->_bodyA isEqualToBody:jointCopy->_bodyA]&& [(PKPhysicsBody *)self->_bodyB isEqualToBody:jointCopy->_bodyB]&& self->_implicit == jointCopy->_implicit)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToRevoluteJoint:jointCopy];
LABEL_16:
      v6 = v5;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToDistanceJoint:jointCopy];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToRopeJoint:jointCopy];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToWeldJoint:jointCopy];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPhysicsJoint *)self isEqualToPrismaticJoint:jointCopy];
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