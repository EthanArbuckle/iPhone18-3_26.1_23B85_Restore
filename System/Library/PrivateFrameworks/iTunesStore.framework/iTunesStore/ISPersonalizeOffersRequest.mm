@interface ISPersonalizeOffersRequest
- (ISPersonalizeOffersRequest)initWithItems:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemIdentifiersForItemType:(id)a3;
- (void)addItemIdentifier:(id)a3 forItemType:(id)a4;
- (void)dealloc;
@end

@implementation ISPersonalizeOffersRequest

- (ISPersonalizeOffersRequest)initWithItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = ISPersonalizeOffersRequest;
  v4 = [(ISPersonalizeOffersRequest *)&v19 init];
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [objc_msgSend(v9 "ITunesStoreIdentifier")];
          v11 = [v9 itemKind];
          if (v10)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            [(ISPersonalizeOffersRequest *)v4 addItemIdentifier:v10 forItemType:v11];
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISPersonalizeOffersRequest;
  [(ISPersonalizeOffersRequest *)&v3 dealloc];
}

- (void)addItemIdentifier:(id)a3 forItemType:(id)a4
{
  itemIDsByType = self->_itemIDsByType;
  if (!itemIDsByType)
  {
    itemIDsByType = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_itemIDsByType = itemIDsByType;
  }

  v8 = [(NSMutableDictionary *)itemIDsByType objectForKey:a4];
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->_itemIDsByType setObject:v9 forKey:a4];
    v8 = v9;
  }

  v10 = v8;
  [v8 addObject:a3];
}

- (id)itemIdentifiersForItemType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_itemIDsByType objectForKey:a3];

  return [v3 allObjects];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:a3];
  v5[2] = [(NSMutableDictionary *)self->_itemIDsByType mutableCopyWithZone:a3];
  return v5;
}

@end