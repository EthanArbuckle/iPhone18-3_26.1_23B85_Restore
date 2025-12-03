@interface PXPersonsSectionedDataSource
- (PXPersonsSectionedDataSource)initWithPhotoLibrary:(id)library personsSections:(id)sections faceTiles:(id)tiles peopleHomeSortingType:(unint64_t)type;
- (id)_personsInSection:(int64_t)section;
- (id)faceTileForIndexPath:(PXSimpleIndexPath *)path;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (id)sortedObjectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
@end

@implementation PXPersonsSectionedDataSource

- (id)faceTileForIndexPath:(PXSimpleIndexPath *)path
{
  v4 = *&path->item;
  v14[0] = *&path->dataSourceIdentifier;
  v14[1] = v4;
  v5 = [(PXPersonsSectionedDataSource *)self objectAtIndexPath:v14];
  faceTiles = [(PXPersonsSectionedDataSource *)self faceTiles];
  localIdentifier = [v5 localIdentifier];
  v8 = [faceTiles objectForKeyedSubscript:localIdentifier];

  v9 = [PXPeopleFaceTile alloc];
  face = [v8 face];
  asset = [v8 asset];
  v12 = [(PXPeopleFaceTile *)v9 initWithFace:face asset:asset person:v5];

  return v12;
}

- (id)_personsInSection:(int64_t)section
{
  personsSections = [(PXPersonsSectionedDataSource *)self personsSections];
  v7 = [personsSections objectAtIndexedSubscript:section];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:90 description:{@"%@ invalid section: %lu", self, section}];
  }

  fetchedObjects = [v7 fetchedObjects];

  return fetchedObjects;
}

- (id)sortedObjectsInIndexPath:(PXSimpleIndexPath *)path
{
  v18[2] = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPersonsSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  section = path->section;
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
    v14 = [(PXPersonsSectionedDataSource *)self _personsInSection:path->section];
    v15 = [PXPeopleUtilities comparatorByPeopleHomeSortingType:[(PXPersonsSectionedDataSource *)self peopleHomeSortingType]];
    v13 = [v14 sortedArrayUsingComparator:v15];
    [(NSMutableDictionary *)self->_cachedSortedPersonsByTypeAndSection setObject:v13 forKey:v12];
  }

  return v13;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPersonsSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  personsSections = [(PXPersonsSectionedDataSource *)self personsSections];
  v10 = [personsSections objectAtIndexedSubscript:path->section];

  return v10;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPersonsSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPersonsSectionedDataSource.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v7 = *&path->item;
  v16 = *&path->dataSourceIdentifier;
  v17 = v7;
  v8 = [(PXPersonsSectionedDataSource *)self sortedObjectsInIndexPath:&v16];
  v9 = path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL;
  if (v9 || ((v10 = v8, path->subitem == 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v8 == 0) : (v11 = 1), v11))
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v15 = *&path->item;
    v16 = *&path->dataSourceIdentifier;
    v17 = v15;
    PXSimpleIndexPathDescription();
  }

  v12 = [v8 objectAtIndex:?];

  return v12;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  personsSections = [(PXPersonsSectionedDataSource *)self personsSections];
  v5 = [personsSections objectAtIndexedSubscript:section];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  personsSections = [(PXPersonsSectionedDataSource *)self personsSections];
  v3 = [personsSections count];

  return v3;
}

- (PXPersonsSectionedDataSource)initWithPhotoLibrary:(id)library personsSections:(id)sections faceTiles:(id)tiles peopleHomeSortingType:(unint64_t)type
{
  libraryCopy = library;
  sectionsCopy = sections;
  tilesCopy = tiles;
  v23.receiver = self;
  v23.super_class = PXPersonsSectionedDataSource;
  v14 = [(PXPersonsSectionedDataSource *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_photoLibrary, library);
    v16 = [sectionsCopy copy];
    personsSections = v15->_personsSections;
    v15->_personsSections = v16;

    v18 = [tilesCopy copy];
    faceTiles = v15->_faceTiles;
    v15->_faceTiles = v18;

    v15->_peopleHomeSortingType = type;
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSortedPersonsByTypeAndSection = v15->_cachedSortedPersonsByTypeAndSection;
    v15->_cachedSortedPersonsByTypeAndSection = v20;
  }

  return v15;
}

@end