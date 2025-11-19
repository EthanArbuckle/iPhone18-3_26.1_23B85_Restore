@interface RMModelAssetBaseReference
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithDataURL:(id)a3;
+ (id)buildWithDataURL:(id)a3 contentType:(id)a4 size:(id)a5 hashSHA256:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithDataURL:(id)a3 contentType:(id)a4 size:(id)a5 hashSHA256:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadDataURL:v12];

  [v13 setPayloadContentType:v11];
  [v13 setPayloadSize:v10];

  [v13 setPayloadHashSHA256:v9];

  return v13;
}

+ (id)buildRequiredOnlyWithDataURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadDataURL:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAssetBaseReference allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"DataURL" forKeyPath:@"payloadDataURL" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ContentType" forKeyPath:@"payloadContentType" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"Size" forKeyPath:@"payloadSize" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Hash-SHA-256" forKeyPath:@"payloadHashSHA256" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAssetBaseReference *)self payloadDataURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"DataURL" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelAssetBaseReference *)self payloadContentType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ContentType" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAssetBaseReference *)self payloadSize];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Size" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelAssetBaseReference *)self payloadHashSHA256];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Hash-SHA-256" value:v8 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelAssetBaseReference;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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