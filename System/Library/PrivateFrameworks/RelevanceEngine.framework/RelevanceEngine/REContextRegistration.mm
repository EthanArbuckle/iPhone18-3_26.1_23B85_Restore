@interface REContextRegistration
@end

@implementation REContextRegistration

void __45___REContextRegistration_registerWithContext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateQueryWithRegistration:1];
}

@end