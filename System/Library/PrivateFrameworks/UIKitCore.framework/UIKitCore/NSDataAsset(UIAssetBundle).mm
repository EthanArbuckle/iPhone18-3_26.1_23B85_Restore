@interface NSDataAsset(UIAssetBundle)
+ (id)_namedDataPrivateAccessorWithName:()UIAssetBundle bundle:;
@end

@implementation NSDataAsset(UIAssetBundle)

+ (id)_namedDataPrivateAccessorWithName:()UIAssetBundle bundle:
{
  v5 = a3;
  v6 = [_UIAssetManager assetManagerForBundle:a4];
  v7 = [v6 dataNamed:v5];

  return v7;
}

@end