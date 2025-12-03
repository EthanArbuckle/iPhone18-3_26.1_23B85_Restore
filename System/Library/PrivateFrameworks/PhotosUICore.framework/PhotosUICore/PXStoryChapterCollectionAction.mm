@interface PXStoryChapterCollectionAction
- (PXStoryChapterCollectionAction)init;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager deleteChapterWithIdentifier:(id)identifier;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager editChapterWithIdentifier:(id)identifier changeRequest:(id)request;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager edits:(id)edits;
- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager insertChapterWithFirstAsset:(id)asset configuration:(id)configuration;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXStoryChapterCollectionAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  chapterCollectionManager = [(PXStoryChapterCollectionAction *)self chapterCollectionManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXStoryChapterCollectionAction_performUndo___block_invoke;
  v6[3] = &unk_1E7733468;
  v6[4] = self;
  [chapterCollectionManager performChanges:v6 completionHandler:undoCopy];
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

- (void)performAction:(id)action
{
  actionCopy = action;
  chapterCollectionManager = [(PXStoryChapterCollectionAction *)self chapterCollectionManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PXStoryChapterCollectionAction_performAction___block_invoke;
  v7[3] = &unk_1E7733418;
  v7[4] = self;
  v7[5] = a2;
  [chapterCollectionManager performChanges:v7 completionHandler:actionCopy];
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

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager edits:(id)edits
{
  v39 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  editsCopy = edits;
  v37.receiver = self;
  v37.super_class = PXStoryChapterCollectionAction;
  v9 = [(PXStoryChapterCollectionAction *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chapterCollectionManager, manager);
    v11 = [editsCopy copy];
    edits = v10->_edits;
    v10->_edits = v11;

    chapterCollection = [managerCopy chapterCollection];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PXStoryChapterCollectionAction_initWithChapterCollectionManager_edits___block_invoke;
    aBlock[3] = &unk_1E77333F0;
    v29 = chapterCollection;
    v35 = v29;
    v15 = v14;
    v36 = v15;
    v16 = _Block_copy(aBlock);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = editsCopy;
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
        kind = [v22 kind];
        if (kind == 3)
        {
          deletedChapterIdentifier = [v22 deletedChapterIdentifier];
        }

        else
        {
          if (kind != 1)
          {
            continue;
          }

          deletedChapterIdentifier = [v22 editedChapterIdentifier];
        }

        v25 = deletedChapterIdentifier;
        v16[2](v16, deletedChapterIdentifier);
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

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager deleteChapterWithIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  managerCopy = manager;
  v8 = [[PXStoryConcreteChapterCollectionChapterDeletion alloc] initWithDeletedChapterIdentifier:identifierCopy];

  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [(PXStoryChapterCollectionAction *)self initWithChapterCollectionManager:managerCopy edits:v9];

  return v10;
}

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager insertChapterWithFirstAsset:(id)asset configuration:(id)configuration
{
  v15[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  assetCopy = asset;
  managerCopy = manager;
  v11 = [[PXStoryConcreteChapterCollectionChapterInsertion alloc] initWithFirstAsset:assetCopy chapterConfiguration:configurationCopy];

  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(PXStoryChapterCollectionAction *)self initWithChapterCollectionManager:managerCopy edits:v12];

  return v13;
}

- (PXStoryChapterCollectionAction)initWithChapterCollectionManager:(id)manager editChapterWithIdentifier:(id)identifier changeRequest:(id)request
{
  v15[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  managerCopy = manager;
  v11 = [[PXStoryConcreteChapterCollectionChapterModification alloc] initWithEditedChapterIdentifier:identifierCopy chapterChangeRequest:requestCopy];

  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(PXStoryChapterCollectionAction *)self initWithChapterCollectionManager:managerCopy edits:v12];

  return v13;
}

- (PXStoryChapterCollectionAction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionAction.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStoryChapterCollectionAction init]"}];

  abort();
}

@end