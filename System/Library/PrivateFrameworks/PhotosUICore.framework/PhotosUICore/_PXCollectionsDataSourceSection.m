@interface _PXCollectionsDataSourceSection
- (_PXCollectionsDataSourceSection)initWithCollectionsDataSource:(id)a3 lockStatePerCollection:(id)a4 outlineObject:(id)a5;
- (id)accessoryTitleForCollection:(id)a3;
- (id)content;
- (id)existingAssetsFetchResultAtIndex:(int64_t)a3;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)indexOfCollection:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)lockStateForCollection:(id)a3;
@end

@implementation _PXCollectionsDataSourceSection

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v10 = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  if (![v10 numberOfSections])
  {
    v13 = 0;
    goto LABEL_7;
  }

  if ([v10 numberOfSections] != 1)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:106 description:@"This code path is not implemented."];

    abort();
  }

  v18 = [v10 identifier];
  v19 = xmmword_1A5380D10;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = [v10 objectsInIndexPath:&v18];
  v12 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:103 description:{@"%@ should conform to protocol %@, but it is nil", @"objects", @"NSFastEnumeration"}];
LABEL_10:

    goto LABEL_5;
  }

  if (([v11 conformsToProtocol:&unk_1F19896E0] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [v12 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:103 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"objects", @"NSFastEnumeration", v16}];

    goto LABEL_10;
  }

LABEL_5:
  v13 = [v12 countByEnumeratingWithState:a3 objects:a4 count:a5];

LABEL_7:
  return v13;
}

- (id)objectAtIndex:(int64_t)a3
{
  v4 = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v7[0] = [v4 identifier];
  v7[1] = 0;
  v7[2] = a3;
  v7[3] = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [v4 objectAtIndexPath:v7];

  return v5;
}

- (id)content
{
  v2 = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v3 = [v2 content];

  return v3;
}

- (id)existingAssetsFetchResultAtIndex:(int64_t)a3
{
  v4 = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  if ([v4 numberOfSections] == 1)
  {
    v7[0] = [v4 identifier];
    v7[1] = 0;
    v7[2] = a3;
    v7[3] = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [v4 existingAssetsFetchResultAtIndexPath:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)lockStateForCollection:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"collection"}];
  }

  v6 = [(_PXCollectionsDataSourceSection *)self lockStatePerCollection];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [(_PXCollectionsDataSourceSection *)self lockStatePerCollection];
    v9 = [v8 objectForKeyedSubscript:v5];

    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)accessoryTitleForCollection:(id)a3
{
  v4 = a3;
  v5 = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v6 = [v5 countForCollection:v4];

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

- (int64_t)indexOfCollection:(id)a3
{
  v4 = a3;
  v5 = [(_PXCollectionsDataSourceSection *)self collectionsDataSource];
  v6 = [v5 indexPathForCollection:v4];

  if (v6)
  {
    v7 = [v6 px_item];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (_PXCollectionsDataSourceSection)initWithCollectionsDataSource:(id)a3 lockStatePerCollection:(id)a4 outlineObject:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 numberOfSections] >= 2)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"collectionsDataSource.numberOfSections <= 1"}];
  }

  v18.receiver = self;
  v18.super_class = _PXCollectionsDataSourceSection;
  v13 = [(PXDataSection *)&v18 initWithOutlineObject:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_collectionsDataSource, a3);
    objc_storeStrong(&v14->_lockStatePerCollection, a4);
    if ([v10 numberOfSections] == 1)
    {
      v15 = [v10 numberOfItemsInSection:0];
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