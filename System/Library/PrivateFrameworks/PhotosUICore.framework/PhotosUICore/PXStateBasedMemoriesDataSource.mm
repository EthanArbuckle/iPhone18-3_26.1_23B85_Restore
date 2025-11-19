@interface PXStateBasedMemoriesDataSource
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (PXStateBasedMemoriesDataSource)initWithState:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)sectionedObjectReferenceForMemoryUUID:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXStateBasedMemoriesDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v15.receiver = self;
  v15.super_class = PXStateBasedMemoriesDataSource;
  [(PXSimpleIndexPath *)&v15 indexPathForObjectReference:v6];
  if (v16 == *off_1E7721F68)
  {
    v7 = [v6 itemObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 assetCollection];
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

      v8 = v7;
    }

    v9 = v8;
    if (v8)
    {
      v10 = [(PXStateBasedMemoriesDataSource *)self _state];
      v11 = [v10 memories];
      v12 = [v11 indexOfObject:v9];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [(PXStateBasedMemoriesDataSource *)self identifier];
        *&v17 = v12;
        *(&v17 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v13 = v17;
  *&retstr->dataSourceIdentifier = v16;
  *&retstr->item = v13;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXStateBasedMemoriesDataSource *)self _state];
  v5 = v4;
  if (a3->dataSourceIdentifier != *off_1E7721F68 && a3->item != 0x7FFFFFFFFFFFFFFFLL && a3->subitem == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v4 memories];
    v10 = [v9 objectAtIndexedSubscript:a3->item];

    v11 = [v5 infosByMemory];
    v8 = [v11 objectForKeyedSubscript:v10];

    if (!v8)
    {
      v8 = [PXMemoryInfo fastMemoryInfoWithMemory:v10];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXStateBasedMemoriesDataSource *)self _state];
  v4 = [v3 memories];
  v5 = [v4 count];

  return v5;
}

- (id)sectionedObjectReferenceForMemoryUUID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(PXStateBasedMemoriesDataSource *)self _state];
  v6 = [v5 memories];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PXStateBasedMemoriesDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke;
  v13[3] = &unk_1E77352E0;
  v7 = v4;
  v14 = v7;
  v15 = &v16;
  [v6 enumerateObjectsUsingBlock:v13];

  if (v17[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(PXStateBasedMemoriesDataSource *)self identifier];
    v10 = v17[3];
    v12[0] = v9;
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

- (PXStateBasedMemoriesDataSource)initWithState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStateBasedMemoriesDataSource;
  v6 = [(PXStateBasedMemoriesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__state, a3);
  }

  return v7;
}

@end