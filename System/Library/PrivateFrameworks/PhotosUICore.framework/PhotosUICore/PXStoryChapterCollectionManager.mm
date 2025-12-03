@interface PXStoryChapterCollectionManager
- (BOOL)applyEditTransaction:(id)transaction error:(id *)error;
- (PXStoryChapterCollectionManager)init;
- (PXStoryChapterCollectionManager)initWithChapterCollection:(id)collection;
- (void)deleteAllChapters;
- (void)deleteChapterWithIdentifier:(id)identifier;
- (void)didPerformChanges;
- (void)editChapterWithIdentifier:(id)identifier changeRequest:(id)request;
- (void)insertChapterWithFirstAsset:(id)asset configuration:(id)configuration;
- (void)performChanges:(id)changes completionHandler:(id)handler;
- (void)setChapterCollection:(id)collection;
@end

@implementation PXStoryChapterCollectionManager

- (void)deleteAllChapters
{
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chapterCollection = [(PXStoryChapterCollectionManager *)self chapterCollection];
  numberOfChapters = [chapterCollection numberOfChapters];

  if (numberOfChapters >= 1)
  {
    for (i = 0; i != numberOfChapters; ++i)
    {
      chapterCollection2 = [(PXStoryChapterCollectionManager *)self chapterCollection];
      v7 = [chapterCollection2 chapterAtIndex:i];

      v8 = [PXStoryConcreteChapterCollectionChapterDeletion alloc];
      identifier = [v7 identifier];
      v10 = [(PXStoryConcreteChapterCollectionChapterDeletion *)v8 initWithDeletedChapterIdentifier:identifier];

      [v12 addObject:v10];
    }
  }

  pendingEdits = [(PXStoryChapterCollectionManager *)self pendingEdits];
  [pendingEdits addObjectsFromArray:v12];
}

- (void)deleteChapterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pendingEdits = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v5 = [[PXStoryConcreteChapterCollectionChapterDeletion alloc] initWithDeletedChapterIdentifier:identifierCopy];

  [pendingEdits addObject:v5];
}

- (void)insertChapterWithFirstAsset:(id)asset configuration:(id)configuration
{
  configurationCopy = configuration;
  assetCopy = asset;
  pendingEdits = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v8 = [[PXStoryConcreteChapterCollectionChapterInsertion alloc] initWithFirstAsset:assetCopy chapterConfiguration:configurationCopy];

  [pendingEdits addObject:v8];
}

- (void)editChapterWithIdentifier:(id)identifier changeRequest:(id)request
{
  requestCopy = request;
  identifierCopy = identifier;
  pendingEdits = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v8 = [[PXStoryConcreteChapterCollectionChapterModification alloc] initWithEditedChapterIdentifier:identifierCopy chapterChangeRequest:requestCopy];

  [pendingEdits addObject:v8];
}

- (void)setChapterCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_chapterCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_chapterCollection, collection);
    [(PXStoryChapterCollectionManager *)self signalChange:1];
    collectionCopy = v6;
  }
}

- (BOOL)applyEditTransaction:(id)transaction error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v5 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithFormat:@"Method %s is a responsibility of subclass %@", "-[PXStoryChapterCollectionManager applyEditTransaction:error:]", v8];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v5 errorWithDomain:@"PXStoryChapterCollectionManagerErrorDomain" code:1 userInfo:v10];
  }

  return 0;
}

- (void)didPerformChanges
{
  v13.receiver = self;
  v13.super_class = PXStoryChapterCollectionManager;
  [(PXStoryChapterCollectionManager *)&v13 didPerformChanges];
  pendingEdits = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v4 = [pendingEdits copy];

  pendingEdits2 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  [pendingEdits2 removeAllObjects];

  if ([v4 count])
  {
    v6 = [PXStoryConcreteChapterCollectionEditTransaction alloc];
    chapterCollection = [(PXStoryChapterCollectionManager *)self chapterCollection];
    v8 = [(PXStoryConcreteChapterCollectionEditTransaction *)v6 initWithOriginalChapterCollection:chapterCollection edits:v4];

    v12 = 0;
    v9 = [(PXStoryChapterCollectionManager *)self applyEditTransaction:v8 error:&v12];
    v10 = v12;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  pendingCompletionHandler = [(PXStoryChapterCollectionManager *)self pendingCompletionHandler];
  if (pendingCompletionHandler)
  {
    [(PXStoryChapterCollectionManager *)self setPendingCompletionHandler:0];
    (pendingCompletionHandler)[2](pendingCompletionHandler, v9, v10);
  }
}

- (void)performChanges:(id)changes completionHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PXStoryChapterCollectionManager_performChanges_completionHandler___block_invoke;
  v10[3] = &unk_1E773AA00;
  v10[4] = self;
  v11 = handlerCopy;
  v12 = changesCopy;
  v8 = changesCopy;
  v9 = handlerCopy;
  [(PXStoryChapterCollectionManager *)self performChanges:v10];
}

uint64_t __68__PXStoryChapterCollectionManager_performChanges_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) pendingCompletionHandler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PXStoryChapterCollectionManager_performChanges_completionHandler___block_invoke_2;
    v9[3] = &unk_1E773A9D8;
    v10 = v5;
    v11 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v5;
    [v6 setPendingCompletionHandler:v9];
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), a3, a4);
}

void __68__PXStoryChapterCollectionManager_performChanges_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (PXStoryChapterCollectionManager)initWithChapterCollection:(id)collection
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = PXStoryChapterCollectionManager;
  v6 = [(PXStoryChapterCollectionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chapterCollection, collection);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingEdits = v7->_pendingEdits;
    v7->_pendingEdits = v8;
  }

  return v7;
}

- (PXStoryChapterCollectionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionManager.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryChapterCollectionManager init]"}];

  abort();
}

@end