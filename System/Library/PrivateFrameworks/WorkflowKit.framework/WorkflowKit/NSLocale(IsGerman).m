@interface NSLocale(IsGerman)
+ (uint64_t)isGerman;
@end

@implementation NSLocale(IsGerman)

+ (uint64_t)isGerman
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 preferredLocalizations];
  v2 = [v1 firstObject];

  v3 = [v2 lowercaseString];
  v4 = [v3 hasPrefix:@"de"];

  return v4;
}

@end