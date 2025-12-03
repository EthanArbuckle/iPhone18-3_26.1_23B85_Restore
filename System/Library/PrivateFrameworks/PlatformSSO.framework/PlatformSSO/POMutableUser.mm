@interface POMutableUser
- (void)addCustomClaims:(id)claims;
- (void)setAltSecurityIdentity:(id)identity;
- (void)setGeneratedUUID:(id)d;
- (void)setLoginUserName:(id)name;
- (void)setUid:(id)uid;
- (void)setUniqueIdpIdentifier:(id)identifier;
@end

@implementation POMutableUser

- (void)setLoginUserName:(id)name
{
  nameCopy = name;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:nameCopy forKeyedSubscript:@"loginUserName"];
}

- (void)setGeneratedUUID:(id)d
{
  dCopy = d;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:dCopy forKeyedSubscript:@"generatedUUID"];
}

- (void)setUniqueIdpIdentifier:(id)identifier
{
  identifierCopy = identifier;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:identifierCopy forKeyedSubscript:@"uniqueIdentifier"];
}

- (void)setUid:(id)uid
{
  uidCopy = uid;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:uidCopy forKeyedSubscript:@"uid"];
}

- (void)setAltSecurityIdentity:(id)identity
{
  identityCopy = identity;
  data = [(_POJWTBodyBase *)self data];
  [data setObject:identityCopy forKeyedSubscript:@"altSecurityIdentity"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(_POJWTBodyBase *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

@end