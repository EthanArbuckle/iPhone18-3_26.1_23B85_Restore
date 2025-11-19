@interface UAClientController
- (UAClientController)initWithManager:(id)a3 name:(id)a4;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)userActivityInfoForUUID:(id)a3;
@end

@implementation UAClientController

- (UAClientController)initWithManager:(id)a3 name:(id)a4
{
  v5.receiver = self;
  v5.super_class = UAClientController;
  return [(UACornerActionManagerHandler *)&v5 initWithManager:a3 name:a4];
}

- (id)userActivityInfoForUUID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UAClientController *)self items];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(UAClientController *)self items];
  if (v3)
  {
    v4 = [(UAClientController *)self items];
    v5 = [v4 allObjects];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end