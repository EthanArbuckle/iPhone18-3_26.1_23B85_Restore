@interface TVPBaseMediaItem
- (NSString)description;
- (TVPBaseMediaItem)init;
- (void)_postMetadataDidChangeNotificationWithMetadataProperties:(id)a3;
- (void)_postMetadataWillChangeNotificationWithMetadataProperties:(id)a3;
- (void)_setMetadata:(id)a3 forProperty:(id)a4 postNotification:(BOOL)a5;
- (void)performMediaItemMetadataTransactionWithBlock:(id)a3;
- (void)removeMediaItemMetadataForProperty:(id)a3;
- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4;
@end

@implementation TVPBaseMediaItem

- (TVPBaseMediaItem)init
{
  v8.receiver = self;
  v8.super_class = TVPBaseMediaItem;
  v2 = [(TVPBaseMediaItem *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 stringWithFormat:@"(%@)", v5];
    [(TVPBaseMediaItem *)v2 _setMetadata:v6 forProperty:@"TVPMediaItemMetadataServiceIdentifier" postNotification:0];
  }

  return v2;
}

- (void)performMediaItemMetadataTransactionWithBlock:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  transactionDictionary = self->_transactionDictionary;
  self->_transactionDictionary = v6;

  v5[2](v5);
  v8 = [(NSMutableDictionary *)self->_transactionDictionary allKeys];
  if ([v8 count])
  {
    [(TVPBaseMediaItem *)self _postMetadataWillChangeNotificationWithMetadataProperties:v8];
    v9 = self->_transactionDictionary;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__TVPBaseMediaItem_performMediaItemMetadataTransactionWithBlock___block_invoke;
    v11[3] = &unk_279D7D978;
    v11[4] = self;
    [(NSMutableDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v11];
    [(TVPBaseMediaItem *)self _postMetadataDidChangeNotificationWithMetadataProperties:v8];
  }

  v10 = self->_transactionDictionary;
  self->_transactionDictionary = 0;
}

- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    transactionDictionary = self->_transactionDictionary;
    if (transactionDictionary)
    {
      [(NSMutableDictionary *)transactionDictionary setObject:v8 forKey:v6];
    }

    else
    {
      [(TVPBaseMediaItem *)self _setMetadata:v8 forProperty:v6 postNotification:1];
    }
  }
}

- (void)removeMediaItemMetadataForProperty:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    transactionDictionary = self->_transactionDictionary;
    v6 = [MEMORY[0x277CBEB68] null];
    if (transactionDictionary)
    {
      [(NSMutableDictionary *)transactionDictionary setObject:v6 forKey:v7];
    }

    else
    {
      [(TVPBaseMediaItem *)self _setMetadata:v6 forProperty:v7 postNotification:1];
    }

    v4 = v7;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TVPBaseMediaItem;
  v4 = [(TVPBaseMediaItem *)&v8 description];
  v5 = [(TVPBaseMediaItem *)self mediaItemMetadataForProperty:@"TVPMediaItemMetadataTitle"];
  v6 = [v3 stringWithFormat:@"%@ [%@]", v4, v5];

  return v6;
}

- (void)_setMetadata:(id)a3 forProperty:(id)a4 postNotification:(BOOL)a5
{
  v5 = a5;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!self->_metadataDictionary)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      metadataDictionary = self->_metadataDictionary;
      self->_metadataDictionary = v10;
    }

    if (v5)
    {
      v18[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [(TVPBaseMediaItem *)self _postMetadataWillChangeNotificationWithMetadataProperties:v12];
    }

    if (v8)
    {
      v13 = [MEMORY[0x277CBEB68] null];

      v14 = self->_metadataDictionary;
      if (v13 != v8)
      {
        [(NSMutableDictionary *)v14 setObject:v8 forKey:v9];
        if (!v5)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v14 = self->_metadataDictionary;
    }

    [(NSMutableDictionary *)v14 removeObjectForKey:v9];
    if (v5)
    {
LABEL_12:
      v17 = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      [(TVPBaseMediaItem *)self _postMetadataDidChangeNotificationWithMetadataProperties:v15];
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_postMetadataWillChangeNotificationWithMetadataProperties:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"TVPMediaItemMetadataChangesKey";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];

  [v7 postNotificationName:@"TVPMediaItemMetadataWillChangeNotification" object:self userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postMetadataDidChangeNotificationWithMetadataProperties:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"TVPMediaItemMetadataChangesKey";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];

  [v7 postNotificationName:@"TVPMediaItemMetadataDidChangeNotification" object:self userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

@end