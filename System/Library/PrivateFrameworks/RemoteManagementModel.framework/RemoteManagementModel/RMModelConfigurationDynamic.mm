@interface RMModelConfigurationDynamic
+ (id)buildWithSchema:(id)schema type:(id)type identifier:(id)identifier payload:(id)payload;
- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (RMModelConfigurationDynamic)initWithSchema:(id)schema;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (void)enumerateManagedSettingsUsingBlock:(id)block;
@end

@implementation RMModelConfigurationDynamic

+ (id)buildWithSchema:(id)schema type:(id)type identifier:(id)identifier payload:(id)payload
{
  payloadCopy = payload;
  identifierCopy = identifier;
  typeCopy = type;
  schemaCopy = schema;
  v13 = [[RMModelConfigurationDynamic alloc] initWithSchema:schemaCopy];

  [(RMModelDeclarationBase *)v13 setDeclarationType:typeCopy];
  [(RMModelDeclarationBase *)v13 setDeclarationIdentifier:identifierCopy];

  v14 = [payloadCopy copy];
  [(RMModelConfigurationDynamic *)v13 setPayload:v14];

  [(RMModelDeclarationBase *)v13 updateServerToken];

  return v13;
}

- (RMModelConfigurationDynamic)initWithSchema:(id)schema
{
  schemaCopy = schema;
  v9.receiver = self;
  v9.super_class = RMModelConfigurationDynamic;
  v6 = [(RMModelConfigurationDynamic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schema, schema);
  }

  return v7;
}

- (id)assetReferences
{
  schema = [(RMModelConfigurationDynamic *)self schema];
  assetReferences = [schema assetReferences];
  payload = [(RMModelConfigurationDynamic *)self payload];
  v6 = [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:assetReferences payloadObject:payload];

  return v6;
}

- (void)enumerateManagedSettingsUsingBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  schema = [(RMModelConfigurationDynamic *)self schema];
  managedSettings = [schema managedSettings];

  obj = managedSettings;
  v7 = [managedSettings countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      keyPath = [v11 keyPath];
      payload = [(RMModelConfigurationDynamic *)self payload];
      v14 = [RMModelPayloadUtilities valueFromKeyPath:keyPath payload:payload];

      if (v14)
      {
        if ([v11 invertBoolean])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "BOOLValue") ^ 1}];

            v14 = v15;
          }
        }
      }

      v19 = 0;
      blockCopy[2](blockCopy, v11, v14, &v19);
      v16 = v19;

      if (v16)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type
{
  schema = [(RMModelConfigurationDynamic *)self schema];
  LOBYTE(type) = [schema isSupportedForPlatform:platform scope:scope enrollmentType:type];

  return type;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = +[RMModelConfigurationSchema schemas];
  declarationType = [(RMModelDeclarationBase *)self declarationType];
  v9 = [v7 objectForKeyedSubscript:declarationType];
  [(RMModelConfigurationDynamic *)self setSchema:v9];

  v10 = [dictionaryCopy copy];
  [(RMModelConfigurationDynamic *)self setPayload:v10];

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelConfigurationDynamic;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_schema);
  v5 = [(NSDictionary *)self->_payload copy];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

@end