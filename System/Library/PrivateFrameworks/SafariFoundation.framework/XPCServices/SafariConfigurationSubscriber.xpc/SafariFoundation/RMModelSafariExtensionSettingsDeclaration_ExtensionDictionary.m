@interface RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithState:(id)a3 privateBrowsing:(id)a4 allowedDomains:(id)a5 deniedDomains:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary

+ (NSSet)allowedPayloadKeys
{
  v5[0] = @"State";
  v5[1] = @"PrivateBrowsing";
  v5[2] = @"AllowedDomains";
  v5[3] = @"DeniedDomains";
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)buildWithState:(id)a3 privateBrowsing:(id)a4 allowedDomains:(id)a5 deniedDomains:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadState:v12];

  [v13 setPayloadPrivateBrowsing:v11];
  [v13 setPayloadAllowedDomains:v10];

  [v13 setPayloadDeniedDomains:v9];

  return v13;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 allKeys];
  v9 = [NSMutableSet setWithArray:v8];

  v10 = +[RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary allowedPayloadKeys];
  [v9 minusSet:v10];

  v11 = [v9 copy];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setUnknownPayloadKeys:v11];

  if ([(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadStringFromDictionary:v7 usingKey:@"State" forKeyPath:@"payloadState" isRequired:0 defaultValue:0 error:a5]&& [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadStringFromDictionary:v7 usingKey:@"PrivateBrowsing" forKeyPath:@"payloadPrivateBrowsing" isRequired:0 defaultValue:0 error:a5]&& [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadArrayFromDictionary:v7 usingKey:@"AllowedDomains" forKeyPath:@"payloadAllowedDomains" validator:&stru_100008340 isRequired:0 defaultValue:0 error:a5])
  {
    v12 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadArrayFromDictionary:v7 usingKey:@"DeniedDomains" forKeyPath:@"payloadDeniedDomains" validator:&stru_100008360 isRequired:0 defaultValue:0 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadState];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeStringIntoDictionary:v4 usingKey:@"State" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadPrivateBrowsing];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeStringIntoDictionary:v4 usingKey:@"PrivateBrowsing" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadAllowedDomains];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeArrayIntoDictionary:v4 usingKey:@"AllowedDomains" value:v7 itemSerializer:&stru_1000083A0 isRequired:0 defaultValue:0];

  v8 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadDeniedDomains];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeArrayIntoDictionary:v4 usingKey:@"DeniedDomains" value:v8 itemSerializer:&stru_1000083C0 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v5 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadState];
  v6 = [v4 payloadState];
  v7 = RMModelSettingsState_allowed;
  v8 = RMModelSettingsState_alwaysOn;
  v23[0] = RMModelSettingsState_allowed;
  v23[1] = RMModelSettingsState_alwaysOn;
  v9 = RMModelSettingsState_alwaysOff;
  v23[2] = RMModelSettingsState_alwaysOff;
  v10 = [NSArray arrayWithObjects:v23 count:3];
  v11 = [RMModelConfigurationBase combineEnumLast:v5 other:v6 enums:v10];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadState:v11];

  v12 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadPrivateBrowsing];
  v13 = [v4 payloadPrivateBrowsing];
  v22[0] = v7;
  v22[1] = v8;
  v22[2] = v9;
  v14 = [NSArray arrayWithObjects:v22 count:3];
  v15 = [RMModelConfigurationBase combineEnumLast:v12 other:v13 enums:v14];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadPrivateBrowsing:v15];

  v16 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadAllowedDomains];
  v17 = [v4 payloadAllowedDomains];
  v18 = [RMModelConfigurationBase combineSetUnion:v16 other:v17];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadAllowedDomains:v18];

  v19 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadDeniedDomains];
  v20 = [v4 payloadDeniedDomains];

  v21 = [RMModelConfigurationBase combineSetUnion:v19 other:v20];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadDeniedDomains:v21];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary;
  v4 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadState copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_payloadPrivateBrowsing copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSArray *)self->_payloadAllowedDomains copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSArray *)self->_payloadDeniedDomains copy];
  v12 = v4[4];
  v4[4] = v11;

  return v4;
}

@end