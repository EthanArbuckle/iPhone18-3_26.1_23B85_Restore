@interface _PUIStylePickerHomeScreenCAAsset
- (_PUIStylePickerHomeScreenCAAsset)initWithAssetName:(id)a3 bundle:(id)a4;
- (void)configureAssetPackageView:(id)a3 withColorStops:(id)a4 accentColor:(id)a5;
@end

@implementation _PUIStylePickerHomeScreenCAAsset

- (_PUIStylePickerHomeScreenCAAsset)initWithAssetName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _PUIStylePickerHomeScreenCAAsset;
  v9 = [(_PUIStylePickerHomeScreenCAAsset *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetName, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    }

    bundle = v10->_bundle;
    v10->_bundle = v11;
  }

  return v10;
}

- (void)configureAssetPackageView:(id)a3 withColorStops:(id)a4 accentColor:(id)a5
{
  v20 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(_PUIStylePickerHomeScreenCAAsset *)self assetName];
  v11 = [(_PUIStylePickerHomeScreenCAAsset *)self bundle];
  [v9 updateAsset:v10 bundle:v11];

  v12 = [v9 publishedObjectWithName:@"gradient"];
  v13 = [v9 publishedObjectWithName:@"accented"];

  v14 = [(_PUIStylePickerHomeScreenCAAsset *)self assetName];
  v15 = [v14 isEqualToString:@"choice-1"];

  if (v15)
  {
    v16 = [v20 count];
  }

  else
  {
    v17 = [(_PUIStylePickerHomeScreenCAAsset *)self assetName];
    v18 = [v17 isEqualToString:@"choice-3"];

    if (!v18)
    {
      goto LABEL_9;
    }

    v16 = [v20 count];
    if (v8)
    {
      [v13 setContentsMultiplyColor:{objc_msgSend(v8, "CGColor")}];
    }
  }

  if (v20 && v16)
  {
    v19 = [v20 bs_mapNoNulls:&__block_literal_global_373];
    [v12 setColors:v19];
  }

LABEL_9:
}

@end