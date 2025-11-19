@interface NSBundle(TextureDataLoading)
- (id)dataForResourceName:()TextureDataLoading;
@end

@implementation NSBundle(TextureDataLoading)

- (id)dataForResourceName:()TextureDataLoading
{
  v4 = a3;
  v5 = [_UIAssetManager assetManagerForBundle:a1];
  v6 = [v5 dataNamed:v4];

  v7 = [v6 data];

  return v7;
}

@end