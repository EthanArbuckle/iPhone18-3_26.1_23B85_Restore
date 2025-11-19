@interface OKSettingsTransaction
- (OKSettingsTransaction)init;
- (void)dealloc;
- (void)mergeWithTransaction:(id)a3;
- (void)registerTransactionItem:(id)a3;
- (void)registerUpdateBlock:(id)a3 forKey:(id)a4;
@end

@implementation OKSettingsTransaction

- (OKSettingsTransaction)init
{
  v4.receiver = self;
  v4.super_class = OKSettingsTransaction;
  v2 = [(OKSettingsTransaction *)&v4 init];
  if (v2)
  {
    v2->_items = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_itemsByKey = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  items = self->_items;
  if (items)
  {

    self->_items = 0;
  }

  itemsByKey = self->_itemsByKey;
  if (itemsByKey)
  {

    self->_itemsByKey = 0;
  }

  v5.receiver = self;
  v5.super_class = OKSettingsTransaction;
  [(OKSettingsTransaction *)&v5 dealloc];
}

- (void)registerUpdateBlock:(id)a3 forKey:(id)a4
{
  objc_sync_enter(self);
  if (![(NSMutableDictionary *)self->_itemsByKey objectForKey:a4])
  {
    v7 = objc_alloc_init(OKSettingsTransactionItem);
    [(OKSettingsTransactionItem *)v7 setUpdateBlock:a3];
    [(OKSettingsTransactionItem *)v7 setKey:a4];
    [(NSMutableArray *)self->_items addObject:v7];
    [(NSMutableDictionary *)self->_itemsByKey setObject:v7 forKey:a4];
  }

  objc_sync_exit(self);
}

- (void)registerTransactionItem:(id)a3
{
  objc_sync_enter(self);
  if (!-[NSMutableDictionary objectForKey:](self->_itemsByKey, "objectForKey:", [a3 key]))
  {
    [(NSMutableArray *)self->_items addObject:a3];
    -[NSMutableDictionary setObject:forKey:](self->_itemsByKey, "setObject:forKey:", a3, [a3 key]);
  }

  objc_sync_exit(self);
}

- (void)mergeWithTransaction:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 items];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(OKSettingsTransaction *)self registerTransactionItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
}

@end