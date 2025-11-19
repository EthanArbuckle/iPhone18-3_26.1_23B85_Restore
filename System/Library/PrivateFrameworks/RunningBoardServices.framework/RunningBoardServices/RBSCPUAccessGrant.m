@interface RBSCPUAccessGrant
+ (id)grant;
+ (id)grantUserInitiated;
+ (id)grantWithRole:(unsigned __int8)a3;
+ (id)grantWithUserInteractivity;
+ (id)grantWithUserInteractivityAndFocus;
- (BOOL)isEqual:(id)a3;
- (RBSCPUAccessGrant)initWithRBSXPCCoder:(id)a3;
- (id)_initWithRole:(id)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSCPUAccessGrant

+ (id)grantUserInitiated
{
  v2 = [[RBSCPUAccessGrant alloc] _initWithRole:?];

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSRole(self->_role);
  v6 = [v3 initWithFormat:@"<%@| role:%@>", v4, v5];

  return v6;
}

+ (id)grantWithUserInteractivity
{
  v2 = [[RBSCPUAccessGrant alloc] _initWithRole:?];

  return v2;
}

+ (id)grant
{
  v2 = [[RBSCPUAccessGrant alloc] _initWithRole:?];

  return v2;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSCPUAccessGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
}

- (RBSCPUAccessGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSCPUAccessGrant;
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
  v7.super_class = RBSCPUAccessGrant;
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

- (id)_initWithRole:(id)result
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if ((a2 - 9) <= 0xFFFFFFF7)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel__initWithRole_ object:v3 file:@"RBSCPUAccessGrant.m" lineNumber:96 description:@"initialized with invalid role"];
    }

    v4 = rbs_assertion_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = a2;
      _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "RBSCPUAccessGrant with role: %d", buf, 8u);
    }

    v7.receiver = v3;
    v7.super_class = RBSCPUAccessGrant;
    result = objc_msgSendSuper2(&v7, sel__init);
    if (result)
    {
      *(result + 8) = a2;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)grantWithUserInteractivityAndFocus
{
  v2 = [[RBSCPUAccessGrant alloc] _initWithRole:?];

  return v2;
}

+ (id)grantWithRole:(unsigned __int8)a3
{
  v3 = [[RBSCPUAccessGrant alloc] _initWithRole:a3];

  return v3;
}

@end