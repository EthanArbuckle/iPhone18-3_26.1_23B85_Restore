@interface _UIPhysicalButtonConfigurationResolutionContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIPhysicalButtonConfigurationResolutionContext

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3 && _NSIsNSObject())
  {
    v5 = a3;
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      goto LABEL_16;
    }

    v7 = [(_UIPhysicalButtonConfigurationResolutionContext *)self hash];
    if (v7 != [v5 hash])
    {
      goto LABEL_16;
    }

    v8 = v5[1];
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

    v13 = _deferringTokenEqualToToken(self->_configurationToInteractionMap, v5[2]);
LABEL_17:

    return v13;
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_configurations];
  v5 = [v3 appendObject:self->_configurationToInteractionMap];
  v6 = [v3 hash];

  return v6;
}

- (id)description
{
  v2 = self;
  if (self)
  {
    v3 = [MEMORY[0x1E698E680] builderWithObject:self];
    v4 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(*(v2 + 8));
    v5 = [v3 appendObject:v4 withName:@"configurations"];

    v6 = *(v2 + 16);
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

    v2 = [v3 build];
  }

  return v2;
}

- (id)debugDescription
{
  v2 = self;
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
    v13 = v2;
    v5 = [v4 modifyBody:&v8];
    v6 = v4;

    v2 = [v6 build];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setConfigurations:self->_configurations];
  [v4 setConfigurationToInteractionMap:self->_configurationToInteractionMap];
  return v4;
}

@end