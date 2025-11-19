@interface RMSAppleTVServiceProvider
- (int64_t)serviceFlagsFromTXTDictionary:(id)a3;
@end

@implementation RMSAppleTVServiceProvider

- (int64_t)serviceFlagsFromTXTDictionary:(id)a3
{
  v3 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"DFID" inTXTDictionary:a3];
  v4 = [v3 integerValue] < 3;

  return v4;
}

@end