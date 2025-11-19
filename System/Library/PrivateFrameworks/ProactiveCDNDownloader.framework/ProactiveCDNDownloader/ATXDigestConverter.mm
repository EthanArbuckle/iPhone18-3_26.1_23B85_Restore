@interface ATXDigestConverter
+ (id)binToHex:(id)a3;
@end

@implementation ATXDigestConverter

+ (id)binToHex:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = 2 * [v3 length];
    v6 = [v4 bytes];
    v7 = malloc_type_calloc(v5 | 1, 1uLL, 0x7667467FuLL);
    if ([v4 length])
    {
      v8 = 0;
      v9 = v7 + 1;
      do
      {
        v10 = *(v6 + v8);
        *(v9 - 1) = a0123456789abcd[v10 >> 4];
        *v9 = a0123456789abcd[v10 & 0xF];
        v9 += 2;
        ++v8;
      }

      while (v8 < [v4 length]);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v7 length:v5 encoding:4 freeWhenDone:1];
  }

  else
  {
    v11 = &stru_28732F278;
  }

  return v11;
}

@end