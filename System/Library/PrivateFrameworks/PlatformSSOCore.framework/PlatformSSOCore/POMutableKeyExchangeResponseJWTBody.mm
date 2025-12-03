@interface POMutableKeyExchangeResponseJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setExp:(id)exp;
- (void)setIat:(id)iat;
- (void)setKey:(id)key;
- (void)setKey_context:(id)key_context;
@end

@implementation POMutableKeyExchangeResponseJWTBody

- (void)setIat:(id)iat
{
  v4 = MEMORY[0x277CCABB0];
  [iat timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  data = [(_POJWTBodyBase *)self data];
  [data setObject:v7 forKeyedSubscript:@"iat"];
}

- (void)setExp:(id)exp
{
  v4 = MEMORY[0x277CCABB0];
  [exp timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  data = [(_POJWTBodyBase *)self data];
  [data setObject:v7 forKeyedSubscript:@"exp"];
}

- (void)setKey:(id)key
{
  keyCopy = key;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:keyCopy forKeyedSubscript:@"key"];
}

- (void)setKey_context:(id)key_context
{
  key_contextCopy = key_context;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:key_contextCopy forKeyedSubscript:@"key_context"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end