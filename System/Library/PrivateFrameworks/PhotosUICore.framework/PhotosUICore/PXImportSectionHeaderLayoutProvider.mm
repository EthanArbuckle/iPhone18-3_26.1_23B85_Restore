@interface PXImportSectionHeaderLayoutProvider
- (PXImportSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider;
- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (id)secondaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXImportSectionHeaderLayoutProvider

- (id)secondaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  sourceCopy = source;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [sourceCopy numberOfItemsInSection:path->section];
    PXLocalizedStringFromTable(@"PXImportItemsCount", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  return 0;
}

- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v5;
  [source assetCollectionAtSectionIndexPath:v9];
  startDate = [objc_claimAutoreleasedReturnValue() startDate];
  if (startDate)
  {
    dateFormatter = [(PXImportSectionHeaderLayoutProvider *)self dateFormatter];
    [dateFormatter stringFromDate:startDate];
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

- (PXImportSectionHeaderLayoutProvider)initWithViewModel:(id)model viewProvider:(id)provider
{
  v8.receiver = self;
  v8.super_class = PXImportSectionHeaderLayoutProvider;
  v4 = [(PXActionableSectionHeaderLayoutProvider *)&v8 initWithViewModel:model viewProvider:provider];
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