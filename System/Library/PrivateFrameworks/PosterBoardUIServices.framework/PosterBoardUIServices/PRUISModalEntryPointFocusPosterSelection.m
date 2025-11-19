@interface PRUISModalEntryPointFocusPosterSelection
- (BOOL)isEqual:(id)a3;
- (PRUISModalEntryPointFocusPosterSelection)initWithActivityUUID:(id)a3 activityIdentifier:(id)a4;
- (PRUISModalEntryPointFocusPosterSelection)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRUISModalEntryPointFocusPosterSelection

- (PRUISModalEntryPointFocusPosterSelection)initWithActivityUUID:(id)a3 activityIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PRUISModalEntryPointFocusPosterSelection;
  v9 = [(PRUISModalEntryPointFocusPosterSelection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityUUID, a3);
    v11 = [v8 copy];
    activityIdentifier = v10->_activityIdentifier;
    v10->_activityIdentifier = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_activityUUID];
  v5 = [v3 appendObject:self->_activityIdentifier];
  v6 = [v3 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  activityUUID = self->_activityUUID;
  activityIdentifier = self->_activityIdentifier;

  return [v4 initWithActivityUUID:activityUUID activityIdentifier:activityIdentifier];
}

- (PRUISModalEntryPointFocusPosterSelection)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityUUID"];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"activityIdentifier"];
    if (v6)
    {
      self = [(PRUISModalEntryPointFocusPosterSelection *)self initWithActivityUUID:v5 activityIdentifier:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  activityUUID = self->_activityUUID;
  v5 = a3;
  [v5 encodeObject:activityUUID forKey:@"activityUUID"];
  [v5 encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
}

@end