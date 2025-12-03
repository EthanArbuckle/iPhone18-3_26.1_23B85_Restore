@interface RBSCPUMinimumUsageGrant
+ (id)grantForRole:(unsigned __int8)role withPercentage:(unint64_t)percentage duration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (RBSCPUMinimumUsageGrant)initWithRBSXPCCoder:(id)coder;
- (id)_initWithRole:(unint64_t)role percentage:(double)percentage duration:;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSCPUMinimumUsageGrant

+ (id)grantForRole:(unsigned __int8)role withPercentage:(unint64_t)percentage duration:(double)duration
{
  v5 = [[RBSCPUMinimumUsageGrant alloc] _initWithRole:role percentage:percentage duration:duration];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSCPUMinimumUsageGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
  [coderCopy encodeUInt64:self->_percentage forKey:@"percentage"];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
}

- (RBSCPUMinimumUsageGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RBSCPUMinimumUsageGrant;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_role = [coderCopy decodeInt64ForKey:@"role"];
    v5->_percentage = [coderCopy decodeUInt64ForKey:@"percentage"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSCPUMinimumUsageGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_role == *(equalCopy + 8) && self->_percentage == *(equalCopy + 2) && self->_duration == equalCopy[3];

  return v5;
}

- (unint64_t)hash
{
  v2 = self->_percentage ^ self->_role;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v4 = [v3 hash];

  return v2 ^ v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSRole(self->_role);
  v6 = [v3 initWithFormat:@"<%@| role:%@ percentage:%lu duration:%.2f>", v4, v5, self->_percentage, *&self->_duration];

  return v6;
}

- (id)_initWithRole:(unint64_t)role percentage:(double)percentage duration:
{
  if (result)
  {
    v6 = a2;
    v7 = result;
    if ((a2 - 9) <= 0xFFFFFFFA)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithRole_percentage_duration_ object:v7 file:@"RBSCPUMinimumUsageGrant.m" lineNumber:92 description:@"initialized with invalid role"];
    }

    if (percentage <= 0.0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__initWithRole_percentage_duration_ object:v7 file:@"RBSCPUMinimumUsageGrant.m" lineNumber:93 description:@"initialized with invalid duration"];
    }

    if (role >= 0x65)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__initWithRole_percentage_duration_ object:v7 file:@"RBSCPUMinimumUsageGrant.m" lineNumber:94 description:@"initialized with invalid percentage"];
    }

    v11.receiver = v7;
    v11.super_class = RBSCPUMinimumUsageGrant;
    result = objc_msgSendSuper2(&v11, sel__init);
    if (result)
    {
      *(result + 8) = v6;
      *(result + 2) = role;
      *(result + 3) = percentage;
    }
  }

  return result;
}

@end