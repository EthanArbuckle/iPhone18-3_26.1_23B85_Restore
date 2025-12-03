@interface UAClientController
- (UAClientController)initWithManager:(id)manager name:(id)name;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)userActivityInfoForUUID:(id)d;
@end

@implementation UAClientController

- (UAClientController)initWithManager:(id)manager name:(id)name
{
  v5.receiver = self;
  v5.super_class = UAClientController;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:manager name:name];
}

- (id)userActivityInfoForUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [(UAClientController *)self items];
  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)eligibleAdvertiseableItemsInOrder
{
  items = [(UAClientController *)self items];
  if (items)
  {
    items2 = [(UAClientController *)self items];
    allObjects = [items2 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

@end