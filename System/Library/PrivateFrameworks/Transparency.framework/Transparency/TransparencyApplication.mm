@interface TransparencyApplication
+ (id)addApplicationPrefixForIdentifier:(id)identifier uri:(id)uri;
+ (id)applicationIdentifierForValue:(id)value;
+ (id)applicationPrefixForIdentifier:(id)identifier;
+ (id)applicationValueForIdentifier:(id)identifier;
+ (id)idsServiceForIdentifier:(id)identifier;
+ (id)stripApplicationPrefixForIdentifier:(id)identifier uri:(id)uri;
- (TransparencyApplication)initWithIdentifier:(id)identifier;
@end

@implementation TransparencyApplication

+ (id)applicationValueForIdentifier:(id)identifier
{
  v3 = initializeApplicationIdentifierMaps_once;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationIdentifierMap objectForKeyedSubscript:identifierCopy];

  return v5;
}

+ (id)applicationIdentifierForValue:(id)value
{
  v3 = initializeApplicationIdentifierMaps_once;
  valueCopy = value;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationEnumMap objectForKeyedSubscript:valueCopy];

  return v5;
}

+ (id)applicationPrefixForIdentifier:(id)identifier
{
  v3 = initializeApplicationIdentifierMaps_once;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationIdentifierToUriPrefixMap objectForKeyedSubscript:identifierCopy];

  return v5;
}

+ (id)idsServiceForIdentifier:(id)identifier
{
  v3 = initializeApplicationIdentifierMaps_once;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationIDSServiceMap objectForKeyedSubscript:identifierCopy];

  return v5;
}

+ (id)addApplicationPrefixForIdentifier:(id)identifier uri:(id)uri
{
  uriCopy = uri;
  identifierCopy = identifier;
  v7 = [objc_opt_class() applicationPrefixForIdentifier:identifierCopy];

  if ([uriCopy hasPrefix:v7])
  {
    uriCopy = uriCopy;
  }

  else
  {
    uriCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", v7, uriCopy];
  }

  v9 = uriCopy;

  return v9;
}

+ (id)stripApplicationPrefixForIdentifier:(id)identifier uri:(id)uri
{
  uriCopy = uri;
  v6 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v8 = [objc_opt_class() applicationPrefixForIdentifier:identifierCopy];

  v9 = [v6 stringWithFormat:@"%@://", v8];

  if ([uriCopy hasPrefix:v9])
  {
    v10 = [uriCopy substringFromIndex:{objc_msgSend(v9, "length")}];
  }

  else
  {
    v10 = uriCopy;
  }

  v11 = v10;

  return v11;
}

- (TransparencyApplication)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (initializeApplicationIdentifierMaps_once != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v6 = [kApplicationIdentifierMap objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = TransparencyApplication;
    v7 = [(TransparencyApplication *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_applicationIdentifier, identifier);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end