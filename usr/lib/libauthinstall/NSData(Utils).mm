@interface NSData(Utils)
- (id)byteString;
@end

@implementation NSData(Utils)

- (id)byteString
{
  v2 = [MEMORY[0x29EDBA050] string];
  v3 = [a1 bytes];
  if ([a1 length])
  {
    v4 = 0;
    do
    {
      [v2 appendFormat:@"%02x", *(v3 + v4++)];
    }

    while (v4 < [a1 length]);
  }

  v5 = [MEMORY[0x29EDBA0F8] stringWithString:v2];

  return v5;
}

@end