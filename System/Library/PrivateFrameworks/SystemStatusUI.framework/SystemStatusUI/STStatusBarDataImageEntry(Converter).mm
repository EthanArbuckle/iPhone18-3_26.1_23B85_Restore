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

    v13 = [v11 entryWithImageNamed:v12];

    a1 = v12;
  }

  else
  {
    v13 = [v10 disabledEntry];
  }

  return v13;
}

@end