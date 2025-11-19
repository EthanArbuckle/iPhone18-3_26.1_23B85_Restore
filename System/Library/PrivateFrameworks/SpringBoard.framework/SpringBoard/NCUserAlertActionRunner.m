@interface NCUserAlertActionRunner
- (NCUserAlertActionRunner)initWithSBAlertItem:(id)a3;
- (SBAlertItem)alertItem;
@end

@implementation NCUserAlertActionRunner

- (NCUserAlertActionRunner)initWithSBAlertItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NCUserAlertActionRunner;
  v5 = [(NCUserAlertActionRunner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_alertItem, v4);
  }

  return v6;
}

- (SBAlertItem)alertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_alertItem);

  return WeakRetained;
}

@end