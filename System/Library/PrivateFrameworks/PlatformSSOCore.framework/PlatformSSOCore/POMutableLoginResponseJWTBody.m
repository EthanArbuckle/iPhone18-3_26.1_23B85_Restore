@interface POMutableLoginResponseJWTBody
- (void)addCustomClaims:(id)a3;
- (void)setAud:(id)a3;
- (void)setExpires_in:(id)a3;
- (void)setExpires_on:(id)a3;
- (void)setIat:(id)a3;
- (void)setId_token:(id)a3;
- (void)setIss:(id)a3;
- (void)setRefresh_token:(id)a3;
- (void)setRefresh_token_expires_in:(id)a3;
- (void)setToken_type:(id)a3;
@end

@implementation POMutableLoginResponseJWTBody

- (void)setAud:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"aud"];
}

- (void)setIss:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"iss"];
}

- (void)setIat:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  v6 = [(_POJWTBodyBase *)self data];
  [v6 setObject:v7 forKeyedSubscript:@"iat"];
}

- (void)setToken_type:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"token_type"];
}

- (void)setExpires_in:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"expires_in"];
}

- (void)setRefresh_token_expires_in:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"refresh_token_expires_in"];
}

- (void)setExpires_on:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  v6 = [(_POJWTBodyBase *)self data];
  [v6 setObject:v7 forKeyedSubscript:@"expires_on"];
}

- (void)setRefresh_token:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"refresh_token"];
}

- (void)setId_token:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"id_token"];
}

- (void)addCustomClaims:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 addEntriesFromDictionary:v4];
}

@end