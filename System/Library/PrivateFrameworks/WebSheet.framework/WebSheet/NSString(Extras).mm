@interface NSString(Extras)
- (id)URLScheme;
- (void)stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets;
@end

@implementation NSString(Extras)

- (void)stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets
{
  selfCopy = self;
  v2 = [self mutableCopy];
  v3 = [v2 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v2, "length")}];
  v4 = [v2 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v2, "length")}] + v3;
  if (v4 + [v2 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v2, "length")}])
  {
    selfCopy = v2;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)URLScheme
{
  v2 = [self rangeOfString:@":"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self substringToIndex:v2];
  }

  return v3;
}

@end