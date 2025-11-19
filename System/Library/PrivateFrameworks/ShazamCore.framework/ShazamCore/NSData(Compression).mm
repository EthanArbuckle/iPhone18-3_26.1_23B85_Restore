@interface NSData(Compression)
- (uint64_t)sh_rangeOfData:()Compression;
@end

@implementation NSData(Compression)

- (uint64_t)sh_rangeOfData:()Compression
{
  v4 = a3;
  v5 = [a1 bytes];
  v6 = [a1 length];
  v7 = [v4 bytes];
  v8 = [v4 length];
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (*(v5 + v9) == *(v7 + v10))
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v9;
        }

        if (++v10 >= v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v6 == ++v9)
      {
        goto LABEL_12;
      }
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:

  return v11;
}

@end