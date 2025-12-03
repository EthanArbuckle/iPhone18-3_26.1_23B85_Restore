@interface PUFilmstripDataSourceConverter
- (BOOL)convertIndexPath:(id *)path tileKind:(id *)kind fromDataSource:(id)source toDataSource:(id)dataSource;
@end

@implementation PUFilmstripDataSourceConverter

- (BOOL)convertIndexPath:(id *)path tileKind:(id *)kind fromDataSource:(id)source toDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  if ([*kind isEqualToString:@"PUTileKindItemContentFilmStripIndicator"])
  {
    indicatorInfos = [dataSourceCopy indicatorInfos];
    v12 = [indicatorInfos count];
    v13 = v12 >= [*path indexAtPosition:0];
  }

  else
  {
    numberOfIndexes = [sourceCopy numberOfIndexes];
    v13 = numberOfIndexes == [dataSourceCopy numberOfIndexes];
  }

  return v13;
}

@end