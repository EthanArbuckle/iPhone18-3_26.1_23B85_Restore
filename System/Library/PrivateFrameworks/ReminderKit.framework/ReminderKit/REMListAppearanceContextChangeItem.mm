@interface REMListAppearanceContextChangeItem
- (BOOL)showingLargeAttachments;
- (NSString)badgeEmblem;
- (REMListAppearanceContextChangeItem)initWithListChangeItem:(id)item;
- (REMListBadge)badge;
- (void)setBadge:(id)badge;
- (void)setBadgeEmblem:(id)emblem;
@end

@implementation REMListAppearanceContextChangeItem

- (REMListAppearanceContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMListAppearanceContextChangeItem;
  v6 = [(REMListAppearanceContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (void)setBadge:(id)badge
{
  rawValue = [badge rawValue];
  listChangeItem = [(REMListAppearanceContextChangeItem *)self listChangeItem];
  [listChangeItem setBadgeEmblem:rawValue];
}

- (REMListBadge)badge
{
  listChangeItem = [(REMListAppearanceContextChangeItem *)self listChangeItem];
  badgeEmblem = [listChangeItem badgeEmblem];

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

- (void)setBadgeEmblem:(id)emblem
{
  emblemCopy = emblem;
  v5 = [[REMListBadge alloc] initWithEmblem:emblemCopy];

  [(REMListAppearanceContextChangeItem *)self setBadge:v5];
}

- (NSString)badgeEmblem
{
  badge = [(REMListAppearanceContextChangeItem *)self badge];
  emblem = [badge emblem];

  return emblem;
}

- (BOOL)showingLargeAttachments
{
  listChangeItem = [(REMListAppearanceContextChangeItem *)self listChangeItem];
  showingLargeAttachments = [listChangeItem showingLargeAttachments];

  return showingLargeAttachments;
}

@end