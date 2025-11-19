@interface INFile
@end

@implementation INFile

void __66__INFile_Workflow__coerceContentItems_toSupportedUTIs_completion___block_invoke_200(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [v6 items];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__INFile_Workflow__coerceContentItems_toSupportedUTIs_completion___block_invoke_2_201;
    v9[3] = &unk_1E837E3E8;
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    [v8 if_mapAsynchronously:v9 completionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __66__INFile_Workflow__coerceContentItems_toSupportedUTIs_completion___block_invoke_2_201(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 40) compatibleFileTypeForContentItem:v6 availableTypes:*(a1 + 32)];
  if (!v8)
  {
    v9 = getWFIntentExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [v6 supportedTypes];
      *buf = 136315906;
      v17 = "+[INFile(Workflow) coerceContentItems:toSupportedUTIs:completion:]_block_invoke_2";
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Unable to find matching type for content item: %{public}@. Requested types: %{public}@, Supported types: %{public}@", buf, 0x2Au);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__INFile_Workflow__coerceContentItems_toSupportedUTIs_completion___block_invoke_202;
  v14[3] = &unk_1E837E3C0;
  v15 = v7;
  v12 = v7;
  [v6 getFileRepresentation:v14 forType:v8];

  v13 = *MEMORY[0x1E69E9840];
}

id __66__INFile_Workflow__coerceContentItems_toSupportedUTIs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996D68];
  v3 = a2;
  v4 = [v2 sharedRegistry];
  v5 = [v4 contentItemClassForType:v3];

  return v5;
}

void __127__INFile_Workflow__getINFileRepresentationsFromContent_byCoercingToSupportedUTIs_withParameterState_dynamicOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __127__INFile_Workflow__getINFileRepresentationsFromContent_byCoercingToSupportedUTIs_withParameterState_dynamicOptions_completion___block_invoke_2;
    v7[3] = &unk_1E837E358;
    v8 = *(a1 + 32);
    v4 = [a2 if_compactMap:v7];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

id __127__INFile_Workflow__getINFileRepresentationsFromContent_byCoercingToSupportedUTIs_withParameterState_dynamicOptions_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [v6 value];
  v8 = v5;
  v9 = [v7 bookmarkData];

  v10 = MEMORY[0x1E696E840];
  if (v9)
  {
    v11 = [v7 bookmarkData];
    v12 = [v7 displayName];
    v13 = [v10 wf_fileWithFileRepresentation:v8 bookmarkData:v11 displayName:v12];
  }

  else
  {
    v11 = [v7 displayName];
    v13 = [v10 wf_fileWithFileRepresentation:v8 displayName:v11];
    v12 = v8;
  }

  objc_setAssociatedObject(v13, sel_wf_fileWithFileRepresentation_displayName_, v8, 1);

  return v13;
}

void __121__INFile_Workflow__wf_processParameterValue_parameterState_coerceToSupportedUTIs_array_dynamicOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    if (v6 == 1)
    {
      (*(v7 + 16))(v7);
    }

    else
    {
      v8 = [v9 firstObject];
      (*(v7 + 16))(v7, v8, 0);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end