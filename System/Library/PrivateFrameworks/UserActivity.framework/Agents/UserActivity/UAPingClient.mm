@interface UAPingClient
- (BOOL)active;
- (UAPingClient)initWithController:(id)controller;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)statusString;
- (void)pushItem:(id)item;
- (void)removeItem:(id)item;
@end

@implementation UAPingClient

- (id)eligibleAdvertiseableItemsInOrder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_items copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)items
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [NSSet setWithArray:selfCopy->_items];
  objc_sync_exit(selfCopy);

  return v3;
}

- (UAPingClient)initWithController:(id)controller
{
  controllerCopy = controller;
  manager = [controllerCopy manager];
  v11.receiver = self;
  v11.super_class = UAPingClient;
  v7 = [(UAClientController *)&v11 initWithManager:manager name:@"PingCreator"];

  if (v7)
  {
    objc_storeStrong(&v7->_controller, controller);
    v8 = +[NSMutableArray array];
    items = v7->_items;
    v7->_items = v8;
  }

  return v7;
}

- (void)pushItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(UAPingClient *)selfCopy setHasBeenUsedAtLeastOnce:1];
  if (([(NSMutableArray *)selfCopy->_items containsObject:itemCopy]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_items insertObject:itemCopy atIndex:0];
    manager = [(UACornerActionManagerHandler *)selfCopy manager];
    [manager scheduleUpdatingAdvertisableItems];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (itemCopy)
  {
    for (i = itemCopy; [(NSMutableArray *)selfCopy->_items containsObject:i]; i = itemCopy)
    {
      [(NSMutableArray *)selfCopy->_items removeObject:itemCopy];
    }
  }

  else
  {
    [(NSMutableArray *)selfCopy->_items removeAllObjects];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)active
{
  items = [(UAPingClient *)self items];
  anyObject = [items anyObject];
  v4 = anyObject != 0;

  return v4;
}

- (id)statusString
{
  if ([(UAPingClient *)self hasBeenUsedAtLeastOnce])
  {
    items = [(UAPingClient *)self items];
    v4 = [items count];
    if (v4)
    {
      firstObject = [(NSMutableArray *)self->_items firstObject];
    }

    else
    {
      firstObject = @"-";
    }

    v6 = [NSString stringWithFormat:@"PingCreator:%@\n", firstObject];
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