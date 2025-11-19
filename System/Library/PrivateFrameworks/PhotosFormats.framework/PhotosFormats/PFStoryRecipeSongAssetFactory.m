@interface PFStoryRecipeSongAssetFactory
+ (id)createAssetWithCategory:(int64_t)a3 subcategory:(int64_t)a4 catalog:(id)a5 songID:(id)a6 title:(id)a7 subtitle:(id)a8 colorGradeCategory:(id)a9;
@end

@implementation PFStoryRecipeSongAssetFactory

+ (id)createAssetWithCategory:(int64_t)a3 subcategory:(int64_t)a4 catalog:(id)a5 songID:(id)a6 title:(id)a7 subtitle:(id)a8 colorGradeCategory:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = [[PFStoryConcreteRecipeSongAsset alloc] initWithIdentifier:0 category:a3 subcategory:a4 catalog:v19 songID:v18 title:v17 subtitle:v16];

  [(PFStoryConcreteRecipeSongAsset *)v20 setColorGradeCategory:v15];

  return v20;
}

@end