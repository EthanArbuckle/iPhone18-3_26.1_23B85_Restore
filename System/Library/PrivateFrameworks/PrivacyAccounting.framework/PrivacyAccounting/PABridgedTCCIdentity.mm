@interface PABridgedTCCIdentity
- (BOOL)isEqual:(id)equal;
- (PABridgedTCCIdentity)initWithCoder:(id)coder;
- (PABridgedTCCIdentity)initWithTCCIdentity:(id)identity;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PABridgedTCCIdentity

- (PABridgedTCCIdentity)initWithTCCIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = PABridgedTCCIdentity;
  v6 = [(PABridgedTCCIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, identity);
  }

  return v7;
}

- (PABridgedTCCIdentity)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v18[0] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v7 = [v4 setWithArray:v6];
  v8 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v10 = [v8 setWithArray:{v9, v17[0]}];
  v11 = [coderCopy decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v10 forKey:@"identity"];

  if (!v11)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = tcc_identity_create_from_external_representation();
  if (!v12)
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(PABridgedTCCIdentity *)self initWithTCCIdentity:v12];
  selfCopy = self;
LABEL_6:
  v14 = selfCopy;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  identity = self->_identity;
  coderCopy = coder;
  v5 = tcc_identity_copy_external_representation();
  [coderCopy encodeObject:v5 forKey:@"identity"];
}

- (unint64_t)hash
{
  identity = self->_identity;
  type = tcc_identity_get_type();
  v5 = self->_identity;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  v7 = [v6 hash] - type + 32 * type;

  v8 = self->_identity;
  verifier_type = tcc_identity_get_verifier_type();
  v10 = verifier_type - v7 + 32 * v7;
  if (verifier_type)
  {
    v11 = self->_identity;
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_verifier_code_requirement_string()];
    v10 = [v12 hash] - v10 + 32 * v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(PABridgedTCCIdentity *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = areTCCIdentitiesEqual(self->_identity, equalCopy->_identity);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  identity = self->_identity;
  v3 = tcc_object_copy_description();

  return v3;
}

@end