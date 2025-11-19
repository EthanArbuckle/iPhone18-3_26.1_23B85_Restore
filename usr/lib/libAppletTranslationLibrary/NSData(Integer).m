@interface NSData(Integer)
- (uint64_t)s24BE:()Integer;
@end

@implementation NSData(Integer)

- (uint64_t)s24BE:()Integer
{
  v5 = [a1 u8:?];
  v6 = [a1 u16BE:a3 + 1] | (v5 << 16);
  if ((v5 & 0x80u) == 0)
  {
    return v6;
  }

  else
  {
    return v6 | 0xFF000000;
  }
}

@end