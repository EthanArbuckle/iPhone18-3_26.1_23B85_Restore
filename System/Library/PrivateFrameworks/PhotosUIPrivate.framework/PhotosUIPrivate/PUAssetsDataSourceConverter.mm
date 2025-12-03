@interface PUAssetsDataSourceConverter
+ (PUTilingDataSourceConverter)defaultConverter;
- (BOOL)convertIndexPath:(id *)path tileKind:(id *)kind fromDataSource:(id)source toDataSource:(id)dataSource;
@end

@implementation PUAssetsDataSourceConverter

- (BOOL)convertIndexPath:(id *)path tileKind:(id *)kind fromDataSource:(id)source toDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v23.receiver = self;
  v23.super_class = PUAssetsDataSourceConverter;
  if ([(PUTilingDataSourceConverter *)&v23 convertIndexPath:path tileKind:kind fromDataSource:sourceCopy toDataSource:dataSourceCopy])
  {
    v12 = 1;
  }

  else
  {
    v13 = *path;
    v14 = *kind;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [dataSourceCopy convertIndexPath:v13 fromAssetsDataSource:sourceCopy];
      if (v15)
      {
        v16 = [sourceCopy assetAtIndexPath:v13];
        v17 = [dataSourceCopy assetAtIndexPath:v15];
        v18 = [(PUAssetsDataSourceConverter *)self shouldReloadTileControllerFromAsset:v16 toAsset:v17 tileKind:v14];
        if (v18)
        {
        }

        else
        {
          v22 = v14;

          v19 = v15;
          *path = v15;
          v16 = v22;
          v20 = v22;
          *kind = v22;
        }

        v12 = !v18;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v15 = 0;
    }
  }

  return v12;
}

+ (PUTilingDataSourceConverter)defaultConverter
{
  if (defaultConverter_onceToken != -1)
  {
    dispatch_once(&defaultConverter_onceToken, &__block_literal_global_11762);
  }

  v3 = defaultConverter_defaultConverter;

  return v3;
}

uint64_t __47__PUAssetsDataSourceConverter_defaultConverter__block_invoke()
{
  v0 = objc_alloc_init(PUAssetsDataSourceConverter);
  v1 = defaultConverter_defaultConverter;
  defaultConverter_defaultConverter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end