@interface RBSBaseMemoryGrant
+ (id)grantWithCategory:(id)category strength:(unsigned __int8)strength;
- (BOOL)isEqual:(id)equal;
- (RBSBaseMemoryGrant)initWithRBSXPCCoder:(id)coder;
- (_BYTE)_initWithCategory:(char)category strength:;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSBaseMemoryGrant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSBaseMemoryGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& [(NSString *)self->_category isEqualToString:equalCopy[1]]&& self->_strength == *(equalCopy + 16);

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSBaseMemoryGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_category forKey:{@"_category", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_strength forKey:@"_strength"];
}

- (RBSBaseMemoryGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSBaseMemoryGrant;
  v5 = [(RBSAttribute *)&v9 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"_category"];
    category = v5->_category;
    v5->_category = v6;

    v5->_strength = [coderCopy decodeInt64ForKey:@"_strength"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  category = self->_category;
  strength = self->_strength;
  if (strength > 2)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_1E7276758[strength];
  }

  v9 = [v3 initWithFormat:@"<%@| category:%@ strength:%@>", v4, self->_category, v8];

  return v9;
}

- (_BYTE)_initWithCategory:(char)category strength:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = RBSBaseMemoryGrant;
    v7 = objc_msgSendSuper2(&v9, sel__init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      self[16] = category;
    }
  }

  return self;
}

+ (id)grantWithCategory:(id)category strength:(unsigned __int8)strength
{
  categoryCopy = category;
  v6 = [[RBSBaseMemoryGrant alloc] _initWithCategory:categoryCopy strength:strength];

  return v6;
}

@end