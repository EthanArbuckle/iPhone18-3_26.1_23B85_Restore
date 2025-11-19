@interface NSURL(SXJSONObject)
- (uint64_t)initWithJSONObject:()SXJSONObject andVersion:;
@end

@implementation NSURL(SXJSONObject)

- (uint64_t)initWithJSONObject:()SXJSONObject andVersion:
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end