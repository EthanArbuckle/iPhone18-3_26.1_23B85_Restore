@interface RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithState:(id)state privateBrowsing:(id)browsing allowedDomains:(id)domains deniedDomains:(id)deniedDomains;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithState:(id)state privateBrowsing:(id)browsing allowedDomains:(id)domains deniedDomains:(id)deniedDomains
{
  deniedDomainsCopy = deniedDomains;
  domainsCopy = domains;
  browsingCopy = browsing;
  stateCopy = state;
  v13 = objc_opt_new();
  [v13 setPayloadState:stateCopy];

  [v13 setPayloadPrivateBrowsing:browsingCopy];
  [v13 setPayloadAllowedDomains:domainsCopy];

  [v13 setPayloadDeniedDomains:deniedDomainsCopy];

  return v13;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v9 = [NSMutableSet setWithArray:allKeys];

  v10 = +[RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary allowedPayloadKeys];
  [v9 minusSet:v10];

  v11 = [v9 copy];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setUnknownPayloadKeys:v11];

  if ([(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadStringFromDictionary:dictionaryCopy usingKey:@"State" forKeyPath:@"payloadState" isRequired:0 defaultValue:0 error:error]&& [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PrivateBrowsing" forKeyPath:@"payloadPrivateBrowsing" isRequired:0 defaultValue:0 error:error]&& [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AllowedDomains" forKeyPath:@"payloadAllowedDomains" validator:&stru_100008340 isRequired:0 defaultValue:0 error:error])
  {
    v12 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"DeniedDomains" forKeyPath:@"payloadDeniedDomains" validator:&stru_100008360 isRequired:0 defaultValue:0 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadState = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadState];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeStringIntoDictionary:v4 usingKey:@"State" value:payloadState isRequired:0 defaultValue:0];

  payloadPrivateBrowsing = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadPrivateBrowsing];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeStringIntoDictionary:v4 usingKey:@"PrivateBrowsing" value:payloadPrivateBrowsing isRequired:0 defaultValue:0];

  payloadAllowedDomains = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadAllowedDomains];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeArrayIntoDictionary:v4 usingKey:@"AllowedDomains" value:payloadAllowedDomains itemSerializer:&stru_1000083A0 isRequired:0 defaultValue:0];

  payloadDeniedDomains = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadDeniedDomains];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self serializeArrayIntoDictionary:v4 usingKey:@"DeniedDomains" value:payloadDeniedDomains itemSerializer:&stru_1000083C0 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadState = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadState];
  payloadState2 = [otherCopy payloadState];
  v7 = RMModelSettingsState_allowed;
  v8 = RMModelSettingsState_alwaysOn;
  v23[0] = RMModelSettingsState_allowed;
  v23[1] = RMModelSettingsState_alwaysOn;
  v9 = RMModelSettingsState_alwaysOff;
  v23[2] = RMModelSettingsState_alwaysOff;
  v10 = [NSArray arrayWithObjects:v23 count:3];
  v11 = [RMModelConfigurationBase combineEnumLast:payloadState other:payloadState2 enums:v10];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadState:v11];

  payloadPrivateBrowsing = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadPrivateBrowsing];
  payloadPrivateBrowsing2 = [otherCopy payloadPrivateBrowsing];
  v22[0] = v7;
  v22[1] = v8;
  v22[2] = v9;
  v14 = [NSArray arrayWithObjects:v22 count:3];
  v15 = [RMModelConfigurationBase combineEnumLast:payloadPrivateBrowsing other:payloadPrivateBrowsing2 enums:v14];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadPrivateBrowsing:v15];

  payloadAllowedDomains = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadAllowedDomains];
  payloadAllowedDomains2 = [otherCopy payloadAllowedDomains];
  v18 = [RMModelConfigurationBase combineSetUnion:payloadAllowedDomains other:payloadAllowedDomains2];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadAllowedDomains:v18];

  payloadDeniedDomains = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self payloadDeniedDomains];
  payloadDeniedDomains2 = [otherCopy payloadDeniedDomains];

  v21 = [RMModelConfigurationBase combineSetUnion:payloadDeniedDomains other:payloadDeniedDomains2];
  [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)self setPayloadDeniedDomains:v21];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary;
  v4 = [(RMModelSafariExtensionSettingsDeclaration_ExtensionDictionary *)&v14 copyWithZone:zone];
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