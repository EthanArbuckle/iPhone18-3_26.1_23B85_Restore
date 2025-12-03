@interface POMutableWrappedTokenJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setCipherText:(id)text;
- (void)setEncapsulatedKey:(id)key;
@end

@implementation POMutableWrappedTokenJWTBody

- (void)setEncapsulatedKey:(id)key
{
  keyCopy = key;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:keyCopy forKeyedSubscript:@"encapsulatedKey"];
}

- (void)setCipherText:(id)text
{
  textCopy = text;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:textCopy forKeyedSubscript:@"cipherText"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end