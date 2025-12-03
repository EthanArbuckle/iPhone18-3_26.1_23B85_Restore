@interface NSMutableAttributedString(SCROAttributedStringExtras)
- (void)scrAttributedStringTrimTrailingNewlines;
@end

@implementation NSMutableAttributedString(SCROAttributedStringExtras)

- (void)scrAttributedStringTrimTrailingNewlines
{
  string = [self string];
  v3 = [string length];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  if (v3 < 1)
  {
    v12 = string;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = [string rangeOfCharacterFromSet:newlineCharacterSet options:4];
      v8 = v6 == v3 - 1 && v7 == 1;
      v9 = v8;
      if (v8)
      {
        [self replaceCharactersInRange:v6 withString:{v7, &stru_28763D5C8}];
      }

      string2 = [self string];

      v10 = [string2 length];
      v11 = v10 > 0 ? v9 : 0;
      if (v11 != 1)
      {
        break;
      }

      v3 = v10;
      v12 = string2;
      string = string2;
      if (v5++ >= 0x64)
      {
        goto LABEL_21;
      }
    }

    v12 = string2;
  }

LABEL_21:
  v15 = v12;
}

@end