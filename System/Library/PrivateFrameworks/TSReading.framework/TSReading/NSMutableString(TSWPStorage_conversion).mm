@interface NSMutableString(TSWPStorage_conversion)
- (uint64_t)replaceBreaksWithPlainTextVersions;
@end

@implementation NSMutableString(TSWPStorage_conversion)

- (uint64_t)replaceBreaksWithPlainTextVersions
{
  result = [a1 length];
  if (result)
  {
    v3 = 0;
    v6 = 8233;
    v5 = 720906;
    do
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&v5 + v3 length:1 freeWhenDone:0];
      [a1 replaceOccurrencesOfString:v4 withString:@"\n" options:2 range:{0, objc_msgSend(a1, "length")}];

      v3 += 2;
    }

    while (v3 != 6);
    [a1 replaceOccurrencesOfString:@"\x04" withString:@"\f" options:2 range:{0, objc_msgSend(a1, "length")}];
    return [a1 replaceOccurrencesOfString:@"\x05" withString:@"\f" options:2 range:{0, objc_msgSend(a1, "length")}];
  }

  return result;
}

@end