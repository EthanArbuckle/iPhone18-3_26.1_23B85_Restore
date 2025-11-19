@interface PXStackedDataSource
- (PXStackedDataSource)init;
- (PXStackedDataSource)initWithDataSections:(id)a3;
- (id)changeDetailsToDataSource:(id)a3 sectionChanges:(id)a4 itemChanges:(id)a5;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
@end

@implementation PXStackedDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PXStackedDataSource *)self dataSections];
    v4 = [v5 objectAtIndexedSubscript:a3->section];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_19;
  }

  if (a3->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3->section != 0x7FFFFFFFFFFFFFFFLL && v4 != 0)
    {
      v7 = [v4 outlineObject];
      goto LABEL_16;
    }

LABEL_19:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL || v4 == 0)
  {
    goto LABEL_19;
  }

  v7 = [v4 objectAtIndex:?];
LABEL_16:
  v9 = v7;

  return v9;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(PXStackedDataSource *)self dataSections];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 count];

  return v6;
}

- (int64_t)numberOfSections
{
  v2 = [(PXStackedDataSource *)self dataSections];
  v3 = [v2 count];

  return v3;
}

- (id)changeDetailsToDataSource:(id)a3 sectionChanges:(id)a4 itemChanges:(id)a5
{
  if (a4)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [off_1E77218B0 alloc];
    v12 = [(PXStackedDataSource *)self identifier];
    v13 = [v10 identifier];

    v14 = [v11 initWithFromDataSourceIdentifier:v12 toDataSourceIdentifier:v13 sectionChanges:v9 itemChangeDetailsBySection:v8 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PXStackedDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStackedDataSource.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXStackedDataSource init]"}];

  abort();
}

- (PXStackedDataSource)initWithDataSections:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStackedDataSource;
  v6 = [(PXStackedDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSections, a3);
  }

  return v7;
}

@end