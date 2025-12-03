@interface UIPressesEvent(Private)
- (uint64_t)smu_triggeringPhysicalButtonPressType;
@end

@implementation UIPressesEvent(Private)

- (uint64_t)smu_triggeringPhysicalButtonPressType
{
  _triggeringPhysicalButton = [self _triggeringPhysicalButton];
  type = [_triggeringPhysicalButton type];

  return type;
}

@end