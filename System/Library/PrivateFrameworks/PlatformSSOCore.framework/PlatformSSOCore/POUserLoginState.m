@interface POUserLoginState
- (POUserLoginState)initWithCoder:(id)a3;
- (POUserLoginState)initWithData:(id)a3;
- (POUserLoginState)initWithDictionary:(id)a3;
- (POUserLoginState)initWithUniqueIdentifier:(id)a3;
- (id)description;
- (id)dictionaryRepresentationForDisplay:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLoginType:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
- (void)setlastLogin:(id)a3;
@end

@implementation POUserLoginState

- (POUserLoginState)initWithUniqueIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = POUserLoginState;
  v6 = [(POUserLoginState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueIdentifier, a3);
    v7->_state = 0;
    v8 = [MEMORY[0x277CBEAA8] date];
    lastUpdated = v7->_lastUpdated;
    v7->_lastUpdated = v8;
  }

  return v7;
}

- (void)setState:(unint64_t)a3
{
  self->_state = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  lastUpdated = self->_lastUpdated;
  self->_lastUpdated = v4;

  MEMORY[0x2821F96F8](v4, lastUpdated);
}

- (void)setlastLogin:(id)a3
{
  objc_storeStrong(&self->_lastLogin, a3);
  v7 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  lastUpdated = self->_lastUpdated;
  self->_lastUpdated = v5;
}

- (void)setLoginType:(unint64_t)a3
{
  self->_loginType = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  lastUpdated = self->_lastUpdated;
  self->_lastUpdated = v4;

  MEMORY[0x2821F96F8](v4, lastUpdated);
}

- (id)dictionaryRepresentationForDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v5 setFormatOptions:1907];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  uniqueIdentifier = self->_uniqueIdentifier;
  v8 = NSStringFromSelector(sel_uniqueIdentifier);
  [v6 setObject:uniqueIdentifier forKeyedSubscript:v8];

  state = self->_state;
  if (v3)
  {
    [POConstantCoreUtil stringForLoginPolicyState:state];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  }
  v10 = ;
  v11 = NSStringFromSelector(sel_state);
  [v6 setObject:v10 forKeyedSubscript:v11];

  lastLogin = self->_lastLogin;
  if (lastLogin)
  {
    v13 = [v5 stringFromDate:self->_lastLogin];
  }

  else
  {
    v13 = 0;
  }

  v14 = NSStringFromSelector(sel_lastLogin);
  [v6 setObject:v13 forKeyedSubscript:v14];

  if (lastLogin)
  {
  }

  loginType = self->_loginType;
  if (v3)
  {
    [POConstantCoreUtil stringForLoginType:loginType];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:loginType];
  }
  v16 = ;
  v17 = NSStringFromSelector(sel_loginType);
  [v6 setObject:v16 forKeyedSubscript:v17];

  lastUpdated = self->_lastUpdated;
  if (lastUpdated)
  {
    v19 = [v5 stringFromDate:lastUpdated];
  }

  else
  {
    v19 = 0;
  }

  v20 = NSStringFromSelector(sel_lastUpdated);
  [v6 setObject:v19 forKeyedSubscript:v20];

  if (lastUpdated)
  {
  }

  v21 = [v6 copy];

  return v21;
}

id __49__POUserLoginState_dataRepresentationForDisplay___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing user state."];
  v2 = PO_LOG_POUserLoginState();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

- (POUserLoginState)initWithData:(id)a3
{
  v12 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__POUserLoginState_initWithData___block_invoke;
    v10[3] = &unk_279A3DC48;
    v11 = v5;
    v7 = __33__POUserLoginState_initWithData___block_invoke(v10);

    v8 = 0;
  }

  else
  {
    self = [(POUserLoginState *)self initWithDictionary:v4];
    v8 = self;
  }

  return v8;
}

id __33__POUserLoginState_initWithData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing user state."];
  v2 = PO_LOG_POUserLoginState();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

- (POUserLoginState)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v5 setFormatOptions:1907];
  v6 = NSStringFromSelector(sel_uniqueIdentifier);
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = [(POUserLoginState *)self initWithUniqueIdentifier:v7];
  if (v8)
  {
    v9 = NSStringFromSelector(sel_state);
    v10 = [v4 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = NSStringFromSelector(sel_state);
      v12 = [v4 objectForKeyedSubscript:v11];

      v8->_state = [v12 unsignedIntValue];
    }

    v13 = NSStringFromSelector(sel_lastLogin);
    v14 = [v4 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = [v5 dateFromString:v14];
      lastLogin = v8->_lastLogin;
      v8->_lastLogin = v15;
    }

    v17 = NSStringFromSelector(sel_loginType);
    v18 = [v4 objectForKeyedSubscript:v17];
    v8->_loginType = [v18 intValue];

    v19 = NSStringFromSelector(sel_lastUpdated);
    v20 = [v4 objectForKeyedSubscript:v19];

    if (v20)
    {
      v21 = [v5 dateFromString:v20];
      lastUpdated = v8->_lastUpdated;
      v8->_lastUpdated = v21;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(POUserLoginState *)self dataRepresentationForDisplay:1];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (POUserLoginState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(POUserLoginState *)self initWithData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(POUserLoginState *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [v4 encodeObject:v6 forKey:v5];
}

@end