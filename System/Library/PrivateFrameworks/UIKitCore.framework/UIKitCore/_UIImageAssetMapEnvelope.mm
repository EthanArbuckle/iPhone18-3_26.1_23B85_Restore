@interface _UIImageAssetMapEnvelope
+ (id)wrapAsset:(id)asset;
- (UIImageAsset)imageAsset;
- (id)description;
@end

@implementation _UIImageAssetMapEnvelope

- (UIImageAsset)imageAsset
{
  WeakRetained = objc_loadWeakRetained(&self->_imageAsset);

  return WeakRetained;
}

+ (id)wrapAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(_UIImageAssetMapEnvelope);
  [(_UIImageAssetMapEnvelope *)v4 setImageAsset:assetCopy];
  assetName = [assetCopy assetName];

  [(_UIImageAssetMapEnvelope *)v4 setAssetName:assetName];

  return v4;
}

- (id)description
{
  imageAsset = [(_UIImageAssetMapEnvelope *)self imageAsset];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  assetName = [(_UIImageAssetMapEnvelope *)self assetName];
  v8 = assetName;
  v9 = @"For now";
  if (!imageAsset)
  {
    v9 = @"Nope";
  }

  v10 = [v4 stringWithFormat:@"<%@ %p> asset: %@ valid? %@", v6, self, assetName, v9];

  return v10;
}

@end