@interface WLKStoredConfiguration
- (NSString)utsk;
- (id)description;
@end

@implementation WLKStoredConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = WLKStoredConfiguration;
  v4 = [(WLKStoredConfiguration *)&v10 description];
  requiredRequestKeyValuePairs = [(WLKStoredConfiguration *)self requiredRequestKeyValuePairs];
  if ([(WLKStoredConfiguration *)self activeUser])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  timestamp = [(WLKStoredConfiguration *)self timestamp];
  v8 = [v3 stringWithFormat:@"%@ {rrkvp:%@ activeUser:%@ timestamp:%@}", v4, requiredRequestKeyValuePairs, v6, timestamp];

  return v8;
}

- (NSString)utsk
{
  requiredRequestKeyValuePairs = [(WLKStoredConfiguration *)self requiredRequestKeyValuePairs];
  v3 = [requiredRequestKeyValuePairs objectForKeyedSubscript:@"utsk"];
  v4 = [v3 copy];

  return v4;
}

@end