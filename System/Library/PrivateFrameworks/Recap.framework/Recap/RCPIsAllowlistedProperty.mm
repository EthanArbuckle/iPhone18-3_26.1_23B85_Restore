@interface RCPIsAllowlistedProperty
@end

@implementation RCPIsAllowlistedProperty

uint64_t ___RCPIsAllowlistedProperty_block_invoke()
{
  _RCPIsAllowlistedProperty_propertyNames = [MEMORY[0x277CBEB98] setWithObjects:{@"DeviceOpenedByEventSystem", @"LastActivityTimestamp", @"BatchInterval", @"PreserveTimestamp", @"BKReadyToReceivePointerEvents", 0}];

  return MEMORY[0x2821F96F8]();
}

@end