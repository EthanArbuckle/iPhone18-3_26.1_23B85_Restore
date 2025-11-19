@interface NSValue(_UIPressTriggerAdditions)
- (uint64_t)_UIPressTriggerValue;
@end

@implementation NSValue(_UIPressTriggerAdditions)

- (uint64_t)_UIPressTriggerValue
{
  *x8_0 = 0u;
  x8_0[1] = 0u;
  return [a1 getValue:x8_0 size:32];
}

@end