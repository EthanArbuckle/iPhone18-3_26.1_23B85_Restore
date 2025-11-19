@interface NSDate
@end

@implementation NSDate

uint64_t __54__NSDate_SXJSONObject__initWithJSONObject_andVersion___block_invoke()
{
  v0 = [MEMORY[0x1E696AB78] dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
  v1 = initWithJSONObject_andVersion__dateFormatter;
  initWithJSONObject_andVersion__dateFormatter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end