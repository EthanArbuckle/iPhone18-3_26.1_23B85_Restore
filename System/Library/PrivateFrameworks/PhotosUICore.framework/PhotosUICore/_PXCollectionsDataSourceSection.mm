@interface _PXCollectionsDataSourceSection
- (_PXCollectionsDataSourceSection)initWithCollectionsDataSource:(id)source lockStatePerCollection:(id)collection outlineObject:(id)object;
- (id)accessoryTitleForCollection:(id)collection;
- (id)content;
- (id)existingAssetsFetchResultAtIndex:(int64_t)index;
- (id)objectAtIndex:(int64_t)index;
- (int64_t)indexOfCollection:(id)collection;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)lockStateForCollection:(id)collection;
@end

@implementation _PXCollectionsDataSourceSection

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  collectionsDataSource = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  if (![collectionsDataSource numberOfSections])
  {
    v13 = 0;
    goto LABEL_7;
  }

  if ([collectionsDataSource numberOfSections] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:106 description:@"This code path is not implemented."];

    abort();
  }

  identifier = [collectionsDataSource identifier];
  v19 = xmmword_1A5380D10;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = [collectionsDataSource objectsInIndexPath:&identifier];
  v12 = v11;
  if (!v11)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:103 description:{@"%@ should conform to protocol %@, but it is nil", @"objects", @"NSFastEnumeration"}];
LABEL_10:

    goto LABEL_5;
  }

  if (([v11 conformsToProtocol:&unk_1F19896E0] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:103 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"objects", @"NSFastEnumeration", px_descriptionForAssertionMessage}];

    goto LABEL_10;
  }

LABEL_5:
  v13 = [v12 countByEnumeratingWithState:state objects:objects count:count];

LABEL_7:
  return v13;
}

- (id)objectAtIndex:(int64_t)index
{
  collectionsDataSource = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v7[0] = [collectionsDataSource identifier];
  v7[1] = 0;
  v7[2] = index;
  v7[3] = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [collectionsDataSource objectAtIndexPath:v7];

  return v5;
}

- (id)content
{
  collectionsDataSource = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  content = [collectionsDataSource content];

  return content;
}

- (id)existingAssetsFetchResultAtIndex:(int64_t)index
{
  collectionsDataSource = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  if ([collectionsDataSource numberOfSections] == 1)
  {
    v7[0] = [collectionsDataSource identifier];
    v7[1] = 0;
    v7[2] = index;
    v7[3] = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [collectionsDataSource existingAssetsFetchResultAtIndexPath:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)lockStateForCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"collection"}];
  }

  lockStatePerCollection = [(_PXCollectionsDataSourceSection *)self lockStatePerCollection];
  v7 = [lockStatePerCollection objectForKeyedSubscript:collectionCopy];

  if (v7)
  {
    lockStatePerCollection2 = [(_PXCollectionsDataSourceSection *)self lockStatePerCollection];
    v9 = [lockStatePerCollection2 objectForKeyedSubscript:collectionCopy];

    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)accessoryTitleForCollection:(id)collection
{
  collectionCopy = collection;
  collectionsDataSource = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v6 = [collectionsDataSource countForCollection:collectionCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = PXLocalizedStringFromInteger(v6);
  }

  return v7;
}

- (int64_t)indexOfCollection:(id)collection
{
  collectionCopy = collection;
  collectionsDataSource = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v6 = [collectionsDataSource indexPathForCollection:collectionCopy];

  if (v6)
  {
    px_item = [v6 px_item];
  }

  else
  {
    px_item = 0x7FFFFFFFFFFFFFFFLL;
  }

  return px_item;
}

- (_PXCollectionsDataSourceSection)initWithCollectionsDataSource:(id)source lockStatePerCollection:(id)collection outlineObject:(id)object
{
  sourceCopy = source;
  collectionCopy = collection;
  objectCopy = object;
  if ([sourceCopy numberOfSections] >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"collectionsDataSource.numberOfSections <= 1"}];
  }

  v18.receiver = self;
  v18.super_class = _PXCollectionsDataSourceSection;
  v13 = [(PXDataSection *)&v18 initWithOutlineObject:objectCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_collectionsDataSource, source);
    objc_storeStrong(&v14->_lockStatePerCollection, collection);
    if ([sourceCopy numberOfSections] == 1)
    {
      v15 = [sourceCopy numberOfItemsInSection:0];
    }

    else
    {
      v15 = 0;
    }

    v14->_count = v15;
  }

  return v14;
}

@end