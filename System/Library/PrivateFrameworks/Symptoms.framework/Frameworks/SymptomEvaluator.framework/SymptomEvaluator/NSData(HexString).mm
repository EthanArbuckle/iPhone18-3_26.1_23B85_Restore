@interface NSData(HexString)
- (id)hexStringWithSpaces:()HexString;
@end

@implementation NSData(HexString)

- (id)hexStringWithSpaces:()HexString
{
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [a1 bytes];
  v7 = [a1 length];
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      do
      {
        if (((v9 != 0) & a3) != 0)
        {
          v10 = @" %02X";
        }

        else
        {
          v10 = @"%02X";
        }

        [v5 appendFormat:v10, *(v6 + v9++)];
      }

      while (v8 != v9);
    }
  }

  return v5;
}

@end