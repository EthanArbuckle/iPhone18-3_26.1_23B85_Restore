@interface NSString
- (id)_baassets_stringByRemovingLastIdentifierComponent;
- (id)_baassets_validUTI;
- (id)_baassets_validUTIWithWildcard;
@end

@implementation NSString

- (id)_baassets_stringByRemovingLastIdentifierComponent
{
  v3 = [(NSString *)self rangeOfString:@"." options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_10007B210;
  }

  else
  {
    v4 = [(NSString *)self substringToIndex:v3];
  }

  return v4;
}

- (id)_baassets_validUTI
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-."];
  v4 = [v3 invertedSet];

  v5 = [(NSString *)self stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (id)_baassets_validUTIWithWildcard
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-.*"];
  v4 = [v3 invertedSet];

  v5 = [(NSString *)self stringByTrimmingCharactersInSet:v4];

  return v5;
}

@end