@interface NSBundle(TextureDataLoading)
- (id)dataForResourceName:()TextureDataLoading;
@end

@implementation NSBundle(TextureDataLoading)

- (id)dataForResourceName:()TextureDataLoading
{
  v4 = a3;
  v5 = [_UIAssetManager assetManagerForBundle:self];
  v6 = [v5 dataNamed:v4];

  data = [v6 data];

  return data;
}

@end