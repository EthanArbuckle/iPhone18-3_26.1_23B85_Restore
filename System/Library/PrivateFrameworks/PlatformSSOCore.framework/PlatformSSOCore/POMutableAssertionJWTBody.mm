@interface POMutableAssertionJWTBody
- (void)addCustomClaims:(id)a3;
- (void)setAud:(id)a3;
- (void)setExp:(id)a3;
- (void)setIat:(id)a3;
- (void)setIss:(id)a3;
- (void)setNonce:(id)a3;
- (void)setRequest_nonce:(id)a3;
- (void)setScope:(id)a3;
- (void)setSub:(id)a3;
@end

@implementation POMutableAssertionJWTBody

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

- (void)setSub:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"sub"];
}

- (void)setIat:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  v6 = [(_POJWTBodyBase *)self data];
  [v6 setObject:v7 forKeyedSubscript:@"iat"];
}

- (void)setExp:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSince1970];
  v7 = [v4 numberWithDouble:floor(v5)];
  v6 = [(_POJWTBodyBase *)self data];
  [v6 setObject:v7 forKeyedSubscript:@"exp"];
}

- (void)setScope:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"scope"];
}

- (void)setNonce:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"nonce"];
}

- (void)setRequest_nonce:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"request_nonce"];
}

- (void)addCustomClaims:(id)a3
{
  v4 = a3;
  v5 = [(_POJWTBodyBase *)self data];
  [v5 addEntriesFromDictionary:v4];
}

@end