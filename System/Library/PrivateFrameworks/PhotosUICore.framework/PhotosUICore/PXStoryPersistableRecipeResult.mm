@interface PXStoryPersistableRecipeResult
- (PXStoryPersistableRecipeResult)init;
- (PXStoryPersistableRecipeResult)initWithPersistableRecipe:(id)recipe miroInfo:(id)info;
@end

@implementation PXStoryPersistableRecipeResult

- (PXStoryPersistableRecipeResult)initWithPersistableRecipe:(id)recipe miroInfo:(id)info
{
  recipeCopy = recipe;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = PXStoryPersistableRecipeResult;
  v9 = [(PXStoryPersistableRecipeResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipe, recipe);
    objc_storeStrong(&v10->_miroInfo, info);
  }

  return v10;
}

- (PXStoryPersistableRecipeResult)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeResult.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryPersistableRecipeResult init]"}];

  abort();
}

@end