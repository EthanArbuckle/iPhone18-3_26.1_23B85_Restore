@interface WiFiUsageNetworkIPv6Details
- (WiFiUsageNetworkIPv6Details)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation WiFiUsageNetworkIPv6Details

- (WiFiUsageNetworkIPv6Details)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WiFiUsageNetworkIPv6Details;
  v5 = [(WiFiUsageNetworkIPv6Details *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKey:*MEMORY[0x277CE1758]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
    {
      [(WiFiUsageNetworkIPv6Details *)v5 setIpv6Addresses:v6];
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    [(WiFiUsageNetworkIPv6Details *)v5 setIsValid:v7];
    v8 = v5;
  }

  return v5;
}

- (id)description
{
  if (self->_isValid)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"addresses:%@", self->_ipv6Addresses];
  }

  else
  {
    v3 = @"N/A";
  }

  return v3;
}

@end