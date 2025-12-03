@interface PFStoryRecipeSongAssetFactory
+ (id)createAssetWithCategory:(int64_t)category subcategory:(int64_t)subcategory catalog:(id)catalog songID:(id)d title:(id)title subtitle:(id)subtitle colorGradeCategory:(id)gradeCategory;
@end

@implementation PFStoryRecipeSongAssetFactory

+ (id)createAssetWithCategory:(int64_t)category subcategory:(int64_t)subcategory catalog:(id)catalog songID:(id)d title:(id)title subtitle:(id)subtitle colorGradeCategory:(id)gradeCategory
{
  gradeCategoryCopy = gradeCategory;
  subtitleCopy = subtitle;
  titleCopy = title;
  dCopy = d;
  catalogCopy = catalog;
  v20 = [[PFStoryConcreteRecipeSongAsset alloc] initWithIdentifier:0 category:category subcategory:subcategory catalog:catalogCopy songID:dCopy title:titleCopy subtitle:subtitleCopy];

  [(PFStoryConcreteRecipeSongAsset *)v20 setColorGradeCategory:gradeCategoryCopy];

  return v20;
}

@end