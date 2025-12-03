@interface PRUISModalEntryPointPosterSelection
- (BOOL)isEqual:(id)equal;
- (PRUISModalEntryPointPosterSelection)initWithAllowedConfigurationUUIDs:(id)ds selectedConfigurationUUID:(id)d;
- (PRUISModalEntryPointPosterSelection)initWithBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRUISModalEntryPointPosterSelection

- (PRUISModalEntryPointPosterSelection)initWithAllowedConfigurationUUIDs:(id)ds selectedConfigurationUUID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PRUISModalEntryPointPosterSelection;
  v8 = [(PRUISModalEntryPointPosterSelection *)&v12 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    allowedConfigurationUUIDs = v8->_allowedConfigurationUUIDs;
    v8->_allowedConfigurationUUIDs = v9;

    objc_storeStrong(&v8->_selectedConfigurationUUID, d);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_allowedConfigurationUUIDs];
  v5 = [builder appendObject:self->_selectedConfigurationUUID];
  v6 = [builder hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  selectedConfigurationUUID = self->_selectedConfigurationUUID;

  return [v4 initWithAllowedConfigurationUUIDs:allowedConfigurationUUIDs selectedConfigurationUUID:selectedConfigurationUUID];
}

- (PRUISModalEntryPointPosterSelection)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"allowedConfigurationUUIDs"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedConfigurationUUID"];

  v8 = [(PRUISModalEntryPointPosterSelection *)self initWithAllowedConfigurationUUIDs:v6 selectedConfigurationUUID:v7];
  return v8;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  coderCopy = coder;
  [coderCopy encodeObject:allowedConfigurationUUIDs forKey:@"allowedConfigurationUUIDs"];
  [coderCopy encodeObject:self->_selectedConfigurationUUID forKey:@"selectedConfigurationUUID"];
}

@end