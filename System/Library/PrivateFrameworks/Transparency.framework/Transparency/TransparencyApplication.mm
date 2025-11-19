@interface TransparencyApplication
+ (id)addApplicationPrefixForIdentifier:(id)a3 uri:(id)a4;
+ (id)applicationIdentifierForValue:(id)a3;
+ (id)applicationPrefixForIdentifier:(id)a3;
+ (id)applicationValueForIdentifier:(id)a3;
+ (id)idsServiceForIdentifier:(id)a3;
+ (id)stripApplicationPrefixForIdentifier:(id)a3 uri:(id)a4;
- (TransparencyApplication)initWithIdentifier:(id)a3;
@end

@implementation TransparencyApplication

+ (id)applicationValueForIdentifier:(id)a3
{
  v3 = initializeApplicationIdentifierMaps_once;
  v4 = a3;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationIdentifierMap objectForKeyedSubscript:v4];

  return v5;
}

+ (id)applicationIdentifierForValue:(id)a3
{
  v3 = initializeApplicationIdentifierMaps_once;
  v4 = a3;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationEnumMap objectForKeyedSubscript:v4];

  return v5;
}

+ (id)applicationPrefixForIdentifier:(id)a3
{
  v3 = initializeApplicationIdentifierMaps_once;
  v4 = a3;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationIdentifierToUriPrefixMap objectForKeyedSubscript:v4];

  return v5;
}

+ (id)idsServiceForIdentifier:(id)a3
{
  v3 = initializeApplicationIdentifierMaps_once;
  v4 = a3;
  if (v3 != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v5 = [kApplicationIDSServiceMap objectForKeyedSubscript:v4];

  return v5;
}

+ (id)addApplicationPrefixForIdentifier:(id)a3 uri:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() applicationPrefixForIdentifier:v6];

  if ([v5 hasPrefix:v7])
  {
    v8 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", v7, v5];
  }

  v9 = v8;

  return v9;
}

+ (id)stripApplicationPrefixForIdentifier:(id)a3 uri:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [objc_opt_class() applicationPrefixForIdentifier:v7];

  v9 = [v6 stringWithFormat:@"%@://", v8];

  if ([v5 hasPrefix:v9])
  {
    v10 = [v5 substringFromIndex:{objc_msgSend(v9, "length")}];
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v11;
}

- (TransparencyApplication)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (initializeApplicationIdentifierMaps_once != -1)
  {
    +[TransparencyApplication applicationValueForIdentifier:];
  }

  v6 = [kApplicationIdentifierMap objectForKeyedSubscript:v5];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = TransparencyApplication;
    v7 = [(TransparencyApplication *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_applicationIdentifier, a3);
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end