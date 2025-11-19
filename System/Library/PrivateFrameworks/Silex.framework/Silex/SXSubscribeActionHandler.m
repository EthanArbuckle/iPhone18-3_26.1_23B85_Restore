@interface SXSubscribeActionHandler
- (void)handleSubscribeActionOnPresenter:(id)a3 completionBlock:(id)a4;
- (void)handleSubscribeActionOnPresenter:(id)a3 inAppPurchaseIdKey:(id)a4 completionBlock:(id)a5;
@end

@implementation SXSubscribeActionHandler

- (void)handleSubscribeActionOnPresenter:(id)a3 completionBlock:(id)a4
{
  v9 = a4;
  v5 = MEMORY[0x1E69DC650];
  v6 = a3;
  v7 = [v5 alertControllerWithTitle:@"Failed To Subscribe" message:&stru_1F532F6C0 preferredStyle:1];
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v7 addAction:v8];
  [v6 presentViewController:v7 animated:1];

  if (v9)
  {
    v9[2](v9, 0);
  }
}

- (void)handleSubscribeActionOnPresenter:(id)a3 inAppPurchaseIdKey:(id)a4 completionBlock:(id)a5
{
  v10 = a5;
  v6 = MEMORY[0x1E69DC650];
  v7 = a3;
  v8 = [v6 alertControllerWithTitle:@"Failed To Subscribe with specific IAP" message:&stru_1F532F6C0 preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v8 addAction:v9];
  [v7 presentViewController:v8 animated:1];

  if (v10)
  {
    v10[2](v10, 0);
  }
}

@end