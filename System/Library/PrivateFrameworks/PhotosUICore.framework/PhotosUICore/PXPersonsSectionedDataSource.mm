@interface PXPersonsSectionedDataSource
- (PXPersonsSectionedDataSource)initWithPhotoLibrary:(id)a3 personsSections:(id)a4 faceTiles:(id)a5 peopleHomeSortingType:(unint64_t)a6;
- (id)_personsInSection:(int64_t)a3;
- (id)faceTileForIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3;
- (id)sortedObjectsInIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
@end

@implementation PXPersonsSectionedDataSource

- (id)faceTileForIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = *&a3->item;
  v14[0] = *&a3->dataSourceIdentifier;
  v14[1] = v4;
  v5 = [(PXPersonsSectionedDataSource *)self objectAtIndexPath:v14];
  v6 = [(PXPersonsSectionedDataSource *)self faceTiles];
  v7 = [v5 localIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [PXPeopleFaceTile alloc];
  v10 = [v8 face];
  v11 = [v8 asset];
  v12 = [(PXPeopleFaceTile *)v9 initWithFace:v10 asset:v11 person:v5];

  return v12;
}

- (id)_personsInSection:(int64_t)a3
{
  v6 = [(PXPersonsSectionedDataSource *)self personsSections];
  v7 = [v6 objectAtIndexedSubscript:a3];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:90 description:{@"%@ invalid section: %lu", self, a3}];
  }

  v8 = [v7 fetchedObjects];

  return v8;
}

- (id)sortedObjectsInIndexPath:(PXSimpleIndexPath *)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPersonsSectionedDataSource *)self identifier])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  section = a3->section;
  v8 = [off_1E7721928 alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXPersonsSectionedDataSource peopleHomeSortingType](self, "peopleHomeSortingType")}];
  v18[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [v8 initWithObjects:v11];

  v13 = [(NSMutableDictionary *)self->_cachedSortedPersonsByTypeAndSection objectForKey:v12];
  if (!v13)
  {
    v14 = [(PXPersonsSectionedDataSource *)self _personsInSection:a3->section];
    v15 = [PXPeopleUtilities comparatorByPeopleHomeSortingType:[(PXPersonsSectionedDataSource *)self peopleHomeSortingType]];
    v13 = [v14 sortedArrayUsingComparator:v15];
    [(NSMutableDictionary *)self->_cachedSortedPersonsByTypeAndSection setObject:v13 forKey:v12];
  }

  return v13;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPersonsSectionedDataSource *)self identifier])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  v9 = [(PXPersonsSectionedDataSource *)self personsSections];
  v10 = [v9 objectAtIndexedSubscript:a3->section];

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPersonsSectionedDataSource *)self identifier])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = *&a3->item;
  v16 = *&a3->dataSourceIdentifier;
  v17 = v7;
  v8 = [(PXPersonsSectionedDataSource *)self sortedObjectsInIndexPath:&v16];
  v9 = a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL;
  if (v9 || ((v10 = v8, a3->subitem == 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v8 == 0) : (v11 = 1), v11))
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v15 = *&a3->item;
    v16 = *&a3->dataSourceIdentifier;
    v17 = v15;
    PXSimpleIndexPathDescription();
  }

  v12 = [v8 objectAtIndex:?];

  return v12;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PXPersonsSectionedDataSource *)self personsSections];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  v2 = [(PXPersonsSectionedDataSource *)self personsSections];
  v3 = [v2 count];

  return v3;
}

- (PXPersonsSectionedDataSource)initWithPhotoLibrary:(id)a3 personsSections:(id)a4 faceTiles:(id)a5 peopleHomeSortingType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v23.receiver = self;
  v23.super_class = PXPersonsSectionedDataSource;
  v14 = [(PXPersonsSectionedDataSource *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_photoLibrary, a3);
    v16 = [v12 copy];
    personsSections = v15->_personsSections;
    v15->_personsSections = v16;

    v18 = [v13 copy];
    faceTiles = v15->_faceTiles;
    v15->_faceTiles = v18;

    v15->_peopleHomeSortingType = a6;
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSortedPersonsByTypeAndSection = v15->_cachedSortedPersonsByTypeAndSection;
    v15->_cachedSortedPersonsByTypeAndSection = v20;
  }

  return v15;
}

@end