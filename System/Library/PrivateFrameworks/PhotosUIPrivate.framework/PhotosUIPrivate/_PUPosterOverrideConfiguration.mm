@interface _PUPosterOverrideConfiguration
- (_PUPosterOverrideConfiguration)initWithSettings:(id)settings assetURL:(id)l assetIdentifier:(id)identifier;
@end

@implementation _PUPosterOverrideConfiguration

- (_PUPosterOverrideConfiguration)initWithSettings:(id)settings assetURL:(id)l assetIdentifier:(id)identifier
{
  settingsCopy = settings;
  lCopy = l;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _PUPosterOverrideConfiguration;
  v11 = [(_PUPosterOverrideConfiguration *)&v14 init];
  if (v11)
  {
    if ([settingsCopy useAssetURL])
    {
      v12 = lCopy;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v11->_assetURL, v12);
    objc_storeStrong(&v11->_assetIdentifier, identifier);
    v11->_applySmartCrop = [settingsCopy smartCropEnabled];
    v11->_includeBackfillLayers = [settingsCopy previewEnabled];
  }

  return v11;
}

@end