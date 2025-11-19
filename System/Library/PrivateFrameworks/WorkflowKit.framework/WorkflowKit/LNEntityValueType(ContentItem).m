@interface LNEntityValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemClassWithEntityMetadata:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
@end

@implementation LNEntityValueType(ContentItem)

- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:
{
  v17.receiver = a1;
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
  v15 = [v11 displayRepresentation];

  [v14 setDisplayRepresentation:v15];

  return v12;
}

- (id)wf_contentItemClassWithEntityMetadata:()ContentItem
{
  v4 = a3;
  v5 = [v4 effectiveBundleIdentifiers];
  v6 = [v5 firstObject];
  v7 = [v6 bundleIdentifier];

  v8 = [MEMORY[0x1E69E0970] sharedProvider];
  v9 = [a1 identifier];
  v10 = [v8 defaultQueryForEntityIdentifier:v9 fromBundleIdentifier:v7];

  v11 = [v4 attributionBundleIdentifier];
  v12 = [v4 shortcutsActionMetadata];

  if (v12)
  {
    v13 = [v4 shortcutsActionMetadata];
    v14 = [v13 attributionBundleIdentifierWithDefaultValue:v11];

    v11 = v14;
  }

  v15 = [v4 wf_contentItemClassWithQueryMetadata:v10 appBundleIdentifier:v7 displayedAppBundleIdentifier:v11];

  return v15;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E0970] sharedProvider];
  v6 = [a1 identifier];
  v7 = [v5 entityWithIdentifier:v6 fromBundleIdentifier:v4];

  v8 = [MEMORY[0x1E69E0970] sharedProvider];
  v9 = [a1 identifier];
  v10 = [v8 defaultQueryForEntityIdentifier:v9 fromBundleIdentifier:v4];

  v11 = [v7 attributionBundleIdentifier];
  v12 = [v7 shortcutsActionMetadata];

  if (v12)
  {
    v13 = [v7 shortcutsActionMetadata];
    v14 = [v13 attributionBundleIdentifierWithDefaultValue:v11];

    v11 = v14;
  }

  v15 = [v7 wf_contentItemClassWithQueryMetadata:v10 appBundleIdentifier:v4 displayedAppBundleIdentifier:v11];

  return v15;
}

@end