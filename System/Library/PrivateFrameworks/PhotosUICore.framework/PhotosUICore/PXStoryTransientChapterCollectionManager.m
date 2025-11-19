@interface PXStoryTransientChapterCollectionManager
- (BOOL)_validateEditTransaction:(id)a3 error:(id *)a4;
- (BOOL)applyEditTransaction:(id)a3 error:(id *)a4;
- (PXStoryTransientChapterCollectionManager)initWithUneditedChapterCollection:(id)a3;
- (PXStoryTransientChapterCollectionManagerPersistenceDelegate)persistenceDelegate;
- (void)_invalidateChapterCollection;
- (void)_updateChapterCollection;
- (void)didPerformChanges;
- (void)performChanges:(id)a3;
- (void)setEdits:(id)a3;
- (void)setUneditedChapterCollection:(id)a3;
@end

@implementation PXStoryTransientChapterCollectionManager

- (PXStoryTransientChapterCollectionManagerPersistenceDelegate)persistenceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_persistenceDelegate);

  return WeakRetained;
}

- (void)setUneditedChapterCollection:(id)a3
{
  v5 = a3;
  if (self->_uneditedChapterCollection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_uneditedChapterCollection, a3);
    [(PXStoryTransientChapterCollectionManager *)self _invalidateChapterCollection];
    v5 = v6;
  }
}

- (void)_updateChapterCollection
{
  v3 = [(PXStoryTransientChapterCollectionManager *)self uneditedChapterCollection];
  v4 = [(PXStoryTransientChapterCollectionManager *)self edits];
  v5 = [v4 count];
  v6 = v3;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    v9 = [v6 copyByApplyingEdits:v4];

    v8 = v9;
  }

  v10 = v8;
  [(PXStoryChapterCollectionManager *)self setChapterCollection:v8];
}

- (void)_invalidateChapterCollection
{
  v2 = [(PXStoryTransientChapterCollectionManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChapterCollection];
}

- (void)setEdits:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_edits != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      edits = self->_edits;
      self->_edits = v7;

      [(PXStoryTransientChapterCollectionManager *)self _invalidateChapterCollection];
      v5 = v9;
    }
  }
}

- (BOOL)_validateEditTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 originalChapterCollection];
  if ([v6 conformsToProtocol:&unk_1F198CF38])
  {
    v7 = v6;
    v8 = [v5 edits];
    v13 = 0;
    v9 = [v7 canApplyEdits:v8 error:&v13];

    v10 = v13;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXStoryChapterErrorDomain" code:3 userInfo:0];
  v9 = 0;
  if (a4)
  {
LABEL_5:
    v11 = v10;
    *a4 = v10;
  }

LABEL_6:

  return v9;
}

- (BOOL)applyEditTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v7 = [(PXStoryTransientChapterCollectionManager *)self _validateEditTransaction:v6 error:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = [(PXStoryTransientChapterCollectionManager *)self edits];
    v10 = [v6 edits];
    v11 = [v9 arrayByAddingObjectsFromArray:v10];
    [(PXStoryTransientChapterCollectionManager *)self setEdits:v11];

    v12 = [(PXStoryTransientChapterCollectionManager *)self updater];
    [v12 updateIfNeeded];

    v13 = [(PXStoryTransientChapterCollectionManager *)self persistenceDelegate];
    [v13 chapterCollectionManager:self didApplyEditTransaction:v6];
  }

  if (a4)
  {
    v14 = v8;
    *a4 = v8;
  }

  return v7;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryTransientChapterCollectionManager;
  [(PXStoryTransientChapterCollectionManager *)&v3 performChanges:a3];
}

- (void)didPerformChanges
{
  v3 = [(PXStoryTransientChapterCollectionManager *)self updater];
  [v3 updateIfNeeded];

  v4.receiver = self;
  v4.super_class = PXStoryTransientChapterCollectionManager;
  [(PXStoryChapterCollectionManager *)&v4 didPerformChanges];
}

- (PXStoryTransientChapterCollectionManager)initWithUneditedChapterCollection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXStoryTransientChapterCollectionManager;
  v6 = [(PXStoryChapterCollectionManager *)&v13 initWithChapterCollection:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uneditedChapterCollection, a3);
    v8 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v8;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateChapterCollection];
    v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    edits = v7->_edits;
    v7->_edits = v10;
  }

  return v7;
}

@end