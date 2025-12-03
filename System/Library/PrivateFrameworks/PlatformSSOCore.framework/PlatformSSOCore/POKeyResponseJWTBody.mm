@interface POKeyResponseJWTBody
- (NSDate)exp;
- (NSDate)iat;
- (NSString)certificate;
- (NSString)key_context;
- (id)mutableCopy;
@end

@implementation POKeyResponseJWTBody

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableKeyResponseJWTBody);
  data = [(_POJWTBodyBase *)self data];
  v5 = [data mutableCopy];
  [(_POJWTBodyBase *)v3 setData:v5];

  return v3;
}

- (NSDate)iat
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__POKeyResponseJWTBody_iat__block_invoke;
  v10[3] = &unk_279A3DD00;
  v10[4] = self;
  v3 = __27__POKeyResponseJWTBody_iat__block_invoke(v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__POKeyResponseJWTBody_iat__block_invoke_2;
  v9[3] = &unk_279A3DD28;
  v9[4] = self;
  v4 = __27__POKeyResponseJWTBody_iat__block_invoke_2(v9);
  v5 = MEMORY[0x277CBEAA8];
  intValue = [v3 intValue];
  if (!intValue)
  {
    intValue = [v4 intValue];
  }

  v7 = [v5 dateWithTimeIntervalSince1970:intValue];

  return v7;
}

id __27__POKeyResponseJWTBody_iat__block_invoke(uint64_t a1)
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

id __27__POKeyResponseJWTBody_iat__block_invoke_2(uint64_t a1)
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
  v10[2] = __27__POKeyResponseJWTBody_exp__block_invoke;
  v10[3] = &unk_279A3DD00;
  v10[4] = self;
  v3 = __27__POKeyResponseJWTBody_exp__block_invoke(v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__POKeyResponseJWTBody_exp__block_invoke_2;
  v9[3] = &unk_279A3DD28;
  v9[4] = self;
  v4 = __27__POKeyResponseJWTBody_exp__block_invoke_2(v9);
  v5 = MEMORY[0x277CBEAA8];
  intValue = [v3 intValue];
  if (!intValue)
  {
    intValue = [v4 intValue];
  }

  v7 = [v5 dateWithTimeIntervalSince1970:intValue];

  return v7;
}

id __27__POKeyResponseJWTBody_exp__block_invoke(uint64_t a1)
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

id __27__POKeyResponseJWTBody_exp__block_invoke_2(uint64_t a1)
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

- (NSString)certificate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__POKeyResponseJWTBody_certificate__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __35__POKeyResponseJWTBody_certificate__block_invoke(v4);

  return v2;
}

id __35__POKeyResponseJWTBody_certificate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"certificate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"certificate"];
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
  v4[2] = __35__POKeyResponseJWTBody_key_context__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __35__POKeyResponseJWTBody_key_context__block_invoke(v4);

  return v2;
}

id __35__POKeyResponseJWTBody_key_context__block_invoke(uint64_t a1)
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

@end