@interface NSString(HexString)
- (id)hexStringAsData;
@end

@implementation NSString(HexString)

- (id)hexStringAsData
{
  selfCopy = self;
  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(selfCopy, "length") >> 1}];
  v11 = 0;
  if ([selfCopy length] >= 2)
  {
    v4 = 0;
    v5 = 1;
    v6 = MEMORY[0x1E69E9830];
    while (1)
    {
      v7 = [selfCopy characterAtIndex:v5 - 1];
      __str[0] = v7;
      v8 = [selfCopy characterAtIndex:v5];
      __str[1] = v8;
      if (v7 < 0)
      {
        break;
      }

      v3 = 0;
      if ((*(v6 + 4 * (v7 & 0x7F) + 60) & 0x10000) == 0 || v8 < 0)
      {
        goto LABEL_11;
      }

      if ((*(v6 + 4 * (v8 & 0x7F) + 60) & 0x10000) == 0)
      {
        break;
      }

      HIBYTE(v11) = strtol(__str, 0, 16);
      [v2 appendBytes:&v11 + 1 length:1];
      ++v4;
      v5 += 2;
      if (v4 >= [selfCopy length] >> 1)
      {
        goto LABEL_2;
      }
    }

    v3 = 0;
  }

  else
  {
LABEL_2:
    v3 = v2;
  }

LABEL_11:

  return v3;
}

@end