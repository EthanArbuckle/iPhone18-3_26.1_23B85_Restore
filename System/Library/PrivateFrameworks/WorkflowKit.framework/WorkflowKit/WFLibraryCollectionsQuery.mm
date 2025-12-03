@interface WFLibraryCollectionsQuery
+ (id)sortedGroupings;
+ (id)sortedVisibleFolders;
- (id)performReturningCollectionsIn:(id)in database:(id)database;
- (id)performReturningCountIn:(id)in database:(id)database;
@end

@implementation WFLibraryCollectionsQuery

- (id)performReturningCollectionsIn:(id)in database:(id)database
{
  inCopy = in;
  databaseCopy = database;
  selfCopy = self;
  v9 = sub_1CA625C88(inCopy);

  return v9;
}

- (id)performReturningCountIn:(id)in database:(id)database
{
  inCopy = in;
  databaseCopy = database;
  selfCopy = self;
  v9 = sub_1CA625EE0(inCopy);

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