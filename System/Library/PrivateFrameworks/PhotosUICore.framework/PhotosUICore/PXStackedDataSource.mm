@interface PXStackedDataSource
- (PXStackedDataSource)init;
- (PXStackedDataSource)initWithDataSections:(id)sections;
- (id)changeDetailsToDataSource:(id)source sectionChanges:(id)changes itemChanges:(id)itemChanges;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
@end

@implementation PXStackedDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    dataSections = [(PXStackedDataSource *)self dataSections];
    v4 = [dataSections objectAtIndexedSubscript:path->section];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_19;
  }

  if (path->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (path->section != 0x7FFFFFFFFFFFFFFFLL && v4 != 0)
    {
      outlineObject = [v4 outlineObject];
      goto LABEL_16;
    }

LABEL_19:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL || v4 == 0)
  {
    goto LABEL_19;
  }

  outlineObject = [v4 objectAtIndex:?];
LABEL_16:
  v9 = outlineObject;

  return v9;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  dataSections = [(PXStackedDataSource *)self dataSections];
  v5 = [dataSections objectAtIndexedSubscript:section];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  dataSections = [(PXStackedDataSource *)self dataSections];
  v3 = [dataSections count];

  return v3;
}

- (id)changeDetailsToDataSource:(id)source sectionChanges:(id)changes itemChanges:(id)itemChanges
{
  if (changes)
  {
    itemChangesCopy = itemChanges;
    changesCopy = changes;
    sourceCopy = source;
    v11 = [off_1E77218B0 alloc];
    identifier = [(PXStackedDataSource *)self identifier];
    identifier2 = [sourceCopy identifier];

    v14 = [v11 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changesCopy itemChangeDetailsBySection:itemChangesCopy subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PXStackedDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStackedDataSource.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXStackedDataSource init]"}];

  abort();
}

- (PXStackedDataSource)initWithDataSections:(id)sections
{
  sectionsCopy = sections;
  v9.receiver = self;
  v9.super_class = PXStackedDataSource;
  v6 = [(PXStackedDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSections, sections);
  }

  return v7;
}

@end