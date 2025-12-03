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
  sharedProvider = [v13 sharedProvider];
  enumerationIdentifier = [self enumerationIdentifier];
  v17 = [sharedProvider enumerationWithIdentifier:enumerationIdentifier fromBundleIdentifier:v11];

  value = [v14 value];

  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    cases = [v17 cases];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __148__LNLinkEnumerationValueType_ContentItem__wf_contentItemFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_teamIdentifier_disclosureLevel___block_invoke;
    v34[3] = &unk_1E837F1B0;
    v20 = value;
    v35 = v20;
    v21 = [cases if_firstObjectPassingTest:v34];

    if (v21)
    {
      v22 = [WFLinkEnumerationCase alloc];
      identifier = [v21 identifier];
      v24 = [(WFLinkEnumerationCase *)v22 initWithIdentifier:identifier];

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

      v30 = [self wf_contentItemClassWithAppBundleIdentifier:v11];
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
  effectiveBundleIdentifiers = [v3 effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];

  v7 = [v3 wf_contentItemClassWithAppBundleIdentifier:bundleIdentifier];

  return v7;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v4 = MEMORY[0x1E69E0970];
  v5 = a3;
  sharedProvider = [v4 sharedProvider];
  enumerationIdentifier = [self enumerationIdentifier];
  v8 = [sharedProvider enumerationWithIdentifier:enumerationIdentifier fromBundleIdentifier:v5];

  v9 = [v8 wf_contentItemClassWithAppBundleIdentifier:v5];

  return v9;
}

@end