@interface WFSettingsProxy
+ (id)defaultProxyConfiguration;
+ (id)offConfig;
- (NSString)description;
- (WFSettingsProxy)initWithAutoConfigureURL:(id)a3;
- (WFSettingsProxy)initWithDictionary:(id)a3;
- (WFSettingsProxy)initWithManualServer:(id)a3 port:(id)a4 username:(id)a5 password:(id)a6;
- (id)initDefaultConfig;
@end

@implementation WFSettingsProxy

+ (id)offConfig
{
  v2 = [[WFSettingsProxy alloc] initDefaultConfig];

  return v2;
}

- (WFSettingsProxy)initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = 0;
    v24 = self;
    self = 0;
    goto LABEL_13;
  }

  objc_storeStrong(&self->_items, a3);
  items = self->_items;
  v7 = +[WFSettingsProxy defaultProxyConfiguration];
  LOBYTE(items) = [(NSDictionary *)items isEqualToDictionary:v7];

  self->_customProxy = items ^ 1;
  v8 = [(NSDictionary *)self->_items objectForKey:@"HTTPProxyAuthenticated"];

  if (v8)
  {
    v9 = [(NSDictionary *)self->_items objectForKey:@"HTTPProxyAuthenticated"];
    LOBYTE(v8) = [v9 BOOLValue];
  }

  self->_authenticated = v8;
  v10 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE17C8]];
  server = self->_server;
  self->_server = v10;

  v12 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE17C0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 stringValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v13 = v12;
  }

  port = self->_port;
  self->_port = v13;

LABEL_9:
  v15 = [(NSDictionary *)self->_items objectForKey:@"HTTPProxyUsername"];
  username = self->_username;
  self->_username = v15;

  v17 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE17F0]];
  autoConfigureURL = self->_autoConfigureURL;
  self->_autoConfigureURL = v17;

  v19 = *MEMORY[0x277CE17E8];
  v20 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE17E8]];

  if (v20)
  {
    v21 = [(NSDictionary *)self->_items objectForKey:v19];
    self->_autoConfigured = [v21 BOOLValue];
  }

  v22 = *MEMORY[0x277CE17F8];
  v23 = [(NSDictionary *)self->_items objectForKey:*MEMORY[0x277CE17F8]];

  if (v23)
  {
    v24 = [(NSDictionary *)self->_items objectForKey:v22];
    self->_autoDiscoveryEnabled = [v24 BOOLValue];
LABEL_13:
  }

  return self;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@- ", v5];

  v6 = [(WFSettingsProxy *)self server];
  [v3 appendFormat:@"Server: %@ ", v6];

  v7 = [(WFSettingsProxy *)self port];
  [v3 appendFormat:@" Port: %@ ", v7];

  if ([(WFSettingsProxy *)self authenticated])
  {
    v8 = [(WFSettingsProxy *)self username];
    [v3 appendFormat:@" Username: %@ ", v8];

    v9 = [(WFSettingsProxy *)self password];
    v10 = [v9 length];
    v11 = @"<not nil>";
    if (!v10)
    {
      v11 = @"<nil>";
    }

    [v3 appendFormat:@" Password: %@", v11];
  }

  else
  {
    v12 = [(WFSettingsProxy *)self autoConfigureURL];

    if (!v12)
    {
      goto LABEL_8;
    }

    v9 = [(WFSettingsProxy *)self autoConfigureURL];
    [v3 appendFormat:@" AutoConfigureURL: %@", v9];
  }

LABEL_8:

  return v3;
}

+ (id)defaultProxyConfiguration
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE17B0];
  v6[0] = *MEMORY[0x277CE17A8];
  v6[1] = v2;
  v7[0] = &unk_288304F78;
  v7[1] = &unk_288304BD0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (WFSettingsProxy)initWithManualServer:(id)a3 port:(id)a4 username:(id)a5 password:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26 = a6;
  v27.receiver = self;
  v27.super_class = WFSettingsProxy;
  v14 = [(WFSettingsProxy *)&v27 init];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = +[WFSettingsProxy defaultProxyConfiguration];
  v16 = [OUTLINED_FUNCTION_0_10() dictionaryWithDictionary:?];

  v14->_customProxy = 1;
  objc_storeStrong(&v14->_server, a3);
  if (v11)
  {
    [(NSDictionary *)v16 setObject:v11 forKey:*MEMORY[0x277CE17C8]];
    [(NSDictionary *)v16 setObject:v11 forKey:*MEMORY[0x277CE17E0]];
  }

  objc_storeStrong(&v14->_port, a4);
  if (v12)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
    v18 = *MEMORY[0x277CE17C0];
    [OUTLINED_FUNCTION_0_10() setObject:? forKey:?];
    v19 = *MEMORY[0x277CE17D8];
    [OUTLINED_FUNCTION_0_10() setObject:? forKey:?];
  }

  if ([v13 length])
  {
    v14->_authenticated = 1;
LABEL_9:
    [(NSDictionary *)v16 setObject:&unk_288304BD0 forKey:@"HTTPProxyAuthenticated"];
    goto LABEL_10;
  }

  v20 = [v26 length];
  v14->_authenticated = v20 != 0;
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_10:
  objc_storeStrong(&v14->_username, a5);
  if (v13)
  {
    [(NSDictionary *)v16 setObject:v13 forKey:@"HTTPProxyUsername"];
  }

  v21 = *MEMORY[0x277CE17B8];
  [OUTLINED_FUNCTION_0_10() setObject:? forKey:?];
  v22 = *MEMORY[0x277CE17D0];
  [OUTLINED_FUNCTION_0_10() setObject:? forKey:?];
  objc_storeStrong(&v14->_password, a6);
  items = v14->_items;
  v14->_items = v16;
  v24 = v16;

LABEL_13:
  return v14;
}

- (WFSettingsProxy)initWithAutoConfigureURL:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = WFSettingsProxy;
  v6 = [(WFSettingsProxy *)&v15 init];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB38];
    v8 = +[WFSettingsProxy defaultProxyConfiguration];
    v9 = [v7 dictionaryWithDictionary:v8];

    v6->_customProxy = 1;
    objc_storeStrong(&v6->_autoConfigureURL, a3);
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = &unk_288304BD0;
    }

    v11 = MEMORY[0x277CE17F8];
    if (v5)
    {
      v11 = MEMORY[0x277CE17F0];
    }

    [(NSDictionary *)v9 setObject:v10 forKey:*v11];
    [(NSDictionary *)v9 setObject:&unk_288304BD0 forKey:*MEMORY[0x277CE17E8]];
    items = v6->_items;
    v6->_items = v9;
    v13 = v9;
  }

  return v6;
}

- (id)initDefaultConfig
{
  v8.receiver = self;
  v8.super_class = WFSettingsProxy;
  v2 = [(WFSettingsProxy *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = +[WFSettingsProxy defaultProxyConfiguration];
    v5 = [v3 dictionaryWithDictionary:v4];

    if (v5)
    {
      v5 = v5;
      items = v2->_items;
      v2->_items = v5;
    }

    else
    {
      items = v2;
      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
    items = 0;
  }

  return v2;
}

@end