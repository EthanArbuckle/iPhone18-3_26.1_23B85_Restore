@interface SBHUDModel
@end

@implementation SBHUDModel

void __34___SBHUDModel__setupDropletLayout__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDropletLayoutCallback:a2];
}

@end