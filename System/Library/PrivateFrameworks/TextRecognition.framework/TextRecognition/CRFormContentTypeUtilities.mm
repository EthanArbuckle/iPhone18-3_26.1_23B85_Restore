@interface CRFormContentTypeUtilities
+ (BOOL)contentTypeIsAutoFillable:(unint64_t)fillable;
+ (BOOL)shouldAssignTextContentTypeForField:(id)field updateExternalFields:(BOOL)fields allowOverride:(BOOL)override allowAllDetectionSources:(BOOL)sources;
+ (id)shortStringFromContentType:(unint64_t)type;
+ (id)stringFromContentType:(unint64_t)type;
+ (unint64_t)contentTypeFromString:(id)string;
@end

@implementation CRFormContentTypeUtilities

+ (id)stringFromContentType:(unint64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = getFormContentTypes();
  if ([v4 count] <= type)
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "Invalid text content type: %lu", &v11, 0xCu);
    }

    v5 = v4;
    typeCopy2 = 0;
  }

  else
  {
    v5 = v4;
    typeCopy2 = type;
  }

  v8 = [v5 objectAtIndexedSubscript:typeCopy2];
  v9 = [v8 objectForKeyedSubscript:@"string"];

  return v9;
}

+ (id)shortStringFromContentType:(unint64_t)type
{
  v3 = [self stringFromContentType:type];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"CRFormContentType" withString:&stru_1F2BB4348];

  return v4;
}

+ (BOOL)contentTypeIsAutoFillable:(unint64_t)fillable
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getFormContentTypes();
  if ([v4 count] <= fillable)
  {
    v8 = CROSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = 134217984;
      fillableCopy = fillable;
      _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_FAULT, "Invalid text content type: %lu", &v10, 0xCu);
    }

    bOOLValue = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:fillable];
    v6 = [v5 objectForKeyedSubscript:@"autoFillable"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

+ (unint64_t)contentTypeFromString:(id)string
{
  stringCopy = string;
  if (qword_1ED9600B0 != -1)
  {
    dispatch_once(&qword_1ED9600B0, &__block_literal_global_16);
  }

  v4 = [_MergedGlobals_21 objectForKeyedSubscript:stringCopy];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = _MergedGlobals_21;
    v7 = [@"CRFormContentType" stringByAppendingString:stringCopy];
    v5 = [v6 objectForKeyedSubscript:v7];

    if (!v5)
    {
      unsignedIntegerValue = 0;
      goto LABEL_7;
    }
  }

  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_7:
  return unsignedIntegerValue;
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

+ (BOOL)shouldAssignTextContentTypeForField:(id)field updateExternalFields:(BOOL)fields allowOverride:(BOOL)override allowAllDetectionSources:(BOOL)sources
{
  sourcesCopy = sources;
  fieldsCopy = fields;
  fieldCopy = field;
  fieldSource = [fieldCopy fieldSource];
  v11 = fieldSource == 1 || sourcesCopy;
  if (sourcesCopy && fieldSource != 1)
  {
    v11 = [fieldCopy fieldSource] == 2 || objc_msgSend(fieldCopy, "fieldSource") == 3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!fieldsCopy || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (override)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!override)
  {
    LOBYTE(v11) = [fieldCopy textContentType] == 0 && v11;
    if (v11 || !fieldsCopy)
    {
      goto LABEL_29;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_21:
    if ([fieldCopy textContentType])
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (!v11 && fieldsCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_22:
    if ([fieldCopy fieldType] == 1)
    {
      if ([fieldCopy fieldSource] == 4 || objc_msgSend(fieldCopy, "fieldSource") == 5)
      {
        LOBYTE(v11) = 1;
        goto LABEL_29;
      }

      if ([fieldCopy fieldSource] == 7)
      {
        fieldValue = [fieldCopy fieldValue];
        LOBYTE(v11) = [fieldValue length] != 0;

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