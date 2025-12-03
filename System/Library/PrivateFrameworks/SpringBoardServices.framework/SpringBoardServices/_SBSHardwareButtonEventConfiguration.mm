@interface _SBSHardwareButtonEventConfiguration
- (id)description;
@end

@implementation _SBSHardwareButtonEventConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_eventMask withName:@"eventMask"];
  v5 = NSStringFromSBSHardwareButtonEventPriority(self->_maximumPriority);
  [v3 appendString:v5 withName:@"eventPriority"];

  build = [v3 build];

  return build;
}

@end