@interface POLoginJWTBody
- (NSArray)amr;
- (NSDate)exp;
- (NSDate)iat;
- (NSString)assertion;
- (NSString)aud;
- (NSString)client_id;
- (NSString)grant_type;
- (NSString)iss;
- (NSString)nonce;
- (NSString)refresh_token;
- (NSString)request_nonce;
- (NSString)scope;
- (NSString)sub;
- (NSString)username;
- (POLoginJWTBody)initWithJWTData:(id)data;
- (id)dataRepresentation;
- (id)description;
- (id)mutableCopy;
- (void)dealloc;
- (void)zeroPassword;
@end

@implementation POLoginJWTBody

- (POLoginJWTBody)initWithJWTData:(id)data
{
  v15.receiver = self;
  v15.super_class = POLoginJWTBody;
  v3 = [(_POJWTBodyBase *)&v15 initWithJWTData:data];
  v4 = v3;
  if (v3)
  {
    data = [(_POJWTBodyBase *)v3 data];
    v6 = [data objectForKeyedSubscript:@"password"];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB28]);
      data2 = [(_POJWTBodyBase *)v4 data];
      v9 = [data2 objectForKeyedSubscript:@"password"];
      v10 = [v9 dataUsingEncoding:4];
      v11 = [v7 initWithData:v10];
      passwordData = v4->_passwordData;
      v4->_passwordData = v11;

      data3 = [(_POJWTBodyBase *)v4 data];
      [data3 removeObjectForKey:@"password"];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(POLoginJWTBody *)self zeroPassword];
  v3.receiver = self;
  v3.super_class = POLoginJWTBody;
  [(POLoginJWTBody *)&v3 dealloc];
}

- (void)zeroPassword
{
  passwordData = self->_passwordData;
  if (passwordData)
  {
    memset_s([(NSMutableData *)passwordData mutableBytes], [(NSMutableData *)self->_passwordData length], 0, [(NSMutableData *)self->_passwordData length]);
    passwordData = self->_passwordData;
  }

  self->_passwordData = 0;
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableLoginJWTBody);
  data = [(_POJWTBodyBase *)self data];
  v5 = [data mutableCopy];
  [(_POJWTBodyBase *)v3 setData:v5];

  v6 = [(NSMutableData *)self->_passwordData mutableCopy];
  [(POLoginJWTBody *)v3 setPasswordData:v6];

  return v3;
}

- (id)dataRepresentation
{
  data = [(_POJWTBodyBase *)self data];
  v4 = [data mutableCopy];

  if (self->_passwordData)
  {
    v5 = SecCFAllocatorZeroize();
    v6 = CFStringCreateWithBytes(v5, [(NSMutableData *)self->_passwordData mutableBytes], [(NSMutableData *)self->_passwordData length], 0x8000100u, 0);
    [v4 setObject:v6 forKeyedSubscript:@"password"];
  }

  v9 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:9 error:&v9];

  return v7;
}

- (NSString)aud
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__POLoginJWTBody_aud__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __21__POLoginJWTBody_aud__block_invoke(v4);

  return v2;
}

id __21__POLoginJWTBody_aud__block_invoke(uint64_t a1)
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
  v4[2] = __21__POLoginJWTBody_iss__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __21__POLoginJWTBody_iss__block_invoke(v4);

  return v2;
}

id __21__POLoginJWTBody_iss__block_invoke(uint64_t a1)
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
  v4[2] = __21__POLoginJWTBody_sub__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __21__POLoginJWTBody_sub__block_invoke(v4);

  return v2;
}

id __21__POLoginJWTBody_sub__block_invoke(uint64_t a1)
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
  v10[2] = __21__POLoginJWTBody_iat__block_invoke;
  v10[3] = &unk_279A3DD00;
  v10[4] = self;
  v3 = __21__POLoginJWTBody_iat__block_invoke(v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __21__POLoginJWTBody_iat__block_invoke_2;
  v9[3] = &unk_279A3DD28;
  v9[4] = self;
  v4 = __21__POLoginJWTBody_iat__block_invoke_2(v9);
  v5 = MEMORY[0x277CBEAA8];
  intValue = [v3 intValue];
  if (!intValue)
  {
    intValue = [v4 intValue];
  }

  v7 = [v5 dateWithTimeIntervalSince1970:intValue];

  return v7;
}

id __21__POLoginJWTBody_iat__block_invoke(uint64_t a1)
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

id __21__POLoginJWTBody_iat__block_invoke_2(uint64_t a1)
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
  v10[2] = __21__POLoginJWTBody_exp__block_invoke;
  v10[3] = &unk_279A3DD00;
  v10[4] = self;
  v3 = __21__POLoginJWTBody_exp__block_invoke(v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __21__POLoginJWTBody_exp__block_invoke_2;
  v9[3] = &unk_279A3DD28;
  v9[4] = self;
  v4 = __21__POLoginJWTBody_exp__block_invoke_2(v9);
  v5 = MEMORY[0x277CBEAA8];
  intValue = [v3 intValue];
  if (!intValue)
  {
    intValue = [v4 intValue];
  }

  v7 = [v5 dateWithTimeIntervalSince1970:intValue];

  return v7;
}

id __21__POLoginJWTBody_exp__block_invoke(uint64_t a1)
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

id __21__POLoginJWTBody_exp__block_invoke_2(uint64_t a1)
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

- (NSString)assertion
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__POLoginJWTBody_assertion__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __27__POLoginJWTBody_assertion__block_invoke(v4);

  return v2;
}

id __27__POLoginJWTBody_assertion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"assertion"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"assertion"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)client_id
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__POLoginJWTBody_client_id__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __27__POLoginJWTBody_client_id__block_invoke(v4);

  return v2;
}

id __27__POLoginJWTBody_client_id__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"client_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"client_id"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)scope
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__POLoginJWTBody_scope__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __23__POLoginJWTBody_scope__block_invoke(v4);

  return v2;
}

id __23__POLoginJWTBody_scope__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"scope"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"scope"];
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
  v4[2] = __23__POLoginJWTBody_nonce__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __23__POLoginJWTBody_nonce__block_invoke(v4);

  return v2;
}

id __23__POLoginJWTBody_nonce__block_invoke(uint64_t a1)
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
  v4[2] = __31__POLoginJWTBody_request_nonce__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __31__POLoginJWTBody_request_nonce__block_invoke(v4);

  return v2;
}

id __31__POLoginJWTBody_request_nonce__block_invoke(uint64_t a1)
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

- (NSString)grant_type
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__POLoginJWTBody_grant_type__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __28__POLoginJWTBody_grant_type__block_invoke(v4);

  return v2;
}

id __28__POLoginJWTBody_grant_type__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"grant_type"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"grant_type"];
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
  v4[2] = __31__POLoginJWTBody_refresh_token__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __31__POLoginJWTBody_refresh_token__block_invoke(v4);

  return v2;
}

id __31__POLoginJWTBody_refresh_token__block_invoke(uint64_t a1)
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

- (NSString)username
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__POLoginJWTBody_username__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __26__POLoginJWTBody_username__block_invoke(v4);

  return v2;
}

id __26__POLoginJWTBody_username__block_invoke(uint64_t a1)
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

- (NSArray)amr
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__POLoginJWTBody_amr__block_invoke;
  v4[3] = &unk_279A3DD88;
  v4[4] = self;
  v2 = __21__POLoginJWTBody_amr__block_invoke(v4);

  return v2;
}

id __21__POLoginJWTBody_amr__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"amr"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"amr"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  data = [(_POJWTBodyBase *)self data];
  v4 = [data mutableCopy];

  if (self->_passwordData)
  {
    [v4 setObject:@"password redacted" forKeyedSubscript:@"password"];
  }

  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:9 error:0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];

  return v6;
}

@end