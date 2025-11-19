@interface POMutableTokenConfigJWTBody
- (void)addCustomClaims:(id)a3;
- (void)setIdpTokenId:(id)a3;
- (void)setLoginUserName:(id)a3;
- (void)setUnlockData:(id)a3;
- (void)setUnlockHash:(id)a3;
- (void)setUserName:(id)a3;
@end

@implementation POMutableTokenConfigJWTBody

- (void)setUserName:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"userName"];
}

- (void)setLoginUserName:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"loginUserName"];
}

- (void)setUnlockData:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"unlockData"];
}

- (void)setUnlockHash:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"unlockHash"];
}

- (void)setIdpTokenId:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"idpTokenId"];
}

- (void)addCustomClaims:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 addEntriesFromDictionary:v4];
}

@end