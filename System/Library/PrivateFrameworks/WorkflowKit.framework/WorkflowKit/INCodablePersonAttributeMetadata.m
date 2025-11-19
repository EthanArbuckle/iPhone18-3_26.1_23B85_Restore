@interface INCodablePersonAttributeMetadata
@end

@implementation INCodablePersonAttributeMetadata

id __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 contactIdentifier];
  v5 = v4;
  v6 = *(a1 + 48) != 1 || v4 == 0;
  if (v6 || ([*(a1 + 32) unifiedContactWithIdentifier:v4 keysToFetch:*(a1 + 40) error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = objc_alloc(MEMORY[0x1E6996D10]);
    v16 = [MEMORY[0x1E6996E68] contactWithPerson:v3];
    v17 = [v15 initWithContact:v16];

    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v3 personHandle];
  v10 = [v9 type];

  if (v10 == 2)
  {
    v11 = [v8 phoneNumbers];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke_4;
    v23[3] = &unk_1E837E4B8;
    v12 = &v24;
    v24 = v3;
    v13 = [v11 indexOfObjectPassingTest:v23];
    v14 = 3;
    goto LABEL_11;
  }

  if (v10 == 1)
  {
    v11 = [v8 emailAddresses];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke_3;
    v25[3] = &unk_1E837E4B8;
    v12 = &v26;
    v26 = v3;
    v13 = [v11 indexOfObjectPassingTest:v25];
    v14 = 4;
LABEL_11:

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = -1;
    }

    else
    {
      v18 = v13;
    }

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = v14;
    }

    goto LABEL_19;
  }

  v19 = 0xFFFFFFFFLL;
  v18 = -1;
LABEL_19:
  v20 = objc_alloc(MEMORY[0x1E6996D10]);
  v21 = [MEMORY[0x1E6996CC8] contactWithCNContact:v8 propertyID:v19 multivalueIndex:v18];
  v17 = [v20 initWithContact:v21];

LABEL_20:

  return v17;
}

uint64_t __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [*(a1 + 32) personHandle];
  v5 = [v4 value];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

uint64_t __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getCNPhoneNumberClass_softClass;
  v17 = getCNPhoneNumberClass_softClass;
  if (!getCNPhoneNumberClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getCNPhoneNumberClass_block_invoke;
    v13[3] = &unk_1E837FAC0;
    v13[4] = &v14;
    __getCNPhoneNumberClass_block_invoke(v13);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [v5 alloc];
  v8 = [*(a1 + 32) personHandle];
  v9 = [v8 value];
  v10 = [v7 initWithStringValue:v9];
  v11 = [v4 isLikePhoneNumber:v10];

  return v11;
}

id __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315906;
      v11 = "WFEnforceClass";
      v12 = 2114;
      v13 = v4;
      v14 = 2114;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v3;
      v7 = v15;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v10, 0x2Au);
    }

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

@end