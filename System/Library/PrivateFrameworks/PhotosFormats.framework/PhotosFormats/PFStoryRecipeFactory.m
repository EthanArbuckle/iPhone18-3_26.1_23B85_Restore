@interface PFStoryRecipeFactory
+ (id)createRecipe;
@end

@implementation PFStoryRecipeFactory

+ (id)createRecipe
{
  v2 = objc_alloc_init(PFStoryConcreteRecipe);

  return v2;
}

@end