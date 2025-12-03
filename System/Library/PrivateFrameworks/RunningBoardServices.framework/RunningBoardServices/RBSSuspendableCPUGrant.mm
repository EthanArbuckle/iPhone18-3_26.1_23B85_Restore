@interface RBSSuspendableCPUGrant
+ (id)grantWithRole:(unsigned __int8)role;
- (BOOL)isEqual:(id)equal;
- (RBSSuspendableCPUGrant)initWithRBSXPCCoder:(id)coder;
- (id)_initWithRole:(id)result;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSSuspendableCPUGrant

+ (id)grantWithRole:(unsigned __int8)role
{
  v3 = [(RBSSuspendableCPUGrant *)[self alloc] _initWithRole:role];

  return v3;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSSuspendableCPUGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_role forKey:{@"role", v5.receiver, v5.super_class}];
}

- (RBSSuspendableCPUGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RBSSuspendableCPUGrant;
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
  v7.super_class = RBSSuspendableCPUGrant;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithRole_ object:v3 file:@"RBSSuspendableCPUGrant.m" lineNumber:78 description:@"initialized with invalid role"];
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