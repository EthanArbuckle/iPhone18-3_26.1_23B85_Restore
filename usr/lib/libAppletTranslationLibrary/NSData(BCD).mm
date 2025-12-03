@interface NSData(BCD)
- (uint64_t)decodeBCD;
- (uint64_t)decodeBCDAtOffset:()BCD length:;
- (uint64_t)encodeBCD;
- (uint64_t)encodeBCDAtOffset:()BCD length:;
@end

@implementation NSData(BCD)

- (uint64_t)decodeBCDAtOffset:()BCD length:
{
  v6 = MEMORY[0x277CCABB0];
  bytes = [self bytes];
  v8 = 0;
  if (a4)
  {
    v9 = (bytes + a3);
    do
    {
      v10 = *v9++;
      v8 = (v10 & 0xF) + 100 * v8 + 10 * (v10 >> 4);
      --a4;
    }

    while (a4);
  }

  return [v6 numberWithUnsignedLongLong:v8];
}

- (uint64_t)decodeBCD
{
  v2 = MEMORY[0x277CCABB0];
  bytes = [self bytes];
  v4 = [self length];
  for (i = 0; v4; --v4)
  {
    v6 = *bytes++;
    i = (v6 & 0xF) + 100 * i + 10 * (v6 >> 4);
  }

  return [v2 numberWithUnsignedLongLong:i];
}

- (uint64_t)encodeBCDAtOffset:()BCD length:
{
  v4 = MEMORY[0x277CCABB0];
  v5 = EncodeBCD(([self bytes] + a3), a4);

  return [v4 numberWithUnsignedLongLong:v5];
}

- (uint64_t)encodeBCD
{
  v1 = MEMORY[0x277CCABB0];
  v2 = EncodeBCD([self bytes], objc_msgSend(self, "length"));

  return [v1 numberWithUnsignedLongLong:v2];
}

@end