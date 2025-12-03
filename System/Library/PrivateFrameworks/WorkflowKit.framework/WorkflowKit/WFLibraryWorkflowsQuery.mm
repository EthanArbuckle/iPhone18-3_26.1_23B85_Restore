@interface WFLibraryWorkflowsQuery
+ (id)sortedWorkflowsWithQuery:(id)query;
+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name hasAssociatedBundleIdentifier:(BOOL)identifier;
@end

@implementation WFLibraryWorkflowsQuery

+ (id)sortedWorkflowsWithQuery:(id)query
{
  swift_getObjCClassMetadata();
  queryCopy = query;
  v5 = sub_1CA62521C(queryCopy);

  return v5;
}

+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name hasAssociatedBundleIdentifier:(BOOL)identifier
{
  swift_getObjCClassMetadata();
  queryCopy = query;
  v7 = sub_1CA62538C(queryCopy);

  return v7;
}

@end