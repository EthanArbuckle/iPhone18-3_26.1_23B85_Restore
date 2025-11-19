@interface SVXServiceCommandDelayedActionStore
- (SVXServiceCommandDelayedActionStore)init;
- (void)setAction:(id)a3 forKey:(id)a4;
@end

@implementation SVXServiceCommandDelayedActionStore

- (void)setAction:(id)a3 forKey:(id)a4
{
  actionsByKey = self->_actionsByKey;
  if (a3)
  {
    [(NSMutableDictionary *)actionsByKey setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)actionsByKey removeObjectForKey:a4];
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