@interface PXPeopleSuggestionsDataSource
- (id)personSuggestionAtIndexPath:(id)a3;
- (id)personSuggestionAtItemIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXPeopleSuggestionsDataSource

- (id)personSuggestionAtIndexPath:(id)a3
{
  v6 = 0u;
  v7 = 0u;
  v4 = a3;
  [(PXPeopleSuggestionsDataSource *)self identifier];
  PXSimpleIndexPathFromIndexPath();
}

- (id)personSuggestionAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXPeopleSuggestionsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

@end