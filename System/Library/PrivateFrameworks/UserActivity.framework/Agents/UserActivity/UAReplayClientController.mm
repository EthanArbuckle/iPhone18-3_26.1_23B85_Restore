@interface UAReplayClientController
- (UAReplayClientController)initWithManager:(id)a3;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)statusString;
- (id)userActivityInfoForUUID:(id)a3;
- (void)addItem:(id)a3;
- (void)dealloc;
- (void)removeItem:(id)a3;
@end

@implementation UAReplayClientController

- (UAReplayClientController)initWithManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = UAReplayClientController;
  return [(UAClientController *)&v4 initWithManager:a3 name:@"ReplayCreator"];
}

- (void)dealloc
{
  v3 = [(UACornerActionManagerHandler *)self manager];
  [v3 scheduleUpdatingAdvertisableItems:0.0];

  v4.receiver = self;
  v4.super_class = UAReplayClientController;
  [(UAReplayClientController *)&v4 dealloc];
}

- (void)addItem:(id)a3
{
  [(UAReplayClientController *)self setItem:a3];
  v4 = [(UACornerActionManagerHandler *)self manager];
  [v4 scheduleUpdatingAdvertisableItems];
}

- (void)removeItem:(id)a3
{
  v9 = a3;
  v4 = [(UAReplayClientController *)self item];
  if (v4 != v9)
  {
    v5 = [v9 uuid];
    v6 = [(UAReplayClientController *)self item];
    v7 = [v6 uuid];
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      goto LABEL_5;
    }

    [(UAReplayClientController *)self setItem:v9];
    v4 = [(UACornerActionManagerHandler *)self manager];
    [v4 scheduleUpdatingAdvertisableItems:0.0];
  }

LABEL_5:

  _objc_release_x2();
}

- (id)items
{
  v3 = [(UAReplayClientController *)self item];
  if (v3)
  {
    v4 = [(UAReplayClientController *)self item];
    v5 = [NSSet setWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)eligibleAdvertiseableItemsInOrder
{
  v3 = [(UAReplayClientController *)self item];
  if (v3)
  {
    v4 = [(UAReplayClientController *)self item];
    v5 = [NSArray arrayWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)userActivityInfoForUUID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(UAReplayClientController *)self item];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(UAReplayClientController *)self item];
  v8 = [v7 uuid];
  v9 = [v4 isEqual:v8];

  if (v9)
  {
    v10 = [(UAReplayClientController *)self item];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (id)statusString
{
  v2 = [(UAReplayClientController *)self item];
  v3 = [NSString stringWithFormat:@"ReplayController: ITEM=%@\n", v2];

  return v3;
}

@end