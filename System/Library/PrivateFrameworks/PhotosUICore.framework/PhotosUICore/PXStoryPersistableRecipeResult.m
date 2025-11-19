@interface PXStoryPersistableRecipeResult
- (PXStoryPersistableRecipeResult)init;
- (PXStoryPersistableRecipeResult)initWithPersistableRecipe:(id)a3 miroInfo:(id)a4;
@end

@implementation PXStoryPersistableRecipeResult

- (PXStoryPersistableRecipeResult)initWithPersistableRecipe:(id)a3 miroInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryPersistableRecipeResult;
  v9 = [(PXStoryPersistableRecipeResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipe, a3);
    objc_storeStrong(&v10->_miroInfo, a4);
  }

  return v10;
}

- (PXStoryPersistableRecipeResult)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeResult.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryPersistableRecipeResult init]"}];

  abort();
}

@end