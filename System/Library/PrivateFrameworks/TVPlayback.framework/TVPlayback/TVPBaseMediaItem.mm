@interface TVPBaseMediaItem
- (NSString)description;
- (TVPBaseMediaItem)init;
- (void)_postMetadataDidChangeNotificationWithMetadataProperties:(id)properties;
- (void)_postMetadataWillChangeNotificationWithMetadataProperties:(id)properties;
- (void)_setMetadata:(id)metadata forProperty:(id)property postNotification:(BOOL)notification;
- (void)performMediaItemMetadataTransactionWithBlock:(id)block;
- (void)removeMediaItemMetadataForProperty:(id)property;
- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property;
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [v3 stringWithFormat:@"(%@)", bundleIdentifier];
    [(TVPBaseMediaItem *)v2 _setMetadata:v6 forProperty:@"TVPMediaItemMetadataServiceIdentifier" postNotification:0];
  }

  return v2;
}

- (void)performMediaItemMetadataTransactionWithBlock:(id)block
{
  v4 = MEMORY[0x277CBEB38];
  blockCopy = block;
  v6 = objc_alloc_init(v4);
  transactionDictionary = self->_transactionDictionary;
  self->_transactionDictionary = v6;

  blockCopy[2](blockCopy);
  allKeys = [(NSMutableDictionary *)self->_transactionDictionary allKeys];
  if ([allKeys count])
  {
    [(TVPBaseMediaItem *)self _postMetadataWillChangeNotificationWithMetadataProperties:allKeys];
    v9 = self->_transactionDictionary;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__TVPBaseMediaItem_performMediaItemMetadataTransactionWithBlock___block_invoke;
    v11[3] = &unk_279D7D978;
    v11[4] = self;
    [(NSMutableDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v11];
    [(TVPBaseMediaItem *)self _postMetadataDidChangeNotificationWithMetadataProperties:allKeys];
  }

  v10 = self->_transactionDictionary;
  self->_transactionDictionary = 0;
}

- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property
{
  metadataCopy = metadata;
  propertyCopy = property;
  if (metadataCopy && propertyCopy)
  {
    transactionDictionary = self->_transactionDictionary;
    if (transactionDictionary)
    {
      [(NSMutableDictionary *)transactionDictionary setObject:metadataCopy forKey:propertyCopy];
    }

    else
    {
      [(TVPBaseMediaItem *)self _setMetadata:metadataCopy forProperty:propertyCopy postNotification:1];
    }
  }
}

- (void)removeMediaItemMetadataForProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy)
  {
    v7 = propertyCopy;
    transactionDictionary = self->_transactionDictionary;
    null = [MEMORY[0x277CBEB68] null];
    if (transactionDictionary)
    {
      [(NSMutableDictionary *)transactionDictionary setObject:null forKey:v7];
    }

    else
    {
      [(TVPBaseMediaItem *)self _setMetadata:null forProperty:v7 postNotification:1];
    }

    propertyCopy = v7;
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

- (void)_setMetadata:(id)metadata forProperty:(id)property postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v18[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  propertyCopy = property;
  if (propertyCopy)
  {
    if (!self->_metadataDictionary)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      metadataDictionary = self->_metadataDictionary;
      self->_metadataDictionary = v10;
    }

    if (notificationCopy)
    {
      v18[0] = propertyCopy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [(TVPBaseMediaItem *)self _postMetadataWillChangeNotificationWithMetadataProperties:v12];
    }

    if (metadataCopy)
    {
      null = [MEMORY[0x277CBEB68] null];

      v14 = self->_metadataDictionary;
      if (null != metadataCopy)
      {
        [(NSMutableDictionary *)v14 setObject:metadataCopy forKey:propertyCopy];
        if (!notificationCopy)
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

    [(NSMutableDictionary *)v14 removeObjectForKey:propertyCopy];
    if (notificationCopy)
    {
LABEL_12:
      v17 = propertyCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      [(TVPBaseMediaItem *)self _postMetadataDidChangeNotificationWithMetadataProperties:v15];
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_postMetadataWillChangeNotificationWithMetadataProperties:(id)properties
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"TVPMediaItemMetadataChangesKey";
  v10[0] = properties;
  v4 = MEMORY[0x277CBEAC0];
  propertiesCopy = properties;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TVPMediaItemMetadataWillChangeNotification" object:self userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postMetadataDidChangeNotificationWithMetadataProperties:(id)properties
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"TVPMediaItemMetadataChangesKey";
  v10[0] = properties;
  v4 = MEMORY[0x277CBEAC0];
  propertiesCopy = properties;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TVPMediaItemMetadataDidChangeNotification" object:self userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

@end