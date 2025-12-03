@interface RMModelConfigurationSchemaAssetReference
+ (id)parseJSON:(id)n;
- (RMModelConfigurationSchemaAssetReference)initWithAssetTypes:(id)types keyPath:(id)path;
@end

@implementation RMModelConfigurationSchemaAssetReference

- (RMModelConfigurationSchemaAssetReference)initWithAssetTypes:(id)types keyPath:(id)path
{
  typesCopy = types;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = RMModelConfigurationSchemaAssetReference;
  v9 = [(RMModelConfigurationSchemaAssetReference *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetTypes, types);
    objc_storeStrong(&v10->_keyPath, path);
  }

  return v10;
}

+ (id)parseJSON:(id)n
{
  nCopy = n;
  if (!nCopy)
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

  v4 = [nCopy objectForKeyedSubscript:@"asset-types"];
  v5 = [nCopy objectForKeyedSubscript:@"key-path"];
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