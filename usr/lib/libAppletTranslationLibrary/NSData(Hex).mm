@interface NSData(Hex)
+ (id)dataWithHexString:()Hex;
- (id)asHexString;
@end

@implementation NSData(Hex)

- (id)asHexString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  if ([self length])
  {
    v3 = 0;
    do
    {
      [v2 appendFormat:@"%02X", *(objc_msgSend(self, "bytes") + v3++)];
    }

    while (v3 < [self length]);
  }

  return v2;
}

+ (id)dataWithHexString:()Hex
{
  v3 = a3;
  uTF8String = [v3 UTF8String];
  v5 = 0;
  if (v3)
  {
    v6 = uTF8String;
    if (uTF8String)
    {
      if (([v3 length] & 1) == 0)
      {
        if ([v3 length])
        {
          v13 = 0;
          v7 = malloc_type_malloc([v3 length] >> 1, 0x267085AuLL);
          bzero(v7, [v3 length] >> 1);
          if ([v3 length])
          {
            v8 = 0;
            v9 = MEMORY[0x277D85DE0];
            while (1)
            {
              *__str = *(v6 + v8);
              if (__str[0] < 0 || (*(v9 + 4 * (__str[0] & 0x7F) + 60) & 0x10000) == 0 || *__str < 0 || (*(v9 + 4 * __str[1] + 60) & 0x10000) == 0)
              {
                break;
              }

              *(v7 + (v8 >> 1)) = strtoul(__str, 0, 16);
              v8 += 2;
              if (v8 >= [v3 length])
              {
                goto LABEL_12;
              }
            }

            free(v7);
            goto LABEL_16;
          }

LABEL_12:
          v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:objc_msgSend(v3 freeWhenDone:{"length") >> 1, 1}];
        }

        else
        {
          v10 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
        }

        v5 = v10;
        goto LABEL_17;
      }

LABEL_16:
      v5 = 0;
    }
  }

LABEL_17:

  return v5;
}

@end