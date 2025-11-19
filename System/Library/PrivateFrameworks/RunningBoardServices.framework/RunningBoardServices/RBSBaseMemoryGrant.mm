@interface RBSBaseMemoryGrant
+ (id)grantWithCategory:(id)a3 strength:(unsigned __int8)a4;
- (BOOL)isEqual:(id)a3;
- (RBSBaseMemoryGrant)initWithRBSXPCCoder:(id)a3;
- (_BYTE)_initWithCategory:(char)a3 strength:;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSBaseMemoryGrant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSBaseMemoryGrant;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& [(NSString *)self->_category isEqualToString:v4[1]]&& self->_strength == *(v4 + 16);

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSBaseMemoryGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_category forKey:{@"_category", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_strength forKey:@"_strength"];
}

- (RBSBaseMemoryGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSBaseMemoryGrant;
  v5 = [(RBSAttribute *)&v9 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"_category"];
    category = v5->_category;
    v5->_category = v6;

    v5->_strength = [v4 decodeInt64ForKey:@"_strength"];
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

- (_BYTE)_initWithCategory:(char)a3 strength:
{
  v6 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = RBSBaseMemoryGrant;
    v7 = objc_msgSendSuper2(&v9, sel__init);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      a1[16] = a3;
    }
  }

  return a1;
}

+ (id)grantWithCategory:(id)a3 strength:(unsigned __int8)a4
{
  v5 = a3;
  v6 = [[RBSBaseMemoryGrant alloc] _initWithCategory:v5 strength:a4];

  return v6;
}

@end