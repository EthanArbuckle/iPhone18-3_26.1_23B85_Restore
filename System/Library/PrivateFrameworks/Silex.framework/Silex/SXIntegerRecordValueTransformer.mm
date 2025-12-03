@interface SXIntegerRecordValueTransformer
- (id)transformValueForRecord:(id)record descriptor:(id)descriptor;
@end

@implementation SXIntegerRecordValueTransformer

- (id)transformValueForRecord:(id)record descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  jsonDictionary = [record jsonDictionary];
  v7 = [descriptorCopy key];

  v8 = [jsonDictionary objectForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [SXFormattedText alloc];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v8, "integerValue")];
    v11 = [(SXFormattedText *)v9 initWithText:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end