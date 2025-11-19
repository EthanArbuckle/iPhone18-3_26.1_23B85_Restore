@interface POJWTHeader
- (NSArray)x5c;
- (NSDictionary)epk;
- (NSNumber)p2c;
- (NSString)alg;
- (NSString)apu;
- (NSString)apv;
- (NSString)cty;
- (NSString)enc;
- (NSString)kid;
- (NSString)p2s;
- (NSString)typ;
- (NSString)x5t;
- (POJWTHeader)init;
- (POJWTHeader)initWithJWTData:(id)a3;
- (id)dataRepresentation;
- (id)description;
- (id)mutableCopy;
@end

@implementation POJWTHeader

- (POJWTHeader)init
{
  v6.receiver = self;
  v6.super_class = POJWTHeader;
  v2 = [(POJWTHeader *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (POJWTHeader)initWithJWTData:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = POJWTHeader;
  v5 = [(POJWTHeader *)&v18 init];
  if (v5)
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:16 error:&v17];
    v7 = v17;
    v8 = v7;
    if (!v6)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __31__POJWTHeader_initWithJWTData___block_invoke;
      v15[3] = &unk_279A3DC48;
      v16 = v7;
      v12 = v7;
      v13 = __31__POJWTHeader_initWithJWTData___block_invoke(v15);

      v11 = 0;
      goto LABEL_6;
    }

    v9 = [v6 mutableCopy];
    data = v5->_data;
    v5->_data = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

id __31__POJWTHeader_initWithJWTData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error with JWT header data."];
  v2 = PO_LOG_POJWTHeader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)dataRepresentation
{
  data = self->_data;
  v10 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:data options:9 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__POJWTHeader_dataRepresentation__block_invoke;
    v8[3] = &unk_279A3DC48;
    v9 = v4;
    v6 = __33__POJWTHeader_dataRepresentation__block_invoke(v8);
  }

  return v3;
}

id __33__POJWTHeader_dataRepresentation__block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error with JWT body data representation."];
  v2 = PO_LOG_POJWTHeader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (NSString)typ
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_typ__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_typ__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_typ__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"typ"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"typ"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)cty
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_cty__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_cty__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_cty__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"cty"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"cty"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)alg
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_alg__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_alg__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_alg__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"alg"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"alg"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)x5c
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_x5c__block_invoke;
  v4[3] = &unk_279A3DD88;
  v4[4] = self;
  v2 = __18__POJWTHeader_x5c__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_x5c__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"x5c"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"x5c"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)x5t
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_x5t__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_x5t__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_x5t__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"x5t"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"x5t"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)kid
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_kid__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_kid__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_kid__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"kid"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"kid"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)enc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_enc__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_enc__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_enc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"enc"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"enc"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)p2s
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_p2s__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_p2s__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_p2s__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"p2s"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"p2s"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)p2c
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_p2c__block_invoke;
  v4[3] = &unk_279A3DD00;
  v4[4] = self;
  v2 = __18__POJWTHeader_p2c__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_p2c__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"p2c"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"p2c"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)epk
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_epk__block_invoke;
  v4[3] = &unk_279A3E2F0;
  v4[4] = self;
  v2 = __18__POJWTHeader_epk__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_epk__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"epk"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"epk"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)apu
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_apu__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_apu__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_apu__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"apu"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"apu"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)apv
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __18__POJWTHeader_apv__block_invoke;
  v4[3] = &unk_279A3DD28;
  v4[4] = self;
  v2 = __18__POJWTHeader_apv__block_invoke(v4);

  return v2;
}

id __18__POJWTHeader_apv__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"apv"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"apv"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableJWTHeader);
  v4 = [(NSMutableDictionary *)self->_data mutableCopy];
  [(POJWTHeader *)v3 setData:v4];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(POJWTHeader *)self dataRepresentation];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

@end