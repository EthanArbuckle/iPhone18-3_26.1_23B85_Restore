@interface POMutableKeyResponseJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setCertificate:(id)certificate;
- (void)setExp:(id)exp;
- (void)setIat:(id)iat;
- (void)setKey_context:(id)key_context;
@end

@implementation POMutableKeyResponseJWTBody

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

- (void)setCertificate:(id)certificate
{
  certificateCopy = certificate;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:certificateCopy forKeyedSubscript:@"certificate"];
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