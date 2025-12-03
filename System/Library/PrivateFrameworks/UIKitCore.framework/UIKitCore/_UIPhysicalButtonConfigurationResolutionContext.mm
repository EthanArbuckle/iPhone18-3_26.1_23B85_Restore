@interface _UIPhysicalButtonConfigurationResolutionContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIPhysicalButtonConfigurationResolutionContext

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal && _NSIsNSObject())
  {
    equalCopy = equal;
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      goto LABEL_16;
    }

    v7 = [(_UIPhysicalButtonConfigurationResolutionContext *)self hash];
    if (v7 != [equalCopy hash])
    {
      goto LABEL_16;
    }

    v8 = equalCopy[1];
    v9 = self->_configurations;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_16:
        v13 = 0;
        goto LABEL_17;
      }

      v12 = [(_UIPhysicalButtonConfigurationSet *)v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v13 = _deferringTokenEqualToToken(self->_configurationToInteractionMap, equalCopy[2]);
LABEL_17:

    return v13;
  }

  return 0;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_configurations];
  v5 = [builder appendObject:self->_configurationToInteractionMap];
  v6 = [builder hash];

  return v6;
}

- (id)description
{
  selfCopy = self;
  if (self)
  {
    v3 = [MEMORY[0x1E698E680] builderWithObject:self];
    v4 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(*(selfCopy + 8));
    v5 = [v3 appendObject:v4 withName:@"configurations"];

    v6 = *(selfCopy + 16);
    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"<%@: %p>", v10, v8];
    }

    else
    {
      v11 = @"(nil)";
    }

    v12 = [v3 appendObject:v11 withName:@"configurationToInteractionMap"];

    selfCopy = [v3 build];
  }

  return selfCopy;
}

- (id)debugDescription
{
  selfCopy = self;
  if (self)
  {
    v3 = [MEMORY[0x1E698E680] builderWithObject:self];
    [v3 setActiveMultilinePrefix:&stru_1EFB14550];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __89___UIPhysicalButtonConfigurationResolutionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v11 = &unk_1E70F35B8;
    v4 = v3;
    v12 = v4;
    v13 = selfCopy;
    v5 = [v4 modifyBody:&v8];
    v6 = v4;

    selfCopy = [v6 build];
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setConfigurations:self->_configurations];
  [v4 setConfigurationToInteractionMap:self->_configurationToInteractionMap];
  return v4;
}

@end