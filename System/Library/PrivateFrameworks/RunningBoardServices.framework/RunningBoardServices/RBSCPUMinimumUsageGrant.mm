@interface RBSCPUMinimumUsageGrant
+ (id)grantForRole:(unsigned __int8)a3 withPercentage:(unint64_t)a4 duration:(double)a5;
- (BOOL)isEqual:(id)a3;
- (RBSCPUMinimumUsageGrant)initWithRBSXPCCoder:(id)a3;
- (id)_initWithRole:(unint64_t)a3 percentage:(double)a4 duration:;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSCPUMinimumUsageGrant

+ (id)grantForRole:(unsigned __int8)a3 withPercentage:(unint64_t)a4 duration:(double)a5
{
  v5 = [[RBSCPUMinimumUsageGrant alloc] _initWithRole:a3 percentage:a4 duration:a5];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSCPUMinimumUsageGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
  [v4 encodeUInt64:self->_percentage forKey:@"percentage"];
  [v4 encodeDouble:@"duration" forKey:self->_duration];
}

- (RBSCPUMinimumUsageGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSCPUMinimumUsageGrant;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_role = [v4 decodeInt64ForKey:@"role"];
    v5->_percentage = [v4 decodeUInt64ForKey:@"percentage"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSCPUMinimumUsageGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_role == *(v4 + 8) && self->_percentage == *(v4 + 2) && self->_duration == v4[3];

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

- (id)_initWithRole:(unint64_t)a3 percentage:(double)a4 duration:
{
  if (result)
  {
    v6 = a2;
    v7 = result;
    if ((a2 - 9) <= 0xFFFFFFFA)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__initWithRole_percentage_duration_ object:v7 file:@"RBSCPUMinimumUsageGrant.m" lineNumber:92 description:@"initialized with invalid role"];
    }

    if (a4 <= 0.0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel__initWithRole_percentage_duration_ object:v7 file:@"RBSCPUMinimumUsageGrant.m" lineNumber:93 description:@"initialized with invalid duration"];
    }

    if (a3 >= 0x65)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel__initWithRole_percentage_duration_ object:v7 file:@"RBSCPUMinimumUsageGrant.m" lineNumber:94 description:@"initialized with invalid percentage"];
    }

    v11.receiver = v7;
    v11.super_class = RBSCPUMinimumUsageGrant;
    result = objc_msgSendSuper2(&v11, sel__init);
    if (result)
    {
      *(result + 8) = v6;
      *(result + 2) = a3;
      *(result + 3) = a4;
    }
  }

  return result;
}

@end