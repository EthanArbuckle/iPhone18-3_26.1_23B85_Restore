@interface PRUISModalEntryPointPosterSelection
- (BOOL)isEqual:(id)a3;
- (PRUISModalEntryPointPosterSelection)initWithAllowedConfigurationUUIDs:(id)a3 selectedConfigurationUUID:(id)a4;
- (PRUISModalEntryPointPosterSelection)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRUISModalEntryPointPosterSelection

- (PRUISModalEntryPointPosterSelection)initWithAllowedConfigurationUUIDs:(id)a3 selectedConfigurationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PRUISModalEntryPointPosterSelection;
  v8 = [(PRUISModalEntryPointPosterSelection *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    allowedConfigurationUUIDs = v8->_allowedConfigurationUUIDs;
    v8->_allowedConfigurationUUIDs = v9;

    objc_storeStrong(&v8->_selectedConfigurationUUID, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__PRUISModalEntryPointPosterSelection_isEqual___block_invoke;
  v19[3] = &unk_1E83A8C48;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:allowedConfigurationUUIDs counterpart:v19];
  selectedConfigurationUUID = self->_selectedConfigurationUUID;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __47__PRUISModalEntryPointPosterSelection_isEqual___block_invoke_2;
  v17 = &unk_1E83A70C0;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:selectedConfigurationUUID counterpart:&v14];
  LOBYTE(selectedConfigurationUUID) = [v5 isEqual];

  return selectedConfigurationUUID;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_allowedConfigurationUUIDs];
  v5 = [v3 appendObject:self->_selectedConfigurationUUID];
  v6 = [v3 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  selectedConfigurationUUID = self->_selectedConfigurationUUID;

  return [v4 initWithAllowedConfigurationUUIDs:allowedConfigurationUUIDs selectedConfigurationUUID:selectedConfigurationUUID];
}

- (PRUISModalEntryPointPosterSelection)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"allowedConfigurationUUIDs"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedConfigurationUUID"];

  v8 = [(PRUISModalEntryPointPosterSelection *)self initWithAllowedConfigurationUUIDs:v6 selectedConfigurationUUID:v7];
  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  v5 = a3;
  [v5 encodeObject:allowedConfigurationUUIDs forKey:@"allowedConfigurationUUIDs"];
  [v5 encodeObject:self->_selectedConfigurationUUID forKey:@"selectedConfigurationUUID"];
}

@end