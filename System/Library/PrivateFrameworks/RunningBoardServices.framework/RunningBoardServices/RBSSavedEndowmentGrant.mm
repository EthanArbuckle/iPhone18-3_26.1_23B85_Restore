@interface RBSSavedEndowmentGrant
+ (id)grantWithNamespace:(id)a3 key:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RBSSavedEndowmentGrant)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSSavedEndowmentGrant

+ (id)grantWithNamespace:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] _init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [v7 copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSSavedEndowmentGrant;
  if (![(RBSAttribute *)&v13 isEqual:v4])
  {
    goto LABEL_14;
  }

  endowmentNamespace = self->_endowmentNamespace;
  v6 = v4[1];
  if (endowmentNamespace != v6)
  {
    v7 = !endowmentNamespace || v6 == 0;
    if (v7 || ![(NSString *)endowmentNamespace isEqualToString:?])
    {
      goto LABEL_14;
    }
  }

  key = self->_key;
  v9 = v4[2];
  if (key == v9)
  {
    v12 = 1;
    goto LABEL_15;
  }

  if (key && v9 != 0)
  {
    v12 = [(NSString *)key isEqualToString:?];
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

LABEL_15:

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  endowmentNamespace = self->_endowmentNamespace;
  v6 = [v3 initWithFormat:@"<%@| namespace:%@ key:%@>", v4, endowmentNamespace, self->_key];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSSavedEndowmentGrant;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_endowmentNamespace forKey:{@"_endowmentNamespace", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_key forKey:@"_key"];
}

- (RBSSavedEndowmentGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"_endowmentNamespace"];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"_key"];
    if (v6)
    {
      v11.receiver = self;
      v11.super_class = RBSSavedEndowmentGrant;
      v7 = [(RBSAttribute *)&v11 initWithRBSXPCCoder:v4];
      p_isa = &v7->super.super.super.isa;
      if (v7)
      {
        objc_storeStrong(&v7->_endowmentNamespace, v5);
        objc_storeStrong(p_isa + 2, v6);
      }

      self = p_isa;
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end