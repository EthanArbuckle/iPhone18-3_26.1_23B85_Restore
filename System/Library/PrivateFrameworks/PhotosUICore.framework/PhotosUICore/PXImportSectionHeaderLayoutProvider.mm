@interface PXImportSectionHeaderLayoutProvider
- (PXImportSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4;
- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (id)secondaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
@end

@implementation PXImportSectionHeaderLayoutProvider

- (id)secondaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = a3;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [v5 numberOfItemsInSection:a4->section];
    PXLocalizedStringFromTable(@"PXImportItemsCount", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  return 0;
}

- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = *&a4->item;
  v9[0] = *&a4->dataSourceIdentifier;
  v9[1] = v5;
  [a3 assetCollectionAtSectionIndexPath:v9];
  v6 = [objc_claimAutoreleasedReturnValue() startDate];
  if (v6)
  {
    v7 = [(PXImportSectionHeaderLayoutProvider *)self dateFormatter];
    [v7 stringFromDate:v6];
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    PXLocalizedStringFromTable(@"IMPORT_HISTORY_UNKNOWN_DATE", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
  }

  PXLocalizedStringFromTable(@"IMPORT_HISTORY_IMPORTED_ON_DATE", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (PXImportSectionHeaderLayoutProvider)initWithViewModel:(id)a3 viewProvider:(id)a4
{
  v8.receiver = self;
  v8.super_class = PXImportSectionHeaderLayoutProvider;
  v4 = [(PXActionableSectionHeaderLayoutProvider *)&v8 initWithViewModel:a3 viewProvider:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v4->_dateFormatter;
    v4->_dateFormatter = v5;

    [(NSDateFormatter *)v4->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)v4->_dateFormatter setTimeStyle:0];
  }

  return v4;
}

@end