@interface UICollectionViewDiffableDataSource(AccessibilityPriv)
- (void)_setAccessibilityDiffableDataSourceAnnotator:()AccessibilityPriv;
@end

@implementation UICollectionViewDiffableDataSource(AccessibilityPriv)

- (void)_setAccessibilityDiffableDataSourceAnnotator:()AccessibilityPriv
{
  v4 = _Block_copy(aBlock);
  [a1 _accessibilitySetRetainedValue:v4 forKey:@"_accessibilityDiffableDataSourceAnnotator"];
}

@end