@interface WiFiUsageNetworkIPv4Details
- (BOOL)isEqual:(id)a3;
- (WiFiUsageNetworkIPv4Details)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation WiFiUsageNetworkIPv4Details

- (WiFiUsageNetworkIPv4Details)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WiFiUsageNetworkIPv4Details;
  v5 = [(WiFiUsageNetworkIPv4Details *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:*MEMORY[0x277CE1728]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
    {
      v7 = [v6 objectAtIndex:0];
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4Address:v7];

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    [(WiFiUsageNetworkIPv4Details *)v5 setIsValid:v8];
    v9 = [v4 objectForKey:*MEMORY[0x277CE1750]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4Subnet:v10];
    }

    v11 = [v4 objectForKey:*MEMORY[0x277CE1720]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4RouterAddress:v11];
    }

    v12 = [v4 objectForKey:*MEMORY[0x277CE1748]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4DefGwAddress:v12];
    }

    v13 = [v4 objectForKey:*MEMORY[0x277CE1718]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4RouterMacAddress:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = [(WiFiUsageNetworkIPv4Details *)self isValid];
  if (v5 != [v4 isValid])
  {
    goto LABEL_8;
  }

  v6 = [(WiFiUsageNetworkIPv4Details *)self ipv4Address];
  v7 = [v4 ipv4Address];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [(WiFiUsageNetworkIPv4Details *)self ipv4RouterAddress];
  v10 = [v4 ipv4RouterAddress];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [(WiFiUsageNetworkIPv4Details *)self ipv4RouterMacAddress];
  v13 = [v4 ipv4RouterMacAddress];
  v14 = [v12 isEqualToString:v13];

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = [(WiFiUsageNetworkIPv4Details *)self ipv4DefGwAddress];
  v16 = [v4 ipv4DefGwAddress];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    v18 = [(WiFiUsageNetworkIPv4Details *)self ipv4Subnet];
    v19 = [v4 ipv4Subnet];
    v20 = [v18 isEqualToString:v19];
  }

  else
  {
LABEL_8:
    v20 = 0;
  }

  return v20;
}

- (id)description
{
  if (self->_isValid)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"address:%@, router:%@(%@) defaultGW:%@, subnet:%@", self->_ipv4Address, self->_ipv4RouterAddress, self->_ipv4RouterMacAddress, self->_ipv4DefGwAddress, self->_ipv4Subnet];
  }

  else
  {
    v3 = @"N/A";
  }

  return v3;
}

@end