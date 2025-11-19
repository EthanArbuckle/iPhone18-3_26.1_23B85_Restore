@interface NSObject(AXScanner)
- (uint64_t)_accessibilityIsScannerGroup;
- (uint64_t)_accessibilityScannerActivateBehavior;
- (unint64_t)_accessibilityScannerGroupTraits;
- (void)_accessibilityProcessScannerGroupElementPieces:()AXScanner;
- (void)_accessibilitySetScannerActivateBehavior:()AXScanner;
@end

@implementation NSObject(AXScanner)

- (void)_accessibilityProcessScannerGroupElementPieces:()AXScanner
{
  v6 = a3;
  v4 = +[UIAccessibilityElementTraversalOptions defaultSwitchControlOptions];
  v5 = [a1 _accessibilityLeafDescendantsWithOptions:v4];
  if ([v5 count])
  {
    [v6 addObjectsFromArray:v5];
  }
}

- (uint64_t)_accessibilityIsScannerGroup
{
  v2 = [a1 _accessibilityValueForKey:@"UIAccessibilityStorageKeyIsScannerGroup"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = ([a1 _accessibilityIsTouchContainer] & 1) != 0 || objc_msgSend(a1, "_accessibilityHasOrderedChildren") && objc_msgSend(a1, "accessibilityElementCount") > 0 || objc_msgSend(a1, "accessibilityNavigationStyle") != 0;
  }

  return v4;
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v2 = [a1 _accessibilityValueForKey:@"UIAccessibilityStorageKeyScannerGroupTraits"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else if ([a1 accessibilityNavigationStyle] == 2)
  {
    v4 = 256;
  }

  else
  {
    v4 = ([a1 accessibilityNavigationStyle] == 1) << 7;
  }

  return v4;
}

- (uint64_t)_accessibilityScannerActivateBehavior
{
  v1 = objc_getAssociatedObject(a1, &UIAccessibilityStorageKeyScannerActivateBehavior);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_accessibilitySetScannerActivateBehavior:()AXScanner
{
  v2 = [MEMORY[0x1E696AD98] numberWithLong:?];
  objc_setAssociatedObject(a1, &UIAccessibilityStorageKeyScannerActivateBehavior, v2, 1);
}

@end