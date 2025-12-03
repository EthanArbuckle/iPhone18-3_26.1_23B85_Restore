@interface SXStringRecordValueTransformer
- (id)transformValueForRecord:(id)record descriptor:(id)descriptor;
@end

@implementation SXStringRecordValueTransformer

- (id)transformValueForRecord:(id)record descriptor:(id)descriptor
{
  recordCopy = record;
  descriptorCopy = descriptor;
  jsonDictionary = [recordCopy jsonDictionary];
  v8 = [descriptorCopy key];
  v9 = [jsonDictionary objectForKey:v8];
  v10 = v9;
  v11 = &stru_1F532F6C0;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [SXFormattedText alloc];
    specificationVersion = [recordCopy specificationVersion];
    v15 = [(SXJSONObject *)v13 initWithJSONObject:v12 andVersion:specificationVersion];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = [SXFormattedText alloc];
    v18 = v17;
    if (isKindOfClass)
    {
      v19 = [(SXFormattedText *)v17 initWithText:v12];
      goto LABEL_9;
    }

    specificationVersion = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
    v15 = [(SXFormattedText *)v18 initWithText:specificationVersion];
  }

  v19 = v15;

LABEL_9:
  -[SXFormattedText setShouldWrapText:](v19, "setShouldWrapText:", [descriptorCopy dataType] == 2);

  return v19;
}

@end