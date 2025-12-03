@interface SVXServiceCommandDelayedActionStore
- (SVXServiceCommandDelayedActionStore)init;
- (void)setAction:(id)action forKey:(id)key;
@end

@implementation SVXServiceCommandDelayedActionStore

- (void)setAction:(id)action forKey:(id)key
{
  actionsByKey = self->_actionsByKey;
  if (action)
  {
    [(NSMutableDictionary *)actionsByKey setObject:action forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)actionsByKey removeObjectForKey:key];
  }
}

- (SVXServiceCommandDelayedActionStore)init
{
  v6.receiver = self;
  v6.super_class = SVXServiceCommandDelayedActionStore;
  v2 = [(SVXServiceCommandDelayedActionStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    actionsByKey = v2->_actionsByKey;
    v2->_actionsByKey = v3;
  }

  return v2;
}

@end