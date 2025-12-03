@interface RMModelSafariExtensionSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier managedExtensions:(id)extensions;
+ (id)combineConfigurations:(id)configurations;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelSafariExtensionSettingsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v5 = @"ManagedExtensions";
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier managedExtensions:(id)extensions
{
  identifierCopy = identifier;
  extensionsCopy = extensions;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.safari.extensions.settings"];
  if (identifierCopy)
  {
    [v7 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];
    [v7 setDeclarationIdentifier:uUIDString];
  }

  [v7 setPayloadManagedExtensions:extensionsCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.safari.extensions.settings"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)combineConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = configurationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 combineWithOther:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)supportedOS
{
  v20[0] = &off_100008650;
  v15 = [NSSet setWithArray:&off_100008708];
  v19[0] = v15;
  v14 = [NSSet setWithArray:&off_100008720];
  v19[1] = v14;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v21[0] = v13;
  v20[1] = &off_100008680;
  v2 = [NSSet setWithArray:&off_100008738];
  v18[0] = v2;
  v3 = [NSSet setWithArray:&off_100008750];
  v18[1] = v3;
  v4 = [NSArray arrayWithObjects:v18 count:2];
  v21[1] = v4;
  v20[2] = &off_100008698;
  v5 = [NSSet setWithArray:&off_100008768];
  v17[0] = v5;
  v6 = [NSSet setWithArray:&off_100008780];
  v17[1] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v21[2] = v7;
  v20[3] = &off_1000086B0;
  v8 = [NSSet setWithArray:&off_100008798];
  v16[0] = v8;
  v9 = [NSSet setWithArray:&off_1000087B0];
  v16[1] = v9;
  v10 = [NSArray arrayWithObjects:v16 count:2];
  v21[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v10 = [NSMutableSet setWithArray:allKeys];

  v11 = +[RMModelSafariExtensionSettingsDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelSafariExtensionSettingsDeclaration *)self setUnknownPayloadKeys:v12];

  LOWORD(v14) = type;
  LOBYTE(self) = [(RMModelSafariExtensionSettingsDeclaration *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"ManagedExtensions" forKeyPath:@"payloadManagedExtensions" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v14 error:error];

  return self;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadManagedExtensions = [(RMModelSafariExtensionSettingsDeclaration *)self payloadManagedExtensions];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000020A4;
  v9[3] = &unk_100008300;
  typeCopy = type;
  [(RMModelSafariExtensionSettingsDeclaration *)self serializeDictionaryIntoDictionary:v5 usingKey:@"ManagedExtensions" value:payloadManagedExtensions dictSerializer:v9 isRequired:0 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadManagedExtensions = [(RMModelSafariExtensionSettingsDeclaration *)self payloadManagedExtensions];
  payloadManagedExtensions2 = [otherCopy payloadManagedExtensions];

  v6 = [RMModelConfigurationBase combineDictionary:payloadManagedExtensions other:payloadManagedExtensions2];
  [(RMModelSafariExtensionSettingsDeclaration *)self setPayloadManagedExtensions:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelSafariExtensionSettingsDeclaration;
  v4 = [(RMModelSafariExtensionSettingsDeclaration *)&v8 copyWithZone:zone];
  v5 = [(RMModelSafariExtensionSettingsDeclaration_ManagedExtensions *)self->_payloadManagedExtensions copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end