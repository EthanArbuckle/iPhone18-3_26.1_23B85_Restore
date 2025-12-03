@interface NSString(HexUtil)
- (id)numberFromHexDigits;
@end

@implementation NSString(HexUtil)

- (id)numberFromHexDigits
{
  v2 = [self length];
  if (v2)
  {
    v6 = 0;
    v3 = [MEMORY[0x1E696AE88] scannerWithString:self];
    v4 = [v3 scanHexLongLong:&v6];

    v2 = 0;
    if (v4)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
    }
  }

  return v2;
}

@end