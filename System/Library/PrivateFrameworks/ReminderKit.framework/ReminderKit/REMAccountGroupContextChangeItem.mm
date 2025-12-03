@interface REMAccountGroupContextChangeItem
- (REMAccountGroupContextChangeItem)initWithAccountChangeItem:(id)item;
@end

@implementation REMAccountGroupContextChangeItem

- (REMAccountGroupContextChangeItem)initWithAccountChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMAccountGroupContextChangeItem;
  v6 = [(REMAccountGroupContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountChangeItem, item);
  }

  return v7;
}

@end