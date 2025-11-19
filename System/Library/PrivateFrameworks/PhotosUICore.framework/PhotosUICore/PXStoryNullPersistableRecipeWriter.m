@interface PXStoryNullPersistableRecipeWriter
- (PXStoryNullPersistableRecipeWriter)initWithError:(id)a3;
- (id)writePersistableRecipe:(id)a3 assetEdits:(id)a4 undoManager:(id)a5 resultHandler:(id)a6;
@end

@implementation PXStoryNullPersistableRecipeWriter

- (id)writePersistableRecipe:(id)a3 assetEdits:(id)a4 undoManager:(id)a5 resultHandler:(id)a6
{
  v8 = a6;
  v9 = [(PXStoryNullPersistableRecipeWriter *)self error];
  (*(a6 + 2))(v8, 0, 0, v9);

  return 0;
}

- (PXStoryNullPersistableRecipeWriter)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryNullPersistableRecipeWriter;
  v6 = [(PXStoryNullPersistableRecipeWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

@end