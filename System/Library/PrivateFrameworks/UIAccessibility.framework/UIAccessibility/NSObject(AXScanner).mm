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
  v5 = [self _accessibilityLeafDescendantsWithOptions:v4];
  if ([v5 count])
  {
    [v6 addObjectsFromArray:v5];
  }
}

- (uint64_t)_accessibilityIsScannerGroup
{
  v2 = [self _accessibilityValueForKey:@"UIAccessibilityStorageKeyIsScannerGroup"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = ([self _accessibilityIsTouchContainer] & 1) != 0 || objc_msgSend(self, "_accessibilityHasOrderedChildren") && objc_msgSend(self, "accessibilityElementCount") > 0 || objc_msgSend(self, "accessibilityNavigationStyle") != 0;
  }

  return bOOLValue;
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v2 = [self _accessibilityValueForKey:@"UIAccessibilityStorageKeyScannerGroupTraits"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else if ([self accessibilityNavigationStyle] == 2)
  {
    intValue = 256;
  }

  else
  {
    intValue = ([self accessibilityNavigationStyle] == 1) << 7;
  }

  return intValue;
}

- (uint64_t)_accessibilityScannerActivateBehavior
{
  v1 = objc_getAssociatedObject(self, &UIAccessibilityStorageKeyScannerActivateBehavior);
  v2 = v1;
  if (v1)
  {
    intValue = [v1 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_accessibilitySetScannerActivateBehavior:()AXScanner
{
  v2 = [MEMORY[0x1E696AD98] numberWithLong:?];
  objc_setAssociatedObject(self, &UIAccessibilityStorageKeyScannerActivateBehavior, v2, 1);
}

@end