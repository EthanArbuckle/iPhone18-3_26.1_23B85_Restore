@interface UIAccessibilityCustomRotorItemResult(PrivateRotor)
- (uint64_t)targetNSRange;
- (void)setTargetNSRange:()PrivateRotor;
@end

@implementation UIAccessibilityCustomRotorItemResult(PrivateRotor)

- (void)setTargetNSRange:()PrivateRotor
{
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"targetNSRange"];
}

- (uint64_t)targetNSRange
{
  v1 = [a1 _accessibilityValueForKey:@"targetNSRange"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 rangeValue];
  }

  else
  {
    v3 = 0x7FFFFFFFLL;
  }

  return v3;
}

@end