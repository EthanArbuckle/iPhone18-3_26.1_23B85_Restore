@interface RBSConstraintsAttribute
+ (id)attributeWithConstraints:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RBSConstraintsAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSConstraintsAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| constraints:%x>", v4, self->_constraints];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSConstraintsAttribute;
  v6 = 0;
  if ([(RBSAttribute *)&v8 isEqual:v4])
  {
    v5 = [(RBSConstraintsAttribute *)self constraints];
    if (v5 == [v4 constraints])
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSConstraintsAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeUInt64:self->_constraints forKey:{@"_constraints", v5.receiver, v5.super_class}];
}

- (RBSConstraintsAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSConstraintsAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v5->_constraints = [v4 decodeUInt64ForKey:@"_constraints"];
  }

  return v5;
}

+ (id)attributeWithConstraints:(unint64_t)a3
{
  v4 = [RBSConstraintsAttribute alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSConstraintsAttribute;
    v4 = objc_msgSendSuper2(&v6, sel__init);
    if (v4)
    {
      v4->_constraints = a3;
    }
  }

  return v4;
}

@end