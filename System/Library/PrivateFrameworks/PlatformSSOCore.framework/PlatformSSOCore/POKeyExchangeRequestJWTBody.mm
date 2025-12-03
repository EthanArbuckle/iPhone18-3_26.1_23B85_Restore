@interface POKeyExchangeRequestJWTBody
- (NSDate)exp;
- (NSDate)iat;
- (NSString)aud;
- (NSString)iss;
- (NSString)key_context;
- (NSString)key_purpose;
- (NSString)nonce;
- (NSString)other_publickey;
- (NSString)refresh_token;
- (NSString)request_nonce;
- (NSString)request_type;
- (NSString)sub;
- (NSString)username;
- (NSString)version;
- (id)mutableCopy;
@end

@implementation POKeyExchangeRequestJWTBody

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableKeyExchangeRequestJWTBody);
  data = [(_POJWTBodyBase *)self data];
  v5 = [data mutableCopy];
  [(_POJWTBodyBase *)v3 setData:v5];

  return v3;
}

- (NSString)request_type
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__POKeyExchangeRequestJWTBody_request_type__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __43__POKeyExchangeRequestJWTBody_request_type__block_invoke(v4);

  return v2;
}

id __43__POKeyExchangeRequestJWTBody_request_type__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"request_type"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"request_type"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)version
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__POKeyExchangeRequestJWTBody_version__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __38__POKeyExchangeRequestJWTBody_version__block_invoke(v4);

  return v2;
}

id __38__POKeyExchangeRequestJWTBody_version__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"version"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)aud
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__POKeyExchangeRequestJWTBody_aud__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __34__POKeyExchangeRequestJWTBody_aud__block_invoke(v4);

  return v2;
}

id __34__POKeyExchangeRequestJWTBody_aud__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"aud"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"aud"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)iss
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__POKeyExchangeRequestJWTBody_iss__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __34__POKeyExchangeRequestJWTBody_iss__block_invoke(v4);

  return v2;
}

id __34__POKeyExchangeRequestJWTBody_iss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"iss"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"iss"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)sub
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__POKeyExchangeRequestJWTBody_sub__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __34__POKeyExchangeRequestJWTBody_sub__block_invoke(v4);

  return v2;
}

id __34__POKeyExchangeRequestJWTBody_sub__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"sub"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"sub"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDate)iat
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__POKeyExchangeRequestJWTBody_iat__block_invoke;
  v10[3] = &unk_279A3DD00;
  v10[4] = self;
  v3 = __34__POKeyExchangeRequestJWTBody_iat__block_invoke(v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__POKeyExchangeRequestJWTBody_iat__block_invoke_2;
  v9[3] = &unk_279A3DD28;
  v9[4] = self;
  v4 = __34__POKeyExchangeRequestJWTBody_iat__block_invoke_2(v9);
  v5 = MEMORY[0x277CBEAA8];
  intValue = [v3 intValue];
  if (!intValue)
  {
    intValue = [v4 intValue];
  }

  v7 = [v5 dateWithTimeIntervalSince1970:intValue];

  return v7;
}

id __34__POKeyExchangeRequestJWTBody_iat__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"iat"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"iat"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __34__POKeyExchangeRequestJWTBody_iat__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"iat"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"iat"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDate)exp
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__POKeyExchangeRequestJWTBody_exp__block_invoke;
  v10[3] = &unk_279A3DD00;
  v10[4] = self;
  v3 = __34__POKeyExchangeRequestJWTBody_exp__block_invoke(v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__POKeyExchangeRequestJWTBody_exp__block_invoke_2;
  v9[3] = &unk_279A3DD28;
  v9[4] = self;
  v4 = __34__POKeyExchangeRequestJWTBody_exp__block_invoke_2(v9);
  v5 = MEMORY[0x277CBEAA8];
  intValue = [v3 intValue];
  if (!intValue)
  {
    intValue = [v4 intValue];
  }

  v7 = [v5 dateWithTimeIntervalSince1970:intValue];

  return v7;
}

id __34__POKeyExchangeRequestJWTBody_exp__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"exp"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"exp"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __34__POKeyExchangeRequestJWTBody_exp__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"exp"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"exp"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)nonce
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__POKeyExchangeRequestJWTBody_nonce__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __36__POKeyExchangeRequestJWTBody_nonce__block_invoke(v4);

  return v2;
}

id __36__POKeyExchangeRequestJWTBody_nonce__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"nonce"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"nonce"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)request_nonce
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__POKeyExchangeRequestJWTBody_request_nonce__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __44__POKeyExchangeRequestJWTBody_request_nonce__block_invoke(v4);

  return v2;
}

id __44__POKeyExchangeRequestJWTBody_request_nonce__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"request_nonce"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"request_nonce"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)refresh_token
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__POKeyExchangeRequestJWTBody_refresh_token__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __44__POKeyExchangeRequestJWTBody_refresh_token__block_invoke(v4);

  return v2;
}

id __44__POKeyExchangeRequestJWTBody_refresh_token__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"refresh_token"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"refresh_token"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)other_publickey
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__POKeyExchangeRequestJWTBody_other_publickey__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __46__POKeyExchangeRequestJWTBody_other_publickey__block_invoke(v4);

  return v2;
}

id __46__POKeyExchangeRequestJWTBody_other_publickey__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"other_publickey"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"other_publickey"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)key_context
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__POKeyExchangeRequestJWTBody_key_context__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __42__POKeyExchangeRequestJWTBody_key_context__block_invoke(v4);

  return v2;
}

id __42__POKeyExchangeRequestJWTBody_key_context__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"key_context"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"key_context"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)username
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__POKeyExchangeRequestJWTBody_username__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __39__POKeyExchangeRequestJWTBody_username__block_invoke(v4);

  return v2;
}

id __39__POKeyExchangeRequestJWTBody_username__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"username"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"username"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)key_purpose
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__POKeyExchangeRequestJWTBody_key_purpose__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __42__POKeyExchangeRequestJWTBody_key_purpose__block_invoke(v4);

  return v2;
}

id __42__POKeyExchangeRequestJWTBody_key_purpose__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"key_purpose"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"key_purpose"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end