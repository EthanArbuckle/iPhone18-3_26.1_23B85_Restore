@interface RBSJetsamPriorityGrant
+ (id)grantWithBand:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RBSJetsamPriorityGrant)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSJetsamPriorityGrant

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| band:%d>", v4, self->_band];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSJetsamPriorityGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_band == v4[1];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSJetsamPriorityGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:self->_band forKey:{@"_band", v5.receiver, v5.super_class}];
}

- (RBSJetsamPriorityGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSJetsamPriorityGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_band = [v4 decodeInt64ForKey:@"_band"];
  }

  return v5;
}

+ (id)grantWithBand:(unint64_t)a3
{
  v4 = [RBSJetsamPriorityGrant alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSJetsamPriorityGrant;
    v4 = objc_msgSendSuper2(&v6, sel__init);
    if (v4)
    {
      v4->_band = a3;
    }
  }

  return v4;
}

@end