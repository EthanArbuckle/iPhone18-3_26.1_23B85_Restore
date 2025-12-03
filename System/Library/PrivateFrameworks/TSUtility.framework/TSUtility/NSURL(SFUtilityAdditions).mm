@interface NSURL(SFUtilityAdditions)
+ (__CFString)properlyEscapedString:()SFUtilityAdditions;
+ (id)filePathURLWithEscapes:()SFUtilityAdditions;
+ (id)relativeURLWithEscapes:()SFUtilityAdditions;
+ (void)improperlyEscapedString:()SFUtilityAdditions;
- (uint64_t)isRelative;
@end

@implementation NSURL(SFUtilityAdditions)

+ (__CFString)properlyEscapedString:()SFUtilityAdditions
{
  v3 = CFURLCreateStringByAddingPercentEscapes(0, originalString, 0, @";?:@&=+$,", 0x8000100u);

  return v3;
}

+ (void)improperlyEscapedString:()SFUtilityAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@";?:@&=+$#/%<>'\"\\""];
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(a3, "length")}];
  [v5 appendString:a3];
  v6 = [v5 rangeOfCharacterFromSet:v4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      v10 = [v5 characterAtIndex:v8];
      [v5 replaceCharactersInRange:v8 withString:{v9, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"_%d_", v10)}];
      v8 = [v5 rangeOfCharacterFromSet:v4 options:2 range:{v8, objc_msgSend(v5, "length") - v8}];
      v9 = v11;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

+ (id)relativeURLWithEscapes:()SFUtilityAdditions
{
  v1 = [self properlyEscapedString:?];
  v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v1];

  return v2;
}

+ (id)filePathURLWithEscapes:()SFUtilityAdditions
{
  v4 = [self properlyEscapedString:?];
  if ([a3 hasPrefix:@"/"])
  {
    v5 = @"file://localhost";
  }

  else
  {
    v5 = @"file:";
  }

  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:{-[__CFString stringByAppendingString:](v5, "stringByAppendingString:", v4)}];

  return v6;
}

- (uint64_t)isRelative
{
  if ([objc_msgSend(self "relativeString")])
  {
    return [objc_msgSend(self "path")] ^ 1;
  }

  else
  {
    return 1;
  }
}

@end