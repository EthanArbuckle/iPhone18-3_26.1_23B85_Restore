@interface RBSInheritance
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSInheritance)init;
- (RBSInheritance)initWithRBSXPCCoder:(id)coder;
- (id)_initWithNamespace:(id)namespace environment:(id)environment encodedEndowment:(id)endowment originatingIdentifier:(id)identifier attributePath:(unint64_t)path;
- (void)encodeWithRBSXPCCoder:(id)coder;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSInheritance.m" lineNumber:41 description:@"cannot call -init on RBSInheritance"];

  return 0;
}

- (id)_initWithNamespace:(id)namespace environment:(id)environment encodedEndowment:(id)endowment originatingIdentifier:(id)identifier attributePath:(unint64_t)path
{
  namespaceCopy = namespace;
  environmentCopy = environment;
  endowmentCopy = endowment;
  identifierCopy = identifier;
  if (!namespaceCopy)
  {
    [RBSInheritance _initWithNamespace:a2 environment:self encodedEndowment:? originatingIdentifier:? attributePath:?];
  }

  v30.receiver = self;
  v30.super_class = RBSInheritance;
  v17 = [(RBSInheritance *)&v30 init];
  if (v17)
  {
    v18 = [namespaceCopy copy];
    endowmentNamespace = v17->_endowmentNamespace;
    v17->_endowmentNamespace = v18;

    v20 = [environmentCopy copy];
    environment = v17->_environment;
    v17->_environment = v20;

    objc_storeStrong(&v17->_encodedEndowment, endowment);
    v22 = [identifierCopy copy];
    originatingIdentifier = v17->_originatingIdentifier;
    v17->_originatingIdentifier = v22;

    v17->_originatingAttributePath = path;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  endowmentNamespace = self->_endowmentNamespace;
  coderCopy = coder;
  [coderCopy encodeObject:endowmentNamespace forKey:@"namespace"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  v5 = RBSXPCPackObject(self->_encodedEndowment);
  [coderCopy encodeXPCObject:v5 forKey:@"encodedEndowment"];

  [coderCopy encodeObject:self->_originatingIdentifier forKey:@"originatingIdentifier"];
  [coderCopy encodeUInt64:self->_originatingAttributePath forKey:@"originatingAttributePath"];
}

- (RBSInheritance)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v7 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"encodedEndowment"];
  v8 = RBSXPCUnpackObject(v7);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingIdentifier"];
  v10 = [coderCopy decodeUInt64ForKey:@"originatingAttributePath"];

  v11 = [(RBSInheritance *)self _initWithNamespace:v5 environment:v6 encodedEndowment:v8 originatingIdentifier:v9 attributePath:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_21;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_20;
  }

  if (self->_hash != equalCopy->_hash)
  {
    goto LABEL_20;
  }

  if (self->_originatingAttributePath != equalCopy->_originatingAttributePath)
  {
    goto LABEL_20;
  }

  if (self->_encodedEndowment)
  {
    if (equalCopy->_encodedEndowment)
    {
      v6 = MEMORY[0x193AD5A20]();
      if (v6 != MEMORY[0x193AD5A20](equalCopy->_encodedEndowment))
      {
        goto LABEL_20;
      }
    }
  }

  originatingIdentifier = self->_originatingIdentifier;
  v8 = equalCopy->_originatingIdentifier;
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
  v11 = equalCopy->_environment;
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
  v13 = equalCopy->_endowmentNamespace;
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