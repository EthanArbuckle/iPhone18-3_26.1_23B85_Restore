@interface PLModelMigrationAction_RemoveGuestFacesFromSPL
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveGuestFacesFromSPL

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E69BF328];
  v6 = a3;
  v7 = 1;
  v8 = [v5 predicateForIncludeMask:objc_msgSend(v5 useIndex:"maskForGuestAsset") keyPathPrefix:{1, @"assetForFace"}];
  v9 = +[PLDetectedFace entityName];
  v14 = 0;
  v10 = [PLModelMigrator executeBatchDeleteWithEntityName:v9 predicate:v8 managedObjectContext:v6 error:&v14];

  v11 = v14;
  if (!v10)
  {
    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    v7 = 3;
  }

  return v7;
}

@end