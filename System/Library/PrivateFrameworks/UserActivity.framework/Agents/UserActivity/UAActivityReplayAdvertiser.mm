@interface UAActivityReplayAdvertiser
- (BOOL)advertising;
- (id)advertisableItems;
- (void)setAdvertisableItems:(id)items;
- (void)setItem:(id)item;
@end

@implementation UAActivityReplayAdvertiser

- (id)advertisableItems
{
  advertisedItem = [(UAActivityReplayAdvertiser *)self advertisedItem];
  if (advertisedItem)
  {
    advertisedItem2 = [(UAActivityReplayAdvertiser *)self advertisedItem];
    v5 = [NSArray arrayWithObject:advertisedItem2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)advertising
{
  advertisedItem = [(UAActivityReplayAdvertiser *)self advertisedItem];
  v3 = advertisedItem != 0;

  return v3;
}

- (void)setAdvertisableItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (itemsCopy)
  {
    v5 = [itemsCopy copy];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((&selfCopy->super._shouldAdvertiseAutoPullActivityList + 1), v5);
  if (itemsCopy)
  {
  }

  objc_sync_exit(selfCopy);
}

- (void)setItem:(id)item
{
  [(UAActivityReplayAdvertiser *)self setAdvertisedItem:item];
  manager = [(UACornerActionManagerHandler *)self manager];
  [manager scheduleUpdatingAdvertisableItems];
}

@end