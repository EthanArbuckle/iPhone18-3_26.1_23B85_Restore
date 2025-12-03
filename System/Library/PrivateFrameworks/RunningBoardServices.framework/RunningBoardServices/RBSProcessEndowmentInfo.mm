@interface RBSProcessEndowmentInfo
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSProcessEndowmentInfo)initWithRBSXPCCoder:(id)coder;
- (id)_initWithNamespace:(id)namespace environment:(id)environment encodedEndowment:(id)endowment;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessEndowmentInfo

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  v6 = @"payload:";
  if (!self->_encodedEndowment)
  {
    v6 = &stru_1F01CD8F0;
  }

  v7 = [v3 initWithFormat:@"<%@| namespace:%@ env:%@ %@ %lu>", v4, self->_endowmentNamespace, self->_environment, v6, self->_encodedEndowmentHash];

  return v7;
}

- (id)_initWithNamespace:(id)namespace environment:(id)environment encodedEndowment:(id)endowment
{
  namespaceCopy = namespace;
  environmentCopy = environment;
  endowmentCopy = endowment;
  if (!namespaceCopy)
  {
    v11 = rbs_state_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [RBSProcessEndowmentInfo _initWithNamespace:v11 environment:? encodedEndowment:?];
    }
  }

  v20.receiver = self;
  v20.super_class = RBSProcessEndowmentInfo;
  v12 = [(RBSProcessEndowmentInfo *)&v20 init];
  if (v12)
  {
    v13 = [namespaceCopy copy];
    endowmentNamespace = v12->_endowmentNamespace;
    v12->_endowmentNamespace = v13;

    v15 = [environmentCopy copy];
    environment = v12->_environment;
    v12->_environment = v15;

    objc_storeStrong(&v12->_encodedEndowment, endowment);
    v17 = [(OS_xpc_object *)v12->_encodedEndowment description];
    v12->_encodedEndowmentHash = [v17 hash];

    v18 = [(NSString *)v12->_endowmentNamespace hash];
    v12->_hash = [(NSString *)v12->_environment hash]^ v18;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_17;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_16;
  }

  if (self->_hash != equalCopy->_hash)
  {
    goto LABEL_16;
  }

  if (self->_encodedEndowment)
  {
    if (equalCopy->_encodedEndowment)
    {
      v6 = MEMORY[0x193AD5A20]();
      if (v6 != MEMORY[0x193AD5A20](equalCopy->_encodedEndowment) || !xpc_equal(self->_encodedEndowment, equalCopy->_encodedEndowment))
      {
        goto LABEL_16;
      }
    }
  }

  environment = self->_environment;
  v8 = equalCopy->_environment;
  if (environment != v8)
  {
    v9 = 0;
    if (!environment || !v8)
    {
      goto LABEL_18;
    }

    if (![(NSString *)environment isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_18;
    }
  }

  endowmentNamespace = self->_endowmentNamespace;
  v11 = equalCopy->_endowmentNamespace;
  if (endowmentNamespace == v11)
  {
LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

  v9 = 0;
  if (endowmentNamespace && v11)
  {
    v9 = [(NSString *)endowmentNamespace isEqual:?];
  }

LABEL_18:

  return v9;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  endowmentNamespace = self->_endowmentNamespace;
  coderCopy = coder;
  [coderCopy encodeObject:endowmentNamespace forKey:@"namespace"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  v6 = RBSXPCPackObject(self->_encodedEndowment);
  [coderCopy encodeXPCObject:v6 forKey:@"encodedEndowment"];
}

- (RBSProcessEndowmentInfo)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v7 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"encodedEndowment"];

  v8 = RBSXPCUnpackObject(v7);
  v9 = [(RBSProcessEndowmentInfo *)self _initWithNamespace:v5 environment:v6 encodedEndowment:v8];

  return v9;
}

@end