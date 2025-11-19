@interface WiFiAwareInternetSharingConfiguration
+ (id)automaticallyProvideInternetToResponders;
+ (id)automaticallyRequestInternetFromInitiators;
+ (id)provideInternetToInitiatorsFromInterface:(id)a3;
+ (id)requestInterentFromResponder;
- (BOOL)interfaceNameEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WiFiAwareInternetSharingConfiguration)initWithCoder:(id)a3;
- (WiFiAwareInternetSharingConfiguration)initWithInterfaceName:(id)a3 isProvider:(BOOL)a4 isAutomatic:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareInternetSharingConfiguration

- (WiFiAwareInternetSharingConfiguration)initWithInterfaceName:(id)a3 isProvider:(BOOL)a4 isAutomatic:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = WiFiAwareInternetSharingConfiguration;
  v9 = [(WiFiAwareInternetSharingConfiguration *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    interfaceName = v9->_interfaceName;
    v9->_interfaceName = v10;

    v9->_provider = a4;
    v9->_automatic = a5;
    v9->_useBridging = 0;
  }

  return v9;
}

- (WiFiAwareInternetSharingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareInternetSharingConfiguration.interfaceName"];
  v6 = [v4 decodeBoolForKey:@"WiFiAwareInternetSharingConfiguration.provider"];
  v7 = [v4 decodeBoolForKey:@"WiFiAwareInternetSharingConfiguration.automatic"];
  v8 = [v4 decodeBoolForKey:@"WiFiAwareInternetSharingConfiguration.useBridging"];

  v9 = [(WiFiAwareInternetSharingConfiguration *)self initWithInterfaceName:v5 isProvider:v6 isAutomatic:v7];
  v9->_useBridging = v8;

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
  [v5 encodeObject:v4 forKey:@"WiFiAwareInternetSharingConfiguration.interfaceName"];

  [v5 encodeBool:-[WiFiAwareInternetSharingConfiguration provider](self forKey:{"provider"), @"WiFiAwareInternetSharingConfiguration.provider"}];
  [v5 encodeBool:-[WiFiAwareInternetSharingConfiguration automatic](self forKey:{"automatic"), @"WiFiAwareInternetSharingConfiguration.automatic"}];
  [v5 encodeBool:-[WiFiAwareInternetSharingConfiguration useBridging](self forKey:{"useBridging"), @"WiFiAwareInternetSharingConfiguration.useBridging"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiAwareInternetSharingConfiguration alloc];
  v5 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
  v6 = [(WiFiAwareInternetSharingConfiguration *)v4 initWithInterfaceName:v5 isProvider:[(WiFiAwareInternetSharingConfiguration *)self provider] isAutomatic:[(WiFiAwareInternetSharingConfiguration *)self automatic]];

  [(WiFiAwareInternetSharingConfiguration *)v6 setUseBridging:[(WiFiAwareInternetSharingConfiguration *)self useBridging]];
  return v6;
}

+ (id)provideInternetToInitiatorsFromInterface:(id)a3
{
  v3 = a3;
  v4 = [[WiFiAwareInternetSharingConfiguration alloc] initWithInterfaceName:v3 isProvider:1 isAutomatic:0];

  return v4;
}

+ (id)automaticallyProvideInternetToResponders
{
  v2 = [[WiFiAwareInternetSharingConfiguration alloc] initWithInterfaceName:0 isProvider:1 isAutomatic:1];

  return v2;
}

+ (id)requestInterentFromResponder
{
  v2 = [[WiFiAwareInternetSharingConfiguration alloc] initWithInterfaceName:0 isProvider:0 isAutomatic:0];

  return v2;
}

+ (id)automaticallyRequestInternetFromInitiators
{
  v2 = [[WiFiAwareInternetSharingConfiguration alloc] initWithInterfaceName:0 isProvider:0 isAutomatic:1];

  return v2;
}

- (BOOL)interfaceNameEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
  v6 = [v4 interfaceName];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
    v8 = [v4 interfaceName];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
LABEL_9:
    v9 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  if ([(WiFiAwareInternetSharingConfiguration *)self interfaceNameEqual:v5])
  {
    v6 = [(WiFiAwareInternetSharingConfiguration *)self provider];
    if (v6 == [(WiFiAwareInternetSharingConfiguration *)v5 provider])
    {
      v7 = [(WiFiAwareInternetSharingConfiguration *)self automatic];
      if (v7 == [(WiFiAwareInternetSharingConfiguration *)v5 automatic])
      {
        v8 = [(WiFiAwareInternetSharingConfiguration *)self useBridging];
        if (v8 == [(WiFiAwareInternetSharingConfiguration *)v5 useBridging])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)description
{
  v3 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];

  v4 = "";
  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
    v7 = [(WiFiAwareInternetSharingConfiguration *)self useBridging];
    v8 = " (bridged)";
    if (!v7)
    {
      v8 = "";
    }

    v9 = [v5 stringWithFormat:@" on interface=%@%s", v6, v8];
  }

  else
  {
    v9 = &stru_2841A3278;
  }

  v10 = MEMORY[0x277CCACA8];
  if ([(WiFiAwareInternetSharingConfiguration *)self automatic])
  {
    v4 = "automatic ";
  }

  v11 = [(WiFiAwareInternetSharingConfiguration *)self provider];
  v12 = "requester";
  if (v11)
  {
    v12 = "provider";
  }

  v13 = [v10 stringWithFormat:@"<%s%s%@>", v4, v12, v9];

  return v13;
}

@end