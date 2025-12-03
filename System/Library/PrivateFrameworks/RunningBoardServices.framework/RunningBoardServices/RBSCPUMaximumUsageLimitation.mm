@interface RBSCPUMaximumUsageLimitation
+ (id)limitationForRole:(unsigned __int8)role withPercentage:(unint64_t)percentage duration:(double)duration violationPolicy:(unint64_t)policy;
- (BOOL)isEqual:(id)equal;
- (RBSCPUMaximumUsageLimitation)initWithRBSXPCCoder:(id)coder;
- (id)_initWithRole:(unint64_t)role percentage:(unint64_t)percentage duration:(double)duration violationPolicy:;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSCPUMaximumUsageLimitation

- (unint64_t)hash
{
  v3 = self->_percentage ^ self->_role;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v5 = [v4 hash];
  v6 = v3 ^ self->_violationPolicy;

  return v6 ^ v5;
}

+ (id)limitationForRole:(unsigned __int8)role withPercentage:(unint64_t)percentage duration:(double)duration violationPolicy:(unint64_t)policy
{
  v6 = [[RBSCPUMaximumUsageLimitation alloc] _initWithRole:role percentage:percentage duration:policy violationPolicy:duration];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSRole(self->_role);
  v6 = v5;
  violationPolicy = self->_violationPolicy;
  if (violationPolicy > 2)
  {
    v8 = @"(undefined)";
  }

  else
  {
    v8 = off_1E7275EA8[violationPolicy];
  }

  v9 = [v3 initWithFormat:@"<%@| role:%@ percentage:%lu duration:%.2f violationPolicy:%@>", v4, v5, self->_percentage, *&self->_duration, v8];

  return v9;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSCPUMaximumUsageLimitation;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
  [coderCopy encodeUInt64:self->_percentage forKey:@"percentage"];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeUInt64:self->_violationPolicy forKey:@"violationPolicy"];
}

- (RBSCPUMaximumUsageLimitation)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RBSCPUMaximumUsageLimitation;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_role = [coderCopy decodeInt64ForKey:@"role"];
    v5->_percentage = [coderCopy decodeUInt64ForKey:@"percentage"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    v5->_violationPolicy = [coderCopy decodeUInt64ForKey:@"violationPolicy"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSCPUMaximumUsageLimitation;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_role == *(equalCopy + 8) && self->_percentage == *(equalCopy + 2) && self->_duration == equalCopy[3] && self->_violationPolicy == *(equalCopy + 4);

  return v5;
}

- (id)_initWithRole:(unint64_t)role percentage:(unint64_t)percentage duration:(double)duration violationPolicy:
{
  if (result)
  {
    v8 = a2;
    v9 = result;
    if ((a2 - 9) <= 0xFFFFFFF8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v11 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (percentage >= 3)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v13 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (duration <= 0.0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v15 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (role >= 0x65)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v17 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    v18.receiver = v9;
    v18.super_class = RBSCPUMaximumUsageLimitation;
    result = objc_msgSendSuper2(&v18, sel__init);
    if (result)
    {
      *(result + 8) = v8;
      *(result + 2) = role;
      *(result + 3) = duration;
      *(result + 4) = percentage;
    }
  }

  return result;
}

@end