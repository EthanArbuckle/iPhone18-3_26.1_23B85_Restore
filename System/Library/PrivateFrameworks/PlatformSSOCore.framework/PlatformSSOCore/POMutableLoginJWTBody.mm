@interface POMutableLoginJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setAmr:(id)amr;
- (void)setAssertion:(id)assertion;
- (void)setAud:(id)aud;
- (void)setClient_id:(id)client_id;
- (void)setExp:(id)exp;
- (void)setGrant_type:(id)grant_type;
- (void)setIat:(id)iat;
- (void)setIss:(id)iss;
- (void)setNonce:(id)nonce;
- (void)setRefresh_token:(id)refresh_token;
- (void)setRequest_nonce:(id)request_nonce;
- (void)setScope:(id)scope;
- (void)setSub:(id)sub;
- (void)setUsername:(id)username;
@end

@implementation POMutableLoginJWTBody

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

- (void)setAssertion:(id)assertion
{
  assertionCopy = assertion;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:assertionCopy forKeyedSubscript:@"assertion"];
}

- (void)setClient_id:(id)client_id
{
  client_idCopy = client_id;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:client_idCopy forKeyedSubscript:@"client_id"];
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

- (void)setGrant_type:(id)grant_type
{
  grant_typeCopy = grant_type;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:grant_typeCopy forKeyedSubscript:@"grant_type"];
}

- (void)setRefresh_token:(id)refresh_token
{
  refresh_tokenCopy = refresh_token;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:refresh_tokenCopy forKeyedSubscript:@"refresh_token"];
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:usernameCopy forKeyedSubscript:@"username"];
}

- (void)setAmr:(id)amr
{
  amrCopy = amr;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:amrCopy forKeyedSubscript:@"amr"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end