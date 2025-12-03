@interface AXRTTSettingsListenerHelper
- (AXRTTSettingsListenerHelper)initWithListenerAddress:(void *)address;
- (void)addSelectorKey:(SEL)key;
- (void)dealloc;
@end

@implementation AXRTTSettingsListenerHelper

- (AXRTTSettingsListenerHelper)initWithListenerAddress:(void *)address
{
  v5.receiver = self;
  v5.super_class = AXRTTSettingsListenerHelper;
  result = [(AXRTTSettingsListenerHelper *)&v5 init];
  if (result)
  {
    result->_listenerAddress = address;
  }

  return result;
}

- (void)addSelectorKey:(SEL)key
{
  selectorKeys = self->_selectorKeys;
  if (!selectorKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_selectorKeys;
    self->_selectorKeys = v6;

    selectorKeys = self->_selectorKeys;
  }

  v8 = NSStringFromSelector(key);
  [(NSMutableArray *)selectorKeys addObject:v8];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_selectorKeys;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = +[RTTSettings sharedInstance];
        [v9 registerUpdateBlock:0 forRetrieveSelector:NSSelectorFromString(v8) withListener:self->_listenerAddress];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = AXRTTSettingsListenerHelper;
  [(AXRTTSettingsListenerHelper *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

@end