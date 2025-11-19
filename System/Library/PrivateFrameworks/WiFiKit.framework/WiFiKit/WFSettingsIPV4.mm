@interface WFSettingsIPV4
+ (id)automaticConfig;
+ (id)bootPConfig;
- (NSString)description;
- (WFSettingsIPV4)initWithDictionary:(id)a3;
- (WFSettingsIPV4)initWithMethod:(int64_t)a3 addresses:(id)a4 subnetMasks:(id)a5 router:(id)a6 dhcpClientID:(id)a7;
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

- (WFSettingsIPV4)initWithDictionary:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_17;
  }

  objc_storeStrong(&self->_items, a3);
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
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@- ", v5];

  v6 = [(WFSettingsIPV4 *)self items];
  v7 = [v6 objectForKey:*MEMORY[0x277CE1730]];
  [v3 appendFormat:@"ConfigMethod: %@ ", v7];

  [v3 appendString:@"| Addresses: "];
  v8 = [(WFSettingsIPV4 *)self addresses];

  if (v8)
  {
    v9 = [(WFSettingsIPV4 *)self addresses];
    v10 = [v9 description];
    [v3 appendFormat:@"%@ ", v10];
  }

  else
  {
    [v3 appendString:@"(None) "];
  }

  [v3 appendString:@"| SubnetMasks: "];
  v11 = [(WFSettingsIPV4 *)self subnetMasks];

  if (v11)
  {
    v12 = [(WFSettingsIPV4 *)self subnetMasks];
    v13 = [v12 description];
    [v3 appendFormat:@"%@ ", v13];
  }

  else
  {
    [v3 appendString:@"(None) "];
  }

  [v3 appendString:@"| Router: "];
  v14 = [(WFSettingsIPV4 *)self router];

  if (v14)
  {
    v15 = [(WFSettingsIPV4 *)self router];
    [v3 appendFormat:@"%@ ", v15];
  }

  else
  {
    [v3 appendString:@"(None) "];
  }

  [v3 appendString:@"| DHCP Client ID: "];
  v16 = [(WFSettingsIPV4 *)self dhcpClientID];

  if (v16)
  {
    v17 = [(WFSettingsIPV4 *)self dhcpClientID];
    [v3 appendFormat:@"%@ ", v17];
  }

  else
  {
    [v3 appendString:@"(None) "];
  }

  return v3;
}

- (WFSettingsIPV4)initWithMethod:(int64_t)a3 addresses:(id)a4 subnetMasks:(id)a5 router:(id)a6 dhcpClientID:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = a4;
  v26 = a5;
  v13 = a6;
  v14 = a7;
  v28.receiver = self;
  v28.super_class = WFSettingsIPV4;
  v15 = [(WFSettingsIPV4 *)&v28 init];
  if (v15)
  {
    v16 = MEMORY[0x277CE1810];
    switch(a3)
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
          v15->_method = a3;
          v22 = [MEMORY[0x277CBEB38] dictionary];
          [v22 setObject:v20 forKey:*MEMORY[0x277CE1730]];
          if (v27)
          {
            objc_storeStrong(&v15->_addresses, a4);
            [v22 setObject:v27 forKey:*MEMORY[0x277CE1728]];
          }

          if (v26)
          {
            objc_storeStrong(&v15->_subnetMasks, a5);
            [v22 setObject:v26 forKey:*MEMORY[0x277CE1750]];
          }

          if (v13)
          {
            objc_storeStrong(&v15->_router, a6);
            [v22 setObject:v13 forKey:*MEMORY[0x277CE1748]];
          }

          if (v14)
          {
            objc_storeStrong(&v15->_dhcpClientID, a7);
            [v22 setObject:v14 forKey:*MEMORY[0x277CE1738]];
          }

          v19 = v22;
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
        if (a3 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_3:
          v17 = WFLogForCategory(0);
          v18 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v17 && os_log_type_enabled(v17, v18))
          {
            *buf = 134217984;
            v30 = a3;
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