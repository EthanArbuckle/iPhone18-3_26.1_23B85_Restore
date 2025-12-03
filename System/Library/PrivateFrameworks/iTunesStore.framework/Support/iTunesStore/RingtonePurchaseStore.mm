@interface RingtonePurchaseStore
- (RingtonePurchaseStore)init;
- (RingtonePurchaseStore)initWithMangedObjectContext:(id)context;
- (id)ringtonesForAdamID:(unint64_t)d transactionID:(id)iD;
- (void)addRingtonesForPurchases:(id)purchases;
- (void)dealloc;
- (void)finalizeRingtoneForAdamID:(unint64_t)d transactionID:(id)iD toneIdentifier:(id)identifier;
- (void)prunePurchasedRingtones;
- (void)removeRingtoneForAdamID:(unint64_t)d transactionID:(id)iD;
- (void)removeRingtonesForPurchases:(id)purchases;
- (void)updateRingtonesForPurchases:(id)purchases withDownloads:(id)downloads;
@end

@implementation RingtonePurchaseStore

- (RingtonePurchaseStore)init
{
  self->_ownsContext = 1;
  v3 = +[NSThread beginPrivateManagedContextSession];

  return [(RingtonePurchaseStore *)self initWithMangedObjectContext:v3];
}

- (RingtonePurchaseStore)initWithMangedObjectContext:(id)context
{
  v6.receiver = self;
  v6.super_class = RingtonePurchaseStore;
  v4 = [(RingtonePurchaseStore *)&v6 init];
  if (v4)
  {
    v4->_context = context;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_ownsContext)
  {
    +[NSThread endPrivateManagedContextSession];
  }

  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RingtonePurchaseStore;
  [(RingtonePurchaseStore *)&v3 dealloc];
}

- (void)addRingtonesForPurchases:(id)purchases
{
  v5 = [RingtonePurchase entityFromContext:self->_context];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [purchases countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(purchases);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [[RingtonePurchase alloc] initWithEntity:v5 insertIntoManagedObjectContext:self->_context];
        [(RingtonePurchase *)v10 loadFromPurchase:v9];
      }

      v6 = [purchases countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  sub_1000CE00C(self->_context);
}

- (void)finalizeRingtoneForAdamID:(unint64_t)d transactionID:(id)iD toneIdentifier:(id)identifier
{
  v7 = [(RingtonePurchaseStore *)self ringtonesForAdamID:d transactionID:iD];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
    [v8 applyUserActionWithToneIdentifier:identifier];
    [(NSManagedObjectContext *)self->_context deleteObject:v8];
  }

  sub_1000CE00C(self->_context);
}

- (void)prunePurchasedRingtones
{
  v3 = objc_alloc_init(NSFetchRequest);
  [v3 setEntity:{+[RingtonePurchase entityFromContext:](RingtonePurchase, "entityFromContext:", self->_context)}];
  [v3 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"transactionID != %@", +[NSNull null](NSNull, "null"))}];
  v4 = [(NSManagedObjectContext *)self->_context executeFetchRequest:v3 error:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(NSManagedObjectContext *)self->_context deleteObject:*(*(&v8 + 1) + 8 * i)];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  sub_1000CE00C(self->_context);
}

- (void)removeRingtonesForPurchases:(id)purchases
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [purchases countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    v7 = SSDownloadPropertyStoreItemIdentifier;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(purchases);
        }

        [*(*(&v10 + 1) + 8 * i) valueForDownloadProperty:v7];
        v9 = [(RingtonePurchaseStore *)self ringtonesForAdamID:SSGetItemIdentifierFromValue() transactionID:0];
        if ([v9 count])
        {
          -[NSManagedObjectContext deleteObject:](self->_context, "deleteObject:", [v9 objectAtIndex:0]);
        }
      }

      v5 = [purchases countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  sub_1000CE00C(self->_context);
}

- (void)removeRingtoneForAdamID:(unint64_t)d transactionID:(id)iD
{
  v5 = [(RingtonePurchaseStore *)self ringtonesForAdamID:d transactionID:iD];
  if ([v5 count])
  {
    -[NSManagedObjectContext deleteObject:](self->_context, "deleteObject:", [v5 objectAtIndex:0]);
  }

  sub_1000CE00C(self->_context);
}

- (id)ringtonesForAdamID:(unint64_t)d transactionID:(id)iD
{
  v7 = objc_alloc_init(NSFetchRequest);
  [v7 setEntity:{+[RingtonePurchase entityFromContext:](RingtonePurchase, "entityFromContext:", self->_context)}];
  if (!iD)
  {
    iD = +[NSNull null];
  }

  [v7 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"adamID = %llu AND transactionID = %@", d, iD)}];
  v8 = [(NSManagedObjectContext *)self->_context executeFetchRequest:v7 error:0];

  return v8;
}

- (void)updateRingtonesForPurchases:(id)purchases withDownloads:(id)downloads
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [purchases countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v16 = *v23;
    v6 = SSDownloadPropertyStoreItemIdentifier;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(purchases);
        }

        [*(*(&v22 + 1) + 8 * i) valueForDownloadProperty:v6];
        v8 = SSGetItemIdentifierFromValue();
        v9 = [(RingtonePurchaseStore *)self ringtonesForAdamID:v8 transactionID:0];
        if ([v9 count])
        {
          v10 = [v9 objectAtIndex:0];
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = [downloads countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = *v19;
            while (2)
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v19 != v12)
                {
                  objc_enumerationMutation(downloads);
                }

                v14 = *(*(&v18 + 1) + 8 * j);
                if ([v14 itemIdentifier] == v8)
                {
                  [v10 setTransactionID:{objc_msgSend(v14, "transactionIdentifier")}];
                  goto LABEL_17;
                }
              }

              v11 = [downloads countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_17:
        ;
      }

      v5 = [purchases countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  sub_1000CE00C(self->_context);
}

@end