@interface WFLibraryWorkflowsQueryResult
- (WFDatabaseResultState)state;
@end

@implementation WFLibraryWorkflowsQueryResult

- (WFDatabaseResultState)state
{
  v2 = LibraryWorkflowsQueryResult.state.getter();

  return v2;
}

@end