@interface SXIntegerRecordValueTransformer
- (id)transformValueForRecord:(id)a3 descriptor:(id)a4;
@end

@implementation SXIntegerRecordValueTransformer

- (id)transformValueForRecord:(id)a3 descriptor:(id)a4
{
  v5 = a4;
  v6 = [a3 jsonDictionary];
  v7 = [v5 key];

  v8 = [v6 objectForKey:v7];

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