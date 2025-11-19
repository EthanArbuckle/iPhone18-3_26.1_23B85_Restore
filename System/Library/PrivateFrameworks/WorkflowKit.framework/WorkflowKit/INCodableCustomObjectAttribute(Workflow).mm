@interface INCodableCustomObjectAttribute(Workflow)
- (id)wf_contentItemClass;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_parameterClass;
@end

@implementation INCodableCustomObjectAttribute(Workflow)

- (id)wf_contentItemForValue:()Workflow
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = [a1 wf_contentItemClass];
      v8 = INObjectWithTypedObject();
      v9 = [v7 itemWithObject:v8];

      goto LABEL_8;
    }

    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315906;
      v15 = "WFEnforceClass";
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v5;
      v11 = v19;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v14, 0x2Au);
    }
  }

  v9 = 0;
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)wf_contentItemClass
{
  v2 = [a1 codableDescription];
  v3 = [a1 objectTypeNamespace];
  v4 = [v2 wf_contentItemClassForCustomObjectWithNamespace:v3];

  return v4;
}

- (id)wf_parameterClass
{
  v1 = [a1 modifier];
  v2 = off_1E836F4D0;
  if (v1)
  {
    v2 = off_1E836E2C0;
  }

  v3 = *v2;
  v4 = objc_opt_class();

  return v4;
}

@end