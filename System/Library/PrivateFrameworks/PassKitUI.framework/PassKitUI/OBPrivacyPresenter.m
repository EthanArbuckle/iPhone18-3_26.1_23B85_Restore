@interface OBPrivacyPresenter
@end

@implementation OBPrivacyPresenter

void __72__OBPrivacyPresenter_PKPrivacy__pk_defaultPresentationActionForContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 pk_presenterForContext:v3];
  [v5 setPresentingViewController:v4];

  [v5 present];
}

@end