@interface RMModelAssetBaseAuthentication
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithType:(id)type;
+ (id)buildWithType:(id)type;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAssetBaseAuthentication

+ (NSSet)allowedPayloadKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithType:(id)type
{
  typeCopy = type;
  v4 = objc_opt_new();
  [v4 setPayloadType:typeCopy];

  return v4;
}

+ (id)buildRequiredOnlyWithType:(id)type
{
  typeCopy = type;
  v4 = objc_opt_new();
  [v4 setPayloadType:typeCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v7 = MEMORY[0x277CBEB58];
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v10 = [v7 setWithArray:allKeys];

  v11 = +[RMModelAssetBaseAuthentication allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  LOBYTE(error) = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"payloadType" isRequired:1 defaultValue:0 error:error];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadType = [(RMModelAssetBaseAuthentication *)self payloadType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Type" value:payloadType isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelAssetBaseAuthentication;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadType copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end