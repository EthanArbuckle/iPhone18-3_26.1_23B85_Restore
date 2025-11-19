@interface VFConnectableObservable
@end

@implementation VFConnectableObservable

void __35___VFConnectableObservable_connect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disconnect];
}

@end