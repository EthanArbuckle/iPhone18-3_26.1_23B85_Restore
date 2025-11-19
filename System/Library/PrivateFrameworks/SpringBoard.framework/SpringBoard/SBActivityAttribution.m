@interface SBActivityAttribution
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSystemService;
- (NSString)activeEntityBundleIdentifier;
- (NSString)bundleIdentifier;
- (NSString)displayName;
- (NSString)executableDisplayName;
- (NSString)website;
- (SBActivityAttribution)initWithSTActivityAttribution:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation SBActivityAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_attribution];
  v5 = [v3 hash];

  return v5;
}

- (NSString)bundleIdentifier
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)activeEntityBundleIdentifier
{
  v2 = [(STActivityAttribution *)self->_attribution activeEntity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBActivityAttribution *)self displayName];
  v5 = [v3 appendObject:v4 withName:@"displayName"];

  v6 = [(SBActivityAttribution *)self bundleIdentifier];
  v7 = [v3 appendObject:v6 withName:@"bundleIdentifier"];

  v8 = [(SBActivityAttribution *)self website];
  v9 = [v3 appendBool:objc_msgSend(v8 withName:{"length") != 0, @"website-non-nil"}];

  v10 = [v3 appendBool:-[SBActivityAttribution isSystemService](self withName:{"isSystemService"), @"isSystemService"}];

  return v3;
}

- (NSString)displayName
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 localizedDisplayName];

  return v3;
}

- (NSString)website
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 website];

  return v3;
}

- (BOOL)isSystemService
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 isSystemService];

  return v3;
}

- (NSString)executableDisplayName
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 localizedExecutableDisplayName];

  return v3;
}

- (SBActivityAttribution)initWithSTActivityAttribution:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBActivityAttribution;
  v5 = [(SBActivityAttribution *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];
    attribution = v5->_attribution;
    v5->_attribution = v6;

    v8 = [v4 attributedEntity];
    v9 = [v8 bundlePath];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [v8 executablePath];
      if (!v10)
      {
        v12 = [v8 localizedDisplayName];
        goto LABEL_11;
      }
    }

    v11 = BSPathExistsOnSystemPartition();
    v12 = [v8 localizedDisplayName];
    if (v11)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"SYSTEM_ATTRIBUTION_STRING" value:&stru_283094718 table:@"SystemStatusServer"];
      if ([v12 isEqualToString:v14])
      {
      }

      else
      {
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"UNKNOWN_ATTRIBUTION_STRING" value:&stru_283094718 table:@"SystemStatusServer"];
        v17 = [v12 isEqualToString:v16];

        if ((v17 & 1) == 0)
        {
          v18 = v12;
          v12 = v18;
LABEL_12:
          attributionGroup = v5->_attributionGroup;
          v5->_attributionGroup = v18;

          goto LABEL_13;
        }
      }
    }

LABEL_11:
    v18 = [v8 bundleIdentifier];
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(STActivityAttribution *)self->_attribution attributedEntity];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  attribution = self->_attribution;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__SBActivityAttribution_isEqual___block_invoke;
  v10[3] = &unk_2783ACDB8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:attribution counterpart:v10];
  LOBYTE(attribution) = [v5 isEqual];

  return attribution;
}

- (id)succinctDescription
{
  v2 = [(SBActivityAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBActivityAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBActivityAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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