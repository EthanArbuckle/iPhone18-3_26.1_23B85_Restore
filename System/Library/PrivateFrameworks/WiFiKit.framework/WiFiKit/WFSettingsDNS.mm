@interface WFSettingsDNS
+ (id)automaticConfig;
- (NSString)description;
- (WFSettingsDNS)initWithDictionary:(id)dictionary;
- (WFSettingsDNS)initWithServerAddresses:(id)addresses searchDomains:(id)domains;
@end

@implementation WFSettingsDNS

+ (id)automaticConfig
{
  v2 = [[WFSettingsDNS alloc] initWithServerAddresses:0 searchDomains:0];

  return v2;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@- ", v5];

  serverAddresses = [(WFSettingsDNS *)self serverAddresses];
  if ([serverAddresses count])
  {
  }

  else
  {
    searchDomains = [(WFSettingsDNS *)self searchDomains];
    v8 = [searchDomains count];

    if (!v8)
    {
      v14 = @" Automatic Config";
      goto LABEL_11;
    }
  }

  [string appendString:@"Sever Addresses: "];
  if (self->_serverAddresses)
  {
    serverAddresses2 = [(WFSettingsDNS *)self serverAddresses];
    v10 = [serverAddresses2 description];
    [string appendFormat:@"%@ ", v10];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  [string appendString:@"| Search Domains: "];
  searchDomains2 = [(WFSettingsDNS *)self searchDomains];

  if (searchDomains2)
  {
    searchDomains3 = [(WFSettingsDNS *)self searchDomains];
    v13 = [searchDomains3 description];
    [string appendFormat:@"%@ ", v13];

    goto LABEL_12;
  }

  v14 = @"(None) ";
LABEL_11:
  [string appendString:v14];
LABEL_12:

  return string;
}

- (WFSettingsDNS)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = WFSettingsDNS;
  v6 = [(WFSettingsDNS *)&v13 init];
  v7 = v6;
  if (dictionaryCopy)
  {
    if (v6)
    {
      objc_storeStrong(&v6->_items, dictionary);
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

- (WFSettingsDNS)initWithServerAddresses:(id)addresses searchDomains:(id)domains
{
  addressesCopy = addresses;
  domainsCopy = domains;
  v14.receiver = self;
  v14.super_class = WFSettingsDNS;
  v9 = [(WFSettingsDNS *)&v14 init];
  if (v9)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objc_storeStrong(&v9->_serverAddresses, addresses);
    if (addressesCopy)
    {
      [(NSDictionary *)dictionary setObject:addressesCopy forKey:*MEMORY[0x277CE1710]];
    }

    objc_storeStrong(&v9->_searchDomains, domains);
    if (domainsCopy)
    {
      [(NSDictionary *)dictionary setObject:domainsCopy forKey:*MEMORY[0x277CE1708]];
    }

    items = v9->_items;
    v9->_items = dictionary;
    v12 = dictionary;
  }

  return v9;
}

@end