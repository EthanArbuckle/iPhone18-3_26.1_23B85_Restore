@interface NSData(HexString)
- (id)hexStringWithSpaces:()HexString;
@end

@implementation NSData(HexString)

- (id)hexStringWithSpaces:()HexString
{
  string = [MEMORY[0x277CCAB68] string];
  bytes = [self bytes];
  v7 = [self length];
  if (bytes)
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

        [string appendFormat:v10, *(bytes + v9++)];
      }

      while (v8 != v9);
    }
  }

  return string;
}

@end