@interface NSMutableString(PSGNSMutableString)
- (void)psg_removeCharactersFromSet:()PSGNSMutableString;
@end

@implementation NSMutableString(PSGNSMutableString)

- (void)psg_removeCharactersFromSet:()PSGNSMutableString
{
  v7 = a3;
  v4 = [self rangeOfCharacterFromSet:v7 options:2 range:{0, objc_msgSend(self, "length")}];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [self rangeOfCharacterFromSet:v7 options:2 range:{i, objc_msgSend(self, "length") - i}])
    {
      [self deleteCharactersInRange:{i, v5}];
    }
  }
}

@end