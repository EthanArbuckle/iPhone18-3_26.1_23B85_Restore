@interface RMModelConfigurationSchemaAssetReference
+ (id)parseJSON:(id)a3;
- (RMModelConfigurationSchemaAssetReference)initWithAssetTypes:(id)a3 keyPath:(id)a4;
@end

@implementation RMModelConfigurationSchemaAssetReference

- (RMModelConfigurationSchemaAssetReference)initWithAssetTypes:(id)a3 keyPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RMModelConfigurationSchemaAssetReference;
  v9 = [(RMModelConfigurationSchemaAssetReference *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetTypes, a3);
    objc_storeStrong(&v10->_keyPath, a4);
  }

  return v10;
}

+ (id)parseJSON:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchemaAssetReference parseJSON:];
    }

    goto LABEL_8;
  }

  v4 = [v3 objectForKeyedSubscript:@"asset-types"];
  v5 = [v3 objectForKeyedSubscript:@"key-path"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:v4 keyPath:v5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchemaAssetReference parseJSON:];
    }

    v6 = 0;
  }

LABEL_13:

  return v6;
}

@end