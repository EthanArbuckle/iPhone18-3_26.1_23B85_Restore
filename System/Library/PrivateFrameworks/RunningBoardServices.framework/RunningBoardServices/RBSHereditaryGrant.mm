@interface RBSHereditaryGrant
+ (id)grantWithNamespace:(id)namespace endowment:(id)endowment attributes:(id)attributes;
+ (id)grantWithNamespace:(id)namespace sourceEnvironment:(id)environment attributes:(id)attributes;
+ (id)grantWithNamespace:(id)namespace sourceEnvironment:(id)environment endowment:(id)endowment attributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (RBSHereditaryGrant)initWithRBSXPCCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)_initWithNamespace:(void *)namespace sourceEnvironment:(void *)environment endowment:(void *)endowment attributes:;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

+ (id)grantWithNamespace:(id)namespace endowment:(id)endowment attributes:(id)attributes
{
  attributesCopy = attributes;
  endowmentCopy = endowment;
  namespaceCopy = namespace;
  v10 = [[RBSHereditaryGrant alloc] _initWithNamespace:namespaceCopy sourceEnvironment:0 endowment:endowmentCopy attributes:attributesCopy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = RBSHereditaryGrant;
  v11 = 0;
  if ([(RBSAttribute *)&v13 isEqual:equalCopy])
  {
    endowmentNamespace = self->_endowmentNamespace;
    if (endowmentNamespace == equalCopy[1] || [(NSString *)endowmentNamespace isEqual:?])
    {
      sourceEnvironment = self->_sourceEnvironment;
      if (sourceEnvironment == equalCopy[2] || [(NSString *)sourceEnvironment isEqualToString:?])
      {
        encodedEndowment = self->_encodedEndowment;
        v8 = equalCopy[3];
        if (encodedEndowment == v8 || (encodedEndowment ? (v9 = v8 == 0) : (v9 = 1), !v9))
        {
          attributes = self->_attributes;
          if (attributes == equalCopy[4] || [(NSArray *)attributes isEqualToArray:?])
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RBSHereditaryGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_endowmentNamespace forKey:{@"_endowmentNamespace", v6.receiver, v6.super_class}];
  [coderCopy encodeObject:self->_sourceEnvironment forKey:@"_sourceEnvironment"];
  [coderCopy encodeObject:self->_attributes forKey:@"_attributes"];
  v5 = RBSXPCPackObject(self->_encodedEndowment);
  [coderCopy encodeXPCObject:v5 forKey:@"_encodedEndowment"];
}

- (RBSHereditaryGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"_endowmentNamespace"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceEnvironment"];
    v7 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_encodedEndowment"];
    v8 = RBSXPCUnpackObject(v7);

    if (v6 | v8)
    {
      v17.receiver = self;
      v17.super_class = RBSHereditaryGrant;
      v11 = [(RBSAttribute *)&v17 initWithRBSXPCCoder:coderCopy];
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(&v11->_endowmentNamespace, v5);
        objc_storeStrong(&v12->_sourceEnvironment, v6);
        objc_storeStrong(&v12->_encodedEndowment, v8);
        v13 = objc_opt_class();
        v14 = [coderCopy decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"_attributes"];
        attributes = v12->_attributes;
        v12->_attributes = v14;
      }

      self = v12;
      selfCopy = self;
    }

    else
    {
      v9 = rbs_assertion_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(RBSHereditaryGrant *)self initWithRBSXPCCoder:v9];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v6 = rbs_assertion_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(RBSHereditaryGrant *)self initWithRBSXPCCoder:v6];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initWithNamespace:(void *)namespace sourceEnvironment:(void *)environment endowment:(void *)endowment attributes:
{
  v10 = a2;
  namespaceCopy = namespace;
  environmentCopy = environment;
  endowmentCopy = endowment;
  if (self)
  {
    if (!v10)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithNamespace_sourceEnvironment_endowment_attributes_ object:self file:@"RBSHereditaryGrant.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"endowmentNamespace"}];
    }

    if (!(namespaceCopy | environmentCopy))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__initWithNamespace_sourceEnvironment_endowment_attributes_ object:self file:@"RBSHereditaryGrant.m" lineNumber:134 description:@"Missing source environment or endowment"];
    }

    v25.receiver = self;
    v25.super_class = RBSHereditaryGrant;
    v14 = objc_msgSendSuper2(&v25, sel__init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      v15 = [namespaceCopy copy];
      v16 = self[2];
      self[2] = v15;

      v17 = RBSEndowmentEncode(environmentCopy);
      v18 = self[3];
      self[3] = v17;

      v19 = [endowmentCopy copy];
      v20 = self[4];
      self[4] = v19;

      if ((environmentCopy == 0) != (self[3] == 0))
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:sel__initWithNamespace_sourceEnvironment_endowment_attributes_ object:self file:@"RBSHereditaryGrant.m" lineNumber:142 description:{@"endowment encode failed : %@", environmentCopy}];
      }
    }
  }

  return self;
}

+ (id)grantWithNamespace:(id)namespace sourceEnvironment:(id)environment attributes:(id)attributes
{
  attributesCopy = attributes;
  environmentCopy = environment;
  namespaceCopy = namespace;
  v10 = [[RBSHereditaryGrant alloc] _initWithNamespace:namespaceCopy sourceEnvironment:environmentCopy endowment:0 attributes:attributesCopy];

  return v10;
}

+ (id)grantWithNamespace:(id)namespace sourceEnvironment:(id)environment endowment:(id)endowment attributes:(id)attributes
{
  attributesCopy = attributes;
  endowmentCopy = endowment;
  environmentCopy = environment;
  namespaceCopy = namespace;
  v13 = [[RBSHereditaryGrant alloc] _initWithNamespace:namespaceCopy sourceEnvironment:environmentCopy endowment:endowmentCopy attributes:attributesCopy];

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