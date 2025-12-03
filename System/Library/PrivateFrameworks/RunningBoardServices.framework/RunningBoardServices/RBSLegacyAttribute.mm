@interface RBSLegacyAttribute
+ (id)attributeWithReason:(unint64_t)reason flags:(unint64_t)flags;
- (BOOL)isEqual:(id)equal;
- (RBSLegacyAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSLegacyAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_requestedReason == equalCopy[2] && self->_reason == equalCopy[1] && self->_flags == equalCopy[3];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSLegacyAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[RBSLegacyAttribute requestedReason](self forKey:{"requestedReason", v5.receiver, v5.super_class), @"requestedReason"}];
  [coderCopy encodeInt64:-[RBSLegacyAttribute reason](self forKey:{"reason"), @"reason"}];
  [coderCopy encodeInt64:-[RBSLegacyAttribute flags](self forKey:{"flags"), @"flags"}];
}

- (RBSLegacyAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSLegacyAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_requestedReason = [coderCopy decodeInt64ForKey:@"requestedReason"];
    -[RBSLegacyAttribute setReason:](v5, "setReason:", [coderCopy decodeInt64ForKey:@"reason"]);
    v5->_flags = [coderCopy decodeInt64ForKey:@"flags"];
  }

  return v5;
}

+ (id)attributeWithReason:(unint64_t)reason flags:(unint64_t)flags
{
  v6 = [RBSLegacyAttribute alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = RBSLegacyAttribute;
    v6 = objc_msgSendSuper2(&v8, sel__init);
    if (v6)
    {
      v6->_requestedReason = reason;
      v6->_reason = reason;
      v6->_flags = flags;
    }
  }

  return v6;
}

@end