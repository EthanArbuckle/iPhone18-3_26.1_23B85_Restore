@interface MinimalSyndromeHandler
+ (id)getHandlerByName:(id)name;
+ (void)initialize;
- (NSString)description;
- (void)didReceiveSyndrome:(id)syndrome;
@end

@implementation MinimalSyndromeHandler

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = minimalSyndromeHandlerDictionary;
  minimalSyndromeHandlerDictionary = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (id)getHandlerByName:(id)name
{
  nameCopy = name;
  p_isa = [minimalSyndromeHandlerDictionary objectForKey:nameCopy];
  if (!p_isa)
  {
    v6 = objc_alloc_init(MinimalSyndromeHandler);
    p_isa = &v6->super.isa;
    if (v6)
    {
      objc_storeStrong(&v6->_syndromeName, name);
      uTF8String = [nameCopy UTF8String];
      if (!uTF8String)
      {
        [WiFiTriggerHandler getHandlerByName:?];
      }

      v8 = strdup(uTF8String);
      if (!v8)
      {
        [WiFiTriggerHandler getHandlerByName:?];
      }

      p_isa[2] = v8;
      [minimalSyndromeHandlerDictionary setObject:p_isa forKey:nameCopy];
    }
  }

  v9 = p_isa;

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ at %p name %@  ", v5, self, self->_syndromeName];

  return v6;
}

- (void)didReceiveSyndrome:(id)syndrome
{
  v18 = *MEMORY[0x277D85DE8];
  syndromeCopy = syndrome;
  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v14 = 136315138;
    reason = [syndromeCopy reason];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  eventHandler = self->_eventHandler;
  if (!eventHandler)
  {
    v8 = [ManagedEventHandler getHandlerByName:self->_syndromeName];
    v9 = self->_eventHandler;
    self->_eventHandler = v8;

    v10 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      syndromeUTF8Name = self->_syndromeUTF8Name;
      v11 = self->_eventHandler;
      v14 = 134218242;
      reason = v11;
      v16 = 2080;
      v17 = syndromeUTF8Name;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Minimal Syndrome Handler allocated Managed Event Handler at %p for %s", &v14, 0x16u);
    }

    eventHandler = self->_eventHandler;
  }

  [(ManagedEventHandler *)eventHandler didReceiveSyndrome:syndromeCopy];

  v13 = *MEMORY[0x277D85DE8];
}

@end