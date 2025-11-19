@interface TVRCExpiringStore
@end

@implementation TVRCExpiringStore

void __62___TVRCExpiringStore_addIdentifier_withExpiration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeIdentifierAndPerformCompletion:*(a1 + 32)];
}

@end