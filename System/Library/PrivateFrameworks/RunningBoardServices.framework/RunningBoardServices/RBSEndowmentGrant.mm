@interface RBSEndowmentGrant
+ (id)grantWithNamespace:(id)a3 endowment:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RBSEndowmentGrant)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSEndowmentGrant

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  endowmentNamespace = self->_endowmentNamespace;
  if (self->_encodedEndowment)
  {
    v7 = @" hasEndowment";
  }

  else
  {
    v7 = &stru_1F01CD8F0;
  }

  v8 = [v3 initWithFormat:@"<%@| namespace:%@%@>", v4, self->_endowmentNamespace, v7];

  return v8;
}

+ (id)grantWithNamespace:(id)a3 endowment:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [RBSEndowmentGrant grantWithNamespace:a2 endowment:a1];
  }

  v9 = [[a1 alloc] _init];
  if (v9)
  {
    v10 = [v7 copy];
    v11 = v9[1];
    v9[1] = v10;

    v12 = RBSEndowmentEncode(v8);
    v13 = v9[2];
    v9[2] = v12;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RBSEndowmentGrant;
  if (![(RBSAttribute *)&v12 isEqual:v4])
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

  encodedEndowment = self->_encodedEndowment;
  v9 = v4[2];
  if (encodedEndowment)
  {
    if (v9 && (encodedEndowment == v9 || xpc_equal(encodedEndowment, v9)))
    {
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v10 = 1;
LABEL_15:

  return v10;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RBSEndowmentGrant;
  v4 = a3;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_endowmentNamespace forKey:{@"_endowmentNamespace", v6.receiver, v6.super_class}];
  v5 = RBSXPCPackObject(self->_encodedEndowment);
  [v4 encodeXPCObject:v5 forKey:@"_encodedEndowment"];
}

- (RBSEndowmentGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"_endowmentNamespace"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RBSEndowmentGrant;
    v6 = [(RBSAttribute *)&v13 initWithRBSXPCCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_endowmentNamespace, v5);
      v8 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_encodedEndowment"];
      v9 = RBSXPCUnpackObject(v8);
      encodedEndowment = v7->_encodedEndowment;
      v7->_encodedEndowment = v9;
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)grantWithNamespace:(uint64_t)a1 endowment:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSEndowmentGrant.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"nspace != nil"}];
}

@end