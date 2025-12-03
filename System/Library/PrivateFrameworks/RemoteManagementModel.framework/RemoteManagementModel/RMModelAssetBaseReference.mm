@interface RMModelAssetBaseReference
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithDataURL:(id)l;
+ (id)buildWithDataURL:(id)l contentType:(id)type size:(id)size hashSHA256:(id)a256;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAssetBaseReference

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"DataURL";
  v7[1] = @"ContentType";
  v7[2] = @"Size";
  v7[3] = @"Hash-SHA-256";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDataURL:(id)l contentType:(id)type size:(id)size hashSHA256:(id)a256
{
  a256Copy = a256;
  sizeCopy = size;
  typeCopy = type;
  lCopy = l;
  v13 = objc_opt_new();
  [v13 setPayloadDataURL:lCopy];

  [v13 setPayloadContentType:typeCopy];
  [v13 setPayloadSize:sizeCopy];

  [v13 setPayloadHashSHA256:a256Copy];

  return v13;
}

+ (id)buildRequiredOnlyWithDataURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setPayloadDataURL:lCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAssetBaseReference allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DataURL" forKeyPath:@"payloadDataURL" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ContentType" forKeyPath:@"payloadContentType" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Size" forKeyPath:@"payloadSize" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Hash-SHA-256" forKeyPath:@"payloadHashSHA256" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadDataURL = [(RMModelAssetBaseReference *)self payloadDataURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DataURL" value:payloadDataURL isRequired:1 defaultValue:0];

  payloadContentType = [(RMModelAssetBaseReference *)self payloadContentType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ContentType" value:payloadContentType isRequired:0 defaultValue:0];

  payloadSize = [(RMModelAssetBaseReference *)self payloadSize];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Size" value:payloadSize isRequired:0 defaultValue:0];

  payloadHashSHA256 = [(RMModelAssetBaseReference *)self payloadHashSHA256];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Hash-SHA-256" value:payloadHashSHA256 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelAssetBaseReference;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadDataURL copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadContentType copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadSize copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadHashSHA256 copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end