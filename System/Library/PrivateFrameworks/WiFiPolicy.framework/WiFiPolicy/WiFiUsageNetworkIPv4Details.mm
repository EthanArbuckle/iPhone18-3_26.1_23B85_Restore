@interface WiFiUsageNetworkIPv4Details
- (BOOL)isEqual:(id)equal;
- (WiFiUsageNetworkIPv4Details)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation WiFiUsageNetworkIPv4Details

- (WiFiUsageNetworkIPv4Details)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = WiFiUsageNetworkIPv4Details;
  v5 = [(WiFiUsageNetworkIPv4Details *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1728]];
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
    v9 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1750]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4Subnet:v10];
    }

    v11 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1720]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4RouterAddress:v11];
    }

    v12 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1748]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4DefGwAddress:v12];
    }

    v13 = [dictionaryCopy objectForKey:*MEMORY[0x277CE1718]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WiFiUsageNetworkIPv4Details *)v5 setIpv4RouterMacAddress:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  isValid = [(WiFiUsageNetworkIPv4Details *)self isValid];
  if (isValid != [equalCopy isValid])
  {
    goto LABEL_8;
  }

  ipv4Address = [(WiFiUsageNetworkIPv4Details *)self ipv4Address];
  ipv4Address2 = [equalCopy ipv4Address];
  v8 = [ipv4Address isEqualToString:ipv4Address2];

  if (!v8)
  {
    goto LABEL_8;
  }

  ipv4RouterAddress = [(WiFiUsageNetworkIPv4Details *)self ipv4RouterAddress];
  ipv4RouterAddress2 = [equalCopy ipv4RouterAddress];
  v11 = [ipv4RouterAddress isEqualToString:ipv4RouterAddress2];

  if (!v11)
  {
    goto LABEL_8;
  }

  ipv4RouterMacAddress = [(WiFiUsageNetworkIPv4Details *)self ipv4RouterMacAddress];
  ipv4RouterMacAddress2 = [equalCopy ipv4RouterMacAddress];
  v14 = [ipv4RouterMacAddress isEqualToString:ipv4RouterMacAddress2];

  if (!v14)
  {
    goto LABEL_8;
  }

  ipv4DefGwAddress = [(WiFiUsageNetworkIPv4Details *)self ipv4DefGwAddress];
  ipv4DefGwAddress2 = [equalCopy ipv4DefGwAddress];
  v17 = [ipv4DefGwAddress isEqualToString:ipv4DefGwAddress2];

  if (v17)
  {
    ipv4Subnet = [(WiFiUsageNetworkIPv4Details *)self ipv4Subnet];
    ipv4Subnet2 = [equalCopy ipv4Subnet];
    v20 = [ipv4Subnet isEqualToString:ipv4Subnet2];
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