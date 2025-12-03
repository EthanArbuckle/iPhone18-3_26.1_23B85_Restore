@interface SXSubscribeActionHandler
- (void)handleSubscribeActionOnPresenter:(id)presenter completionBlock:(id)block;
- (void)handleSubscribeActionOnPresenter:(id)presenter inAppPurchaseIdKey:(id)key completionBlock:(id)block;
@end

@implementation SXSubscribeActionHandler

- (void)handleSubscribeActionOnPresenter:(id)presenter completionBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x1E69DC650];
  presenterCopy = presenter;
  v7 = [v5 alertControllerWithTitle:@"Failed To Subscribe" message:&stru_1F532F6C0 preferredStyle:1];
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v7 addAction:v8];
  [presenterCopy presentViewController:v7 animated:1];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)handleSubscribeActionOnPresenter:(id)presenter inAppPurchaseIdKey:(id)key completionBlock:(id)block
{
  blockCopy = block;
  v6 = MEMORY[0x1E69DC650];
  presenterCopy = presenter;
  v8 = [v6 alertControllerWithTitle:@"Failed To Subscribe with specific IAP" message:&stru_1F532F6C0 preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v8 addAction:v9];
  [presenterCopy presentViewController:v8 animated:1];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

@end