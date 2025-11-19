@interface LNLinkEnumerationValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemClassWithEnumMetadata:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
@end

@implementation LNLinkEnumerationValueType(ContentItem)

- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:
{
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E69E0970];
  v14 = a3;
  v15 = [v13 sharedProvider];
  v16 = [a1 enumerationIdentifier];
  v17 = [v15 enumerationWithIdentifier:v16 fromBundleIdentifier:v11];

  v18 = [v14 value];

  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = [v17 cases];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __148__LNLinkEnumerationValueType_ContentItem__wf_contentItemFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_teamIdentifier_disclosureLevel___block_invoke;
    v34[3] = &unk_1E837F1B0;
    v20 = v18;
    v35 = v20;
    v21 = [v19 if_firstObjectPassingTest:v34];

    if (v21)
    {
      v22 = [WFLinkEnumerationCase alloc];
      v23 = [v21 identifier];
      v24 = [(WFLinkEnumerationCase *)v22 initWithIdentifier:v23];

      v25 = MEMORY[0x1E6996C90];
      v26 = objc_alloc(MEMORY[0x1E696E720]);
      if (v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = v11;
      }

      v28 = [v26 initWithBundleIdentifier:v27];
      v29 = [v25 locationWithAppDescriptor:v28];

      v30 = [a1 wf_contentItemClassWithAppBundleIdentifier:v11];
      v31 = [MEMORY[0x1E6996D60] configurationWithOrigin:v29 disclosureLevel:a7];
      v32 = [v30 itemWithObject:v24 privacyConfiguration:v31];
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {

    v32 = 0;
  }

  return v32;
}

- (id)wf_contentItemClassWithEnumMetadata:()ContentItem
{
  v3 = a3;
  v4 = [v3 effectiveBundleIdentifiers];
  v5 = [v4 firstObject];
  v6 = [v5 bundleIdentifier];

  v7 = [v3 wf_contentItemClassWithAppBundleIdentifier:v6];

  return v7;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v4 = MEMORY[0x1E69E0970];
  v5 = a3;
  v6 = [v4 sharedProvider];
  v7 = [a1 enumerationIdentifier];
  v8 = [v6 enumerationWithIdentifier:v7 fromBundleIdentifier:v5];

  v9 = [v8 wf_contentItemClassWithAppBundleIdentifier:v5];

  return v9;
}

@end