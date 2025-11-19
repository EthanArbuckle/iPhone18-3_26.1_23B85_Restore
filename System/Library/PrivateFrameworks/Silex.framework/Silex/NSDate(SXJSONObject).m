@interface NSDate(SXJSONObject)
- (uint64_t)initWithJSONObject:()SXJSONObject andVersion:;
@end

@implementation NSDate(SXJSONObject)

- (uint64_t)initWithJSONObject:()SXJSONObject andVersion:
{
  v6 = a3;
  v7 = a4;
  if (initWithJSONObject_andVersion__onceToken != -1)
  {
    [NSDate(SXJSONObject) initWithJSONObject:andVersion:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    v8 = [initWithJSONObject_andVersion__dateFormatter dateFromString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end