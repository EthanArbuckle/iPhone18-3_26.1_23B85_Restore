@interface SKDPowerLogger
- (BOOL)supportedEvent:(id)event;
- (SKDPowerLogger)initWithDomain:(id)domain powerProvider:(id)provider;
- (id)logs;
- (void)dealloc;
- (void)flush;
- (void)logEvent:(id)event level:(unint64_t)level;
@end

@implementation SKDPowerLogger

- (SKDPowerLogger)initWithDomain:(id)domain powerProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = SKDPowerLogger;
  v8 = [(SKDEventLogger *)&v13 initWithDomain:domain];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2846E8118];
    supportedAttributes = v8->_supportedAttributes;
    v8->_supportedAttributes = v9;

    aliases = v8->_aliases;
    v8->_aliases = &unk_2846E8600;

    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_powerProvider, provider);
    v8->_interval = 1800.0;
  }

  return v8;
}

- (void)dealloc
{
  [(SKDPowerLogger *)self flush];
  v3.receiver = self;
  v3.super_class = SKDPowerLogger;
  [(SKDPowerLogger *)&v3 dealloc];
}

- (id)logs
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_cache count])
  {
    [(NSMutableDictionary *)self->_cache allKeys];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v39 = 0u;
    v29 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v29)
    {
      v28 = *v37;
      do
      {
        v4 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v4;
          v5 = *(*(&v36 + 1) + 8 * v4);
          selfCopy = self;
          v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v5];
          allKeys = [v7 allKeys];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = allKeys;
          v9 = [v31 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v33;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v33 != v11)
                {
                  objc_enumerationMutation(v31);
                }

                v13 = *(*(&v32 + 1) + 8 * i);
                v14 = [v3 objectForKeyedSubscript:v5];

                if (!v14)
                {
                  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v3 setObject:v15 forKeyedSubscript:v5];
                }

                v16 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:v5];
                v17 = [v16 objectForKeyedSubscript:v13];
                unsignedIntValue = [v17 unsignedIntValue];

                v19 = [v3 objectForKeyedSubscript:v5];
                v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue];
                [v19 setObject:v20 forKey:v13];
              }

              v10 = [v31 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v10);
          }

          v4 = v30 + 1;
          self = selfCopy;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v29);
    }

    [v3 setObject:self->_lastFlushDate forKeyedSubscript:@"timestamp"];
    v21 = [MEMORY[0x277CBEAA8] now];
    [v3 setObject:v21 forKeyedSubscript:@"timestampEnd"];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [v3 setObject:processName forKeyedSubscript:@"processName"];
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v3 count])
  {
    v40 = v3;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)supportedEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  identifier = [eventCopy identifier];
  if (!identifier)
  {
    goto LABEL_15;
  }

  v6 = identifier;
  feedback = [eventCopy feedback];
  if (![feedback count])
  {

    goto LABEL_15;
  }

  type = [eventCopy type];

  if (type != 7)
  {
LABEL_15:
    LOBYTE(v12) = 0;
    goto LABEL_16;
  }

  feedback2 = [eventCopy feedback];
  v10 = [feedback2 objectForKeyedSubscript:@"bundleID"];
  if (v10)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = self->_supportedAttributes;
    v12 = [(NSSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [feedback2 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];

          if (v15)
          {
            LOBYTE(v12) = 1;
            goto LABEL_18;
          }
        }

        v12 = [(NSSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)logEvent:(id)event level:(unint64_t)level
{
  v53 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(SKDPowerLogger *)self supportedEvent:eventCopy])
  {
    feedback = [eventCopy feedback];
    v40 = [feedback objectForKeyedSubscript:@"bundleID"];
    os_unfair_lock_lock(&self->_lock);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = self->_supportedAttributes;
    v8 = [(NSSet *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v8)
    {
      v9 = v8;
      v36 = eventCopy;
      v10 = 0;
      v11 = *v45;
      v12 = MEMORY[0x277D86220];
      v38 = v7;
      v39 = feedback;
      v37 = *v45;
      selfCopy = self;
      do
      {
        v13 = 0;
        v41 = v9;
        do
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v44 + 1) + 8 * v13);
          v15 = [(NSDictionary *)self->_aliases objectForKeyedSubscript:v14, v36];
          if (v15)
          {
            v16 = [feedback objectForKeyedSubscript:v14];
            if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v16;
                cache = selfCopy->_cache;
                if (!cache)
                {
                  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v19 = selfCopy->_cache;
                  selfCopy->_cache = v18;

                  cache = selfCopy->_cache;
                }

                v20 = [(NSMutableDictionary *)cache objectForKeyedSubscript:v40];

                if (!v20)
                {
                  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSSet count](selfCopy->_supportedAttributes, "count")}];
                  [(NSMutableDictionary *)selfCopy->_cache setObject:v21 forKeyedSubscript:v40];
                }

                v22 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:v40];
                v23 = [v22 objectForKeyedSubscript:v15];

                if (!v23)
                {
                  v24 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:v40];
                  [v24 setObject:&unk_2846E7A28 forKeyedSubscript:v15];
                }

                v25 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:v40];
                v26 = [v25 objectForKeyedSubscript:v15];

                v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v42, "unsignedIntValue") + objc_msgSend(v26, "unsignedIntValue")}];
                v28 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:v40];
                [v28 setObject:v27 forKeyedSubscript:v15];

                v10 = 1;
                v7 = v38;
                feedback = v39;
                v11 = v37;
                v9 = v41;
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v49 = v14;
                v50 = 2112;
                v51 = v16;
                _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SKDPowerLogger: invalid feedback %@:%@", buf, 0x16u);
              }
            }

            v12 = MEMORY[0x277D86220];
            self = selfCopy;
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = 0;
            _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_INFO, "SKDPowerLogger: unsupported feedback attribute %@", buf, 0xCu);
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [(NSSet *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v9);

      eventCopy = v36;
      if (v10)
      {
        if (!self->_lastFlushDate)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEAA8]);
          lastFlushDate = self->_lastFlushDate;
          self->_lastFlushDate = v29;
        }

        v31 = [MEMORY[0x277CBEAA8] now];
        [v31 timeIntervalSinceDate:self->_lastFlushDate];
        v33 = v32;
        interval = self->_interval;

        if (v33 >= interval)
        {
          os_unfair_lock_unlock(&self->_lock);
          [(SKDPowerLogger *)self flush];
LABEL_31:

          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_31;
  }

LABEL_32:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)flush
{
  v21 = *MEMORY[0x277D85DE8];
  logs = [(SKDPowerLogger *)self logs];
  os_unfair_lock_lock(&self->_lock);
  cache = self->_cache;
  self->_cache = 0;

  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  lastFlushDate = self->_lastFlushDate;
  self->_lastFlushDate = v5;

  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = logs;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        powerProvider = self->_powerProvider;
        domain = [(SKDEventLogger *)self domain];
        [(SKDLogProviding *)powerProvider sendLog:v12 domain:domain];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end