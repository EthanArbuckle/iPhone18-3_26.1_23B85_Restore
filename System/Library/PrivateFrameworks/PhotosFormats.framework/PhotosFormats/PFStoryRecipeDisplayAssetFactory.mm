@interface PFStoryRecipeDisplayAssetFactory
+ (id)createAssetWithCategory:(int64_t)a3 scheme:(id)a4 cloudIdentifier:(id)a5;
@end

@implementation PFStoryRecipeDisplayAssetFactory

+ (id)createAssetWithCategory:(int64_t)a3 scheme:(id)a4 cloudIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[PFStoryConcreteRecipeDisplayAsset alloc] initWithIdentifier:0 category:a3 scheme:v8 cloudIdentifier:v7];

  return v9;
}

@end