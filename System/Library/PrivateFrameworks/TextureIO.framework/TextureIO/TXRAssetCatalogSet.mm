@interface TXRAssetCatalogSet
- (BOOL)addConfig:(id)config error:(id *)error;
- (TXRAssetCatalogSet)init;
- (TXRAssetCatalogSet)initWithName:(id)name;
@end

@implementation TXRAssetCatalogSet

- (TXRAssetCatalogSet)init
{
  v8.receiver = self;
  v8.super_class = TXRAssetCatalogSet;
  v2 = [(TXRAssetCatalogSet *)&v8 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    v3->_interpretation = 0;
    v3->_origin = 0;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    configs = v3->_configs;
    v3->_configs = v5;
  }

  return v3;
}

- (TXRAssetCatalogSet)initWithName:(id)name
{
  nameCopy = name;
  v5 = [(TXRAssetCatalogSet *)self init];
  if (v5)
  {
    v6 = [nameCopy copyWithZone:0];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (BOOL)addConfig:(id)config error:(id *)error
{
  configCopy = config;
  v7 = [(NSMutableArray *)self->_configs count];
  texture = [configCopy texture];
  cubemap = [texture cubemap];
  if (!v7)
  {
    self->_cubemap = cubemap;
LABEL_9:

    goto LABEL_10;
  }

  if (cubemap)
  {
    cubemap = self->_cubemap;

    if (!cubemap)
    {
      if (error)
      {
        v11 = @"The config being added is a cubemap but configs already in set are not.  The two types cannot be mixed";
LABEL_15:
        _newTXRErrorWithCodeAndErrorString(12, v11);
        *error = v12 = 0;
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  texture = [configCopy texture];
  if ([texture cubemap])
  {
    goto LABEL_9;
  }

  v14 = self->_cubemap;

  if (v14)
  {
    if (error)
    {
      v11 = @"The config being added is a not a cubemap but configs already in set are.  The two types cannot be mixed";
      goto LABEL_15;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_11;
  }

LABEL_10:
  [(NSMutableArray *)self->_configs addObject:configCopy];
  v12 = 1;
LABEL_11:

  return v12;
}

@end