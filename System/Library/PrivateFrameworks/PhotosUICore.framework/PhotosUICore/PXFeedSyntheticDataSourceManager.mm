@interface PXFeedSyntheticDataSourceManager
- (PXFeedSyntheticDataSourceManager)initWithNumberOfSections:(int64_t)sections numberOfItemsPerSection:(int64_t)section;
- (id)createInitialDataSource;
@end

@implementation PXFeedSyntheticDataSourceManager

- (id)createInitialDataSource
{
  v2 = [[_PXFeedSyntheticDataSource alloc] initWithNumberOfSections:self->_initialNumberOfSections numberOfItemsPerSection:self->_initialNumberOfItemsPerSection];

  return v2;
}

- (PXFeedSyntheticDataSourceManager)initWithNumberOfSections:(int64_t)sections numberOfItemsPerSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = PXFeedSyntheticDataSourceManager;
  result = [(PXSectionedDataSourceManager *)&v7 init];
  if (result)
  {
    result->_initialNumberOfSections = sections;
    result->_initialNumberOfItemsPerSection = section;
  }

  return result;
}

@end