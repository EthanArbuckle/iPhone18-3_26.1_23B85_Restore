@interface POMutableWrappedTokenJWTBody
- (void)addCustomClaims:(id)a3;
- (void)setCipherText:(id)a3;
- (void)setEncapsulatedKey:(id)a3;
@end

@implementation POMutableWrappedTokenJWTBody

- (void)setEncapsulatedKey:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"encapsulatedKey"];
}

- (void)setCipherText:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"cipherText"];
}

- (void)addCustomClaims:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 addEntriesFromDictionary:v4];
}

@end