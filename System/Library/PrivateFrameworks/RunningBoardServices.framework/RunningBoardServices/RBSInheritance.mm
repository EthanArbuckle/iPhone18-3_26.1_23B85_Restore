@interface RBSInheritance
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSInheritance)init;
- (RBSInheritance)initWithRBSXPCCoder:(id)a3;
- (id)_initWithNamespace:(id)a3 environment:(id)a4 encodedEndowment:(id)a5 originatingIdentifier:(id)a6 attributePath:(unint64_t)a7;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSInheritance

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  environment = @"(none)";
  if (self->_environment)
  {
    environment = self->_environment;
  }

  v7 = @" payload";
  if (!self->_encodedEndowment)
  {
    v7 = &stru_1F01CD8F0;
  }

  v8 = [v3 initWithFormat:@"<%@| environment:%@ name:%@ origID:%@%@ %lu>", v4, environment, self->_endowmentNamespace, self->_originatingIdentifier, v7, self->_encodedEndowmentHash];

  return v8;
}

- (RBSInheritance)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSInheritance.m" lineNumber:41 description:@"cannot call -init on RBSInheritance"];

  return 0;
}

- (id)_initWithNamespace:(id)a3 environment:(id)a4 encodedEndowment:(id)a5 originatingIdentifier:(id)a6 attributePath:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v13)
  {
    [RBSInheritance _initWithNamespace:a2 environment:self encodedEndowment:? originatingIdentifier:? attributePath:?];
  }

  v30.receiver = self;
  v30.super_class = RBSInheritance;
  v17 = [(RBSInheritance *)&v30 init];
  if (v17)
  {
    v18 = [v13 copy];
    endowmentNamespace = v17->_endowmentNamespace;
    v17->_endowmentNamespace = v18;

    v20 = [v14 copy];
    environment = v17->_environment;
    v17->_environment = v20;

    objc_storeStrong(&v17->_encodedEndowment, a5);
    v22 = [v16 copy];
    originatingIdentifier = v17->_originatingIdentifier;
    v17->_originatingIdentifier = v22;

    v17->_originatingAttributePath = a7;
    v24 = [(RBSAssertionIdentifier *)v17->_originatingIdentifier hash];
    v25 = 0xBF58476D1CE4E5B9 * (v17->_originatingAttributePath ^ (v17->_originatingAttributePath >> 30));
    v26 = 0x94D049BB133111EBLL * (v25 ^ (v25 >> 27));
    v27 = [(NSString *)v17->_endowmentNamespace hash];
    v17->_hash = v27 ^ v24 ^ [(NSString *)v17->_environment hash]^ (v26 >> 31) ^ v26;
    v28 = [(OS_xpc_object *)v17->_encodedEndowment description];
    v17->_encodedEndowmentHash = [v28 hash];
  }

  return v17;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  endowmentNamespace = self->_endowmentNamespace;
  v6 = a3;
  [v6 encodeObject:endowmentNamespace forKey:@"namespace"];
  [v6 encodeObject:self->_environment forKey:@"environment"];
  v5 = RBSXPCPackObject(self->_encodedEndowment);
  [v6 encodeXPCObject:v5 forKey:@"encodedEndowment"];

  [v6 encodeObject:self->_originatingIdentifier forKey:@"originatingIdentifier"];
  [v6 encodeUInt64:self->_originatingAttributePath forKey:@"originatingAttributePath"];
}

- (RBSInheritance)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v7 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"encodedEndowment"];
  v8 = RBSXPCUnpackObject(v7);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingIdentifier"];
  v10 = [v4 decodeUInt64ForKey:@"originatingAttributePath"];

  v11 = [(RBSInheritance *)self _initWithNamespace:v5 environment:v6 encodedEndowment:v8 originatingIdentifier:v9 attributePath:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_21;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_20;
  }

  if (self->_hash != v4->_hash)
  {
    goto LABEL_20;
  }

  if (self->_originatingAttributePath != v4->_originatingAttributePath)
  {
    goto LABEL_20;
  }

  if (self->_encodedEndowment)
  {
    if (v4->_encodedEndowment)
    {
      v6 = MEMORY[0x193AD5A20]();
      if (v6 != MEMORY[0x193AD5A20](v4->_encodedEndowment))
      {
        goto LABEL_20;
      }
    }
  }

  originatingIdentifier = self->_originatingIdentifier;
  v8 = v4->_originatingIdentifier;
  if (originatingIdentifier != v8)
  {
    v9 = 0;
    if (!originatingIdentifier || !v8)
    {
      goto LABEL_22;
    }

    if (![(RBSAssertionIdentifier *)originatingIdentifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  environment = self->_environment;
  v11 = v4->_environment;
  if (environment != v11)
  {
    v9 = 0;
    if (!environment || !v11)
    {
      goto LABEL_22;
    }

    if (![(NSString *)environment isEqual:?])
    {
LABEL_20:
      v9 = 0;
      goto LABEL_22;
    }
  }

  endowmentNamespace = self->_endowmentNamespace;
  v13 = v4->_endowmentNamespace;
  if (endowmentNamespace == v13)
  {
LABEL_21:
    v9 = 1;
    goto LABEL_22;
  }

  v9 = 0;
  if (endowmentNamespace && v13)
  {
    v9 = [(NSString *)endowmentNamespace isEqual:?];
  }

LABEL_22:

  return v9;
}

- (void)_initWithNamespace:(uint64_t)a1 environment:(uint64_t)a2 encodedEndowment:originatingIdentifier:attributePath:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSInheritance.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"endowmentNamespace != nil"}];
}

@end