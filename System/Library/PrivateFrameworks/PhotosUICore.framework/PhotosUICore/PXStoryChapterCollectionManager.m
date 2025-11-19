@interface PXStoryChapterCollectionManager
- (BOOL)applyEditTransaction:(id)a3 error:(id *)a4;
- (PXStoryChapterCollectionManager)init;
- (PXStoryChapterCollectionManager)initWithChapterCollection:(id)a3;
- (void)deleteAllChapters;
- (void)deleteChapterWithIdentifier:(id)a3;
- (void)didPerformChanges;
- (void)editChapterWithIdentifier:(id)a3 changeRequest:(id)a4;
- (void)insertChapterWithFirstAsset:(id)a3 configuration:(id)a4;
- (void)performChanges:(id)a3 completionHandler:(id)a4;
- (void)setChapterCollection:(id)a3;
@end

@implementation PXStoryChapterCollectionManager

- (void)deleteAllChapters
{
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(PXStoryChapterCollectionManager *)self chapterCollection];
  v4 = [v3 numberOfChapters];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(PXStoryChapterCollectionManager *)self chapterCollection];
      v7 = [v6 chapterAtIndex:i];

      v8 = [PXStoryConcreteChapterCollectionChapterDeletion alloc];
      v9 = [v7 identifier];
      v10 = [(PXStoryConcreteChapterCollectionChapterDeletion *)v8 initWithDeletedChapterIdentifier:v9];

      [v12 addObject:v10];
    }
  }

  v11 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  [v11 addObjectsFromArray:v12];
}

- (void)deleteChapterWithIdentifier:(id)a3
{
  v4 = a3;
  v6 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v5 = [[PXStoryConcreteChapterCollectionChapterDeletion alloc] initWithDeletedChapterIdentifier:v4];

  [v6 addObject:v5];
}

- (void)insertChapterWithFirstAsset:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v8 = [[PXStoryConcreteChapterCollectionChapterInsertion alloc] initWithFirstAsset:v7 chapterConfiguration:v6];

  [v9 addObject:v8];
}

- (void)editChapterWithIdentifier:(id)a3 changeRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v8 = [[PXStoryConcreteChapterCollectionChapterModification alloc] initWithEditedChapterIdentifier:v7 chapterChangeRequest:v6];

  [v9 addObject:v8];
}

- (void)setChapterCollection:(id)a3
{
  v5 = a3;
  if (self->_chapterCollection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_chapterCollection, a3);
    [(PXStoryChapterCollectionManager *)self signalChange:1];
    v5 = v6;
  }
}

- (BOOL)applyEditTransaction:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithFormat:@"Method %s is a responsibility of subclass %@", "-[PXStoryChapterCollectionManager applyEditTransaction:error:]", v8];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v5 errorWithDomain:@"PXStoryChapterCollectionManagerErrorDomain" code:1 userInfo:v10];
  }

  return 0;
}

- (void)didPerformChanges
{
  v13.receiver = self;
  v13.super_class = PXStoryChapterCollectionManager;
  [(PXStoryChapterCollectionManager *)&v13 didPerformChanges];
  v3 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  v4 = [v3 copy];

  v5 = [(PXStoryChapterCollectionManager *)self pendingEdits];
  [v5 removeAllObjects];

  if ([v4 count])
  {
    v6 = [PXStoryConcreteChapterCollectionEditTransaction alloc];
    v7 = [(PXStoryChapterCollectionManager *)self chapterCollection];
    v8 = [(PXStoryConcreteChapterCollectionEditTransaction *)v6 initWithOriginalChapterCollection:v7 edits:v4];

    v12 = 0;
    v9 = [(PXStoryChapterCollectionManager *)self applyEditTransaction:v8 error:&v12];
    v10 = v12;
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = [(PXStoryChapterCollectionManager *)self pendingCompletionHandler];
  if (v11)
  {
    [(PXStoryChapterCollectionManager *)self setPendingCompletionHandler:0];
    (v11)[2](v11, v9, v10);
  }
}

- (void)performChanges:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PXStoryChapterCollectionManager_performChanges_completionHandler___block_invoke;
  v10[3] = &unk_1E773AA00;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (PXStoryChapterCollectionManager)initWithChapterCollection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXStoryChapterCollectionManager;
  v6 = [(PXStoryChapterCollectionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chapterCollection, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingEdits = v7->_pendingEdits;
    v7->_pendingEdits = v8;
  }

  return v7;
}

- (PXStoryChapterCollectionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionManager.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryChapterCollectionManager init]"}];

  abort();
}

@end