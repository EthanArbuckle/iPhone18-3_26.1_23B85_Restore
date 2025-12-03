@interface LNEntityValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemClassWithEntityMetadata:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
@end

@implementation LNEntityValueType(ContentItem)

- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:
{
  v17.receiver = self;
  v17.super_class = &off_1F4B060F8;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v17, sel_wf_contentItemFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_teamIdentifier_disclosureLevel_, v11, a4, a5, a6, a7);
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  displayRepresentation = [v11 displayRepresentation];

  [v14 setDisplayRepresentation:displayRepresentation];

  return v12;
}

- (id)wf_contentItemClassWithEntityMetadata:()ContentItem
{
  v4 = a3;
  effectiveBundleIdentifiers = [v4 effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];

  mEMORY[0x1E69E0970] = [MEMORY[0x1E69E0970] sharedProvider];
  identifier = [self identifier];
  v10 = [mEMORY[0x1E69E0970] defaultQueryForEntityIdentifier:identifier fromBundleIdentifier:bundleIdentifier];

  attributionBundleIdentifier = [v4 attributionBundleIdentifier];
  shortcutsActionMetadata = [v4 shortcutsActionMetadata];

  if (shortcutsActionMetadata)
  {
    shortcutsActionMetadata2 = [v4 shortcutsActionMetadata];
    v14 = [shortcutsActionMetadata2 attributionBundleIdentifierWithDefaultValue:attributionBundleIdentifier];

    attributionBundleIdentifier = v14;
  }

  v15 = [v4 wf_contentItemClassWithQueryMetadata:v10 appBundleIdentifier:bundleIdentifier displayedAppBundleIdentifier:attributionBundleIdentifier];

  return v15;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v4 = a3;
  mEMORY[0x1E69E0970] = [MEMORY[0x1E69E0970] sharedProvider];
  identifier = [self identifier];
  v7 = [mEMORY[0x1E69E0970] entityWithIdentifier:identifier fromBundleIdentifier:v4];

  mEMORY[0x1E69E0970]2 = [MEMORY[0x1E69E0970] sharedProvider];
  identifier2 = [self identifier];
  v10 = [mEMORY[0x1E69E0970]2 defaultQueryForEntityIdentifier:identifier2 fromBundleIdentifier:v4];

  attributionBundleIdentifier = [v7 attributionBundleIdentifier];
  shortcutsActionMetadata = [v7 shortcutsActionMetadata];

  if (shortcutsActionMetadata)
  {
    shortcutsActionMetadata2 = [v7 shortcutsActionMetadata];
    v14 = [shortcutsActionMetadata2 attributionBundleIdentifierWithDefaultValue:attributionBundleIdentifier];

    attributionBundleIdentifier = v14;
  }

  v15 = [v7 wf_contentItemClassWithQueryMetadata:v10 appBundleIdentifier:v4 displayedAppBundleIdentifier:attributionBundleIdentifier];

  return v15;
}

@end