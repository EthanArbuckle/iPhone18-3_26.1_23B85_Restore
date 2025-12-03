@interface WFConfiguredSystemActionObserverRegistration
- (WFConfiguredSystemActionObserverRegistration)initWithUserDefaults:(id)defaults userDefaultsKey:(id)key actionType:(id)type;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation WFConfiguredSystemActionObserverRegistration

- (void)dealloc
{
  userDefaults = [(WFConfiguredSystemActionObserverRegistration *)self userDefaults];
  userDefaultsKey = [(WFConfiguredSystemActionObserverRegistration *)self userDefaultsKey];
  [userDefaults removeObserver:self forKeyPath:userDefaultsKey context:0];

  v5.receiver = self;
  v5.super_class = WFConfiguredSystemActionObserverRegistration;
  [(WFConfiguredSystemActionObserverRegistration *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v38 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v8 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
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

  v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v26 = changeCopy;
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
    v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:{0, v10, changeCopy}];
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
  observers = [(WFConfiguredSystemActionObserverRegistration *)self observers];
  v18 = [observers countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(observers);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        actionType = [(WFConfiguredSystemActionObserverRegistration *)self actionType];
        [v22 configuredSystemActionChangedForType:actionType oldAction:v14 newAction:v15];
      }

      v19 = [observers countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (WFConfiguredSystemActionObserverRegistration)initWithUserDefaults:(id)defaults userDefaultsKey:(id)key actionType:(id)type
{
  defaultsCopy = defaults;
  keyCopy = key;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = WFConfiguredSystemActionObserverRegistration;
  v12 = [(WFConfiguredSystemActionObserverRegistration *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionType, type);
    objc_storeStrong(&v13->_userDefaults, defaults);
    objc_storeStrong(&v13->_userDefaultsKey, key);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = weakObjectsHashTable;

    [defaultsCopy addObserver:v13 forKeyPath:keyCopy options:3 context:0];
    v16 = v13;
  }

  return v13;
}

@end