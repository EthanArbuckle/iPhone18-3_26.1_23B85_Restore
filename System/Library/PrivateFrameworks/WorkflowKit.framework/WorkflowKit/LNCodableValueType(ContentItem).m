@interface LNCodableValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
- (id)wf_contentItemFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:teamIdentifier:disclosureLevel:;
- (objc_class)wf_contentItemClass;
@end

@implementation LNCodableValueType(ContentItem)

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
    v18 = [v16 data];
    v19 = [v17 initWithData:v18];

    v20 = objc_alloc(MEMORY[0x1E69ACA90]);
    v21 = [v12 valueType];
    v22 = [v20 initWithValue:v19 valueType:v21];

    v28.receiver = a1;
    v28.super_class = &off_1F4AECC20;
    v23 = objc_msgSendSuper2(&v28, sel_wf_contentItemFromLinkValue_appBundleIdentifier_displayedBundleIdentifier_teamIdentifier_disclosureLevel_, v22, v13, v14, v15, a7);
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [v12 displayRepresentation];
    [v25 setDisplayRepresentation:v26];
  }

  else
  {

    v23 = 0;
  }

  return v23;
}

- (objc_class)wf_contentItemClass
{
  v22[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v22[0] = v3;
  v4 = [a1 identifier];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v22[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

  v7 = [v6 componentsJoinedByString:@"_"];
  v8 = NSClassFromString(v7);
  if (v8)
  {
    v9 = v8;
LABEL_3:
    v10 = v9;
    goto LABEL_6;
  }

  os_unfair_lock_lock(&classRegistrationLock_9271);
  ClassPair = objc_allocateClassPair(v2, [(NSString *)v7 cStringUsingEncoding:4], 0);
  if (!ClassPair)
  {
    os_unfair_lock_unlock(&classRegistrationLock_9271);
    v9 = NSClassFromString(v7);
    goto LABEL_3;
  }

  v12 = ClassPair;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__LNCodableValueType_ContentItem__wf_contentItemClass__block_invoke;
  aBlock[3] = &__block_descriptor_40_e14_B32__0_8_16_24lu32l8;
  aBlock[4] = v2;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__LNCodableValueType_ContentItem__wf_contentItemClass__block_invoke_2;
  v19[3] = &unk_1E8375460;
  v20 = v14;
  v15 = v14;
  v16 = _Block_copy(v19);
  v13[2](v13, v12, sel_valueType, v16);

  objc_registerClassPair(v12);
  os_unfair_lock_unlock(&classRegistrationLock_9271);
  v10 = v12;

LABEL_6:
  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v2 = [a1 identifier];
  v3 = [MEMORY[0x1E69AC750] wf_dateIntervalIdentifier];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [a1 identifier];
  v6 = [MEMORY[0x1E69AC750] wf_durationIdentifier];
  v7 = [v5 isEqual:v6];

  if (v7 || ([a1 identifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69AC750], "wf_personNameComponentsIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
LABEL_4:
    v11 = objc_opt_class();
  }

  else
  {
    v11 = [a1 wf_contentItemClass];
  }

  return v11;
}

@end