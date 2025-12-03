@interface RBSTagAttribute
+ (id)attributeWithTag:(id)tag;
- (BOOL)isEqual:(id)equal;
- (RBSTagAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)_initWithTag:(void *)tag;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSTagAttribute

+ (id)attributeWithTag:(id)tag
{
  tagCopy = tag;
  v4 = [[RBSTagAttribute alloc] _initWithTag:tagCopy];

  return v4;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSTagAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_tag forKey:{@"tag", v5.receiver, v5.super_class}];
}

- (RBSTagAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RBSTagAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    v7 = [v6 copy];
    tag = v5->_tag;
    v5->_tag = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = RBSTagAttribute;
  v6 = 0;
  if ([(RBSAttribute *)&v8 isEqual:equalCopy])
  {
    tag = self->_tag;
    if (tag == equalCopy[1] || [(NSString *)tag isEqualToString:?])
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

- (void)_initWithTag:(void *)tag
{
  v3 = a2;
  if (tag)
  {
    v7.receiver = tag;
    v7.super_class = RBSTagAttribute;
    tag = objc_msgSendSuper2(&v7, sel__init);
    if (tag)
    {
      v4 = [v3 copy];
      v5 = tag[1];
      tag[1] = v4;
    }
  }

  return tag;
}

@end