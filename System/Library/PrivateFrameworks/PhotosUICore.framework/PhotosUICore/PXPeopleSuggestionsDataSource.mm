@interface PXPeopleSuggestionsDataSource
- (id)personSuggestionAtIndexPath:(id)path;
- (id)personSuggestionAtItemIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXPeopleSuggestionsDataSource

- (id)personSuggestionAtIndexPath:(id)path
{
  v6 = 0u;
  v7 = 0u;
  pathCopy = path;
  [(PXPeopleSuggestionsDataSource *)self identifier];
  PXSimpleIndexPathFromIndexPath();
}

- (id)personSuggestionAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXPeopleSuggestionsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

@end