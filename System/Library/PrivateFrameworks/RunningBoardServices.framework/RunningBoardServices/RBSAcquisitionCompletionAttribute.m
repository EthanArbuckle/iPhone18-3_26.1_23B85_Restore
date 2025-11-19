@interface RBSAcquisitionCompletionAttribute
+ (id)attributeWithCompletionPolicy:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RBSAcquisitionCompletionAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)_initWithCompletionPolicy:(void *)a1;
- (void)encodeWithRBSXPCCoder:(id)a3;
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

+ (id)attributeWithCompletionPolicy:(unint64_t)a3
{
  v3 = [[RBSAcquisitionCompletionAttribute alloc] _initWithCompletionPolicy:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSAcquisitionCompletionAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_policy == v4[1];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSAcquisitionCompletionAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeUInt64:self->_policy forKey:{@"_policy", v5.receiver, v5.super_class}];
}

- (RBSAcquisitionCompletionAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSAcquisitionCompletionAttribute;
  v5 = [(RBSAttribute *)&v9 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeUInt64ForKey:@"_policy"];
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

- (void)_initWithCompletionPolicy:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
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