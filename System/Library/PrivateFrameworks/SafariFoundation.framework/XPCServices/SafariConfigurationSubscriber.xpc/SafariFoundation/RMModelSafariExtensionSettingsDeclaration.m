@interface RMModelSafariExtensionSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 managedExtensions:(id)a4;
+ (id)combineConfigurations:(id)a3;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
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

+ (id)buildWithIdentifier:(id)a3 managedExtensions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.safari.extensions.settings"];
  if (v5)
  {
    [v7 setDeclarationIdentifier:v5];
  }

  else
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    [v7 setDeclarationIdentifier:v9];
  }

  [v7 setPayloadManagedExtensions:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.safari.extensions.settings"];
  if (v3)
  {
    [v4 setDeclarationIdentifier:v3];
  }

  else
  {
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];
    [v4 setDeclarationIdentifier:v6];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)combineConfigurations:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 allKeys];
  v10 = [NSMutableSet setWithArray:v9];

  v11 = +[RMModelSafariExtensionSettingsDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelSafariExtensionSettingsDeclaration *)self setUnknownPayloadKeys:v12];

  LOWORD(v14) = a4;
  LOBYTE(self) = [(RMModelSafariExtensionSettingsDeclaration *)self loadDictionaryFromDictionary:v8 usingKey:@"ManagedExtensions" forKeyPath:@"payloadManagedExtensions" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v14 error:a5];

  return self;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelSafariExtensionSettingsDeclaration *)self payloadManagedExtensions];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000020A4;
  v9[3] = &unk_100008300;
  v10 = a3;
  [(RMModelSafariExtensionSettingsDeclaration *)self serializeDictionaryIntoDictionary:v5 usingKey:@"ManagedExtensions" value:v6 dictSerializer:v9 isRequired:0 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v7 = [(RMModelSafariExtensionSettingsDeclaration *)self payloadManagedExtensions];
  v5 = [v4 payloadManagedExtensions];

  v6 = [RMModelConfigurationBase combineDictionary:v7 other:v5];
  [(RMModelSafariExtensionSettingsDeclaration *)self setPayloadManagedExtensions:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelSafariExtensionSettingsDeclaration;
  v4 = [(RMModelSafariExtensionSettingsDeclaration *)&v8 copyWithZone:a3];
  v5 = [(RMModelSafariExtensionSettingsDeclaration_ManagedExtensions *)self->_payloadManagedExtensions copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end