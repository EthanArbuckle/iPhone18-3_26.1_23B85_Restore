@interface VCCKLibrarySyncCoordinator
+ (BOOL)handleSavedLibraryRecord:(id)record database:(id)database error:(id *)error;
+ (BOOL)handleUnknownItemErrorForRecord:(id)record database:(id)database error:(id *)error;
+ (id)reconcileWithLocalDatabase:(id)database with:(id)with error:(id *)error;
@end

@implementation VCCKLibrarySyncCoordinator

+ (BOOL)handleSavedLibraryRecord:(id)record database:(id)database error:(id *)error
{
  recordCopy = record;
  databaseCopy = database;
  sub_2310735A4(recordCopy, databaseCopy);

  return 1;
}

+ (BOOL)handleUnknownItemErrorForRecord:(id)record database:(id)database error:(id *)error
{
  recordCopy = record;
  databaseCopy = database;
  sub_2310742FC(databaseCopy, databaseCopy);

  return 1;
}

+ (id)reconcileWithLocalDatabase:(id)database with:(id)with error:(id *)error
{
  swift_getObjCClassMetadata();
  databaseCopy = database;
  withCopy = with;
  v9 = static VCCKLibrarySyncCoordinator.reconcile(localDatabase:with:)(databaseCopy, withCopy);

  return v9;
}

@end