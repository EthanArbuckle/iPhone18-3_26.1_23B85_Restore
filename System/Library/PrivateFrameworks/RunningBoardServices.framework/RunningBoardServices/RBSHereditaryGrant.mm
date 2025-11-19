@interface RBSHereditaryGrant
+ (id)grantWithNamespace:(id)a3 endowment:(id)a4 attributes:(id)a5;
+ (id)grantWithNamespace:(id)a3 sourceEnvironment:(id)a4 attributes:(id)a5;
+ (id)grantWithNamespace:(id)a3 sourceEnvironment:(id)a4 endowment:(id)a5 attributes:(id)a6;
- (BOOL)isEqual:(id)a3;
- (RBSHereditaryGrant)initWithRBSXPCCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)_initWithNamespace:(void *)a3 sourceEnvironment:(void *)a4 endowment:(void *)a5 attributes:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSHereditaryGrant

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  sourceEnvironment = self->_sourceEnvironment;
  v7 = @" ";
  v8 = &stru_1F01CD8F0;
  if (!sourceEnvironment)
  {
    v7 = &stru_1F01CD8F0;
    sourceEnvironment = &stru_1F01CD8F0;
  }

  if (self->_encodedEndowment)
  {
    v8 = @" hasEncodedEndowment";
  }

  v9 = [v3 initWithFormat:@"<%@| endowmentNamespace:%@%@%@%@>", v4, self->_endowmentNamespace, v7, sourceEnvironment, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_attributes hash];
  v4 = [(NSString *)self->_endowmentNamespace hash]^ v3;
  return v4 ^ [(NSString *)self->_sourceEnvironment hash];
}

+ (id)grantWithNamespace:(id)a3 endowment:(id)a4 attributes:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RBSHereditaryGrant alloc] _initWithNamespace:v9 sourceEnvironment:0 endowment:v8 attributes:v7];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSHereditaryGrant;
  v11 = 0;
  if ([(RBSAttribute *)&v13 isEqual:v4])
  {
    endowmentNamespace = self->_endowmentNamespace;
    if (endowmentNamespace == v4[1] || [(NSString *)endowmentNamespace isEqual:?])
    {
      sourceEnvironment = self->_sourceEnvironment;
      if (sourceEnvironment == v4[2] || [(NSString *)sourceEnvironment isEqualToString:?])
      {
        encodedEndowment = self->_encodedEndowment;
        v8 = v4[3];
        if (encodedEndowment == v8 || (encodedEndowment ? (v9 = v8 == 0) : (v9 = 1), !v9))
        {
          attributes = self->_attributes;
          if (attributes == v4[4] || [(NSArray *)attributes isEqualToArray:?])
          {
            v11 = 1;
          }
        }
      }
    }
  }

  return v11;
}

- (id)debugDescription
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [objc_opt_class() description];
  endowmentNamespace = self->_endowmentNamespace;
  sourceEnvironment = self->_sourceEnvironment;
  if (sourceEnvironment)
  {
    v6 = @" sourceEnvironment:";
  }

  else
  {
    v6 = &stru_1F01CD8F0;
  }

  if (sourceEnvironment)
  {
    v7 = self->_sourceEnvironment;
  }

  else
  {
    v7 = &stru_1F01CD8F0;
  }

  if (self->_encodedEndowment)
  {
    v8 = @" hasEncodedEndowment";
  }

  else
  {
    v8 = &stru_1F01CD8F0;
  }

  attributes = self->_attributes;
  if (attributes)
  {
    v10 = @"attributes: [\n\t";
  }

  else
  {
    v10 = &stru_1F01CD8F0;
  }

  v11 = [(NSArray *)attributes componentsJoinedByString:@", \n\t"];
  v12 = v11;
  if (self->_attributes)
  {
    v13 = @"\n\t]";
  }

  else
  {
    v13 = &stru_1F01CD8F0;
  }

  v14 = [v16 initWithFormat:@"<%@| endowmentNamespace:%@%@%@%@%@%@%@>", v3, endowmentNamespace, v6, v7, v8, v10, v11, v13];

  return v14;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RBSHereditaryGrant;
  v4 = a3;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:v4];
  [v4 encodeObject:self->_endowmentNamespace forKey:{@"_endowmentNamespace", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_sourceEnvironment forKey:@"_sourceEnvironment"];
  [v4 encodeObject:self->_attributes forKey:@"_attributes"];
  v5 = RBSXPCPackObject(self->_encodedEndowment);
  [v4 encodeXPCObject:v5 forKey:@"_encodedEndowment"];
}

- (RBSHereditaryGrant)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"_endowmentNamespace"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceEnvironment"];
    v7 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_encodedEndowment"];
    v8 = RBSXPCUnpackObject(v7);

    if (v6 | v8)
    {
      v17.receiver = self;
      v17.super_class = RBSHereditaryGrant;
      v11 = [(RBSAttribute *)&v17 initWithRBSXPCCoder:v4];
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(&v11->_endowmentNamespace, v5);
        objc_storeStrong(&v12->_sourceEnvironment, v6);
        objc_storeStrong(&v12->_encodedEndowment, v8);
        v13 = objc_opt_class();
        v14 = [v4 decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"_attributes"];
        attributes = v12->_attributes;
        v12->_attributes = v14;
      }

      self = v12;
      v10 = self;
    }

    else
    {
      v9 = rbs_assertion_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(RBSHereditaryGrant *)self initWithRBSXPCCoder:v9];
      }

      v10 = 0;
    }
  }

  else
  {
    v6 = rbs_assertion_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(RBSHereditaryGrant *)self initWithRBSXPCCoder:v6];
    }

    v10 = 0;
  }

  return v10;
}

- (void)_initWithNamespace:(void *)a3 sourceEnvironment:(void *)a4 endowment:(void *)a5 attributes:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    if (!v10)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:sel__initWithNamespace_sourceEnvironment_endowment_attributes_ object:a1 file:@"RBSHereditaryGrant.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"endowmentNamespace"}];
    }

    if (!(v11 | v12))
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:sel__initWithNamespace_sourceEnvironment_endowment_attributes_ object:a1 file:@"RBSHereditaryGrant.m" lineNumber:134 description:@"Missing source environment or endowment"];
    }

    v25.receiver = a1;
    v25.super_class = RBSHereditaryGrant;
    v14 = objc_msgSendSuper2(&v25, sel__init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      v15 = [v11 copy];
      v16 = a1[2];
      a1[2] = v15;

      v17 = RBSEndowmentEncode(v12);
      v18 = a1[3];
      a1[3] = v17;

      v19 = [v13 copy];
      v20 = a1[4];
      a1[4] = v19;

      if ((v12 == 0) != (a1[3] == 0))
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:sel__initWithNamespace_sourceEnvironment_endowment_attributes_ object:a1 file:@"RBSHereditaryGrant.m" lineNumber:142 description:{@"endowment encode failed : %@", v12}];
      }
    }
  }

  return a1;
}

+ (id)grantWithNamespace:(id)a3 sourceEnvironment:(id)a4 attributes:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RBSHereditaryGrant alloc] _initWithNamespace:v9 sourceEnvironment:v8 endowment:0 attributes:v7];

  return v10;
}

+ (id)grantWithNamespace:(id)a3 sourceEnvironment:(id)a4 endowment:(id)a5 attributes:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[RBSHereditaryGrant alloc] _initWithNamespace:v12 sourceEnvironment:v11 endowment:v10 attributes:v9];

  return v13;
}

- (void)initWithRBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "RBSHereditaryGrant is missing both source environment and endowment: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithRBSXPCCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "RBSHereditaryGrant has no namespace: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end