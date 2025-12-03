@interface REMSmartListCustomContextChangeItem
- (NSString)name;
- (REMColor)color;
- (REMListBadge)badge;
- (REMSmartListCustomContextChangeItem)initWithSmartListChangeItem:(id)item;
- (void)setBadge:(id)badge;
- (void)setColor:(id)color;
- (void)setName:(id)name;
@end

@implementation REMSmartListCustomContextChangeItem

- (REMSmartListCustomContextChangeItem)initWithSmartListChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "smartListChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMSmartListCustomContextChangeItem;
  v6 = [(REMSmartListCustomContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartListChangeItem, item);
  }

  return v7;
}

- (void)setName:(id)name
{
  nameCopy = name;
  smartListChangeItem = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  [smartListChangeItem setName:nameCopy];
}

- (NSString)name
{
  smartListChangeItem = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  name = [smartListChangeItem name];
  if (name)
  {
    smartListChangeItem2 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
    name2 = [smartListChangeItem2 name];
  }

  else
  {
    name2 = &stru_1F0D67F00;
  }

  return name2;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  smartListChangeItem = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  [smartListChangeItem setColor:colorCopy];
}

- (REMColor)color
{
  smartListChangeItem = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  color = [smartListChangeItem color];

  return color;
}

- (void)setBadge:(id)badge
{
  rawValue = [badge rawValue];
  smartListChangeItem = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  [smartListChangeItem setBadgeEmblem:rawValue];
}

- (REMListBadge)badge
{
  smartListChangeItem = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  badgeEmblem = [smartListChangeItem badgeEmblem];

  if (badgeEmblem)
  {
    v4 = [[REMListBadge alloc] initWithRawValue:badgeEmblem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end