@interface NSMutableAttributedString(SCROAttributedStringExtras)
- (void)scrAttributedStringTrimTrailingNewlines;
@end

@implementation NSMutableAttributedString(SCROAttributedStringExtras)

- (void)scrAttributedStringTrimTrailingNewlines
{
  v2 = [a1 string];
  v3 = [v2 length];
  v4 = [MEMORY[0x277CCA900] newlineCharacterSet];
  if (v3 < 1)
  {
    v12 = v2;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = [v2 rangeOfCharacterFromSet:v4 options:4];
      v8 = v6 == v3 - 1 && v7 == 1;
      v9 = v8;
      if (v8)
      {
        [a1 replaceCharactersInRange:v6 withString:{v7, &stru_28763D5C8}];
      }

      v14 = [a1 string];

      v10 = [v14 length];
      v11 = v10 > 0 ? v9 : 0;
      if (v11 != 1)
      {
        break;
      }

      v3 = v10;
      v12 = v14;
      v2 = v14;
      if (v5++ >= 0x64)
      {
        goto LABEL_21;
      }
    }

    v12 = v14;
  }

LABEL_21:
  v15 = v12;
}

@end