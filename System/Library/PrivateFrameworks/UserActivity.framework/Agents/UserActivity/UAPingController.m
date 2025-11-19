@interface UAPingController
- (BOOL)active;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (UAPingController)initWithManager:(id)a3 name:(id)a4;
@end

@implementation UAPingController

- (UAPingController)initWithManager:(id)a3 name:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = UAPingController;
  v7 = [(UACornerActionManagerHandler *)&v17 initWithManager:v6 name:a4];
  if (v7)
  {
    v8 = [[UAPingNotifier alloc] initWithManager:v6];
    notifier = v7->_notifier;
    v7->_notifier = v8;

    v10 = [[UAPingClient alloc] initWithController:v7];
    client = v7->_client;
    v7->_client = v10;

    v12 = [(UACornerActionManagerHandler *)v7 manager];
    v13 = [(UAPingController *)v7 notifier];
    [v12 addActivityNotifier:v13];

    v14 = [(UACornerActionManagerHandler *)v7 manager];
    v15 = [(UAPingController *)v7 client];
    [v14 addClient:v15];
  }

  return v7;
}

- (BOOL)active
{
  v2 = [(UAPingController *)self client];
  v3 = [v2 items];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)resume
{
  v3 = [(UAPingController *)self notifier];
  [v3 resume];

  v4 = [(UAPingController *)self client];
  [v4 resume];

  return 1;
}

- (BOOL)suspend
{
  v3 = [(UAPingController *)self notifier];
  [v3 suspend];

  v4 = [(UAPingController *)self client];
  [v4 suspend];

  return 1;
}

- (BOOL)terminate
{
  v3 = [(UAPingController *)self notifier];
  [v3 terminate];

  v4 = [(UAPingController *)self client];
  [v4 terminate];

  return 1;
}

@end