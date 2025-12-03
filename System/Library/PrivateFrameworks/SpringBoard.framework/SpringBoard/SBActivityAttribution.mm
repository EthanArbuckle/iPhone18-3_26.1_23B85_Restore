@interface SBActivityAttribution
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSystemService;
- (NSString)activeEntityBundleIdentifier;
- (NSString)bundleIdentifier;
- (NSString)displayName;
- (NSString)executableDisplayName;
- (NSString)website;
- (SBActivityAttribution)initWithSTActivityAttribution:(id)attribution;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation SBActivityAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_attribution];
  v5 = [builder hash];

  return v5;
}

- (NSString)bundleIdentifier
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  bundleIdentifier = [attributedEntity bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)activeEntityBundleIdentifier
{
  activeEntity = [(STActivityAttribution *)self->_attribution activeEntity];
  bundleIdentifier = [activeEntity bundleIdentifier];

  return bundleIdentifier;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  displayName = [(SBActivityAttribution *)self displayName];
  v5 = [v3 appendObject:displayName withName:@"displayName"];

  bundleIdentifier = [(SBActivityAttribution *)self bundleIdentifier];
  v7 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  website = [(SBActivityAttribution *)self website];
  v9 = [v3 appendBool:objc_msgSend(website withName:{"length") != 0, @"website-non-nil"}];

  v10 = [v3 appendBool:-[SBActivityAttribution isSystemService](self withName:{"isSystemService"), @"isSystemService"}];

  return v3;
}

- (NSString)displayName
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  localizedDisplayName = [attributedEntity localizedDisplayName];

  return localizedDisplayName;
}

- (NSString)website
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  website = [attributedEntity website];

  return website;
}

- (BOOL)isSystemService
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  isSystemService = [attributedEntity isSystemService];

  return isSystemService;
}

- (NSString)executableDisplayName
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  localizedExecutableDisplayName = [attributedEntity localizedExecutableDisplayName];

  return localizedExecutableDisplayName;
}

- (SBActivityAttribution)initWithSTActivityAttribution:(id)attribution
{
  attributionCopy = attribution;
  v21.receiver = self;
  v21.super_class = SBActivityAttribution;
  v5 = [(SBActivityAttribution *)&v21 init];
  if (v5)
  {
    v6 = [attributionCopy copy];
    attribution = v5->_attribution;
    v5->_attribution = v6;

    attributedEntity = [attributionCopy attributedEntity];
    bundlePath = [attributedEntity bundlePath];
    if (bundlePath)
    {
      executablePath = bundlePath;
    }

    else
    {
      executablePath = [attributedEntity executablePath];
      if (!executablePath)
      {
        localizedDisplayName = [attributedEntity localizedDisplayName];
        goto LABEL_11;
      }
    }

    v11 = BSPathExistsOnSystemPartition();
    localizedDisplayName = [attributedEntity localizedDisplayName];
    if (v11)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"SYSTEM_ATTRIBUTION_STRING" value:&stru_283094718 table:@"SystemStatusServer"];
      if ([localizedDisplayName isEqualToString:v14])
      {
      }

      else
      {
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"UNKNOWN_ATTRIBUTION_STRING" value:&stru_283094718 table:@"SystemStatusServer"];
        v17 = [localizedDisplayName isEqualToString:v16];

        if ((v17 & 1) == 0)
        {
          bundleIdentifier = localizedDisplayName;
          localizedDisplayName = bundleIdentifier;
LABEL_12:
          attributionGroup = v5->_attributionGroup;
          v5->_attributionGroup = bundleIdentifier;

          goto LABEL_13;
        }
      }
    }

LABEL_11:
    bundleIdentifier = [attributedEntity bundleIdentifier];
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  if (attributedEntity)
  {
    v6 = attributedEntity;
    [attributedEntity auditToken];
    attributedEntity = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  attribution = self->_attribution;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__SBActivityAttribution_isEqual___block_invoke;
  v10[3] = &unk_2783ACDB8;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:attribution counterpart:v10];
  LOBYTE(attribution) = [v5 isEqual];

  return attribution;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBActivityAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBActivityAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBActivityAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

id __63__SBActivityAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayName];
  v4 = [v2 appendObject:v3 withName:@"displayName"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleIdentifier];
  v7 = [v5 appendObject:v6 withName:@"bundleIdentifier"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) website];
  v10 = [v8 appendObject:v9 withName:@"website"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSystemService"), @"isSystemService"}];
}

@end