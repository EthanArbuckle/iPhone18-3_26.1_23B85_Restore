@interface _UIImageAssetMapEnvelope
+ (id)wrapAsset:(id)a3;
- (UIImageAsset)imageAsset;
- (id)description;
@end

@implementation _UIImageAssetMapEnvelope

- (UIImageAsset)imageAsset
{
  WeakRetained = objc_loadWeakRetained(&self->_imageAsset);

  return WeakRetained;
}

+ (id)wrapAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIImageAssetMapEnvelope);
  [(_UIImageAssetMapEnvelope *)v4 setImageAsset:v3];
  v5 = [v3 assetName];

  [(_UIImageAssetMapEnvelope *)v4 setAssetName:v5];

  return v4;
}

- (id)description
{
  v3 = [(_UIImageAssetMapEnvelope *)self imageAsset];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(_UIImageAssetMapEnvelope *)self assetName];
  v8 = v7;
  v9 = @"For now";
  if (!v3)
  {
    v9 = @"Nope";
  }

  v10 = [v4 stringWithFormat:@"<%@ %p> asset: %@ valid? %@", v6, self, v7, v9];

  return v10;
}

@end