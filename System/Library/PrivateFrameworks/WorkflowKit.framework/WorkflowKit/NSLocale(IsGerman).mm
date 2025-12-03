@interface NSLocale(IsGerman)
+ (uint64_t)isGerman;
@end

@implementation NSLocale(IsGerman)

+ (uint64_t)isGerman
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  lowercaseString = [firstObject lowercaseString];
  v4 = [lowercaseString hasPrefix:@"de"];

  return v4;
}

@end