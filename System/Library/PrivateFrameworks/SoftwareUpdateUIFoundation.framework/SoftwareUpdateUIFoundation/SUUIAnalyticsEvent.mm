@interface SUUIAnalyticsEvent
- (SUUIAnalyticsEvent)initWithCoder:(id)coder;
- (SUUIAnalyticsEvent)initWithEventType:(int64_t)type;
- (SUUIAnalyticsEvent)initWithEventType:(int64_t)type payload:(id)payload;
- (SUUIAnalyticsEvent)initWithInteractionType:(int64_t)type;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUUIAnalyticsEvent

- (SUUIAnalyticsEvent)initWithEventType:(int64_t)type
{
  v5 = 0;
  v5 = [(SUUIAnalyticsEvent *)self initWithEventType:type payload:?];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  return v4;
}

- (SUUIAnalyticsEvent)initWithEventType:(int64_t)type payload:(id)payload
{
  selfCopy = self;
  v13 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, payload);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = SUUIAnalyticsEvent;
  v7 = [(SUUIAnalyticsEvent *)&v10 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    selfCopy->_eventType = typeCopy;
    v8 = 0;
    if (location)
    {
      v9 = [location copy];
      v8 = 1;
      objc_storeStrong(&selfCopy->_payload, v9);
    }

    else
    {
      objc_storeStrong(&selfCopy->_payload, MEMORY[0x277CBEC10]);
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (SUUIAnalyticsEvent)initWithInteractionType:(int64_t)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9 = @"__SUUI_userInteractionType";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v10[0] = v7;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  selfCopy = 0;
  selfCopy = [(SUUIAnalyticsEvent *)self initWithEventType:0 payload:?];
  v6 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

- (SUUIAnalyticsEvent)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v21 = [location[0] decodeIntegerForKey:@"eventType"];
  if (v21 < 0 || v21 > 1)
  {
    v21 = 0;
  }

  v16 = location[0];
  v15 = MEMORY[0x277CBEB98];
  v18 = 0x277CBE000uLL;
  v14 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v17 = [v15 setWithObjects:{v14, v10, v11, v12, v13, objc_opt_class(), 0}];
  v20 = [v16 decodeObjectOfClasses:? forKey:?];
  MEMORY[0x277D82BD8](v17);
  payload = selfCopy->_payload;
  v3 = *(v18 + 2752);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_storeStrong(&v20, MEMORY[0x277CBEC10]);
  }

  v7 = &selfCopy;
  v4 = selfCopy;
  v6 = &v20;
  obj = 0;
  selfCopy = 0;
  selfCopy = [(SUUIAnalyticsEvent *)v4 initWithEventType:v21 payload:v20];
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(v6, obj);
  objc_storeStrong(location, obj);
  objc_storeStrong(v7, obj);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeInteger:selfCopy->_eventType forKey:@"eventType"];
  [location[0] encodeObject:selfCopy->_payload forKey:@"payload"];
  objc_storeStrong(location, 0);
}

- (id)descriptionDictionary
{
  v23[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (!self->_payload)
  {
    goto LABEL_6;
  }

  location[0] = [(NSDictionary *)selfCopy->_payload objectForKey:@"__SUUI_userInteractionType"];
  if (location[0])
  {
    v22[0] = @"eventType";
    v11 = SUUIAnalyticsEventTypeToString(selfCopy->_eventType);
    v23[0] = v11;
    v22[1] = @"userInteractionType";
    v10 = SUUIAnalyticsEventTypeToString([location[0] intValue]);
    v23[1] = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  if (!v12)
  {
LABEL_6:
    v20[0] = @"eventType";
    v9 = SUUIAnalyticsEventTypeToString(selfCopy->_eventType);
    v21[0] = v9;
    v20[1] = @"payload";
    payload = selfCopy->_payload;
    v18 = 0;
    objc_storeStrong(&v18, payload);
    v16 = 0;
    if (v18)
    {
      v3 = MEMORY[0x277D82BE0](v18);
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      v16 = 1;
      v3 = MEMORY[0x277D82BE0](null);
    }

    v19 = v3;
    if (v16)
    {
      MEMORY[0x277D82BD8](null);
    }

    objc_storeStrong(&v18, 0);
    v7 = v19;
    v4 = v19;
    v8 = v7;
    v21[1] = v8;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  *MEMORY[0x277D85DE8];
  v5 = v15;

  return v5;
}

@end