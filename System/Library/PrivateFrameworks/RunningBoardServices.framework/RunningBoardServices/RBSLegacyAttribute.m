@interface RBSLegacyAttribute
+ (id)attributeWithReason:(unint64_t)a3 flags:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RBSLegacyAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSLegacyAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromRBSLegacyReason(self->_requestedReason);
  v6 = NSStringFromRBSLegacyReason(self->_reason);
  v7 = NSStringFromRBSLegacyFlags(self->_flags);
  v8 = [v3 initWithFormat:@"<%@| requestedReason:%@ reason:%@ flags:%@>", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSLegacyAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_requestedReason == v4[2] && self->_reason == v4[1] && self->_flags == v4[3];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSLegacyAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeInt64:-[RBSLegacyAttribute requestedReason](self forKey:{"requestedReason", v5.receiver, v5.super_class), @"requestedReason"}];
  [v4 encodeInt64:-[RBSLegacyAttribute reason](self forKey:{"reason"), @"reason"}];
  [v4 encodeInt64:-[RBSLegacyAttribute flags](self forKey:{"flags"), @"flags"}];
}

- (RBSLegacyAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSLegacyAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_requestedReason = [v4 decodeInt64ForKey:@"requestedReason"];
    -[RBSLegacyAttribute setReason:](v5, "setReason:", [v4 decodeInt64ForKey:@"reason"]);
    v5->_flags = [v4 decodeInt64ForKey:@"flags"];
  }

  return v5;
}

+ (id)attributeWithReason:(unint64_t)a3 flags:(unint64_t)a4
{
  v6 = [RBSLegacyAttribute alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = RBSLegacyAttribute;
    v6 = objc_msgSendSuper2(&v8, sel__init);
    if (v6)
    {
      v6->_requestedReason = a3;
      v6->_reason = a3;
      v6->_flags = a4;
    }
  }

  return v6;
}

@end