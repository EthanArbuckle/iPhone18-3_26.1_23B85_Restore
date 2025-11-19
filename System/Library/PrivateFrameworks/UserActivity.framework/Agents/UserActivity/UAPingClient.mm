@interface UAPingClient
- (BOOL)active;
- (UAPingClient)initWithController:(id)a3;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)statusString;
- (void)pushItem:(id)a3;
- (void)removeItem:(id)a3;
@end

@implementation UAPingClient

- (id)eligibleAdvertiseableItemsInOrder
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_items copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)items
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [NSSet setWithArray:v2->_items];
  objc_sync_exit(v2);

  return v3;
}

- (UAPingClient)initWithController:(id)a3
{
  v5 = a3;
  v6 = [v5 manager];
  v11.receiver = self;
  v11.super_class = UAPingClient;
  v7 = [(UAClientController *)&v11 initWithManager:v6 name:@"PingCreator"];

  if (v7)
  {
    objc_storeStrong(&v7->_controller, a3);
    v8 = +[NSMutableArray array];
    items = v7->_items;
    v7->_items = v8;
  }

  return v7;
}

- (void)pushItem:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(UAPingClient *)v4 setHasBeenUsedAtLeastOnce:1];
  if (([(NSMutableArray *)v4->_items containsObject:v6]& 1) == 0)
  {
    [(NSMutableArray *)v4->_items insertObject:v6 atIndex:0];
    v5 = [(UACornerActionManagerHandler *)v4 manager];
    [v5 scheduleUpdatingAdvertisableItems];
  }

  objc_sync_exit(v4);
}

- (void)removeItem:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v6)
  {
    for (i = v6; [(NSMutableArray *)v4->_items containsObject:i]; i = v6)
    {
      [(NSMutableArray *)v4->_items removeObject:v6];
    }
  }

  else
  {
    [(NSMutableArray *)v4->_items removeAllObjects];
  }

  objc_sync_exit(v4);
}

- (BOOL)active
{
  v2 = [(UAPingClient *)self items];
  v3 = [v2 anyObject];
  v4 = v3 != 0;

  return v4;
}

- (id)statusString
{
  if ([(UAPingClient *)self hasBeenUsedAtLeastOnce])
  {
    v3 = [(UAPingClient *)self items];
    v4 = [v3 count];
    if (v4)
    {
      v5 = [(NSMutableArray *)self->_items firstObject];
    }

    else
    {
      v5 = @"-";
    }

    v6 = [NSString stringWithFormat:@"PingCreator:%@\n", v5];
    if (v4)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end