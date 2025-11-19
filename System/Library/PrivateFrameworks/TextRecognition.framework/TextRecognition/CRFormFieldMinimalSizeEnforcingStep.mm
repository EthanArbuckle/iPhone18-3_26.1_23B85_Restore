@interface CRFormFieldMinimalSizeEnforcingStep
- (CRFormFieldMinimalSizeEnforcingStep)init;
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormFieldMinimalSizeEnforcingStep

- (CRFormFieldMinimalSizeEnforcingStep)init
{
  v6.receiver = self;
  v6.super_class = CRFormFieldMinimalSizeEnforcingStep;
  v2 = [(CRFormFieldMinimalSizeEnforcingStep *)&v6 init];
  v3 = v2;
  if (v2)
  {
    minCharacterLength = v2->_minCharacterLength;
    v2->_minCharacterLength = &unk_1F2BFB240;
  }

  return v3;
}

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = CROSLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v12 = [v7 count];
    _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldMinimalSizeEnforcingStep is running (#input:%lu).", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CRFormFieldMinimalSizeEnforcingStep_process_externalFields_document_options___block_invoke;
  v10[3] = &unk_1E7BC2048;
  v10[4] = self;
  [CRFormPostProcessingManager enumerateDetectedFields:v7 block:v10];

  return v7;
}

void __79__CRFormFieldMinimalSizeEnforcingStep_process_externalFields_document_options___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 fieldType] == 1 && objc_msgSend(v3, "textContentType") != 1)
  {
    v4 = +[CRFormContentTypeUtilities stringFromContentType:](CRFormContentTypeUtilities, "stringFromContentType:", [v3 textContentType]);
    v5 = [v3 boundingQuad];
    [v5 boundingBox];
    v7 = v6;
    v9 = v8;

    v10 = CROSLogForCategory(6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218498;
      v16 = v7;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "CRFormFieldMinimalSizeEnforcingStep: field with size %.2fx%.2f has type = %@", &v15, 0x20u);
    }

    v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v4];
    v12 = [v11 intValue];

    [v3 suggestedLineHeight];
    if (v13 * v12 > v7 * 1.5)
    {
      v14 = CROSLogForCategory(6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138413058;
        v16 = *&v4;
        v17 = 2048;
        v18 = v9;
        v19 = 2048;
        v20 = v12;
        v21 = 2048;
        v22 = v7;
        _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_DEBUG, "CRFormFieldMinimalSizeEnforcingStep: %@ -> None because %f * %li > %f", &v15, 0x2Au);
      }

      [v3 setTextContentType:1];
    }
  }
}

@end