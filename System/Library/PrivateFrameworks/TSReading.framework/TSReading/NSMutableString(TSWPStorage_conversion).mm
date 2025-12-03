@interface NSMutableString(TSWPStorage_conversion)
- (uint64_t)replaceBreaksWithPlainTextVersions;
@end

@implementation NSMutableString(TSWPStorage_conversion)

- (uint64_t)replaceBreaksWithPlainTextVersions
{
  result = [self length];
  if (result)
  {
    v3 = 0;
    v6 = 8233;
    v5 = 720906;
    do
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&v5 + v3 length:1 freeWhenDone:0];
      [self replaceOccurrencesOfString:v4 withString:@"\n" options:2 range:{0, objc_msgSend(self, "length")}];

      v3 += 2;
    }

    while (v3 != 6);
    [self replaceOccurrencesOfString:@"\x04" withString:@"\f" options:2 range:{0, objc_msgSend(self, "length")}];
    return [self replaceOccurrencesOfString:@"\x05" withString:@"\f" options:2 range:{0, objc_msgSend(self, "length")}];
  }

  return result;
}

@end