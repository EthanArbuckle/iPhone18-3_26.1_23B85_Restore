@interface CRFormFieldAutoFillGuardingStep
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormFieldAutoFillGuardingStep

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CROSLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v6 count];
    _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldAutoFillGuardingStep is running (#input:%lu).", &buf, 0xCu);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CRFormFieldAutoFillGuardingStep_process_externalFields_document_options___block_invoke;
  v11[3] = &unk_1E7BC2238;
  v11[4] = &v12;
  v11[5] = &buf;
  v11[6] = &v16;
  v11[7] = &v20;
  [CRFormPostProcessingManager enumerateDetectedFields:v6 block:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13[3] = 1;
    v8 = [CRFormContentTypeUtilities contentTypeIsStartOfAutofillContext:v17[3] previousType:v21[3] nextType:1];
    [*(*(&buf + 1) + 40) setAutofillNewContextStart:v8];
  }

  v9 = v6;
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

void __75__CRFormFieldAutoFillGuardingStep_process_externalFields_document_options___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 fieldType] == 1)
  {
    v4 = [v3 textContentType];
  }

  else
  {
    v4 = 1;
  }

  *(*(a1[4] + 8) + 24) = v4;
  if (*(*(a1[5] + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1[5] + 8) + 40) setAutofillNewContextStart:{+[CRFormContentTypeUtilities contentTypeIsStartOfAutofillContext:previousType:nextType:](CRFormContentTypeUtilities, "contentTypeIsStartOfAutofillContext:previousType:nextType:", *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24), *(*(a1[4] + 8) + 24))}];
    }
  }

  *(*(a1[7] + 8) + 24) = *(*(a1[6] + 8) + 24);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 8) + 24);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

@end