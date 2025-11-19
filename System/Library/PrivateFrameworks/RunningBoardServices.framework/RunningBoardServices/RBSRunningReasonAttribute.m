@interface RBSRunningReasonAttribute
+ (id)withReason:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RBSRunningReasonAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSRunningReasonAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| runningReason:%llu>", v4, self->_runningReason];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSRunningReasonAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeUInt64:self->_runningReason forKey:{@"_runningReason", v5.receiver, v5.super_class}];
}

- (RBSRunningReasonAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSRunningReasonAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_runningReason = [v4 decodeUInt64ForKey:@"_runningReason"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSRunningReasonAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_runningReason == v4[1];

  return v5;
}

+ (id)withReason:(unint64_t)a3
{
  v4 = [RBSRunningReasonAttribute alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSRunningReasonAttribute;
    v4 = objc_msgSendSuper2(&v6, sel__init);
    if (v4)
    {
      v4->_runningReason = a3;
    }
  }

  return v4;
}

@end