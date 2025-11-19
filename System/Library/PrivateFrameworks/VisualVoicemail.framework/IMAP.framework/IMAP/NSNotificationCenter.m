@interface NSNotificationCenter
@end

@implementation NSNotificationCenter

void __87__NSNotificationCenter_MessageAdditions__mf_addImmediateObserver_selector_name_object___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelector:*(a1 + 40) withObject:v3];
}

@end