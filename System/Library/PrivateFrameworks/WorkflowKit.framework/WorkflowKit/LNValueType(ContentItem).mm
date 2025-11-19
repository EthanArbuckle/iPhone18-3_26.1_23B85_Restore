@interface LNValueType(ContentItem)
- (id)wf_contentCollectionFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:disclosureLevel:;
- (id)wf_contentItemClassesWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
- (uint64_t)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNValueType(ContentItem)

- (id)wf_contentCollectionFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:disclosureLevel:
{
  v6 = [a1 wf_contentItemFromLinkValue:a3 appBundleIdentifier:a4 displayedBundleIdentifier:a5 teamIdentifier:0 disclosureLevel:a6];
  v7 = MEMORY[0x1E6996D40];
  v8 = [MEMORY[0x1E695DEC8] if_arrayWithObjectIfNonNil:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [v7 collectionWithItems:v10];

  return v11;
}

- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = MEMORY[0x1E696E720];
  v15 = a6;
  v16 = a5;
  v17 = [v14 alloc];
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v13;
  }

  v19 = [v17 initWithLocalizedName:0 bundleIdentifier:v18 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:v15 supportedIntents:0 bundleURL:0 documentTypes:0];

  v20 = [v12 value];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = [v22 managedAccountIdentifier];

  if ([v23 length])
  {
    [MEMORY[0x1E6996C68] locationWithAccountIdentifier:v23 appDescriptor:v19];
  }

  else
  {
    [MEMORY[0x1E6996C90] locationWithAppDescriptor:v19];
  }
  v24 = ;
  v25 = [a1 wf_contentItemClassesWithAppBundleIdentifier:v13];
  v26 = v25;
  if (!v25 || ![v25 count])
  {
    v27 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v38 = "[LNValueType(ContentItem) wf_contentItemFromLinkValue:appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:]";
      v39 = 2112;
      v40 = v13;
      v28 = "%s Couldn't find a Link content item class for bundleIdentifier: %@";
      v29 = v27;
      v30 = 22;
      goto LABEL_19;
    }

LABEL_20:

    v31 = 0;
    goto LABEL_21;
  }

  if ([v26 count] >= 2)
  {
    v27 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v38 = "[LNValueType(ContentItem) wf_contentItemFromLinkValue:appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:]";
      v39 = 2112;
      v40 = v26;
      v41 = 2112;
      v42 = v13;
      v28 = "%s Can't handle ambiguous content item classes %@ for bundleIdentifier: %@";
      v29 = v27;
      v30 = 32;
LABEL_19:
      _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_FAULT, v28, buf, v30);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v34 = [v26 firstObject];
  v35 = [v12 value];
  v36 = [MEMORY[0x1E6996D60] configurationWithOrigin:v24 disclosureLevel:a7];
  v31 = [v34 itemWithObject:v35 privacyConfiguration:v36];

LABEL_21:
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)wf_contentItemClassesWithAppBundleIdentifier:()ContentItem
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 wf_contentItemClassWithAppBundleIdentifier:?];
  if (v1)
  {
    v5[0] = v1;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (uint64_t)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(a2);
    v9 = 136315650;
    v10 = "[LNValueType(ContentItem) wf_contentItemClassWithAppBundleIdentifier:]";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_FAULT, "%s [%@ %@] must be overridden", &v9, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

@end