@interface STStatusBarDataBoolImageEntry(Converter)
- (uint64_t)initFromData:()Converter type:imageName:maxLength:BOOLValue:;
@end

@implementation STStatusBarDataBoolImageEntry(Converter)

- (uint64_t)initFromData:()Converter type:imageName:maxLength:BOOLValue:
{
  v11 = *(a3 + a4);
  v12 = objc_opt_class();
  v13 = v12;
  if (v11 == 1)
  {
    if (strnlen(a5, a6))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    }

    else
    {
      v14 = 0;
    }

    disabledEntry = [v13 entryWithImageNamed:v14 BOOLValue:a7];

    self = v14;
  }

  else
  {
    disabledEntry = [v12 disabledEntry];
  }

  return disabledEntry;
}

@end