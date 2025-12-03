@interface PLModelMigrationAction_RemoveGuestFacesFromSPL
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveGuestFacesFromSPL

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = MEMORY[0x1E69BF328];
  contextCopy = context;
  v7 = 1;
  v8 = [v5 predicateForIncludeMask:objc_msgSend(v5 useIndex:"maskForGuestAsset") keyPathPrefix:{1, @"assetForFace"}];
  v9 = +[PLDetectedFace entityName];
  v14 = 0;
  v10 = [PLModelMigrator executeBatchDeleteWithEntityName:v9 predicate:v8 managedObjectContext:contextCopy error:&v14];

  v11 = v14;
  if (!v10)
  {
    if (error)
    {
      v12 = v11;
      *error = v11;
    }

    v7 = 3;
  }

  return v7;
}

@end