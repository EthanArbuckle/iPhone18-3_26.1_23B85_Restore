@interface UICollectionViewDiffableDataSource(AccessibilityPriv)
- (void)_setAccessibilityDiffableDataSourceAnnotator:()AccessibilityPriv;
@end

@implementation UICollectionViewDiffableDataSource(AccessibilityPriv)

- (void)_setAccessibilityDiffableDataSourceAnnotator:()AccessibilityPriv
{
  v4 = _Block_copy(aBlock);
  [self _accessibilitySetRetainedValue:v4 forKey:@"_accessibilityDiffableDataSourceAnnotator"];
}

@end