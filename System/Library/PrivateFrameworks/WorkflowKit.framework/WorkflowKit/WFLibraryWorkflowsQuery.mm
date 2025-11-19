@interface WFLibraryWorkflowsQuery
+ (id)sortedWorkflowsWithQuery:(id)a3;
+ (id)sortedWorkflowsWithQuery:(id)a3 sortByName:(BOOL)a4 hasAssociatedBundleIdentifier:(BOOL)a5;
@end

@implementation WFLibraryWorkflowsQuery

+ (id)sortedWorkflowsWithQuery:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1CA62521C(v4);

  return v5;
}

+ (id)sortedWorkflowsWithQuery:(id)a3 sortByName:(BOOL)a4 hasAssociatedBundleIdentifier:(BOOL)a5
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1CA62538C(v6);

  return v7;
}

@end