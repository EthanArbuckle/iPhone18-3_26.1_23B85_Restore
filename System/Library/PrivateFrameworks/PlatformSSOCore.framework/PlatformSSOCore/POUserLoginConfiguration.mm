@interface POUserLoginConfiguration
- (BOOL)setCustomAssertionRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomAssertionRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomLoginRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomLoginRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (POUserLoginConfiguration)initWithCoder:(id)a3;
- (POUserLoginConfiguration)initWithData:(id)a3;
- (POUserLoginConfiguration)initWithDictionary:(id)a3;
- (POUserLoginConfiguration)initWithLoginUserName:(id)a3;
- (id)description;
- (id)dictionaryRepresentationForDisplay:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation POUserLoginConfiguration

- (POUserLoginConfiguration)initWithLoginUserName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = POUserLoginConfiguration;
  v6 = [(POUserLoginConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loginUserName, a3);
  }

  return v7;
}

- (BOOL)setCustomAssertionRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POUserLoginConfiguration *)self setCustomAssertionRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __81__POUserLoginConfiguration_setCustomAssertionRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __81__POUserLoginConfiguration_setCustomAssertionRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Request header claims are not valid JSON."];
  v1 = PO_LOG_POUserLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomAssertionRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POUserLoginConfiguration *)self setCustomAssertionRequestBodyClaims:v8];
  }

  else
  {
    v9 = __79__POUserLoginConfiguration_setCustomAssertionRequestBodyClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __79__POUserLoginConfiguration_setCustomAssertionRequestBodyClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Request body claims are not valid JSON."];
  v1 = PO_LOG_POUserLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomLoginRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POUserLoginConfiguration *)self setCustomLoginRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __77__POUserLoginConfiguration_setCustomLoginRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __77__POUserLoginConfiguration_setCustomLoginRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Login request header claims are not valid JSON."];
  v1 = PO_LOG_POUserLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomLoginRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POUserLoginConfiguration *)self setCustomLoginRequestBodyClaims:v8];
  }

  else
  {
    v9 = __77__POUserLoginConfiguration_setCustomLoginRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

- (id)dictionaryRepresentationForDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v3)
  {
    loginUserName = [POCredentialUtil maskName:self->_loginUserName];
  }

  else
  {
    loginUserName = self->_loginUserName;
  }

  v7 = NSStringFromSelector(sel_loginUserName);
  [v5 setObject:loginUserName forKeyedSubscript:v7];

  if (v3)
  {
  }

  customAssertionRequestHeaderClaims = self->_customAssertionRequestHeaderClaims;
  v9 = NSStringFromSelector(sel_customAssertionRequestHeaderClaims);
  [v5 setObject:customAssertionRequestHeaderClaims forKeyedSubscript:v9];

  customAssertionRequestBodyClaims = self->_customAssertionRequestBodyClaims;
  v11 = NSStringFromSelector(sel_customAssertionRequestBodyClaims);
  [v5 setObject:customAssertionRequestBodyClaims forKeyedSubscript:v11];

  customLoginRequestHeaderClaims = self->_customLoginRequestHeaderClaims;
  v13 = NSStringFromSelector(sel_customLoginRequestHeaderClaims);
  [v5 setObject:customLoginRequestHeaderClaims forKeyedSubscript:v13];

  customLoginRequestBodyClaims = self->_customLoginRequestBodyClaims;
  v15 = NSStringFromSelector(sel_customLoginRequestBodyClaims);
  [v5 setObject:customLoginRequestBodyClaims forKeyedSubscript:v15];

  v16 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v16 setFormatOptions:1907];
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [v16 stringFromDate:v17];
  [v5 setObject:v18 forKeyedSubscript:@"created"];

  return v5;
}

id __57__POUserLoginConfiguration_dataRepresentationForDisplay___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing user login config."];
  v2 = PO_LOG_POUserLoginConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (POUserLoginConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_loginUserName);
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [(POUserLoginConfiguration *)self initWithLoginUserName:v6];
  if (v7)
  {
    v8 = NSStringFromSelector(sel_customAssertionRequestHeaderClaims);
    v9 = [v4 objectForKeyedSubscript:v8];
    customAssertionRequestHeaderClaims = v7->_customAssertionRequestHeaderClaims;
    v7->_customAssertionRequestHeaderClaims = v9;

    v11 = NSStringFromSelector(sel_customAssertionRequestBodyClaims);
    v12 = [v4 objectForKeyedSubscript:v11];
    customAssertionRequestBodyClaims = v7->_customAssertionRequestBodyClaims;
    v7->_customAssertionRequestBodyClaims = v12;

    v14 = NSStringFromSelector(sel_customLoginRequestHeaderClaims);
    v15 = [v4 objectForKeyedSubscript:v14];
    customLoginRequestHeaderClaims = v7->_customLoginRequestHeaderClaims;
    v7->_customLoginRequestHeaderClaims = v15;

    v17 = NSStringFromSelector(sel_customLoginRequestBodyClaims);
    v18 = [v4 objectForKeyedSubscript:v17];
    customLoginRequestBodyClaims = v7->_customLoginRequestBodyClaims;
    v7->_customLoginRequestBodyClaims = v18;
  }

  return v7;
}

- (POUserLoginConfiguration)initWithData:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v8];
  if (v8)
  {
    v5 = __41__POUserLoginConfiguration_initWithData___block_invoke();
    v6 = 0;
  }

  else
  {
    self = [(POUserLoginConfiguration *)self initWithDictionary:v4];
    v6 = self;
  }

  return v6;
}

id __41__POUserLoginConfiguration_initWithData___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Error deserializing user login config."];
  v1 = PO_LOG_POUserLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(POUserLoginConfiguration *)self dataRepresentation];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (POUserLoginConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(POUserLoginConfiguration *)self initWithData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(POUserLoginConfiguration *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [v4 encodeObject:v6 forKey:v5];
}

- (void)dataRepresentationForDisplay:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "serialized configuration: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end