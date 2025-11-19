@interface STStatusBarDataQuietModeEntry(Converter)
- (uint64_t)initFromData:()Converter type:focusName:maxFocusLength:imageName:maxImageLength:BOOLValue:;
@end

@implementation STStatusBarDataQuietModeEntry(Converter)

- (uint64_t)initFromData:()Converter type:focusName:maxFocusLength:imageName:maxImageLength:BOOLValue:
{
  v14 = *(a3 + a4);
  v15 = objc_opt_class();
  v16 = v15;
  if (v14 == 1)
  {
    if (strnlen(a5, a6))
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    }

    else
    {
      v17 = 0;
    }

    if (strnlen(a7, a8))
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:a7];
    }

    else
    {
      v19 = 0;
    }

    v18 = [v16 entryWithFocusName:v17 imageNamed:v19 BOOLValue:a9];
  }

  else
  {
    v18 = [v15 disabledEntry];
    v17 = a1;
  }

  return v18;
}

@end