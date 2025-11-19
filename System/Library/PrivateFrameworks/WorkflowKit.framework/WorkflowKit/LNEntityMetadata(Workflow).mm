@interface LNEntityMetadata(Workflow)
- (objc_class)wf_contentItemClassWithQueryMetadata:()Workflow appBundleIdentifier:displayedAppBundleIdentifier:;
@end

@implementation LNEntityMetadata(Workflow)

- (objc_class)wf_contentItemClassWithQueryMetadata:()Workflow appBundleIdentifier:displayedAppBundleIdentifier:
{
  v47[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"LNEntityMetadata+Workflow.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v47[0] = v13;
  v47[1] = v10;
  v14 = [a1 identifier];
  v47[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];

  v16 = [v15 componentsJoinedByString:@"_"];
  v17 = NSClassFromString(v16);
  if (v17)
  {
    v18 = v17;
LABEL_5:
    v19 = v18;
    goto LABEL_8;
  }

  os_unfair_lock_lock(&classRegistrationLock_52324);
  ClassPair = objc_allocateClassPair(v12, [(NSString *)v16 cStringUsingEncoding:4], 0);
  if (!ClassPair)
  {
    os_unfair_lock_unlock(&classRegistrationLock_52324);
    v18 = NSClassFromString(v16);
    goto LABEL_5;
  }

  v21 = ClassPair;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke;
  aBlock[3] = &__block_descriptor_40_e14_B32__0_8_16_24lu32l8;
  aBlock[4] = v12;
  v36 = v9;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_2;
  v44[3] = &unk_1E837B948;
  v45 = v23;
  v35 = v23;
  v24 = _Block_copy(v44);
  v22[2](v22, v21, sel_entityMetadata, v24);

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_3;
  v42[3] = &unk_1E837B970;
  v43 = v36;
  v25 = _Block_copy(v42);
  v22[2](v22, v21, sel_queryMetadata, v25);

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_4;
  v40[3] = &unk_1E837B998;
  v26 = v10;
  v41 = v26;
  v27 = _Block_copy(v40);
  v22[2](v22, v21, sel_appBundleIdentifier, v27);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_5;
  v37[3] = &unk_1E837B9C0;
  v38 = v11;
  v28 = v26;
  v39 = v28;
  v29 = _Block_copy(v37);
  v22[2](v22, v21, sel_displayedAppBundleIdentifier, v29);

  v30 = MEMORY[0x1E69AC800];
  v31 = [v35 identifier];
  [v30 wf_addDescriptionMethodsToClass:v21 withEntityType:v31 appBundleIdentifier:v28];

  objc_registerClassPair(v21);
  os_unfair_lock_unlock(&classRegistrationLock_52324);
  v19 = v21;

  v9 = v36;
LABEL_8:

  v32 = *MEMORY[0x1E69E9840];

  return v19;
}

@end