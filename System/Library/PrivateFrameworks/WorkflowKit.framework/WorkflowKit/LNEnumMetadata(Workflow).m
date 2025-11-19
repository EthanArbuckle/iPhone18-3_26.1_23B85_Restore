@interface LNEnumMetadata(Workflow)
- (id)wf_contentItemClassWithAppBundleIdentifier:()Workflow;
- (id)wf_contentItemWithAppBundleIdentifier:()Workflow enumCaseIdentifier:;
- (objc_class)wf_contentItemClassWithAppBundleIdentifier:()Workflow superclass:;
@end

@implementation LNEnumMetadata(Workflow)

- (id)wf_contentItemWithAppBundleIdentifier:()Workflow enumCaseIdentifier:
{
  v6 = a4;
  v7 = [a1 wf_contentItemClassWithAppBundleIdentifier:a3];
  v8 = [[WFLinkEnumerationCase alloc] initWithIdentifier:v6];

  v9 = [v7 itemWithObject:v8];

  return v9;
}

- (objc_class)wf_contentItemClassWithAppBundleIdentifier:()Workflow superclass:
{
  v34[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = NSStringFromClass(a4);
  v34[0] = v7;
  v34[1] = v6;
  v8 = [a1 identifier];
  v34[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];

  v10 = [v9 componentsJoinedByString:@"_"];
  v11 = NSClassFromString(v10);
  if (v11)
  {
    v12 = v11;
LABEL_3:
    v13 = v12;
    goto LABEL_6;
  }

  os_unfair_lock_lock(&classRegistrationLock_72596);
  ClassPair = objc_allocateClassPair(a4, [(NSString *)v10 cStringUsingEncoding:4], 0);
  if (!ClassPair)
  {
    os_unfair_lock_unlock(&classRegistrationLock_72596);
    v12 = NSClassFromString(v10);
    goto LABEL_3;
  }

  v15 = ClassPair;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__LNEnumMetadata_Workflow__wf_contentItemClassWithAppBundleIdentifier_superclass___block_invoke;
  aBlock[3] = &__block_descriptor_40_e14_B32__0_8_16_24lu32l8;
  aBlock[4] = a4;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __82__LNEnumMetadata_Workflow__wf_contentItemClassWithAppBundleIdentifier_superclass___block_invoke_2;
  v31[3] = &unk_1E837F738;
  v32 = v17;
  v18 = v17;
  v19 = _Block_copy(v31);
  v16[2](v16, v15, sel_enumMetadata, v19);

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __82__LNEnumMetadata_Workflow__wf_contentItemClassWithAppBundleIdentifier_superclass___block_invoke_3;
  v29 = &unk_1E837F760;
  v20 = v6;
  v30 = v20;
  v21 = _Block_copy(&v26);
  v16[2](v16, v15, sel_appBundleIdentifier, v21);

  v22 = MEMORY[0x1E69AC800];
  v23 = [v18 identifier];
  [v22 wf_addDescriptionMethodsToClass:v15 withEntityType:v23 appBundleIdentifier:v20];

  objc_registerClassPair(v15);
  os_unfair_lock_unlock(&classRegistrationLock_72596);
  v13 = v15;

LABEL_6:
  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)wf_contentItemClassWithAppBundleIdentifier:()Workflow
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"LNEnumMetadata+Workflow.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];
  }

  v6 = [a1 wf_contentItemClassWithAppBundleIdentifier:v5 superclass:objc_opt_class()];

  return v6;
}

@end