@interface POMutableKeyExchangeResponseJWTBody
- (void)addCustomClaims:(id)a3;
- (void)setExp:(id)a3;
- (void)setIat:(id)a3;
- (void)setKey:(id)a3;
- (void)setKey_context:(id)a3;
@end

@implementation POMutableKeyExchangeResponseJWTBody

- (void)setIat:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  v6 = [(_POJWTBodyBase *)self data];
  [v6 setObject:v7 forKeyedSubscript:@"iat"];
}

- (void)setExp:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  v6 = [(_POJWTBodyBase *)self data];
  [v6 setObject:v7 forKeyedSubscript:@"exp"];
}

- (void)setKey:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"key"];
}

- (void)setKey_context:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"key_context"];
}

- (void)addCustomClaims:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 addEntriesFromDictionary:v4];
}

@end