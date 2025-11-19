@interface RBSGPUAccessGrant
+ (id)grant;
- (BOOL)isEqual:(id)a3;
- (RBSGPUAccessGrant)initWithRBSXPCCoder:(id)a3;
- (id)_initWithRole:(unsigned __int8)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSGPUAccessGrant

+ (id)grant
{
  v2 = [[a1 alloc] _initWithRole:2];

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSGPURole(self->_role);
  v6 = [v3 initWithFormat:@"<%@| role:%@>", v4, v5];

  return v6;
}

- (id)_initWithRole:(unsigned __int8)a3
{
  if ((a3 - 5) <= 0xFFFFFFFB)
  {
    [(RBSGPUAccessGrant *)a2 _initWithRole:?];
  }

  v6.receiver = self;
  v6.super_class = RBSGPUAccessGrant;
  result = [(RBSAttribute *)&v6 _init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSGPUAccessGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
}

- (RBSGPUAccessGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSGPUAccessGrant;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeInt64ForKey:@"role"];
    if (v6 < 5u)
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
      v5->_role = 4;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSGPUAccessGrant;
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

- (void)_initWithRole:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSGPUAccessGrant.m" lineNumber:29 description:@"initialized with invalid role"];
}

@end