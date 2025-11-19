@interface PUAssetsDataSourceConverter
+ (PUTilingDataSourceConverter)defaultConverter;
- (BOOL)convertIndexPath:(id *)a3 tileKind:(id *)a4 fromDataSource:(id)a5 toDataSource:(id)a6;
@end

@implementation PUAssetsDataSourceConverter

- (BOOL)convertIndexPath:(id *)a3 tileKind:(id *)a4 fromDataSource:(id)a5 toDataSource:(id)a6
{
  v10 = a5;
  v11 = a6;
  v23.receiver = self;
  v23.super_class = PUAssetsDataSourceConverter;
  if ([(PUTilingDataSourceConverter *)&v23 convertIndexPath:a3 tileKind:a4 fromDataSource:v10 toDataSource:v11])
  {
    v12 = 1;
  }

  else
  {
    v13 = *a3;
    v14 = *a4;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [v11 convertIndexPath:v13 fromAssetsDataSource:v10];
      if (v15)
      {
        v16 = [v10 assetAtIndexPath:v13];
        v17 = [v11 assetAtIndexPath:v15];
        v18 = [(PUAssetsDataSourceConverter *)self shouldReloadTileControllerFromAsset:v16 toAsset:v17 tileKind:v14];
        if (v18)
        {
        }

        else
        {
          v22 = v14;

          v19 = v15;
          *a3 = v15;
          v16 = v22;
          v20 = v22;
          *a4 = v22;
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