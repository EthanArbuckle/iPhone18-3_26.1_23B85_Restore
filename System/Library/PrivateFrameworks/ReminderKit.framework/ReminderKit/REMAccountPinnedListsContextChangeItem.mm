@interface REMAccountPinnedListsContextChangeItem
- (REMAccountPinnedListsContextChangeItem)initWithAccountChangeItem:(id)item;
- (REMManualOrdering)unsavedManualOrdering;
- (void)updateManualOrdering:(id)ordering;
@end

@implementation REMAccountPinnedListsContextChangeItem

- (REMAccountPinnedListsContextChangeItem)initWithAccountChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMAccountPinnedListsContextChangeItem;
  v6 = [(REMAccountPinnedListsContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountChangeItem, item);
  }

  return v7;
}

- (REMManualOrdering)unsavedManualOrdering
{
  accountChangeItem = [(REMAccountPinnedListsContextChangeItem *)self accountChangeItem];
  pinnedListsManualOrdering = [accountChangeItem pinnedListsManualOrdering];

  return pinnedListsManualOrdering;
}

- (void)updateManualOrdering:(id)ordering
{
  orderingCopy = ordering;
  accountChangeItem = [(REMAccountPinnedListsContextChangeItem *)self accountChangeItem];
  [accountChangeItem setPinnedListsManualOrdering:orderingCopy];
}

@end