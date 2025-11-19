@interface STStatusBarDataStringEntry(Converter)
- (uint64_t)initFromData:()Converter type:string:maxLength:;
@end

@implementation STStatusBarDataStringEntry(Converter)

- (uint64_t)initFromData:()Converter type:string:maxLength:
{
  if (*(a3 + a4) == 1 && strnlen(__s1, a6))
  {
    v8 = objc_opt_class();
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:__s1];
    v10 = [v8 entryWithStringValue:v9];

    a1 = v9;
  }

  else
  {
    v10 = [objc_opt_class() disabledEntry];
  }

  return v10;
}

@end