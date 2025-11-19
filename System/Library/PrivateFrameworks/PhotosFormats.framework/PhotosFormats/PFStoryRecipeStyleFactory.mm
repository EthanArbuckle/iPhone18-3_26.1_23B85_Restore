@interface PFStoryRecipeStyleFactory
+ (id)createStyleWithOriginalColorGradeCategory:(id)a3 customColorGradeKind:(int64_t)a4 songAssetIdentifier:(id)a5 isCustomized:(BOOL)a6;
@end

@implementation PFStoryRecipeStyleFactory

+ (id)createStyleWithOriginalColorGradeCategory:(id)a3 customColorGradeKind:(int64_t)a4 songAssetIdentifier:(id)a5 isCustomized:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a3;
  v11 = [[PFStoryConcreteStyle alloc] initWithIdentifier:0 originalColorGradeCategory:v10 customColorGradeKind:a4 songAssetIdentifier:v9 isCustomized:v6];

  return v11;
}

@end