@interface UIAlertView
@end

@implementation UIAlertView

void __54__UIAlertView_KNAdditions__showWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) setDelegate:0];
  [*(a1 + 40) setCompletionHandler:0];
  v3 = *(a1 + 40);
}

@end