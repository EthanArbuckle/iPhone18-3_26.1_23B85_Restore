@interface POMutableLoginResponseJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setAud:(id)aud;
- (void)setExpires_in:(id)expires_in;
- (void)setExpires_on:(id)expires_on;
- (void)setIat:(id)iat;
- (void)setId_token:(id)id_token;
- (void)setIss:(id)iss;
- (void)setRefresh_token:(id)refresh_token;
- (void)setRefresh_token_expires_in:(id)refresh_token_expires_in;
- (void)setToken_type:(id)token_type;
@end

@implementation POMutableLoginResponseJWTBody

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

- (void)setIat:(id)iat
{
  v4 = MEMORY[0x277CCABB0];
  [iat timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  data = [(_POJWTBodyBase *)self data];
  [data setObject:v7 forKeyedSubscript:@"iat"];
}

- (void)setToken_type:(id)token_type
{
  token_typeCopy = token_type;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:token_typeCopy forKeyedSubscript:@"token_type"];
}

- (void)setExpires_in:(id)expires_in
{
  expires_inCopy = expires_in;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:expires_inCopy forKeyedSubscript:@"expires_in"];
}

- (void)setRefresh_token_expires_in:(id)refresh_token_expires_in
{
  refresh_token_expires_inCopy = refresh_token_expires_in;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:refresh_token_expires_inCopy forKeyedSubscript:@"refresh_token_expires_in"];
}

- (void)setExpires_on:(id)expires_on
{
  v4 = MEMORY[0x277CCABB0];
  [expires_on timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  data = [(_POJWTBodyBase *)self data];
  [data setObject:v7 forKeyedSubscript:@"expires_on"];
}

- (void)setRefresh_token:(id)refresh_token
{
  refresh_tokenCopy = refresh_token;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:refresh_tokenCopy forKeyedSubscript:@"refresh_token"];
}

- (void)setId_token:(id)id_token
{
  id_tokenCopy = id_token;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:id_tokenCopy forKeyedSubscript:@"id_token"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end