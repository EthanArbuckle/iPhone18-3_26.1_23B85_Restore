@interface WFSettingsIPV4
+ (id)automaticConfig;
+ (id)bootPConfig;
- (NSString)description;
- (WFSettingsIPV4)initWithDictionary:(id)dictionary;
- (WFSettingsIPV4)initWithMethod:(int64_t)method addresses:(id)addresses subnetMasks:(id)masks router:(id)router dhcpClientID:(id)d;
@end

@implementation WFSettingsIPV4

+ (id)automaticConfig
{
  v2 = [[WFSettingsIPV4 alloc] initWithMethod:1 addresses:0 subnetMasks:0 router:0 dhcpClientID:0];

  return v2;
}

+ (id)bootPConfig
{
  v2 = [[WFSettingsIPV4 alloc] initWithMethod:5 addresses:0 subnetMasks:0 router:0 dhcpClientID:0];

  return v2;
}

- (WFSettingsIPV4)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v7 = 0;
    goto LABEL_17;
  }

  objc_storeStrong(&self->_items, dictionary);
  v6 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE1730]];
  if (!v6)
  {
    [(WFSettingsIPV4 *)&v21 initWithDictionary:buf];
    v19 = v21;
    v7 = *buf;
LABEL_16:

LABEL_17:
    self = 0;
    goto LABEL_7;
  }

  v7 = v6;
  if (([v6 isEqualToString:*MEMORY[0x277CE1800]] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CE1810]) & 1) == 0)
  {
    if ([v7 isEqualToString:*MEMORY[0x277CE1828]])
    {
      v8 = 4;
      goto LABEL_6;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CE1808]])
    {
      v8 = 5;
      goto LABEL_6;
    }

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v19 && os_log_type_enabled(v19, v20))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_273ECD000, v19, v20, "Unsupported IPv4 config method %{public}@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v8 = 1;
LABEL_6:
  self->_method = v8;
  v9 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE1728]];
  addresses = self->_addresses;
  self->_addresses = v9;

  v11 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE1750]];
  subnetMasks = self->_subnetMasks;
  self->_subnetMasks = v11;

  v13 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE1748]];
  router = self->_router;
  self->_router = v13;

  v15 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE1738]];
  dhcpClientID = self->_dhcpClientID;
  self->_dhcpClientID = v15;

LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
  return self;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@- ", v5];

  items = [(WFSettingsIPV4 *)self items];
  v7 = [items objectForKey:*MEMORY[0x277CE1730]];
  [string appendFormat:@"ConfigMethod: %@ ", v7];

  [string appendString:@"| Addresses: "];
  addresses = [(WFSettingsIPV4 *)self addresses];

  if (addresses)
  {
    addresses2 = [(WFSettingsIPV4 *)self addresses];
    v10 = [addresses2 description];
    [string appendFormat:@"%@ ", v10];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  [string appendString:@"| SubnetMasks: "];
  subnetMasks = [(WFSettingsIPV4 *)self subnetMasks];

  if (subnetMasks)
  {
    subnetMasks2 = [(WFSettingsIPV4 *)self subnetMasks];
    v13 = [subnetMasks2 description];
    [string appendFormat:@"%@ ", v13];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  [string appendString:@"| Router: "];
  router = [(WFSettingsIPV4 *)self router];

  if (router)
  {
    router2 = [(WFSettingsIPV4 *)self router];
    [string appendFormat:@"%@ ", router2];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  [string appendString:@"| DHCP Client ID: "];
  dhcpClientID = [(WFSettingsIPV4 *)self dhcpClientID];

  if (dhcpClientID)
  {
    dhcpClientID2 = [(WFSettingsIPV4 *)self dhcpClientID];
    [string appendFormat:@"%@ ", dhcpClientID2];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  return string;
}

- (WFSettingsIPV4)initWithMethod:(int64_t)method addresses:(id)addresses subnetMasks:(id)masks router:(id)router dhcpClientID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  masksCopy = masks;
  routerCopy = router;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = WFSettingsIPV4;
  v15 = [(WFSettingsIPV4 *)&v28 init];
  if (v15)
  {
    v16 = MEMORY[0x277CE1810];
    switch(method)
    {
      case 0:
      case 2:
      case 6:
      case 7:
        goto LABEL_3;
      case 1:
      case 3:
        goto LABEL_14;
      case 4:
        v16 = MEMORY[0x277CE1828];
        goto LABEL_14;
      case 5:
        v16 = MEMORY[0x277CE1808];
LABEL_14:
        v20 = *v16;
        if (v20)
        {
          v15->_method = method;
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:v20 forKey:*MEMORY[0x277CE1730]];
          if (addressesCopy)
          {
            objc_storeStrong(&v15->_addresses, addresses);
            [dictionary setObject:addressesCopy forKey:*MEMORY[0x277CE1728]];
          }

          if (masksCopy)
          {
            objc_storeStrong(&v15->_subnetMasks, masks);
            [dictionary setObject:masksCopy forKey:*MEMORY[0x277CE1750]];
          }

          if (routerCopy)
          {
            objc_storeStrong(&v15->_router, router);
            [dictionary setObject:routerCopy forKey:*MEMORY[0x277CE1748]];
          }

          if (dCopy)
          {
            objc_storeStrong(&v15->_dhcpClientID, d);
            [dictionary setObject:dCopy forKey:*MEMORY[0x277CE1738]];
          }

          v19 = dictionary;
          items = v15->_items;
          v15->_items = v19;
        }

        else
        {
          v19 = 0;
LABEL_9:
          items = v15;
          v15 = 0;
        }

        break;
      default:
        if (method == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_3:
          v17 = WFLogForCategory(0);
          v18 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v17 && os_log_type_enabled(v17, v18))
          {
            *buf = 134217984;
            methodCopy = method;
            _os_log_impl(&dword_273ECD000, v17, v18, "Unsupported WFIPv4ConfigMethod used %lu", buf, 0xCu);
          }
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    items = 0;
  }

  v23 = v15;
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)initWithDictionary:(NSObject *)a1 .cold.1(NSObject **a1, void *a2)
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "Missing kSCPropNetIPv4ConfigMethod in dictionary.", v6, 2u);
  }

  *a2 = 0;
  *a1 = v4;
}

@end