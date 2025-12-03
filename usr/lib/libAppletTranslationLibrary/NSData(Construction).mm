@interface NSData(Construction)
+ (id)dataWithIntBE:()Construction;
+ (id)dataWithLongBE:()Construction;
+ (id)dataWithReversedBytes:()Construction length:;
+ (id)dataWithShortBE:()Construction;
+ (uint64_t)randomData:()Construction;
@end

@implementation NSData(Construction)

+ (id)dataWithShortBE:()Construction
{
  v5 = __rev16(a3);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:2];

  return v3;
}

+ (id)dataWithIntBE:()Construction
{
  v5 = bswap32(a3);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:4];

  return v3;
}

+ (id)dataWithLongBE:()Construction
{
  v5 = bswap64(a3);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:8];

  return v3;
}

+ (id)dataWithReversedBytes:()Construction length:
{
  v4 = 0;
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      v4 = [MEMORY[0x277CBEB28] dataWithLength:a4];
      mutableBytes = [v4 mutableBytes];
      do
      {
        *mutableBytes++ = *(a3 - 1 + v5--);
      }

      while (v5);
    }
  }

  return v4;
}

+ (uint64_t)randomData:()Construction
{
  v4 = malloc_type_calloc(1uLL, size, 0x25303587uLL);
  arc4random_buf(v4, size);
  v5 = MEMORY[0x277CBEA90];

  return [v5 dataWithBytesNoCopy:v4 length:size freeWhenDone:1];
}

@end