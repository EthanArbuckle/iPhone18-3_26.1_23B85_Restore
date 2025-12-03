@interface PFStoryRecipeDisplayAssetFactory
+ (id)createAssetWithCategory:(int64_t)category scheme:(id)scheme cloudIdentifier:(id)identifier;
@end

@implementation PFStoryRecipeDisplayAssetFactory

+ (id)createAssetWithCategory:(int64_t)category scheme:(id)scheme cloudIdentifier:(id)identifier
{
  identifierCopy = identifier;
  schemeCopy = scheme;
  v9 = [[PFStoryConcreteRecipeDisplayAsset alloc] initWithIdentifier:0 category:category scheme:schemeCopy cloudIdentifier:identifierCopy];

  return v9;
}

@end