@interface RBSTagAttribute
+ (id)attributeWithTag:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RBSTagAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)_initWithTag:(void *)a1;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSTagAttribute

+ (id)attributeWithTag:(id)a3
{
  v3 = a3;
  v4 = [[RBSTagAttribute alloc] _initWithTag:v3];

  return v4;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSTagAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_tag forKey:{@"tag", v5.receiver, v5.super_class}];
}

- (RBSTagAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSTagAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    v7 = [v6 copy];
    tag = v5->_tag;
    v5->_tag = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSTagAttribute;
  v6 = 0;
  if ([(RBSAttribute *)&v8 isEqual:v4])
  {
    tag = self->_tag;
    if (tag == v4[1] || [(NSString *)tag isEqualToString:?])
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| tag:%@>", v4, self->_tag];

  return v5;
}

- (void)_initWithTag:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = RBSTagAttribute;
    a1 = objc_msgSendSuper2(&v7, sel__init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

@end