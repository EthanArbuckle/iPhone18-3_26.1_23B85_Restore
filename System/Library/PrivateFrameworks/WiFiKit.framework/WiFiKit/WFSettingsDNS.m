@interface WFSettingsDNS
+ (id)automaticConfig;
- (NSString)description;
- (WFSettingsDNS)initWithDictionary:(id)a3;
- (WFSettingsDNS)initWithServerAddresses:(id)a3 searchDomains:(id)a4;
@end

@implementation WFSettingsDNS

+ (id)automaticConfig
{
  v2 = [[WFSettingsDNS alloc] initWithServerAddresses:0 searchDomains:0];

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@- ", v5];

  v6 = [(WFSettingsDNS *)self serverAddresses];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [(WFSettingsDNS *)self searchDomains];
    v8 = [v7 count];

    if (!v8)
    {
      v14 = @" Automatic Config";
      goto LABEL_11;
    }
  }

  [v3 appendString:@"Sever Addresses: "];
  if (self->_serverAddresses)
  {
    v9 = [(WFSettingsDNS *)self serverAddresses];
    v10 = [v9 description];
    [v3 appendFormat:@"%@ ", v10];
  }

  else
  {
    [v3 appendString:@"(None) "];
  }

  [v3 appendString:@"| Search Domains: "];
  v11 = [(WFSettingsDNS *)self searchDomains];

  if (v11)
  {
    v12 = [(WFSettingsDNS *)self searchDomains];
    v13 = [v12 description];
    [v3 appendFormat:@"%@ ", v13];

    goto LABEL_12;
  }

  v14 = @"(None) ";
LABEL_11:
  [v3 appendString:v14];
LABEL_12:

  return v3;
}

- (WFSettingsDNS)initWithDictionary:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFSettingsDNS;
  v6 = [(WFSettingsDNS *)&v13 init];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      objc_storeStrong(&v6->_items, a3);
      v8 = [(NSDictionary *)v7->_items objectForKey:*MEMORY[0x277CE1710]];
      serverAddresses = v7->_serverAddresses;
      v7->_serverAddresses = v8;

      v10 = [(NSDictionary *)v7->_items objectForKey:*MEMORY[0x277CE1708]];
      searchDomains = v7->_searchDomains;
      v7->_searchDomains = v10;
    }

    else
    {
      searchDomains = 0;
    }
  }

  else
  {
    searchDomains = v6;
    v7 = 0;
  }

  return v7;
}

- (WFSettingsDNS)initWithServerAddresses:(id)a3 searchDomains:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WFSettingsDNS;
  v9 = [(WFSettingsDNS *)&v14 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    objc_storeStrong(&v9->_serverAddresses, a3);
    if (v7)
    {
      [(NSDictionary *)v10 setObject:v7 forKey:*MEMORY[0x277CE1710]];
    }

    objc_storeStrong(&v9->_searchDomains, a4);
    if (v8)
    {
      [(NSDictionary *)v10 setObject:v8 forKey:*MEMORY[0x277CE1708]];
    }

    items = v9->_items;
    v9->_items = v10;
    v12 = v10;
  }

  return v9;
}

@end