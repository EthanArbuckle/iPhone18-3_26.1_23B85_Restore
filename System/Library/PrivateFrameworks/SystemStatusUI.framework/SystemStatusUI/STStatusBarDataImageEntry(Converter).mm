@interface STStatusBarDataImageEntry(Converter)
- (uint64_t)initFromData:()Converter type:imageName:maxLength:;
@end

@implementation STStatusBarDataImageEntry(Converter)

- (uint64_t)initFromData:()Converter type:imageName:maxLength:
{
  v9 = *(a3 + a4);
  v10 = objc_opt_class();
  v11 = v10;
  if (v9 == 1)
  {
    if (strnlen(a5, a6))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    }

    else
    {
      v12 = 0;
    }

    disabledEntry = [v11 entryWithImageNamed:v12];

    self = v12;
  }

  else
  {
    disabledEntry = [v10 disabledEntry];
  }

  return disabledEntry;
}

@end