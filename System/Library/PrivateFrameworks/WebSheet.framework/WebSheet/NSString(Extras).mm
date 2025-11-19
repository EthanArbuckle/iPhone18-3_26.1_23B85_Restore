@interface NSString(Extras)
- (id)URLScheme;
- (void)stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets;
@end

@implementation NSString(Extras)

- (void)stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets
{
  v1 = a1;
  v2 = [a1 mutableCopy];
  v3 = [v2 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v2, "length")}];
  v4 = [v2 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v2, "length")}] + v3;
  if (v4 + [v2 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v2, "length")}])
  {
    v1 = v2;
  }

  v5 = v1;

  return v1;
}

- (id)URLScheme
{
  v2 = [a1 rangeOfString:@":"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

@end