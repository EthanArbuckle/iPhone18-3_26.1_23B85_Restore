@interface RBSConstraintsAttribute
+ (id)attributeWithConstraints:(unint64_t)constraints;
- (BOOL)isEqual:(id)equal;
- (RBSConstraintsAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSConstraintsAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| constraints:%x>", v4, self->_constraints];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = RBSConstraintsAttribute;
  v6 = 0;
  if ([(RBSAttribute *)&v8 isEqual:equalCopy])
  {
    constraints = [(RBSConstraintsAttribute *)self constraints];
    if (constraints == [equalCopy constraints])
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSConstraintsAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeUInt64:self->_constraints forKey:{@"_constraints", v5.receiver, v5.super_class}];
}

- (RBSConstraintsAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSConstraintsAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_constraints = [coderCopy decodeUInt64ForKey:@"_constraints"];
  }

  return v5;
}

+ (id)attributeWithConstraints:(unint64_t)constraints
{
  v4 = [RBSConstraintsAttribute alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = RBSConstraintsAttribute;
    v4 = objc_msgSendSuper2(&v6, sel__init);
    if (v4)
    {
      v4->_constraints = constraints;
    }
  }

  return v4;
}

@end