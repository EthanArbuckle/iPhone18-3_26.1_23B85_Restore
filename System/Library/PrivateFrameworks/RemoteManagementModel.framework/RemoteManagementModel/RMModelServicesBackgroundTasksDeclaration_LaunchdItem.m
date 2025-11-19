@interface RMModelServicesBackgroundTasksDeclaration_LaunchdItem
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithFileAssetReference:(id)a3 context:(id)a4;
+ (id)buildWithFileAssetReference:(id)a3 context:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelServicesBackgroundTasksDeclaration_LaunchdItem

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"FileAssetReference";
  v7[1] = @"Context";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithFileAssetReference:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadFileAssetReference:v6];

  [v7 setPayloadContext:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithFileAssetReference:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadFileAssetReference:v6];

  [v7 setPayloadContext:v5];

  return v7;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelServicesBackgroundTasksDeclaration_LaunchdItem allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"FileAssetReference" forKeyPath:@"payloadFileAssetReference" isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Context" forKeyPath:@"payloadContext" isRequired:1 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelServicesBackgroundTasksDeclaration_LaunchdItem *)self payloadFileAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"FileAssetReference" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelServicesBackgroundTasksDeclaration_LaunchdItem *)self payloadContext];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Context" value:v6 isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelServicesBackgroundTasksDeclaration_LaunchdItem;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadFileAssetReference copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadContext copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end