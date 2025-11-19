@interface MinimalSyndromeHandler
+ (id)getHandlerByName:(id)a3;
+ (void)initialize;
- (NSString)description;
- (void)didReceiveSyndrome:(id)a3;
@end

@implementation MinimalSyndromeHandler

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = minimalSyndromeHandlerDictionary;
  minimalSyndromeHandlerDictionary = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (id)getHandlerByName:(id)a3
{
  v4 = a3;
  p_isa = [minimalSyndromeHandlerDictionary objectForKey:v4];
  if (!p_isa)
  {
    v6 = objc_alloc_init(MinimalSyndromeHandler);
    p_isa = &v6->super.isa;
    if (v6)
    {
      objc_storeStrong(&v6->_syndromeName, a3);
      v7 = [v4 UTF8String];
      if (!v7)
      {
        [WiFiTriggerHandler getHandlerByName:?];
      }

      v8 = strdup(v7);
      if (!v8)
      {
        [WiFiTriggerHandler getHandlerByName:?];
      }

      p_isa[2] = v8;
      [minimalSyndromeHandlerDictionary setObject:p_isa forKey:v4];
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

- (void)didReceiveSyndrome:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v14 = 136315138;
    v15 = [v4 reason];
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
      v15 = v11;
      v16 = 2080;
      v17 = syndromeUTF8Name;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Minimal Syndrome Handler allocated Managed Event Handler at %p for %s", &v14, 0x16u);
    }

    eventHandler = self->_eventHandler;
  }

  [(ManagedEventHandler *)eventHandler didReceiveSyndrome:v4];

  v13 = *MEMORY[0x277D85DE8];
}

@end