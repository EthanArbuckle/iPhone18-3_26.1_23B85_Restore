@interface PXStoryChapterCollectionAction
- (PXStoryChapterCollectionAction)init;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 deleteChapterWithIdentifier:(id)a4;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 editChapterWithIdentifier:(id)a4 changeRequest:(id)a5;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 edits:(id)a4;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 insertChapterWithFirstAsset:(id)a4 configuration:(id)a5;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXStoryChapterCollectionAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryChapterCollectionAction *)self chapterCollectionManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXStoryChapterCollectionAction_performUndo___block_invoke;
  v6[3] = &unk_1E7733468;
  v6[4] = self;
  [v5 performChanges:v6 completionHandler:v4];
}

void __46__PXStoryChapterCollectionAction_performUndo___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) originalChapters];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __46__PXStoryChapterCollectionAction_performUndo___block_invoke_2;
        v11[3] = &unk_1E7733440;
        v11[4] = v9;
        [v3 editChapterWithIdentifier:v10 changeRequest:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)performAction:(id)a3
{
  v5 = a3;
  v6 = [(PXStoryChapterCollectionAction *)self chapterCollectionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PXStoryChapterCollectionAction_performAction___block_invoke;
  v7[3] = &unk_1E7733418;
  v7[4] = self;
  v7[5] = a2;
  [v6 performChanges:v7 completionHandler:v5];
}

void __48__PXStoryChapterCollectionAction_performAction___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(a1 + 32) edits];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [v9 kind];
        if (v10 > 1)
        {
          if (v10 != 2)
          {
            if (v10 != 3)
            {
              goto LABEL_15;
            }

            v11 = [v9 deletedChapterIdentifier];
            [v3 deleteChapterWithIdentifier:v11];
            goto LABEL_14;
          }

          v14 = v9;
          v11 = [v14 firstAsset];
          v13 = [v14 chapterConfiguration];
          [v3 insertChapterWithFirstAsset:v11 configuration:v13];
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        if (v10 == 1)
        {
          v12 = v9;
          v11 = [v12 editedChapterIdentifier];
          v13 = [v12 chapterChangeRequest];
          [v3 editChapterWithIdentifier:v11 changeRequest:v13];
          goto LABEL_13;
        }

        if (!v10)
        {
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
          [v16 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXStoryChapterCollectionAction.m" lineNumber:92 description:@"Code which should be unreachable has been reached"];

          abort();
        }

LABEL_15:
        ++v8;
      }

      while (v6 != v8);
      v15 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v15;
    }

    while (v15);
  }
}

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 edits:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = PXStoryChapterCollectionAction;
  v9 = [(PXStoryChapterCollectionAction *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chapterCollectionManager, a3);
    v11 = [v8 copy];
    edits = v10->_edits;
    v10->_edits = v11;

    v13 = [v7 chapterCollection];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PXStoryChapterCollectionAction_initWithChapterCollectionManager_edits___block_invoke;
    aBlock[3] = &unk_1E77333F0;
    v29 = v13;
    v35 = v29;
    v15 = v14;
    v36 = v15;
    v16 = _Block_copy(aBlock);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v18;
    v20 = *v31;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        v23 = [v22 kind];
        if (v23 == 3)
        {
          v24 = [v22 deletedChapterIdentifier];
        }

        else
        {
          if (v23 != 1)
          {
            continue;
          }

          v24 = [v22 editedChapterIdentifier];
        }

        v25 = v24;
        v16[2](v16, v24);
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v19)
      {
LABEL_14:

        v26 = [v15 copy];
        originalChapters = v10->_originalChapters;
        v10->_originalChapters = v26;

        break;
      }
    }
  }

  return v10;
}

void __73__PXStoryChapterCollectionAction_initWithChapterCollectionManager_edits___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexOfChapterWithIdentifier:a2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) chapterAtIndex:v3];
    [v4 addObject:v5];
  }
}

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 deleteChapterWithIdentifier:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [[PXStoryConcreteChapterCollectionChapterDeletion alloc] initWithDeletedChapterIdentifier:v6];

  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [(PXStoryChapterCollectionAction *)self initWithChapterCollectionManager:v7 edits:v9];

  return v10;
}

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 insertChapterWithFirstAsset:(id)a4 configuration:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PXStoryConcreteChapterCollectionChapterInsertion alloc] initWithFirstAsset:v9 chapterConfiguration:v8];

  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(PXStoryChapterCollectionAction *)self initWithChapterCollectionManager:v10 edits:v12];

  return v13;
}

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)a3 editChapterWithIdentifier:(id)a4 changeRequest:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PXStoryConcreteChapterCollectionChapterModification alloc] initWithEditedChapterIdentifier:v9 chapterChangeRequest:v8];

  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(PXStoryChapterCollectionAction *)self initWithChapterCollectionManager:v10 edits:v12];

  return v13;
}

- (PXStoryChapterCollectionAction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionAction.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStoryChapterCollectionAction init]"}];

  abort();
}

@end