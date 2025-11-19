@interface WFLibraryCollectionsQueryResult
- (WFDatabaseResultState)state;
@end

@implementation WFLibraryCollectionsQueryResult

- (WFDatabaseResultState)state
{
  v2 = LibraryCollectionsQueryResult.state.getter();

  return v2;
}

@end