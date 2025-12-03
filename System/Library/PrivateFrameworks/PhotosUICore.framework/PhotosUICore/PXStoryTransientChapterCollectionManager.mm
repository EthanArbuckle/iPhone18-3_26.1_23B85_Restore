@interface PXStoryTransientChapterCollectionManager
- (BOOL)_validateEditTransaction:(id)transaction error:(id *)error;
- (BOOL)applyEditTransaction:(id)transaction error:(id *)error;
- (PXStoryTransientChapterCollectionManager)initWithUneditedChapterCollection:(id)collection;
- (PXStoryTransientChapterCollectionManagerPersistenceDelegate)persistenceDelegate;
- (void)_invalidateChapterCollection;
- (void)_updateChapterCollection;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)setEdits:(id)edits;
- (void)setUneditedChapterCollection:(id)collection;
@end

@implementation PXStoryTransientChapterCollectionManager

- (PXStoryTransientChapterCollectionManagerPersistenceDelegate)persistenceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_persistenceDelegate);

  return WeakRetained;
}

- (void)setUneditedChapterCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_uneditedChapterCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_uneditedChapterCollection, collection);
    [(PXStoryTransientChapterCollectionManager *)self _invalidateChapterCollection];
    collectionCopy = v6;
  }
}

- (void)_updateChapterCollection
{
  uneditedChapterCollection = [(PXStoryTransientChapterCollectionManager *)self uneditedChapterCollection];
  edits = [(PXStoryTransientChapterCollectionManager *)self edits];
  v5 = [edits count];
  v6 = uneditedChapterCollection;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    v9 = [v6 copyByApplyingEdits:edits];

    v8 = v9;
  }

  v10 = v8;
  [(PXStoryChapterCollectionManager *)self setChapterCollection:v8];
}

- (void)_invalidateChapterCollection
{
  updater = [(PXStoryTransientChapterCollectionManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateChapterCollection];
}

- (void)setEdits:(id)edits
{
  editsCopy = edits;
  v5 = editsCopy;
  if (self->_edits != editsCopy)
  {
    v9 = editsCopy;
    v6 = [(NSArray *)editsCopy isEqual:?];
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

- (BOOL)_validateEditTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  originalChapterCollection = [transactionCopy originalChapterCollection];
  if ([originalChapterCollection conformsToProtocol:&unk_1F198CF38])
  {
    v7 = originalChapterCollection;
    edits = [transactionCopy edits];
    v13 = 0;
    v9 = [v7 canApplyEdits:edits error:&v13];

    v10 = v13;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXStoryChapterErrorDomain" code:3 userInfo:0];
  v9 = 0;
  if (error)
  {
LABEL_5:
    v11 = v10;
    *error = v10;
  }

LABEL_6:

  return v9;
}

- (BOOL)applyEditTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v16 = 0;
  v7 = [(PXStoryTransientChapterCollectionManager *)self _validateEditTransaction:transactionCopy error:&v16];
  v8 = v16;
  if (v7)
  {
    edits = [(PXStoryTransientChapterCollectionManager *)self edits];
    edits2 = [transactionCopy edits];
    v11 = [edits arrayByAddingObjectsFromArray:edits2];
    [(PXStoryTransientChapterCollectionManager *)self setEdits:v11];

    updater = [(PXStoryTransientChapterCollectionManager *)self updater];
    [updater updateIfNeeded];

    persistenceDelegate = [(PXStoryTransientChapterCollectionManager *)self persistenceDelegate];
    [persistenceDelegate chapterCollectionManager:self didApplyEditTransaction:transactionCopy];
  }

  if (error)
  {
    v14 = v8;
    *error = v8;
  }

  return v7;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStoryTransientChapterCollectionManager;
  [(PXStoryTransientChapterCollectionManager *)&v3 performChanges:changes];
}

- (void)didPerformChanges
{
  updater = [(PXStoryTransientChapterCollectionManager *)self updater];
  [updater updateIfNeeded];

  v4.receiver = self;
  v4.super_class = PXStoryTransientChapterCollectionManager;
  [(PXStoryChapterCollectionManager *)&v4 didPerformChanges];
}

- (PXStoryTransientChapterCollectionManager)initWithUneditedChapterCollection:(id)collection
{
  collectionCopy = collection;
  v13.receiver = self;
  v13.super_class = PXStoryTransientChapterCollectionManager;
  v6 = [(PXStoryChapterCollectionManager *)&v13 initWithChapterCollection:collectionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uneditedChapterCollection, collection);
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