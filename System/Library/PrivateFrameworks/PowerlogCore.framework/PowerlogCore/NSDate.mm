@interface NSDate
@end

@implementation NSDate

void __41__NSDate_Monotonic__defaultDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = defaultDateFormatter_f;
  defaultDateFormatter_f = v0;

  v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [defaultDateFormatter_f setDateFormat:@"yyyy-MM-dd"];
  v2 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [defaultDateFormatter_f setTimeZone:v2];

  v3 = [v4 objectForKey:*MEMORY[0x1E695D958]];
  [defaultDateFormatter_f setCalendar:v3];

  [defaultDateFormatter_f setLocale:v4];
}

@end