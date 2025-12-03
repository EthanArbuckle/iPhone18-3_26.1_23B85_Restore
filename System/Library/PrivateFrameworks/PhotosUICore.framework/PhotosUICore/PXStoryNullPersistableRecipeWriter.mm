@interface PXStoryNullPersistableRecipeWriter
- (PXStoryNullPersistableRecipeWriter)initWithError:(id)error;
- (id)writePersistableRecipe:(id)recipe assetEdits:(id)edits undoManager:(id)manager resultHandler:(id)handler;
@end

@implementation PXStoryNullPersistableRecipeWriter

- (id)writePersistableRecipe:(id)recipe assetEdits:(id)edits undoManager:(id)manager resultHandler:(id)handler
{
  handlerCopy = handler;
  error = [(PXStoryNullPersistableRecipeWriter *)self error];
  (*(handler + 2))(handlerCopy, 0, 0, error);

  return 0;
}

- (PXStoryNullPersistableRecipeWriter)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = PXStoryNullPersistableRecipeWriter;
  v6 = [(PXStoryNullPersistableRecipeWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

@end