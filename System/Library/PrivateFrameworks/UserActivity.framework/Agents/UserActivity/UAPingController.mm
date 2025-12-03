@interface UAPingController
- (BOOL)active;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (UAPingController)initWithManager:(id)manager name:(id)name;
@end

@implementation UAPingController

- (UAPingController)initWithManager:(id)manager name:(id)name
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = UAPingController;
  v7 = [(UACornerActionManagerHandler *)&v17 initWithManager:managerCopy name:name];
  if (v7)
  {
    v8 = [[UAPingNotifier alloc] initWithManager:managerCopy];
    notifier = v7->_notifier;
    v7->_notifier = v8;

    v10 = [[UAPingClient alloc] initWithController:v7];
    client = v7->_client;
    v7->_client = v10;

    manager = [(UACornerActionManagerHandler *)v7 manager];
    notifier = [(UAPingController *)v7 notifier];
    [manager addActivityNotifier:notifier];

    manager2 = [(UACornerActionManagerHandler *)v7 manager];
    client = [(UAPingController *)v7 client];
    [manager2 addClient:client];
  }

  return v7;
}

- (BOOL)active
{
  client = [(UAPingController *)self client];
  items = [client items];
  v4 = [items count] != 0;

  return v4;
}

- (BOOL)resume
{
  notifier = [(UAPingController *)self notifier];
  [notifier resume];

  client = [(UAPingController *)self client];
  [client resume];

  return 1;
}

- (BOOL)suspend
{
  notifier = [(UAPingController *)self notifier];
  [notifier suspend];

  client = [(UAPingController *)self client];
  [client suspend];

  return 1;
}

- (BOOL)terminate
{
  notifier = [(UAPingController *)self notifier];
  [notifier terminate];

  client = [(UAPingController *)self client];
  [client terminate];

  return 1;
}

@end