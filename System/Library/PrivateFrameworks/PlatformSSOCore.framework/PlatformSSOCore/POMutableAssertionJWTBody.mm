@interface POMutableAssertionJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setAud:(id)aud;
- (void)setExp:(id)exp;
- (void)setIat:(id)iat;
- (void)setIss:(id)iss;
- (void)setNonce:(id)nonce;
- (void)setRequest_nonce:(id)request_nonce;
- (void)setScope:(id)scope;
- (void)setSub:(id)sub;
@end

@implementation POMutableAssertionJWTBody

- (void)setAud:(id)aud
{
  audCopy = aud;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:audCopy forKeyedSubscript:@"aud"];
}

- (void)setIss:(id)iss
{
  issCopy = iss;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:issCopy forKeyedSubscript:@"iss"];
}

- (void)setSub:(id)sub
{
  subCopy = sub;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:subCopy forKeyedSubscript:@"sub"];
}

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

- (void)setScope:(id)scope
{
  scopeCopy = scope;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:scopeCopy forKeyedSubscript:@"scope"];
}

- (void)setNonce:(id)nonce
{
  nonceCopy = nonce;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:nonceCopy forKeyedSubscript:@"nonce"];
}

- (void)setRequest_nonce:(id)request_nonce
{
  request_nonceCopy = request_nonce;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:request_nonceCopy forKeyedSubscript:@"request_nonce"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end