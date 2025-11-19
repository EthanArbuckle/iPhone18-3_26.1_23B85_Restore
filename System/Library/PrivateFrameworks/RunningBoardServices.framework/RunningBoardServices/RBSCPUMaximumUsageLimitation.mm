@interface RBSCPUMaximumUsageLimitation
+ (id)limitationForRole:(unsigned __int8)a3 withPercentage:(unint64_t)a4 duration:(double)a5 violationPolicy:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (RBSCPUMaximumUsageLimitation)initWithRBSXPCCoder:(id)a3;
- (id)_initWithRole:(unint64_t)a3 percentage:(unint64_t)a4 duration:(double)a5 violationPolicy:;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
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

+ (id)limitationForRole:(unsigned __int8)a3 withPercentage:(unint64_t)a4 duration:(double)a5 violationPolicy:(unint64_t)a6
{
  v6 = [[RBSCPUMaximumUsageLimitation alloc] _initWithRole:a3 percentage:a4 duration:a6 violationPolicy:a5];

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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSCPUMaximumUsageLimitation;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
  [v4 encodeUInt64:self->_percentage forKey:@"percentage"];
  [v4 encodeDouble:@"duration" forKey:self->_duration];
  [v4 encodeUInt64:self->_violationPolicy forKey:@"violationPolicy"];
}

- (RBSCPUMaximumUsageLimitation)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSCPUMaximumUsageLimitation;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_role = [v4 decodeInt64ForKey:@"role"];
    v5->_percentage = [v4 decodeUInt64ForKey:@"percentage"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    v5->_violationPolicy = [v4 decodeUInt64ForKey:@"violationPolicy"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSCPUMaximumUsageLimitation;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_role == *(v4 + 8) && self->_percentage == *(v4 + 2) && self->_duration == v4[3] && self->_violationPolicy == *(v4 + 4);

  return v5;
}

- (id)_initWithRole:(unint64_t)a3 percentage:(unint64_t)a4 duration:(double)a5 violationPolicy:
{
  if (result)
  {
    v8 = a2;
    v9 = result;
    if ((a2 - 9) <= 0xFFFFFFF8)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v11 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (a4 >= 3)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v13 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (a5 <= 0.0)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v15 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (a3 >= 0x65)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_1();
      [v17 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    v18.receiver = v9;
    v18.super_class = RBSCPUMaximumUsageLimitation;
    result = objc_msgSendSuper2(&v18, sel__init);
    if (result)
    {
      *(result + 8) = v8;
      *(result + 2) = a3;
      *(result + 3) = a5;
      *(result + 4) = a4;
    }
  }

  return result;
}

@end