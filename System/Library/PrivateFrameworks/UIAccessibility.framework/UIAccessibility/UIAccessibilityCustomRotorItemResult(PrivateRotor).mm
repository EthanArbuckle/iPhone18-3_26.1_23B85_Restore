@interface UIAccessibilityCustomRotorItemResult(PrivateRotor)
- (uint64_t)targetNSRange;
- (void)setTargetNSRange:()PrivateRotor;
@end

@implementation UIAccessibilityCustomRotorItemResult(PrivateRotor)

- (void)setTargetNSRange:()PrivateRotor
{
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"targetNSRange"];
}

- (uint64_t)targetNSRange
{
  v1 = [self _accessibilityValueForKey:@"targetNSRange"];
  v2 = v1;
  if (v1)
  {
    rangeValue = [v1 rangeValue];
  }

  else
  {
    rangeValue = 0x7FFFFFFFLL;
  }

  return rangeValue;
}

@end