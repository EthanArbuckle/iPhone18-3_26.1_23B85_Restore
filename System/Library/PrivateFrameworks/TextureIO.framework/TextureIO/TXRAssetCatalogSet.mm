@interface TXRAssetCatalogSet
- (BOOL)addConfig:(id)a3 error:(id *)a4;
- (TXRAssetCatalogSet)init;
- (TXRAssetCatalogSet)initWithName:(id)a3;
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

- (TXRAssetCatalogSet)initWithName:(id)a3
{
  v4 = a3;
  v5 = [(TXRAssetCatalogSet *)self init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (BOOL)addConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_configs count];
  v8 = [v6 texture];
  v9 = [v8 cubemap];
  if (!v7)
  {
    self->_cubemap = v9;
LABEL_9:

    goto LABEL_10;
  }

  if (v9)
  {
    cubemap = self->_cubemap;

    if (!cubemap)
    {
      if (a4)
      {
        v11 = @"The config being added is a cubemap but configs already in set are not.  The two types cannot be mixed";
LABEL_15:
        _newTXRErrorWithCodeAndErrorString(12, v11);
        *a4 = v12 = 0;
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v8 = [v6 texture];
  if ([v8 cubemap])
  {
    goto LABEL_9;
  }

  v14 = self->_cubemap;

  if (v14)
  {
    if (a4)
    {
      v11 = @"The config being added is a not a cubemap but configs already in set are.  The two types cannot be mixed";
      goto LABEL_15;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_11;
  }

LABEL_10:
  [(NSMutableArray *)self->_configs addObject:v6];
  v12 = 1;
LABEL_11:

  return v12;
}

@end