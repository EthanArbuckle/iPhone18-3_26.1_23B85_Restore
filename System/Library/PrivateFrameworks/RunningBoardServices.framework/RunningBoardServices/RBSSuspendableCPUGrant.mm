@interface RBSSuspendableCPUGrant
+ (id)grantWithRole:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (RBSSuspendableCPUGrant)initWithRBSXPCCoder:(id)a3;
- (id)_initWithRole:(id)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSSuspendableCPUGrant

+ (id)grantWithRole:(unsigned __int8)a3
{
  v3 = [(RBSSuspendableCPUGrant *)[a1 alloc] _initWithRole:a3];

  return v3;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSSuspendableCPUGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
}

- (RBSSuspendableCPUGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSSuspendableCPUGrant;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeInt64ForKey:@"role"];
    if (v6 < 9u)
    {
      if (v6)
      {
        v5->_role = v6;
      }

      else
      {
        v5->_role = 1;
      }
    }

    else
    {
      v5->_role = 8;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSSuspendableCPUGrant;
  if ([(RBSAttribute *)&v7 isEqual:v4])
  {
    v5 = self->_role == v4[8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSRole(self->_role);
  v6 = [v3 initWithFormat:@"<%@| role:%@>", v4, v5];

  return v6;
}

- (id)_initWithRole:(id)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if ((a2 - 9) <= 0xFFFFFFF7)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__initWithRole_ object:v3 file:@"RBSSuspendableCPUGrant.m" lineNumber:78 description:@"initialized with invalid role"];
    }

    v5.receiver = v3;
    v5.super_class = RBSSuspendableCPUGrant;
    result = objc_msgSendSuper2(&v5, sel__init);
    if (result)
    {
      *(result + 8) = v2;
    }
  }

  return result;
}

@end