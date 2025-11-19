@interface WBSBiomeDonationManager
@end

@implementation WBSBiomeDonationManager

void __129__WBSBiomeDonationManager_SafariSharedUI__donateWindowProxyWithDomain_openedDomain_windowProxyProperty_accessedPropertyDirectly___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _windowProxyStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

@end