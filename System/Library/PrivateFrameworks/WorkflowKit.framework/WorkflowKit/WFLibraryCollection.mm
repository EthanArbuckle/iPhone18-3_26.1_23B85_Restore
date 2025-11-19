@interface WFLibraryCollection
- (NSArray)shortcutIdentifiers;
- (WFWorkflowCollection)workflowCollection;
@end

@implementation WFLibraryCollection

- (WFWorkflowCollection)workflowCollection
{
  v2 = LibraryCollection.workflowCollection.getter();

  return v2;
}

- (NSArray)shortcutIdentifiers
{
  LibraryCollection.shortcutIdentifiers.getter();
  v2 = sub_1CA94C648();

  return v2;
}

@end