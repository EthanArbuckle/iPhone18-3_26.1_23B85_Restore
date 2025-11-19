@interface REMAccountPinnedListsContextChangeItem
- (REMAccountPinnedListsContextChangeItem)initWithAccountChangeItem:(id)a3;
- (REMManualOrdering)unsavedManualOrdering;
- (void)updateManualOrdering:(id)a3;
@end

@implementation REMAccountPinnedListsContextChangeItem

- (REMAccountPinnedListsContextChangeItem)initWithAccountChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMAccountPinnedListsContextChangeItem;
  v6 = [(REMAccountPinnedListsContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountChangeItem, a3);
  }

  return v7;
}

- (REMManualOrdering)unsavedManualOrdering
{
  v2 = [(REMAccountPinnedListsContextChangeItem *)self accountChangeItem];
  v3 = [v2 pinnedListsManualOrdering];

  return v3;
}

- (void)updateManualOrdering:(id)a3
{
  v4 = a3;
  v5 = [(REMAccountPinnedListsContextChangeItem *)self accountChangeItem];
  [v5 setPinnedListsManualOrdering:v4];
}

@end