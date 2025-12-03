@interface PFStoryRecipeStyleFactory
+ (id)createStyleWithOriginalColorGradeCategory:(id)category customColorGradeKind:(int64_t)kind songAssetIdentifier:(id)identifier isCustomized:(BOOL)customized;
@end

@implementation PFStoryRecipeStyleFactory

+ (id)createStyleWithOriginalColorGradeCategory:(id)category customColorGradeKind:(int64_t)kind songAssetIdentifier:(id)identifier isCustomized:(BOOL)customized
{
  customizedCopy = customized;
  identifierCopy = identifier;
  categoryCopy = category;
  v11 = [[PFStoryConcreteStyle alloc] initWithIdentifier:0 originalColorGradeCategory:categoryCopy customColorGradeKind:kind songAssetIdentifier:identifierCopy isCustomized:customizedCopy];

  return v11;
}

@end