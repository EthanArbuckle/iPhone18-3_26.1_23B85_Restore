@interface PXFeedBasedMemoriesDataSource
- (PXFeedBasedMemoriesDataSource)initWithDataSource:(id)source;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)sectionedObjectReferenceForMemoryUUID:(id)d;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
@end

@implementation PXFeedBasedMemoriesDataSource

- (id)sectionedObjectReferenceForMemoryUUID:(id)d
{
  dCopy = d;
  entries = [(PXFeedBasedMemoriesDataSource *)self entries];
  firstObject = [entries firstObject];
  memories = [firstObject memories];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PXFeedBasedMemoriesDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke;
  v13[3] = &unk_1E7735308;
  v8 = dCopy;
  v14 = v8;
  v9 = [memories indexOfObjectPassingTest:v13];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v12[0] = [(PXFeedBasedMemoriesDataSource *)self identifier];
    v12[1] = 0;
    v12[2] = v9;
    v12[3] = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [(PXFeedBasedMemoriesDataSource *)self objectReferenceAtIndexPath:v12];
  }

  return v10;
}

uint64_t __71__PXFeedBasedMemoriesDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetCollection];
  v4 = MEMORY[0x1E6978958];
  v5 = [v3 localIdentifier];
  v6 = [v4 uuidFromLocalIdentifier:v5];

  v7 = [v6 isEqualToString:*(a1 + 32)];
  return v7;
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v17.receiver = self;
  v17.super_class = PXFeedBasedMemoriesDataSource;
  [(PXSimpleIndexPath *)&v17 indexPathForObjectReference:v6];
  if (retstr->dataSourceIdentifier == *off_1E7721F68)
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
LABEL_11:

        goto LABEL_12;
      }

      assetCollection = itemObject;
    }

    v9 = assetCollection;
    if (assetCollection)
    {
      entries = [(PXFeedBasedMemoriesDataSource *)self entries];
      firstObject = [entries firstObject];
      memories = [firstObject memories];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61__PXFeedBasedMemoriesDataSource_indexPathForObjectReference___block_invoke;
      v15[3] = &unk_1E7735308;
      v9 = v9;
      v16 = v9;
      v13 = [memories indexOfObjectPassingTest:v15];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        retstr->dataSourceIdentifier = [(PXFeedBasedMemoriesDataSource *)self identifier];
        retstr->section = 0;
        retstr->item = v13;
        retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return result;
}

uint64_t __61__PXFeedBasedMemoriesDataSource_indexPathForObjectReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetCollection];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  p_item = &path->item;
  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_12:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesDataSource.m" lineNumber:247 description:{@"%@: expected an item or section index path", v14}];

    abort();
  }

  p_section = &path->section;
  v5 = *p_item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }
  }

  else if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    entries = [(PXFeedBasedMemoriesDataSource *)self entries];
    goto LABEL_9;
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  entries2 = [(PXFeedBasedMemoriesDataSource *)self entries];
  firstObject = [entries2 firstObject];
  entries = [firstObject memories];

  p_section = p_item;
LABEL_9:
  v9 = [entries objectAtIndexedSubscript:*p_section];

  return v9;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  entries = [(PXFeedBasedMemoriesDataSource *)self entries];
  firstObject = [entries firstObject];
  memories = [firstObject memories];
  v6 = [memories count];

  return v6;
}

- (int64_t)numberOfSections
{
  entries = [(PXFeedBasedMemoriesDataSource *)self entries];
  firstObject = [entries firstObject];
  v4 = firstObject != 0;

  return v4;
}

- (PXFeedBasedMemoriesDataSource)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = PXFeedBasedMemoriesDataSource;
  v5 = [(PXFeedBasedMemoriesDataSource *)&v9 init];
  if (v5)
  {
    entries = [sourceCopy entries];
    entries = v5->_entries;
    v5->_entries = entries;
  }

  return v5;
}

@end