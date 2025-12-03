@interface PXStateBasedMemoriesDataSource
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (PXStateBasedMemoriesDataSource)initWithState:(id)state;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)sectionedObjectReferenceForMemoryUUID:(id)d;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXStateBasedMemoriesDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  identifier = 0u;
  v17 = 0u;
  v15.receiver = self;
  v15.super_class = PXStateBasedMemoriesDataSource;
  [(PXSimpleIndexPath *)&v15 indexPathForObjectReference:v6];
  if (identifier == *off_1E7721F68)
  {
    itemObject = [v6 itemObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      assetCollection = [itemObject assetCollection];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
LABEL_10:

        goto LABEL_11;
      }

      assetCollection = itemObject;
    }

    v9 = assetCollection;
    if (assetCollection)
    {
      _state = [(PXStateBasedMemoriesDataSource *)self _state];
      memories = [_state memories];
      v12 = [memories indexOfObject:v9];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        identifier = [(PXStateBasedMemoriesDataSource *)self identifier];
        *&v17 = v12;
        *(&v17 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v13 = v17;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v13;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  _state = [(PXStateBasedMemoriesDataSource *)self _state];
  v5 = _state;
  if (path->dataSourceIdentifier != *off_1E7721F68 && path->item != 0x7FFFFFFFFFFFFFFFLL && path->subitem == 0x7FFFFFFFFFFFFFFFLL)
  {
    memories = [_state memories];
    v10 = [memories objectAtIndexedSubscript:path->item];

    infosByMemory = [v5 infosByMemory];
    null = [infosByMemory objectForKeyedSubscript:v10];

    if (!null)
    {
      null = [PXMemoryInfo fastMemoryInfoWithMemory:v10];
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  _state = [(PXStateBasedMemoriesDataSource *)self _state];
  memories = [_state memories];
  v5 = [memories count];

  return v5;
}

- (id)sectionedObjectReferenceForMemoryUUID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  _state = [(PXStateBasedMemoriesDataSource *)self _state];
  memories = [_state memories];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PXStateBasedMemoriesDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke;
  v13[3] = &unk_1E77352E0;
  v7 = dCopy;
  v14 = v7;
  v15 = &v16;
  [memories enumerateObjectsUsingBlock:v13];

  if (v17[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    identifier = [(PXStateBasedMemoriesDataSource *)self identifier];
    v10 = v17[3];
    v12[0] = identifier;
    v12[1] = 0;
    v12[2] = v10;
    v12[3] = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(PXStateBasedMemoriesDataSource *)self objectReferenceAtIndexPath:v12];
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __72__PXStateBasedMemoriesDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x1E6978958];
  v8 = [a2 localIdentifier];
  v9 = [v7 uuidFromLocalIdentifier:v8];

  if ([v9 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (PXStateBasedMemoriesDataSource)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = PXStateBasedMemoriesDataSource;
  v6 = [(PXStateBasedMemoriesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__state, state);
  }

  return v7;
}

@end