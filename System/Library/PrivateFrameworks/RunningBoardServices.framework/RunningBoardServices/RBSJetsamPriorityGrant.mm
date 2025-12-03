@interface RBSJetsamPriorityGrant
+ (id)grantWithBand:(unint64_t)band;
- (BOOL)isEqual:(id)equal;
- (RBSJetsamPriorityGrant)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSJetsamPriorityGrant

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| band:%d>", v4, self->_band];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSJetsamPriorityGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_band == equalCopy[1];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSJetsamPriorityGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_band forKey:{@"_band", v5.receiver, v5.super_class}];
}

- (RBSJetsamPriorityGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSJetsamPriorityGrant;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_band = [coderCopy decodeInt64ForKey:@"_band"];
  }

  return v5;
}

+ (id)grantWithBand:(unint64_t)band
{
  v4 = [RBSJetsamPriorityGrant alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSJetsamPriorityGrant;
    v4 = objc_msgSendSuper2(&v6, sel__init);
    if (v4)
    {
      v4->_band = band;
    }
  }

  return v4;
}

@end