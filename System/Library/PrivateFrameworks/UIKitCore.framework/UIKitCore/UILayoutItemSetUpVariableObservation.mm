@interface UILayoutItemSetUpVariableObservation
@end

@implementation UILayoutItemSetUpVariableObservation

void ___UILayoutItemSetUpVariableObservation_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained nsis_valueOfVariable:v2 didChangeInEngine:v3];
}

@end