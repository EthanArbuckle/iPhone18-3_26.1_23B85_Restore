@interface RBSCPUAccessGrant
+ (id)grant;
+ (id)grantUserInitiated;
+ (id)grantWithRole:(unsigned __int8)role;
+ (id)grantWithUserInteractivity;
+ (id)grantWithUserInteractivityAndFocus;
- (BOOL)isEqual:(id)equal;
- (RBSCPUAccessGrant)initWithRBSXPCCoder:(id)coder;
- (id)_initWithRole:(id)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSCPUAccessGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
}

- (RBSCPUAccessGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RBSCPUAccessGrant;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeInt64ForKey:@"role"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSCPUAccessGrant;
  if ([(RBSAttribute *)&v7 isEqual:equalCopy])
  {
    v5 = self->_role == equalCopy[8];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithRole_ object:v3 file:@"RBSCPUAccessGrant.m" lineNumber:96 description:@"initialized with invalid role"];
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

+ (id)grantWithRole:(unsigned __int8)role
{
  v3 = [[RBSCPUAccessGrant alloc] _initWithRole:role];

  return v3;
}

@end