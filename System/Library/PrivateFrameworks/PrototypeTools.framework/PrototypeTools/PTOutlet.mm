@interface PTOutlet
- (id)_init;
- (id)addAction:(id)a3;
- (void)_invokeActions;
@end

@implementation PTOutlet

- (id)addAction:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  nextToken = self->_nextToken;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:nextToken];
  actionsByToken = self->_actionsByToken;
  ++self->_nextToken;
  v9 = [v6 copy];

  v10 = MEMORY[0x223D60750](v9);
  [(NSMutableDictionary *)actionsByToken setObject:v10 forKey:v7];

  return v7;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = PTOutlet;
  v2 = [(PTOutlet *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextToken = 1;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    actionsByToken = v3->_actionsByToken;
    v3->_actionsByToken = v4;
  }

  return v3;
}

- (void)_invokeActions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_actionsByToken allKeys];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_actionsByToken objectForKey:*(*(&v9 + 1) + 8 * v7)];
        v8[2]();

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end