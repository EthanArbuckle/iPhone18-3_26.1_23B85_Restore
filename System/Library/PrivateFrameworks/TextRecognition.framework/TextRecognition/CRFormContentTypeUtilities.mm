@interface CRFormContentTypeUtilities
+ (BOOL)contentTypeIsAutoFillable:(unint64_t)a3;
+ (BOOL)shouldAssignTextContentTypeForField:(id)a3 updateExternalFields:(BOOL)a4 allowOverride:(BOOL)a5 allowAllDetectionSources:(BOOL)a6;
+ (id)shortStringFromContentType:(unint64_t)a3;
+ (id)stringFromContentType:(unint64_t)a3;
+ (unint64_t)contentTypeFromString:(id)a3;
@end

@implementation CRFormContentTypeUtilities

+ (id)stringFromContentType:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = getFormContentTypes();
  if ([v4 count] <= a3)
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "Invalid text content type: %lu", &v11, 0xCu);
    }

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = a3;
  }

  v8 = [v5 objectAtIndexedSubscript:v6];
  v9 = [v8 objectForKeyedSubscript:@"string"];

  return v9;
}

+ (id)shortStringFromContentType:(unint64_t)a3
{
  v3 = [a1 stringFromContentType:a3];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"CRFormContentType" withString:&stru_1F2BB4348];

  return v4;
}

+ (BOOL)contentTypeIsAutoFillable:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getFormContentTypes();
  if ([v4 count] <= a3)
  {
    v8 = CROSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_FAULT, "Invalid text content type: %lu", &v10, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
    v6 = [v5 objectForKeyedSubscript:@"autoFillable"];
    v7 = [v6 BOOLValue];
  }

  return v7;
}

+ (unint64_t)contentTypeFromString:(id)a3
{
  v3 = a3;
  if (qword_1ED9600B0 != -1)
  {
    dispatch_once(&qword_1ED9600B0, &__block_literal_global_16);
  }

  v4 = [_MergedGlobals_21 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = _MergedGlobals_21;
    v7 = [@"CRFormContentType" stringByAppendingString:v3];
    v5 = [v6 objectForKeyedSubscript:v7];

    if (!v5)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

  v8 = [v5 unsignedIntegerValue];

LABEL_7:
  return v8;
}

void __52__CRFormContentTypeUtilities_contentTypeFromString___block_invoke()
{
  v0 = objc_opt_new();
  v6 = getFormContentTypes();
  if ([v6 count])
  {
    v1 = 0;
    do
    {
      v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v1];
      v3 = [v6 objectAtIndexedSubscript:v1];
      v4 = [v3 objectForKeyedSubscript:@"string"];
      [v0 setObject:v2 forKeyedSubscript:v4];

      ++v1;
    }

    while (v1 < [v6 count]);
  }

  v5 = _MergedGlobals_21;
  _MergedGlobals_21 = v0;
}

+ (BOOL)shouldAssignTextContentTypeForField:(id)a3 updateExternalFields:(BOOL)a4 allowOverride:(BOOL)a5 allowAllDetectionSources:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = [v9 fieldSource];
  v11 = v10 == 1 || v6;
  if (v6 && v10 != 1)
  {
    v11 = [v9 fieldSource] == 2 || objc_msgSend(v9, "fieldSource") == 3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v8 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (a5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!a5)
  {
    LOBYTE(v11) = [v9 textContentType] == 0 && v11;
    if (v11 || !v8)
    {
      goto LABEL_29;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_21:
    if ([v9 textContentType])
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (!v11 && v8)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_22:
    if ([v9 fieldType] == 1)
    {
      if ([v9 fieldSource] == 4 || objc_msgSend(v9, "fieldSource") == 5)
      {
        LOBYTE(v11) = 1;
        goto LABEL_29;
      }

      if ([v9 fieldSource] == 7)
      {
        v12 = [v9 fieldValue];
        LOBYTE(v11) = [v12 length] != 0;

        goto LABEL_29;
      }
    }

LABEL_28:
    LOBYTE(v11) = 0;
  }

LABEL_29:

  return v11;
}

@end