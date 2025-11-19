@interface RMModelConfigurationDynamic
+ (id)buildWithSchema:(id)a3 type:(id)a4 identifier:(id)a5 payload:(id)a6;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (RMModelConfigurationDynamic)initWithSchema:(id)a3;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)a3;
- (void)enumerateManagedSettingsUsingBlock:(id)a3;
@end

@implementation RMModelConfigurationDynamic

+ (id)buildWithSchema:(id)a3 type:(id)a4 identifier:(id)a5 payload:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[RMModelConfigurationDynamic alloc] initWithSchema:v12];

  [(RMModelDeclarationBase *)v13 setDeclarationType:v11];
  [(RMModelDeclarationBase *)v13 setDeclarationIdentifier:v10];

  v14 = [v9 copy];
  [(RMModelConfigurationDynamic *)v13 setPayload:v14];

  [(RMModelDeclarationBase *)v13 updateServerToken];

  return v13;
}

- (RMModelConfigurationDynamic)initWithSchema:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMModelConfigurationDynamic;
  v6 = [(RMModelConfigurationDynamic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schema, a3);
  }

  return v7;
}

- (id)assetReferences
{
  v3 = [(RMModelConfigurationDynamic *)self schema];
  v4 = [v3 assetReferences];
  v5 = [(RMModelConfigurationDynamic *)self payload];
  v6 = [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v4 payloadObject:v5];

  return v6;
}

- (void)enumerateManagedSettingsUsingBlock:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(RMModelConfigurationDynamic *)self schema];
  v6 = [v5 managedSettings];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
      v12 = [v11 keyPath];
      v13 = [(RMModelConfigurationDynamic *)self payload];
      v14 = [RMModelPayloadUtilities valueFromKeyPath:v12 payload:v13];

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
      v4[2](v4, v11, v14, &v19);
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

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5
{
  v8 = [(RMModelConfigurationDynamic *)self schema];
  LOBYTE(a5) = [v8 isSupportedForPlatform:a3 scope:a4 enrollmentType:a5];

  return a5;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v6 = a3;
  v7 = +[RMModelConfigurationSchema schemas];
  v8 = [(RMModelDeclarationBase *)self declarationType];
  v9 = [v7 objectForKeyedSubscript:v8];
  [(RMModelConfigurationDynamic *)self setSchema:v9];

  v10 = [v6 copy];
  [(RMModelConfigurationDynamic *)self setPayload:v10];

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelConfigurationDynamic;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:a3];
  objc_storeStrong(v4 + 6, self->_schema);
  v5 = [(NSDictionary *)self->_payload copy];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

@end