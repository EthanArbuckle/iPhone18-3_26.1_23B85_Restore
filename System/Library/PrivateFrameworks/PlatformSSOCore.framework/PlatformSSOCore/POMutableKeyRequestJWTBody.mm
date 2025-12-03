@interface POMutableKeyRequestJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setAud:(id)aud;
- (void)setExp:(id)exp;
- (void)setIat:(id)iat;
- (void)setIss:(id)iss;
- (void)setKey_purpose:(id)key_purpose;
- (void)setNonce:(id)nonce;
- (void)setRefresh_token:(id)refresh_token;
- (void)setRequest_nonce:(id)request_nonce;
- (void)setRequest_type:(id)request_type;
- (void)setSub:(id)sub;
- (void)setUsername:(id)username;
- (void)setVersion:(id)version;
@end

@implementation POMutableKeyRequestJWTBody

- (void)setRequest_type:(id)request_type
{
  request_typeCopy = request_type;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:request_typeCopy forKeyedSubscript:@"request_type"];
}

- (void)setVersion:(id)version
{
  versionCopy = version;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:versionCopy forKeyedSubscript:@"version"];
}

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

- (void)setKey_purpose:(id)key_purpose
{
  key_purposeCopy = key_purpose;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:key_purposeCopy forKeyedSubscript:@"key_purpose"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end