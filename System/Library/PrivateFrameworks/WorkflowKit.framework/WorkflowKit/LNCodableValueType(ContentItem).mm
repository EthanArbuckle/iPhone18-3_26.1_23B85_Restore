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
  value = [v12 value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = objc_alloc([self wf_objectClass]);
    data = [value data];
    v19 = [v17 initWithData:data];

    v20 = objc_alloc(MEMORY[0x1E69ACA90]);
    valueType = [v12 valueType];
    v22 = [v20 initWithValue:v19 valueType:valueType];

    v28.receiver = self;
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
    displayRepresentation = [v12 displayRepresentation];
    [v25 setDisplayRepresentation:displayRepresentation];
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
  identifier = [self identifier];
  v5 = [identifier stringByReplacingOccurrencesOfString:@"." withString:@"_"];
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
  selfCopy = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__LNCodableValueType_ContentItem__wf_contentItemClass__block_invoke_2;
  v19[3] = &unk_1E8375460;
  v20 = selfCopy;
  v15 = selfCopy;
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
  identifier = [self identifier];
  wf_dateIntervalIdentifier = [MEMORY[0x1E69AC750] wf_dateIntervalIdentifier];
  v4 = [identifier isEqual:wf_dateIntervalIdentifier];

  if (v4)
  {
    goto LABEL_4;
  }

  identifier2 = [self identifier];
  wf_durationIdentifier = [MEMORY[0x1E69AC750] wf_durationIdentifier];
  v7 = [identifier2 isEqual:wf_durationIdentifier];

  if (v7 || ([self identifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69AC750], "wf_personNameComponentsIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
LABEL_4:
    wf_contentItemClass = objc_opt_class();
  }

  else
  {
    wf_contentItemClass = [self wf_contentItemClass];
  }

  return wf_contentItemClass;
}

@end