@interface NSString(NSURLAdditionsAdditions)
- (BOOL)containsPercentEscapes;
@end

@implementation NSString(NSURLAdditionsAdditions)

- (BOOL)containsPercentEscapes
{
  v2 = [a1 length];
  {
    -[NSString(NSURLAdditionsAdditions) containsPercentEscapes]::hexSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
  }

  v3 = [a1 rangeOfString:@"%" options:0 range:{0, v2}];
  for (i = v3 != 0x7FFFFFFFFFFFFFFFLL; v3 != 0x7FFFFFFFFFFFFFFFLL; i = v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3 + v4;
    v7 = v3 + v4 + 1;
    if (v7 < v2 && [-[NSString(NSURLAdditionsAdditions) containsPercentEscapes]::hexSet characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v6)}] && (objc_msgSend(-[NSString(NSURLAdditionsAdditions) containsPercentEscapes]::hexSet, "characterIsMember:", objc_msgSend(a1, "characterAtIndex:", v7)) & 1) != 0)
    {
      break;
    }

    v3 = [a1 rangeOfString:@"%" options:0 range:{v6, v2 - v6}];
  }

  return i;
}

@end