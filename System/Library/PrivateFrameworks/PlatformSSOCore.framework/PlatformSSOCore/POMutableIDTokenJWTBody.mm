@interface POMutableIDTokenJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setAud:(id)aud;
- (void)setAudArray:(id)array;
- (void)setAzp:(id)azp;
- (void)setExp:(id)exp;
- (void)setGroups:(id)groups;
- (void)setIat:(id)iat;
- (void)setIss:(id)iss;
- (void)setName:(id)name;
- (void)setNbf:(id)nbf;
- (void)setNonce:(id)nonce;
- (void)setPreferred_username:(id)preferred_username;
- (void)setSub:(id)sub;
@end

@implementation POMutableIDTokenJWTBody

- (void)setAud:(id)aud
{
  audCopy = aud;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:audCopy forKeyedSubscript:@"aud"];
}

- (void)setAudArray:(id)array
{
  arrayCopy = array;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:arrayCopy forKeyedSubscript:@"aud"];
}

- (void)setAzp:(id)azp
{
  azpCopy = azp;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:azpCopy forKeyedSubscript:@"azp"];
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

- (void)setNbf:(id)nbf
{
  v4 = MEMORY[0x277CCABB0];
  [nbf timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  data = [(_POJWTBodyBase *)self data];
  [data setObject:v7 forKeyedSubscript:@"nbf"];
}

- (void)setNonce:(id)nonce
{
  nonceCopy = nonce;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:nonceCopy forKeyedSubscript:@"nonce"];
}

- (void)setName:(id)name
{
  nameCopy = name;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:nameCopy forKeyedSubscript:@"name"];
}

- (void)setPreferred_username:(id)preferred_username
{
  preferred_usernameCopy = preferred_username;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:preferred_usernameCopy forKeyedSubscript:@"preferred_username"];
}

- (void)setGroups:(id)groups
{
  groupsCopy = groups;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:groupsCopy forKeyedSubscript:@"groups"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end