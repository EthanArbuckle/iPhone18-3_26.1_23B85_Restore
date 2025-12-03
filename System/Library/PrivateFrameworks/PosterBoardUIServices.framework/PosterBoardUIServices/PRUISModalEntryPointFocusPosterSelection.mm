@interface PRUISModalEntryPointFocusPosterSelection
- (BOOL)isEqual:(id)equal;
- (PRUISModalEntryPointFocusPosterSelection)initWithActivityUUID:(id)d activityIdentifier:(id)identifier;
- (PRUISModalEntryPointFocusPosterSelection)initWithBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRUISModalEntryPointFocusPosterSelection

- (PRUISModalEntryPointFocusPosterSelection)initWithActivityUUID:(id)d activityIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = PRUISModalEntryPointFocusPosterSelection;
  v9 = [(PRUISModalEntryPointFocusPosterSelection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityUUID, d);
    v11 = [identifierCopy copy];
    activityIdentifier = v10->_activityIdentifier;
    v10->_activityIdentifier = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  activityUUID = self->_activityUUID;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PRUISModalEntryPointFocusPosterSelection_isEqual___block_invoke;
  v19[3] = &unk_1E83A70C0;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:activityUUID counterpart:v19];
  activityIdentifier = self->_activityIdentifier;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __52__PRUISModalEntryPointFocusPosterSelection_isEqual___block_invoke_2;
  v17 = &unk_1E83A8C20;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:activityIdentifier counterpart:&v14];
  LOBYTE(activityIdentifier) = [v5 isEqual];

  return activityIdentifier;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_activityUUID];
  v5 = [builder appendObject:self->_activityIdentifier];
  v6 = [builder hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  activityUUID = self->_activityUUID;
  activityIdentifier = self->_activityIdentifier;

  return [v4 initWithActivityUUID:activityUUID activityIdentifier:activityIdentifier];
}

- (PRUISModalEntryPointFocusPosterSelection)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityUUID"];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"activityIdentifier"];
    if (v6)
    {
      self = [(PRUISModalEntryPointFocusPosterSelection *)self initWithActivityUUID:v5 activityIdentifier:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  activityUUID = self->_activityUUID;
  coderCopy = coder;
  [coderCopy encodeObject:activityUUID forKey:@"activityUUID"];
  [coderCopy encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
}

@end