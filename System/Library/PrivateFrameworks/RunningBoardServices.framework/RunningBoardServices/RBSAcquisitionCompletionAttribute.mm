@interface RBSAcquisitionCompletionAttribute
+ (id)attributeWithCompletionPolicy:(unint64_t)policy;
- (BOOL)isEqual:(id)equal;
- (RBSAcquisitionCompletionAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)_initWithCompletionPolicy:(void *)policy;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSAcquisitionCompletionAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSAcquisitionCompletionPolicy(self->_policy);
  v6 = [v3 initWithFormat:@"<%@| policy:%@>", v4, v5];

  return v6;
}

+ (id)attributeWithCompletionPolicy:(unint64_t)policy
{
  v3 = [[RBSAcquisitionCompletionAttribute alloc] _initWithCompletionPolicy:policy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSAcquisitionCompletionAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_policy == equalCopy[1];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSAcquisitionCompletionAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeUInt64:self->_policy forKey:{@"_policy", v5.receiver, v5.super_class}];
}

- (RBSAcquisitionCompletionAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSAcquisitionCompletionAttribute;
  v5 = [(RBSAttribute *)&v9 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeUInt64ForKey:@"_policy"];
    if (RBSAcquisitionCompletionPolicyIsValid(v6))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5->_policy = v7;
  }

  return v5;
}

- (void)_initWithCompletionPolicy:(void *)policy
{
  if (!policy)
  {
    return 0;
  }

  v6.receiver = policy;
  v6.super_class = RBSAcquisitionCompletionAttribute;
  v3 = objc_msgSendSuper2(&v6, sel__init);
  if (v3)
  {
    if (RBSAcquisitionCompletionPolicyIsValid(a2))
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    v3[1] = v4;
  }

  return v3;
}

@end