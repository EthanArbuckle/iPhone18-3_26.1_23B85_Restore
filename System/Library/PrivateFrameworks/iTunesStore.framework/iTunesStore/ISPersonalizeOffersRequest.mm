@interface ISPersonalizeOffersRequest
- (ISPersonalizeOffersRequest)initWithItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemIdentifiersForItemType:(id)type;
- (void)addItemIdentifier:(id)identifier forItemType:(id)type;
- (void)dealloc;
@end

@implementation ISPersonalizeOffersRequest

- (ISPersonalizeOffersRequest)initWithItems:(id)items
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
    v5 = [items countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(items);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [objc_msgSend(v9 "ITunesStoreIdentifier")];
          itemKind = [v9 itemKind];
          if (v10)
          {
            v12 = itemKind == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            [(ISPersonalizeOffersRequest *)v4 addItemIdentifier:v10 forItemType:itemKind];
          }
        }

        v6 = [items countByEnumeratingWithState:&v15 objects:v20 count:16];
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

- (void)addItemIdentifier:(id)identifier forItemType:(id)type
{
  itemIDsByType = self->_itemIDsByType;
  if (!itemIDsByType)
  {
    itemIDsByType = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_itemIDsByType = itemIDsByType;
  }

  v8 = [(NSMutableDictionary *)itemIDsByType objectForKey:type];
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->_itemIDsByType setObject:v9 forKey:type];
    v8 = v9;
  }

  v10 = v8;
  [v8 addObject:identifier];
}

- (id)itemIdentifiersForItemType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_itemIDsByType objectForKey:type];

  return [v3 allObjects];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  v5[2] = [(NSMutableDictionary *)self->_itemIDsByType mutableCopyWithZone:zone];
  return v5;
}

@end