@interface RMModelServicesBackgroundTasksDeclaration_LaunchdItem
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithFileAssetReference:(id)reference context:(id)context;
+ (id)buildWithFileAssetReference:(id)reference context:(id)context;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithFileAssetReference:(id)reference context:(id)context
{
  contextCopy = context;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setPayloadFileAssetReference:referenceCopy];

  [v7 setPayloadContext:contextCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithFileAssetReference:(id)reference context:(id)context
{
  contextCopy = context;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setPayloadFileAssetReference:referenceCopy];

  [v7 setPayloadContext:contextCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelServicesBackgroundTasksDeclaration_LaunchdItem allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"FileAssetReference" forKeyPath:@"payloadFileAssetReference" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Context" forKeyPath:@"payloadContext" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadFileAssetReference = [(RMModelServicesBackgroundTasksDeclaration_LaunchdItem *)self payloadFileAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"FileAssetReference" value:payloadFileAssetReference isRequired:1 defaultValue:0];

  payloadContext = [(RMModelServicesBackgroundTasksDeclaration_LaunchdItem *)self payloadContext];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Context" value:payloadContext isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelServicesBackgroundTasksDeclaration_LaunchdItem;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadFileAssetReference copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadContext copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end