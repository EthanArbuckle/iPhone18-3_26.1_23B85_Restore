@interface VCCKLibrarySyncCoordinator
+ (BOOL)handleSavedLibraryRecord:(id)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)handleUnknownItemErrorForRecord:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)reconcileWithLocalDatabase:(id)a3 with:(id)a4 error:(id *)a5;
@end

@implementation VCCKLibrarySyncCoordinator

+ (BOOL)handleSavedLibraryRecord:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_2310735A4(v6, v7);

  return 1;
}

+ (BOOL)handleUnknownItemErrorForRecord:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_2310742FC(v7, v7);

  return 1;
}

+ (id)reconcileWithLocalDatabase:(id)a3 with:(id)a4 error:(id *)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = a4;
  v9 = static VCCKLibrarySyncCoordinator.reconcile(localDatabase:with:)(v7, v8);

  return v9;
}

@end