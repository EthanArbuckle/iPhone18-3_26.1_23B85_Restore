@interface NSString(PSGAboutFormatting)
- (id)psg_ICCIDString;
- (id)psg_IMEIString;
@end

@implementation NSString(PSGAboutFormatting)

- (id)psg_ICCIDString
{
  v2 = [self mutableCopy];
  if ([self length] >= 4 && objc_msgSend(self, "length") >= 5)
  {
    v3 = 0;
    v4 = 4;
    do
    {
      if ([self length] > v4)
      {
        [v2 insertString:@" " atIndex:v4 + v3++];
      }

      v4 += 4;
    }

    while ([self length] > v4);
  }

  return v2;
}

- (id)psg_IMEIString
{
  v1 = [self mutableCopy];
  if ([v1 length] >= 3)
  {
    [v1 insertString:@" " atIndex:2];
  }

  if ([v1 length] >= 0xA)
  {
    [v1 insertString:@" " atIndex:9];
  }

  if ([v1 length] >= 0x11)
  {
    [v1 insertString:@" " atIndex:16];
  }

  return v1;
}

@end