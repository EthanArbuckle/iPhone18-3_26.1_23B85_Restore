@interface _PUPosterOverrideConfiguration
- (_PUPosterOverrideConfiguration)initWithSettings:(id)a3 assetURL:(id)a4 assetIdentifier:(id)a5;
@end

@implementation _PUPosterOverrideConfiguration

- (_PUPosterOverrideConfiguration)initWithSettings:(id)a3 assetURL:(id)a4 assetIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _PUPosterOverrideConfiguration;
  v11 = [(_PUPosterOverrideConfiguration *)&v14 init];
  if (v11)
  {
    if ([v8 useAssetURL])
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v11->_assetURL, v12);
    objc_storeStrong(&v11->_assetIdentifier, a5);
    v11->_applySmartCrop = [v8 smartCropEnabled];
    v11->_includeBackfillLayers = [v8 previewEnabled];
  }

  return v11;
}

@end