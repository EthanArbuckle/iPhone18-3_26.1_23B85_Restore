@interface _PUIStylePickerHomeScreenCAAsset
- (_PUIStylePickerHomeScreenCAAsset)initWithAssetName:(id)name bundle:(id)bundle;
- (void)configureAssetPackageView:(id)view withColorStops:(id)stops accentColor:(id)color;
@end

@implementation _PUIStylePickerHomeScreenCAAsset

- (_PUIStylePickerHomeScreenCAAsset)initWithAssetName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v14.receiver = self;
  v14.super_class = _PUIStylePickerHomeScreenCAAsset;
  v9 = [(_PUIStylePickerHomeScreenCAAsset *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetName, name);
    if (bundleCopy)
    {
      v11 = bundleCopy;
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

- (void)configureAssetPackageView:(id)view withColorStops:(id)stops accentColor:(id)color
{
  stopsCopy = stops;
  colorCopy = color;
  viewCopy = view;
  assetName = [(_PUIStylePickerHomeScreenCAAsset *)self assetName];
  bundle = [(_PUIStylePickerHomeScreenCAAsset *)self bundle];
  [viewCopy updateAsset:assetName bundle:bundle];

  v12 = [viewCopy publishedObjectWithName:@"gradient"];
  v13 = [viewCopy publishedObjectWithName:@"accented"];

  assetName2 = [(_PUIStylePickerHomeScreenCAAsset *)self assetName];
  v15 = [assetName2 isEqualToString:@"choice-1"];

  if (v15)
  {
    v16 = [stopsCopy count];
  }

  else
  {
    assetName3 = [(_PUIStylePickerHomeScreenCAAsset *)self assetName];
    v18 = [assetName3 isEqualToString:@"choice-3"];

    if (!v18)
    {
      goto LABEL_9;
    }

    v16 = [stopsCopy count];
    if (colorCopy)
    {
      [v13 setContentsMultiplyColor:{objc_msgSend(colorCopy, "CGColor")}];
    }
  }

  if (stopsCopy && v16)
  {
    v19 = [stopsCopy bs_mapNoNulls:&__block_literal_global_373];
    [v12 setColors:v19];
  }

LABEL_9:
}

@end