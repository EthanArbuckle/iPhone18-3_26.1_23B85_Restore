@interface NSData(HexString)
+ (id)dataWithHexString:()HexString;
- (__CFString)hexString;
@end

@implementation NSData(HexString)

+ (id)dataWithHexString:()HexString
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_287F632C0];
  __str[2] = 0;
  v4 = malloc_type_malloc([v3 length] >> 1, 0x32EC2B8FuLL);
  if ([v3 length])
  {
    v5 = 0;
    v6 = v4;
    do
    {
      __str[0] = [v3 characterAtIndex:v5];
      __str[1] = [v3 characterAtIndex:v5 + 1];
      v9 = 0;
      *v6++ = strtol(__str, &v9, 16);
      v5 += 2;
    }

    while (v5 < [v3 length]);
  }

  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:objc_msgSend(v3 freeWhenDone:{"length") >> 1, 1}];

  return v7;
}

- (__CFString)hexString
{
  v2 = [self length];
  if (v2 && (v3 = v2, [self bytes]))
  {
    v4 = 2 * [self length];
    v5 = 2 * v3;
    v6 = malloc_type_malloc((2 * v3) | 1, 0x100004077774924uLL);
    v6[v4] = 0;
    bytes = [self bytes];
    if ([self length])
    {
      v8 = 0;
      v9 = v6;
      do
      {
        sprintf(v9, "%02X", *(bytes + v8++));
        v9 += 2;
      }

      while ([self length] > v8);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v6 length:v5 encoding:1 freeWhenDone:1];
  }

  else
  {
    v10 = &stru_287F632C0;
  }

  return v10;
}

@end