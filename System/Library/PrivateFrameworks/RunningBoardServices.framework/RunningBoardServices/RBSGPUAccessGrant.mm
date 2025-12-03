@interface RBSGPUAccessGrant
+ (id)grant;
- (BOOL)isEqual:(id)equal;
- (RBSGPUAccessGrant)initWithRBSXPCCoder:(id)coder;
- (id)_initWithRole:(unsigned __int8)role;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSGPUAccessGrant

+ (id)grant
{
  v2 = [[self alloc] _initWithRole:2];

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

- (id)_initWithRole:(unsigned __int8)role
{
  if ((role - 5) <= 0xFFFFFFFB)
  {
    [(RBSGPUAccessGrant *)a2 _initWithRole:?];
  }

  v6.receiver = self;
  v6.super_class = RBSGPUAccessGrant;
  result = [(RBSAttribute *)&v6 _init];
  if (result)
  {
    *(result + 8) = role;
  }

  return result;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSGPUAccessGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
}

- (RBSGPUAccessGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RBSGPUAccessGrant;
  v5 = [(RBSAttribute *)&v8 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeInt64ForKey:@"role"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSGPUAccessGrant;
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

- (void)_initWithRole:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSGPUAccessGrant.m" lineNumber:29 description:@"initialized with invalid role"];
}

@end