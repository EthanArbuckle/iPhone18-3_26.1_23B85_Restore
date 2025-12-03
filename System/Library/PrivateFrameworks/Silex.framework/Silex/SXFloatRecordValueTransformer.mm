@interface SXFloatRecordValueTransformer
- (id)transformValueForRecord:(id)record descriptor:(id)descriptor;
@end

@implementation SXFloatRecordValueTransformer

- (id)transformValueForRecord:(id)record descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  recordCopy = record;
  format = [descriptorCopy format];
  jsonDictionary = [recordCopy jsonDictionary];

  v9 = [descriptorCopy key];

  v10 = [jsonDictionary objectForKey:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (format)
    {
      decimals = [format decimals];
    }

    else
    {
      decimals = 2;
    }

    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v13 setMinimumFractionDigits:decimals];
    [v13 setMaximumFractionDigits:decimals];
    v14 = [SXFormattedText alloc];
    v15 = [v13 stringFromNumber:v10];
    v12 = [(SXFormattedText *)v14 initWithText:v15];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end