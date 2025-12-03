@interface RMModelNetworkWiFiDeclaration_QoSMarkingPolicy
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithAllowListAppIdentifiers:(id)identifiers appleAudioVideoCalls:(id)calls enabled:(id)enabled;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkWiFiDeclaration_QoSMarkingPolicy

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"AllowListAppIdentifiers";
  v7[1] = @"AppleAudioVideoCalls";
  v7[2] = @"Enabled";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithAllowListAppIdentifiers:(id)identifiers appleAudioVideoCalls:(id)calls enabled:(id)enabled
{
  enabledCopy = enabled;
  callsCopy = calls;
  identifiersCopy = identifiers;
  v10 = objc_opt_new();
  [v10 setPayloadAllowListAppIdentifiers:identifiersCopy];

  v11 = MEMORY[0x277CBEC38];
  if (callsCopy)
  {
    v12 = callsCopy;
  }

  else
  {
    v12 = MEMORY[0x277CBEC38];
  }

  [v10 setPayloadAppleAudioVideoCalls:v12];

  if (enabledCopy)
  {
    v13 = enabledCopy;
  }

  else
  {
    v13 = v11;
  }

  [v10 setPayloadEnabled:v13];

  return v10;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelNetworkWiFiDeclaration_QoSMarkingPolicy allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AllowListAppIdentifiers" forKeyPath:@"payloadAllowListAppIdentifiers" validator:&__block_literal_global_468 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"AppleAudioVideoCalls" forKeyPath:@"payloadAppleAudioVideoCalls" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadAllowListAppIdentifiers = [(RMModelNetworkWiFiDeclaration_QoSMarkingPolicy *)self payloadAllowListAppIdentifiers];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AllowListAppIdentifiers" value:payloadAllowListAppIdentifiers itemSerializer:&__block_literal_global_476 isRequired:0 defaultValue:0];

  payloadAppleAudioVideoCalls = [(RMModelNetworkWiFiDeclaration_QoSMarkingPolicy *)self payloadAppleAudioVideoCalls];
  v7 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"AppleAudioVideoCalls" value:payloadAppleAudioVideoCalls isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadEnabled = [(RMModelNetworkWiFiDeclaration_QoSMarkingPolicy *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:payloadEnabled isRequired:0 defaultValue:v7];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelNetworkWiFiDeclaration_QoSMarkingPolicy;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSArray *)self->_payloadAllowListAppIdentifiers copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadAppleAudioVideoCalls copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadEnabled copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end