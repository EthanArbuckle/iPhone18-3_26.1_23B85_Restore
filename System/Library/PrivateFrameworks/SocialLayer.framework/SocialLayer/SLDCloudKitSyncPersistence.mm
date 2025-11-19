@interface SLDCloudKitSyncPersistence
- (SLDCloudKitSyncPersistence)initWithName:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)reset;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation SLDCloudKitSyncPersistence

- (SLDCloudKitSyncPersistence)initWithName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SLDCloudKitSyncPersistence;
  v5 = [(SLDCloudKitSyncPersistence *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [@"com.apple.sociallayerd.CloudKit." stringByAppendingString:v4];
    suiteName = v5->_suiteName;
    v5->_suiteName = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v5->_suiteName];
    defaults = v5->_defaults;
    v5->_defaults = v10;

    v12 = objc_opt_new();
    cache = v5->_cache;
    v5->_cache = v12;

    v14 = objc_opt_new();
    nilValue = v5->_nilValue;
    v5->_nilValue = v14;
  }

  return v5;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v5];
    if (v6 == self->_nilValue)
    {
      v7 = 0;
    }

    else
    {
      if (!v6)
      {
        v6 = [(NSUserDefaults *)self->_defaults objectForKey:v5];
      }

      v6 = v6;
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v10 copy];
    nilValue = v8;
    if (!v8)
    {
      nilValue = self->_nilValue;
    }

    [(NSMutableDictionary *)self->_cache setObject:nilValue forKeyedSubscript:v7];

    [(NSUserDefaults *)self->_defaults setObject:v10 forKey:v7];
  }
}

- (void)reset
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = SLDaemonLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "#SLDCK !!! PERSISTENCE RESET !!!", buf, 2u);
  }

  [(NSUserDefaults *)self->_defaults removePersistentDomainForName:self->_suiteName];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableDictionary *)self->_cache allKeys];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableDictionary *)self->_cache setObject:self->_nilValue forKeyedSubscript:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end