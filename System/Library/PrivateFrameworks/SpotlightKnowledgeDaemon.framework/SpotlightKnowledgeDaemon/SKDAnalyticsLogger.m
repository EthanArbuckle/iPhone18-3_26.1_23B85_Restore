@interface SKDAnalyticsLogger
- (BOOL)supportedEvent:(id)a3;
- (BOOL)supportedTrackingEvent:(id)a3;
- (SKDAnalyticsLogger)initWithDomain:(id)a3 analyticsProvider:(id)a4;
- (id)logs;
- (id)trackingEventBeginWithName:(id)a3 event:(id)a4;
- (void)dealloc;
- (void)flush;
- (void)logEvent:(id)a3 level:(unint64_t)a4;
- (void)trackingEventEnd:(id)a3;
@end

@implementation SKDAnalyticsLogger

- (SKDAnalyticsLogger)initWithDomain:(id)a3 analyticsProvider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SKDAnalyticsLogger;
  v8 = [(SKDEventLogger *)&v11 initWithDomain:a3];
  v9 = v8;
  if (v8)
  {
    v8->_maxLogCount = 100;
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_analyticsProvider, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(SKDAnalyticsLogger *)self flush];
  v3.receiver = self;
  v3.super_class = SKDAnalyticsLogger;
  [(SKDAnalyticsLogger *)&v3 dealloc];
}

- (id)logs
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_logs count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v3 addObjectsFromArray:self->_logs];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)supportedEvent:(id)a3
{
  v3 = a3;
  if (([v3 status] == 4 || objc_msgSend(v3, "status") == 2) && objc_msgSend(v3, "type") == 7)
  {
    if ([v3 status] != 4 || (objc_msgSend(v3, "info"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = [v3 feedback];
      v6 = [v5 objectForKey:@"pipeline"];
      LOBYTE(v4) = v6 != 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)logEvent:(id)a3 level:(unint64_t)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(SKDAnalyticsLogger *)self supportedEvent:v5])
  {
    goto LABEL_50;
  }

  if ([v5 status] == 4)
  {
    v6 = [v5 info];

    if (!v6)
    {
      goto LABEL_48;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v5 info];
    v9 = [v8 domain];
    [v7 setObject:v9 forKey:@"errorDomain"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v5 info];
    v12 = [v10 numberWithInteger:{objc_msgSend(v11, "code")}];
    [v7 setObject:v12 forKey:@"errorDomain"];

    if (!v7)
    {
      goto LABEL_48;
    }

LABEL_44:
    v35 = v7;
    os_unfair_lock_lock(&self->_lock);
    logs = self->_logs;
    if (!logs)
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v38 = self->_logs;
      self->_logs = v37;

      logs = self->_logs;
    }

    [(NSMutableArray *)logs addObject:v7, v42];
    v39 = [(NSMutableArray *)self->_logs count];
    maxLogCount = self->_maxLogCount;
    os_unfair_lock_unlock(&self->_lock);
    if (v39 >= maxLogCount)
    {
      [(SKDAnalyticsLogger *)self flush];
    }

    goto LABEL_49;
  }

  if ([v5 status] != 2)
  {
    goto LABEL_48;
  }

  if (getAnalyticsAliases_onceToken != -1)
  {
    [SKDAnalyticsLogger logEvent:level:];
  }

  v13 = getAnalyticsAliases_sAnalyticsAliases;
  v42 = self;
  if (getAnalyticsKeys_onceToken != -1)
  {
    [SKDAnalyticsLogger logEvent:level:];
  }

  v45 = getAnalyticsKeys_sAnalyticsKeys;
  v43 = v5;
  v14 = [v5 feedback];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v15)
  {
    v47 = 0;
    goto LABEL_43;
  }

  v16 = v15;
  v47 = 0;
  v17 = *v49;
  v18 = *MEMORY[0x277CBEEE8];
  v44 = v13;
  do
  {
    v19 = 0;
    v46 = v16;
    do
    {
      if (*v49 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      v21 = [v14 objectForKeyedSubscript:{v14, v42}];

      if (v21 != v18)
      {
        v22 = [v13 objectForKeyedSubscript:v20];

        if (v22)
        {
          v23 = [v13 objectForKeyedSubscript:v20];
          v24 = [v14 objectForKeyedSubscript:v20];
          if (v24)
          {
            v25 = v24;
            v26 = v18;
            v27 = v17;
            v28 = [v14 objectForKeyedSubscript:v20];
            v29 = [v45 objectForKeyedSubscript:v23];
            if (objc_opt_isKindOfClass())
            {
              v30 = [v14 objectForKeyedSubscript:v20];
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              v17 = v27;
              if ([v20 isEqualToString:@"textContentLength"])
              {
                v31 = [v30 unsignedIntValue];
                v18 = v26;
                if (v31 <= 0x63)
                {

                  v30 = &unk_2846E79C8;
                  goto LABEL_28;
                }

                v33 = v31;
                v16 = v46;
                if (v31 > 0x12B)
                {

                  if (v33 >> 3 >= 0x271)
                  {
                    v30 = &unk_2846E7A10;
                  }

                  else
                  {
                    v30 = &unk_2846E79F8;
                  }
                }

                else
                {

                  v30 = &unk_2846E79E0;
                }
              }

              else
              {
                v18 = v26;
LABEL_28:
                v16 = v46;
              }

              v32 = v47;
              if (!v47)
              {
                v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v47 = v32;
              [v32 setObject:v30 forKey:v23];

              v13 = v44;
            }

            else
            {
              v13 = v44;
              v17 = v27;
              v18 = v26;
              v16 = v46;
            }
          }
        }
      }

      ++v19;
    }

    while (v16 != v19);
    v34 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
    v16 = v34;
  }

  while (v34);
LABEL_43:

  self = v42;
  v5 = v43;
  v7 = v47;
  if (v47)
  {
    goto LABEL_44;
  }

LABEL_48:
  v35 = 0;
LABEL_49:

LABEL_50:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)flush
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SKDAnalyticsLogger *)self logs];
  os_unfair_lock_lock(&self->_lock);
  logs = self->_logs;
  self->_logs = 0;

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SKDLogProviding *)self->_analyticsProvider sendLog:*(*(&v11 + 1) + 8 * v9++) domain:@"com.apple.spotlightknowledged.async", v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportedTrackingEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 event];
    v5 = [v4 type] == 6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)trackingEventBeginWithName:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SKDAnalyticsTrackingEvent alloc];
  v9 = [(SKDEventLogger *)self domain];
  v10 = [(SKDAnalyticsTrackingEvent *)v8 initWithName:v7 event:v6 domain:v9];

  return v10;
}

- (void)trackingEventEnd:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v4;
    v28 = v4;
    v5 = [(SKDAnalyticsLogger *)self logs];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          if ([v11 count])
          {
            os_unfair_lock_lock(&self->_lock);
            logs = self->_logs;
            if (!logs)
            {
              v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v14 = self->_logs;
              self->_logs = v13;

              logs = self->_logs;
            }

            [(NSMutableArray *)logs addObject:v11];
            v8 |= [(NSMutableArray *)self->_logs count]>= self->_maxLogCount;
            os_unfair_lock_unlock(&self->_lock);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v15 = [v28 logs];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          if ([v21 count])
          {
            os_unfair_lock_lock(&self->_lock);
            v22 = self->_logs;
            if (!v22)
            {
              v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v24 = self->_logs;
              self->_logs = v23;

              v22 = self->_logs;
            }

            [(NSMutableArray *)v22 addObject:v21];
            v8 |= [(NSMutableArray *)self->_logs count]>= self->_maxLogCount;
            os_unfair_lock_unlock(&self->_lock);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);
    }

    if (v8)
    {
      [(SKDAnalyticsLogger *)self flush];
    }

    v4 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end