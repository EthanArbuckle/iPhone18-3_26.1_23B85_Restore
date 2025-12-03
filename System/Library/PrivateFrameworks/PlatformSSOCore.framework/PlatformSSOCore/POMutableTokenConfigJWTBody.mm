@interface POMutableTokenConfigJWTBody
- (void)addCustomClaims:(id)claims;
- (void)setIdpTokenId:(id)id;
- (void)setLoginUserName:(id)name;
- (void)setUnlockData:(id)data;
- (void)setUnlockHash:(id)hash;
- (void)setUserName:(id)name;
@end

@implementation POMutableTokenConfigJWTBody

- (void)setUserName:(id)name
{
  nameCopy = name;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:nameCopy forKeyedSubscript:@"userName"];
}

- (void)setLoginUserName:(id)name
{
  nameCopy = name;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:nameCopy forKeyedSubscript:@"loginUserName"];
}

- (void)setUnlockData:(id)data
{
  dataCopy = data;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:dataCopy forKeyedSubscript:@"unlockData"];
}

- (void)setUnlockHash:(id)hash
{
  hashCopy = hash;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:hashCopy forKeyedSubscript:@"unlockHash"];
}

- (void)setIdpTokenId:(id)id
{
  idCopy = id;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:idCopy forKeyedSubscript:@"idpTokenId"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end