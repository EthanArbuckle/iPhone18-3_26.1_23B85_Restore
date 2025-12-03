@interface WiFiAwareInternetSharingConfiguration
+ (id)automaticallyProvideInternetToResponders;
+ (id)automaticallyRequestInternetFromInitiators;
+ (id)provideInternetToInitiatorsFromInterface:(id)interface;
+ (id)requestInterentFromResponder;
- (BOOL)interfaceNameEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (WiFiAwareInternetSharingConfiguration)initWithCoder:(id)coder;
- (WiFiAwareInternetSharingConfiguration)initWithInterfaceName:(id)name isProvider:(BOOL)provider isAutomatic:(BOOL)automatic;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareInternetSharingConfiguration

- (WiFiAwareInternetSharingConfiguration)initWithInterfaceName:(id)name isProvider:(BOOL)provider isAutomatic:(BOOL)automatic
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = WiFiAwareInternetSharingConfiguration;
  v9 = [(WiFiAwareInternetSharingConfiguration *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    interfaceName = v9->_interfaceName;
    v9->_interfaceName = v10;

    v9->_provider = provider;
    v9->_automatic = automatic;
    v9->_useBridging = 0;
  }

  return v9;
}

- (WiFiAwareInternetSharingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareInternetSharingConfiguration.interfaceName"];
  v6 = [coderCopy decodeBoolForKey:@"WiFiAwareInternetSharingConfiguration.provider"];
  v7 = [coderCopy decodeBoolForKey:@"WiFiAwareInternetSharingConfiguration.automatic"];
  v8 = [coderCopy decodeBoolForKey:@"WiFiAwareInternetSharingConfiguration.useBridging"];

  v9 = [(WiFiAwareInternetSharingConfiguration *)self initWithInterfaceName:v5 isProvider:v6 isAutomatic:v7];
  v9->_useBridging = v8;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  interfaceName = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
  [coderCopy encodeObject:interfaceName forKey:@"WiFiAwareInternetSharingConfiguration.interfaceName"];

  [coderCopy encodeBool:-[WiFiAwareInternetSharingConfiguration provider](self forKey:{"provider"), @"WiFiAwareInternetSharingConfiguration.provider"}];
  [coderCopy encodeBool:-[WiFiAwareInternetSharingConfiguration automatic](self forKey:{"automatic"), @"WiFiAwareInternetSharingConfiguration.automatic"}];
  [coderCopy encodeBool:-[WiFiAwareInternetSharingConfiguration useBridging](self forKey:{"useBridging"), @"WiFiAwareInternetSharingConfiguration.useBridging"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiAwareInternetSharingConfiguration alloc];
  interfaceName = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
  v6 = [(WiFiAwareInternetSharingConfiguration *)v4 initWithInterfaceName:interfaceName isProvider:[(WiFiAwareInternetSharingConfiguration *)self provider] isAutomatic:[(WiFiAwareInternetSharingConfiguration *)self automatic]];

  [(WiFiAwareInternetSharingConfiguration *)v6 setUseBridging:[(WiFiAwareInternetSharingConfiguration *)self useBridging]];
  return v6;
}

+ (id)provideInternetToInitiatorsFromInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = [[WiFiAwareInternetSharingConfiguration alloc] initWithInterfaceName:interfaceCopy isProvider:1 isAutomatic:0];

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

- (BOOL)interfaceNameEqual:(id)equal
{
  equalCopy = equal;
  interfaceName = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
  interfaceName2 = [equalCopy interfaceName];
  if (interfaceName == interfaceName2)
  {
    v9 = 1;
  }

  else
  {
    interfaceName3 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
    interfaceName4 = [equalCopy interfaceName];
    v9 = [interfaceName3 isEqualToString:interfaceName4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v5 = equalCopy;
  if ([(WiFiAwareInternetSharingConfiguration *)self interfaceNameEqual:v5])
  {
    provider = [(WiFiAwareInternetSharingConfiguration *)self provider];
    if (provider == [(WiFiAwareInternetSharingConfiguration *)v5 provider])
    {
      automatic = [(WiFiAwareInternetSharingConfiguration *)self automatic];
      if (automatic == [(WiFiAwareInternetSharingConfiguration *)v5 automatic])
      {
        useBridging = [(WiFiAwareInternetSharingConfiguration *)self useBridging];
        if (useBridging == [(WiFiAwareInternetSharingConfiguration *)v5 useBridging])
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
  interfaceName = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];

  v4 = "";
  if (interfaceName)
  {
    v5 = MEMORY[0x277CCACA8];
    interfaceName2 = [(WiFiAwareInternetSharingConfiguration *)self interfaceName];
    useBridging = [(WiFiAwareInternetSharingConfiguration *)self useBridging];
    v8 = " (bridged)";
    if (!useBridging)
    {
      v8 = "";
    }

    v9 = [v5 stringWithFormat:@" on interface=%@%s", interfaceName2, v8];
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

  provider = [(WiFiAwareInternetSharingConfiguration *)self provider];
  v12 = "requester";
  if (provider)
  {
    v12 = "provider";
  }

  v13 = [v10 stringWithFormat:@"<%s%s%@>", v4, v12, v9];

  return v13;
}

@end