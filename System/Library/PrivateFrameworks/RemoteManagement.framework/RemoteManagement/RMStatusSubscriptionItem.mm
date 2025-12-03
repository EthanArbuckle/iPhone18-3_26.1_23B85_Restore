@interface RMStatusSubscriptionItem
- (id)reportDetails;
- (void)prepareForDeletion;
@end

@implementation RMStatusSubscriptionItem

- (void)prepareForDeletion
{
  managedObjectContext = [(RMStatusSubscriptionItem *)self managedObjectContext];
  v4 = [NSSet setWithObject:self];
  subscribedStatusKeyPaths = [(RMStatusSubscriptionItem *)self subscribedStatusKeyPaths];
  v6 = [subscribedStatusKeyPaths copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        statusSubscriptionItems = [v12 statusSubscriptionItems];
        v14 = [statusSubscriptionItems isEqualToSet:v4];

        if (v14)
        {
          [managedObjectContext deleteObject:v12];
        }

        [v12 removeStatusSubscriptionItemsObject:self];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15.receiver = self;
  v15.super_class = RMStatusSubscriptionItem;
  [(RMStatusSubscriptionItem *)&v15 prepareForDeletion];
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  keyPath = [(RMStatusSubscriptionItem *)self keyPath];
  [v3 setObject:keyPath forKeyedSubscript:@"keyPath"];

  predicate = [(RMStatusSubscriptionItem *)self predicate];
  predicateFormat = [predicate predicateFormat];
  [v3 setObject:predicateFormat forKeyedSubscript:@"predicate"];

  properties = [(RMStatusSubscriptionItem *)self properties];
  [v3 setObject:properties forKeyedSubscript:@"properties"];

  return v3;
}

@end