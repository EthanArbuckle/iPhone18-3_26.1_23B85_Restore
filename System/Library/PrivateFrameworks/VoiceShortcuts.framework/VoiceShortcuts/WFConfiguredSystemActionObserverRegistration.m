@interface WFConfiguredSystemActionObserverRegistration
- (WFConfiguredSystemActionObserverRegistration)initWithUserDefaults:(id)a3 userDefaultsKey:(id)a4 actionType:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation WFConfiguredSystemActionObserverRegistration

- (void)dealloc
{
  v3 = [(WFConfiguredSystemActionObserverRegistration *)self userDefaults];
  v4 = [(WFConfiguredSystemActionObserverRegistration *)self userDefaultsKey];
  [v3 removeObserver:self forKeyPath:v4 context:0];

  v5.receiver = self;
  v5.super_class = WFConfiguredSystemActionObserverRegistration;
  [(WFConfiguredSystemActionObserverRegistration *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v26 = v7;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v10)
  {
    v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
  }

  else
  {
    v14 = 0;
  }

  v25 = v10;
  if (v13)
  {
    v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:{0, v10, v7}];
  }

  else
  {
    v15 = 0;
  }

  v16 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v33 = "[WFConfiguredSystemActionObserverRegistration observeValueForKeyPath:ofObject:change:context:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_INFO, "%s Configured system action changed from: %@ to %@.", buf, 0x20u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [(WFConfiguredSystemActionObserverRegistration *)self observers];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        v23 = [(WFConfiguredSystemActionObserverRegistration *)self actionType];
        [v22 configuredSystemActionChangedForType:v23 oldAction:v14 newAction:v15];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (WFConfiguredSystemActionObserverRegistration)initWithUserDefaults:(id)a3 userDefaultsKey:(id)a4 actionType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WFConfiguredSystemActionObserverRegistration;
  v12 = [(WFConfiguredSystemActionObserverRegistration *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionType, a5);
    objc_storeStrong(&v13->_userDefaults, a3);
    objc_storeStrong(&v13->_userDefaultsKey, a4);
    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = v14;

    [v9 addObserver:v13 forKeyPath:v10 options:3 context:0];
    v16 = v13;
  }

  return v13;
}

@end