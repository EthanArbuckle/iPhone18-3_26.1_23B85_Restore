@interface WFLibraryCollectionsQuery
+ (id)sortedGroupings;
+ (id)sortedVisibleFolders;
- (id)performReturningCollectionsIn:(id)a3 database:(id)a4;
- (id)performReturningCountIn:(id)a3 database:(id)a4;
@end

@implementation WFLibraryCollectionsQuery

- (id)performReturningCollectionsIn:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1CA625C88(v6);

  return v9;
}

- (id)performReturningCountIn:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1CA625EE0(v6);

  return v9;
}

+ (id)sortedGroupings
{
  swift_getObjCClassMetadata();
  v2 = sub_1CA625FC8(6);

  return v2;
}

+ (id)sortedVisibleFolders
{
  swift_getObjCClassMetadata();
  v2 = sub_1CA625FC8(4);

  return v2;
}

@end