@interface AXPhoenixAnalyticsEvent
- (AXPhoenixAnalyticsEvent)init;
- (AXPhoenixAnalyticsEvent)initWithCoder:(id)coder;
- (AXPhoenixAnalyticsEvent)initWithEventType:(int64_t)type eventInfo:(id)info;
- (id)_jsonData;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXPhoenixAnalyticsEvent

- (AXPhoenixAnalyticsEvent)init
{
  location = self;
  objc_storeStrong(&location, 0);
  return 0;
}

- (AXPhoenixAnalyticsEvent)initWithEventType:(int64_t)type eventInfo:(id)info
{
  selfCopy = self;
  v10 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, info);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AXPhoenixAnalyticsEvent;
  selfCopy = [(AXPhoenixAnalyticsEvent *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    selfCopy->_eventType = typeCopy;
    objc_storeStrong(&selfCopy->_eventInfo, location);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  _jsonData = [(AXPhoenixAnalyticsEvent *)self _jsonData];
  v5 = [v3 initWithData:? encoding:?];
  MEMORY[0x277D82BD8](_jsonData);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeInteger:selfCopy->_eventType forKey:@"_eventType"];
  [location[0] encodeObject:selfCopy->_eventInfo forKey:@"_eventInfo"];
  objc_storeStrong(location, 0);
}

- (AXPhoenixAnalyticsEvent)initWithCoder:(id)coder
{
  v17[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  eventType = selfCopy->_eventType;
  eventInfo = selfCopy->_eventInfo;
  selfCopy = 0;
  selfCopy = [(AXPhoenixAnalyticsEvent *)v3 initWithEventType:eventType eventInfo:eventInfo];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = [location[0] decodeIntegerForKey:@"_eventType"];
    selfCopy->_eventType = v6;
    v12 = location[0];
    v11 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v13 = [v11 setWithArray:?];
    v7 = [v12 decodeObjectOfClasses:? forKey:?];
    v8 = selfCopy->_eventInfo;
    selfCopy->_eventInfo = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_jsonData
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:self->_eventInfo])
  {
    v10 = 0;
    v9 = 0;
    eventInfo = selfCopy->_eventInfo;
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:eventInfo options:0 error:&v8];
    objc_storeStrong(&v10, v8);
    v3 = v9;
    v9 = v6;
    MEMORY[0x277D82BD8](v3);
    if (v10)
    {
      oslog = AXLogBackTap();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_32_8_64_8_64(v15, "[AXPhoenixAnalyticsEvent _jsonData]", selfCopy->_eventInfo, v10);
        _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Failed to serialize context %@ to JSON due to error %@.", v15, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      objc_storeStrong(&v9, 0);
    }

    v14 = MEMORY[0x277D82BE0](v9);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  else
  {
    location[0] = AXLogBackTap();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v16, "[AXPhoenixAnalyticsEvent _jsonData]", selfCopy->_eventInfo);
      _os_log_error_impl(&dword_25E4AC000, location[0], v11, "[PHOENIX] %s EventInfo is not valid json: %@", v16, 0x16u);
    }

    objc_storeStrong(location, 0);
    v14 = 0;
  }

  *MEMORY[0x277D85DE8];
  v4 = v14;

  return v4;
}

@end