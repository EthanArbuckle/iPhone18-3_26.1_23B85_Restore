@interface NSRegularExpression(SafariCoreExtras)
+ (id)safari_escapedPatternForString:()SafariCoreExtras charactersToEscape:;
@end

@implementation NSRegularExpression(SafariCoreExtras)

+ (id)safari_escapedPatternForString:()SafariCoreExtras charactersToEscape:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v6];
    v8 = [v5 rangeOfCharacterFromSet:v7];
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = [v5 mutableCopy];
      do
      {
        [v12 insertString:@"\\"" atIndex:v10];
        v13 = v10 + v11;
        if (v13 + 1 >= [v12 length])
        {
          break;
        }

        v10 = [v12 rangeOfCharacterFromSet:v7 options:0 range:{v13 + 1, objc_msgSend(v12, "length") + ~v13}];
        v11 = v14;
      }

      while (v14);
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

@end