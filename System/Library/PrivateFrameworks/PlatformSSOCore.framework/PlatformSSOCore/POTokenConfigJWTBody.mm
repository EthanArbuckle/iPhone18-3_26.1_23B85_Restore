@interface POTokenConfigJWTBody
- (NSString)idpTokenId;
- (NSString)loginUserName;
- (NSString)unlockData;
- (NSString)unlockHash;
- (NSString)userName;
- (id)mutableCopy;
@end

@implementation POTokenConfigJWTBody

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableTokenConfigJWTBody);
  v4 = [(_POJWTBodyBase *)self data];
  v5 = [v4 mutableCopy];
  [(_POJWTBodyBase *)v3 setData:v5];

  return v3;
}

- (NSString)userName
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__POTokenConfigJWTBody_userName__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __32__POTokenConfigJWTBody_userName__block_invoke(v4);

  return v2;
}

id __32__POTokenConfigJWTBody_userName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"userName"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"userName"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)loginUserName
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__POTokenConfigJWTBody_loginUserName__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __37__POTokenConfigJWTBody_loginUserName__block_invoke(v4);

  return v2;
}

id __37__POTokenConfigJWTBody_loginUserName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"loginUserName"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"loginUserName"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)unlockData
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__POTokenConfigJWTBody_unlockData__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __34__POTokenConfigJWTBody_unlockData__block_invoke(v4);

  return v2;
}

id __34__POTokenConfigJWTBody_unlockData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"unlockData"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"unlockData"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)unlockHash
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__POTokenConfigJWTBody_unlockHash__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __34__POTokenConfigJWTBody_unlockHash__block_invoke(v4);

  return v2;
}

id __34__POTokenConfigJWTBody_unlockHash__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"unlockHash"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"unlockHash"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)idpTokenId
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__POTokenConfigJWTBody_idpTokenId__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __34__POTokenConfigJWTBody_idpTokenId__block_invoke(v4);

  return v2;
}

id __34__POTokenConfigJWTBody_idpTokenId__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"idpTokenId"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"idpTokenId"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end