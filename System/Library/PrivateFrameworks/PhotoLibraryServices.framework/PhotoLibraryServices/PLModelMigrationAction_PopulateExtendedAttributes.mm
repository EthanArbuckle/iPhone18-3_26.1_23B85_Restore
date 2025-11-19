@interface PLModelMigrationAction_PopulateExtendedAttributes
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_PopulateExtendedAttributes

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes"];
  [v9 setPredicate:v10];

  v15 = 0;
  v11 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:self managedObjectContext:v7 fetchRequest:v9 useObjectIDResumeMarker:0 error:&v15];

  v12 = v15;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (a4)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

@end