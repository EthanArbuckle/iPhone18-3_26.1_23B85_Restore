@interface LNSystemEntityValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
@end

@implementation LNSystemEntityValueType(ContentItem)

- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 value];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = objc_alloc([a1 wf_objectClass]);
    v18 = [v16 isTransient];
    [v16 identifier];
    v34 = a1;
    v19 = v15;
    v20 = v14;
    v22 = v21 = v13;
    [v16 properties];
    v23 = v35 = a7;
    v24 = [v16 managedAccountIdentifier];
    v25 = [v17 initWithTransient:v18 identifier:v22 properties:v23 managedAccountIdentifier:v24];

    v13 = v21;
    v14 = v20;
    v15 = v19;
    v26 = objc_alloc(MEMORY[0x1E69ACA90]);
    v27 = [v12 valueType];
    v28 = [v26 initWithValue:v25 valueType:v27];

    v36.receiver = v34;
    v36.super_class = &off_1F4B0B638;
    v29 = objc_msgSendSuper2(&v36, sel_wf_contentItemFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_teamIdentifier_disclosureLevel_, v28, v13, v14, v19, v35);
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v32 = [v12 displayRepresentation];
    [v31 setDisplayRepresentation:v32];
  }

  else
  {

    v29 = 0;
  }

  return v29;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E0970] sharedProvider];
  v3 = [a1 identifier];
  v4 = [a1 bundleIdentifier];
  v5 = [v2 entityWithIdentifier:v3 fromBundleIdentifier:v4];

  v6 = [a1 bundleIdentifier];
  v7 = [v5 wf_contentItemClassWithQueryMetadata:0 appBundleIdentifier:v6 displayedAppBundleIdentifier:0];

  if (v7)
  {
    v8 = [a1 identifier];
    v9 = [MEMORY[0x1E69ACA38] wf_placeDescriptorEntityIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = objc_opt_class();
      os_unfair_lock_lock(&wf_contentItemClassWithAppBundleIdentifier__placeDescriptorEntityValueClassRegistrationLock);
      if ((wf_contentItemClassWithAppBundleIdentifier__hasEntityMetadata & 1) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __83__LNSystemEntityValueType_ContentItem__wf_contentItemClassWithAppBundleIdentifier___block_invoke;
        aBlock[3] = &__block_descriptor_40_e14_B32__0_8_16_24lu32l8;
        aBlock[4] = v11;
        v12 = _Block_copy(aBlock);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __83__LNSystemEntityValueType_ContentItem__wf_contentItemClassWithAppBundleIdentifier___block_invoke_2;
        v19[3] = &__block_descriptor_40_e8__16__0_8lu32l8;
        v19[4] = v7;
        v13 = _Block_copy(v19);
        v12[2](v12, v11, sel_entityContentItemClass, v13);

        wf_contentItemClassWithAppBundleIdentifier__hasEntityMetadata = 1;
      }

      os_unfair_lock_unlock(&wf_contentItemClassWithAppBundleIdentifier__placeDescriptorEntityValueClassRegistrationLock);
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }

    v16 = v14;
  }

  else
  {
    v15 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v22 = "[LNSystemEntityValueType(ContentItem) wf_contentItemClassWithAppBundleIdentifier:]";
      v23 = 2112;
      v24 = a1;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Unable to construct entityContentItemClass for value type: %@, entityMetadata: %@", buf, 0x20u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end