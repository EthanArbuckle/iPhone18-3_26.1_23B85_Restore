@interface CTCapability
- (BOOL)getCapabilityForSlotID:(int64_t)a3;
- (BOOL)getCapabilityInfo:(id)a3 forSlotID:(int64_t)a4;
- (BOOL)getEnabledForSlotID:(int64_t)a3;
- (CTCapability)initWithCapabilityName:(id)a3;
- (id)getCapabilityInfoObject:(id)a3 forSlotID:(int64_t)a4;
- (void)reset;
- (void)setCapabilityInfo:(id)a3 forSlotID:(int64_t)a4;
- (void)setCapabilityInfoObject:(id)a3 forKey:(id)a4 forSlotID:(int64_t)a5;
@end

@implementation CTCapability

- (CTCapability)initWithCapabilityName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CTCapability;
  v6 = [(CTCapability *)&v13 init];
  v7 = v6;
  if (v6)
  {
    [(CTCapability *)v6 reset];
    objc_storeStrong(&v7->_capabilityName, a3);
    v8 = objc_opt_new();
    capabilityFetched = v7->_capabilityFetched;
    v7->_capabilityFetched = v8;

    v10 = objc_opt_new();
    enabledFetched = v7->_enabledFetched;
    v7->_enabledFetched = v10;
  }

  return v7;
}

- (BOOL)getCapabilityForSlotID:(int64_t)a3
{
  v5 = [(CTCapability *)self capability];
  v6 = [(CTCapability *)self slotNum:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

- (void)setCapabilityInfo:(id)a3 forSlotID:(int64_t)a4
{
  v6 = a3;
  v8 = [(CTCapability *)self capabilityInfo];
  v7 = [(CTCapability *)self slotNum:a4];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (BOOL)getCapabilityInfo:(id)a3 forSlotID:(int64_t)a4
{
  v4 = [(CTCapability *)self getCapabilityInfoObject:a3 forSlotID:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)getCapabilityInfoObject:(id)a3 forSlotID:(int64_t)a4
{
  v6 = a3;
  v7 = [(CTCapability *)self capabilityInfo];
  v8 = [(CTCapability *)self slotNum:a4];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v6];

  return v10;
}

- (void)setCapabilityInfoObject:(id)a3 forKey:(id)a4 forSlotID:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(CTCapability *)self slotNum:a5];
  v11 = [(CTCapability *)self enabledFetched];
  v12 = [v11 objectForKeyedSubscript:v10];
  v13 = [v12 isEqual:MEMORY[0x277CBEC38]];

  if (v13)
  {
    v14 = [(CTCapability *)self capabilityInfo];
    v15 = [v14 objectForKeyedSubscript:v10];

    v16 = [v15 mutableCopy];
    [v16 setObject:v8 forKeyedSubscript:v9];
    v17 = [(CTCapability *)self capabilityInfo];
    [v17 setObject:v16 forKeyedSubscript:v10];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = 136315138;
    v20 = "[CTCapability setCapabilityInfoObject:forKey:forSlotID:]";
    _os_log_error_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: DONOTHING, not fetched", &v19, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)getEnabledForSlotID:(int64_t)a3
{
  v5 = [(CTCapability *)self enabledDict];
  v6 = [(CTCapability *)self slotNum:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

- (void)reset
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setCapabilityFetched:v3];

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setEnabledFetched:v4];

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setCapability:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setCapabilityInfo:v6];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setEnabledDict:v7];
}

@end