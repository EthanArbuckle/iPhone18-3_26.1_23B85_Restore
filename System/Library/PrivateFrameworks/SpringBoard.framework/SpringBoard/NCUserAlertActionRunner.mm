@interface NCUserAlertActionRunner
- (NCUserAlertActionRunner)initWithSBAlertItem:(id)item;
- (SBAlertItem)alertItem;
@end

@implementation NCUserAlertActionRunner

- (NCUserAlertActionRunner)initWithSBAlertItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = NCUserAlertActionRunner;
  v5 = [(NCUserAlertActionRunner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_alertItem, itemCopy);
  }

  return v6;
}

- (SBAlertItem)alertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_alertItem);

  return WeakRetained;
}

@end