@interface CRFormTextBasedFieldDedupingStep
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
@end

@implementation CRFormTextBasedFieldDedupingStep

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  processCopy = process;
  v7 = CROSLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormTextBasedFieldDedupingStep is running.", buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke;
  v31[3] = &unk_1E7BC20E8;
  v9 = processCopy;
  v32 = v9;
  v10 = v8;
  v33 = v10;
  [CRFormPostProcessingManager enumerateTextBasedDetectedFields:v9 block:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke_4;
  v28[3] = &unk_1E7BC20E8;
  v11 = v10;
  v29 = v11;
  v12 = v9;
  v30 = v12;
  [CRFormPostProcessingManager enumerateTextBasedDetectedFields:v12 block:v28];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if (([v11 containsObject:{v18, v24}] & 1) == 0)
        {
          [v13 addObject:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v15);
  }

  v19 = CROSLogForCategory(6);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v11 count];
    v21 = [v14 count];
    v22 = [v13 count];
    *buf = 134218496;
    v35 = v20;
    v36 = 2048;
    v37 = v21;
    v38 = 2048;
    v39 = v22;
    _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_DEBUG, "CRFormTextBasedFieldDedupingStep removed %ld text fields from %ld fields, preserving %ld fields.", buf, 0x20u);
  }

  return v13;
}

void __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 boundingQuad];
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 boundingQuad];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v14 = objc_opt_class();
  v15 = *(a1 + 32);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke_3;
  v20 = &unk_1E7BC2158;
  v23 = v6;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  v22 = &v27;
  v16 = v13;
  v21 = v16;
  [v14 enumerateFieldsInFields:v15 filter:&__block_literal_global_295 block:&v17];
  if (*(v28 + 24) == 1)
  {
    [*(a1 + 40) addObject:{v3, v17, v18, v19, v20}];
  }

  _Block_object_dispose(&v27, 8);
}

void __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = a2;
  v5 = [v26 boundingQuad];
  [v5 boundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  if (CGRectContainsRect(*(a1 + 48), v32) || (v28.origin.x = v7, v28.origin.y = v9, v28.size.width = v11, v28.size.height = v13, CGRectContainsRect(v28, *(a1 + 48))))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    v14 = [v26 boundingQuad];
    [v14 boundingBoxIOUWithQuad:*(a1 + 32)];
    if (v15 > 0.05 || ((v33.origin.x = v7, v33.origin.y = v9, v33.size.width = v11, v33.size.height = v13, v29 = CGRectIntersection(*(a1 + 48), v33), x = v29.origin.x, y = v29.origin.y, width = v29.size.width, height = v29.size.height, v20 = CGRectGetWidth(v29), v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, v21 = CGRectGetHeight(v30), v22 = CGRectGetWidth(*(a1 + 48)), v23 = CGRectGetHeight(*(a1 + 48)), v31.origin.x = x, v31.origin.y = y, v31.size.width = width, v31.size.height = height, IsNull = CGRectIsNull(v31), v20 * v21 / (v22 * v23) <= 0.5) ? (v25 = 1) : (v25 = IsNull), (v25 & 1) == 0))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = [v3 boundingQuad];
    [v4 boundingBox];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v13 = objc_opt_class();
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke_5;
    v19 = &unk_1E7BC2158;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v22 = v6;
    v23 = v8;
    v24 = v10;
    v25 = v12;
    v20 = v15;
    v21 = &v26;
    [v13 enumerateTextBasedDetectedFields:v14 block:&v16];
    if (*(v27 + 24) == 1)
    {
      [*(a1 + 32) addObject:{v3, v16, v17, v18, v19}];
    }

    _Block_object_dispose(&v26, 8);
  }
}

void __76__CRFormTextBasedFieldDedupingStep_process_externalFields_document_options___block_invoke_5(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v5 = [v25 boundingQuad];
    [v5 boundingBox];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v32.origin.x = v7;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v13;
    v27 = CGRectIntersection(*(a1 + 48), v32);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    v24 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v23 = CGRectGetHeight(v28);
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    v22 = CGRectGetWidth(v29);
    v30.origin.x = v7;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    v18 = CGRectGetHeight(v30);
    v19 = CGRectGetWidth(*(a1 + 48));
    v20 = CGRectGetHeight(*(a1 + 48));
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectIsNull(v31) && v24 * v23 / (v19 * v20) > 0.3 && v19 * v20 < v22 * v18)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

@end