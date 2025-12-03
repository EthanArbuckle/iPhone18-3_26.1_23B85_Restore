@interface RMSAppleTVServiceProvider
- (int64_t)serviceFlagsFromTXTDictionary:(id)dictionary;
@end

@implementation RMSAppleTVServiceProvider

- (int64_t)serviceFlagsFromTXTDictionary:(id)dictionary
{
  v3 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"DFID" inTXTDictionary:dictionary];
  v4 = [v3 integerValue] < 3;

  return v4;
}

@end