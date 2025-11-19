@interface POMutableUser
- (void)addCustomClaims:(id)a3;
- (void)setAltSecurityIdentity:(id)a3;
- (void)setGeneratedUUID:(id)a3;
- (void)setLoginUserName:(id)a3;
- (void)setUid:(id)a3;
- (void)setUniqueIdpIdentifier:(id)a3;
@end

@implementation POMutableUser

- (void)setLoginUserName:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"loginUserName"];
}

- (void)setGeneratedUUID:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"generatedUUID"];
}

- (void)setUniqueIdpIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"uniqueIdentifier"];
}

- (void)setUid:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"uid"];
}

- (void)setAltSecurityIdentity:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"altSecurityIdentity"];
}

- (void)addCustomClaims:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 addEntriesFromDictionary:v4];
}

@end