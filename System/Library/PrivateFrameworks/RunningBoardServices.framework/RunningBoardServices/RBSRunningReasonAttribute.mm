@interface RBSRunningReasonAttribute
+ (id)withReason:(unint64_t)reason;
- (BOOL)isEqual:(id)equal;
- (RBSRunningReasonAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSRunningReasonAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| runningReason:%llu>", v4, self->_runningReason];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSRunningReasonAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeUInt64:self->_runningReason forKey:{@"_runningReason", v5.receiver, v5.super_class}];
}

- (RBSRunningReasonAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSRunningReasonAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_runningReason = [coderCopy decodeUInt64ForKey:@"_runningReason"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSRunningReasonAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_runningReason == equalCopy[1];

  return v5;
}

+ (id)withReason:(unint64_t)reason
{
  v4 = [RBSRunningReasonAttribute alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSRunningReasonAttribute;
    v4 = objc_msgSendSuper2(&v6, sel__init);
    if (v4)
    {
      v4->_runningReason = reason;
    }
  }

  return v4;
}

@end