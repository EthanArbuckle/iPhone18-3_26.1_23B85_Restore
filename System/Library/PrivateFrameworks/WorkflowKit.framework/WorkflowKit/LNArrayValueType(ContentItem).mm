@interface LNArrayValueType(ContentItem)
- (id)teamIdentifierForBundleIdentifier:()ContentItem;
- (id)wf_contentCollectionFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:disclosureLevel:;
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemClassesWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNArrayValueType(ContentItem)

- (id)teamIdentifierForBundleIdentifier:()ContentItem
{
  if (a3)
  {
    v3 = MEMORY[0x1E69635F8];
    v4 = a3;
    v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

    v6 = [v5 teamIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)wf_contentCollectionFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:disclosureLevel:
{
  v10 = a4;
  v11 = a5;
  v12 = [a3 value];
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

  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v10;
  }

  v16 = [a1 teamIdentifierForBundleIdentifier:v15];
  v17 = MEMORY[0x1E6996D40];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __129__LNArrayValueType_ContentItem__wf_contentCollectionFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_disclosureLevel___block_invoke;
  v28 = &unk_1E8375A60;
  v29 = v10;
  v30 = v11;
  v31 = v16;
  v32 = a6;
  v18 = v16;
  v19 = v11;
  v20 = v10;
  v21 = [v14 if_compactMap:&v25];

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  v23 = [v17 collectionWithItems:{v22, v25, v26, v27, v28}];

  return v23;
}

- (id)wf_contentItemClassesWithAppBundleIdentifier:()ContentItem
{
  v4 = a3;
  v5 = [a1 memberValueType];
  v6 = [v5 wf_contentItemClassesWithAppBundleIdentifier:v4];

  return v6;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v4 = a3;
  v5 = [a1 memberValueType];
  v6 = [v5 wf_contentItemClassWithAppBundleIdentifier:v4];

  return v6;
}

@end