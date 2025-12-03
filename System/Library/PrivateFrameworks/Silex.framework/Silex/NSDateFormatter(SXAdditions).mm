@interface NSDateFormatter(SXAdditions)
+ (id)dateFormatterWithFormat:()SXAdditions;
@end

@implementation NSDateFormatter(SXAdditions)

+ (id)dateFormatterWithFormat:()SXAdditions
{
  v3 = a3;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  dictionary = [threadDictionary objectForKey:@"SilexDateFormatters"];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:dictionary forKey:@"SilexDateFormatters"];
  }

  v9 = [dictionary objectForKey:v3];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v9 setDateFormat:v3];
    [dictionary setObject:v9 forKey:v3];
  }

  return v9;
}

@end