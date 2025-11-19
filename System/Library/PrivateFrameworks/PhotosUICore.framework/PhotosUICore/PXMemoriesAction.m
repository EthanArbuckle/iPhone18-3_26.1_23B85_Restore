@interface PXMemoriesAction
- (PXMemoriesAction)initWithMemories:(id)a3;
- (void)performMemoryChanges:(id)a3 completionHandler:(id)a4;
@end

@implementation PXMemoriesAction

- (void)performMemoryChanges:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PXMemoriesAction_performMemoryChanges_completionHandler___block_invoke;
  v8[3] = &unk_1E774C2F0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:a4];
}

void __59__PXMemoriesAction_performMemoryChanges_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) collections];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [MEMORY[0x1E6978900] changeRequestForMemory:v7];
        v9 = *(a1 + 40);
        v10 = [v7 localIdentifier];
        (*(v9 + 16))(v9, v8, v10);
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (PXMemoriesAction)initWithMemories:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v13.receiver = self;
    v13.super_class = PXMemoriesAction;
    v8 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:v7];

    if (v8)
    {
      v9 = [v4 copy];
      collections = v8->_collections;
      v8->_collections = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end