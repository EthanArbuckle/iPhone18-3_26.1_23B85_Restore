@interface UAActivityReplayAdvertiser
- (BOOL)advertising;
- (id)advertisableItems;
- (void)setAdvertisableItems:(id)a3;
- (void)setItem:(id)a3;
@end

@implementation UAActivityReplayAdvertiser

- (id)advertisableItems
{
  v3 = [(UAActivityReplayAdvertiser *)self advertisedItem];
  if (v3)
  {
    v4 = [(UAActivityReplayAdvertiser *)self advertisedItem];
    v5 = [NSArray arrayWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)advertising
{
  v2 = [(UAActivityReplayAdvertiser *)self advertisedItem];
  v3 = v2 != 0;

  return v3;
}

- (void)setAdvertisableItems:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v6)
  {
    v5 = [v6 copy];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((&v4->super._shouldAdvertiseAutoPullActivityList + 1), v5);
  if (v6)
  {
  }

  objc_sync_exit(v4);
}

- (void)setItem:(id)a3
{
  [(UAActivityReplayAdvertiser *)self setAdvertisedItem:a3];
  v4 = [(UACornerActionManagerHandler *)self manager];
  [v4 scheduleUpdatingAdvertisableItems];
}

@end