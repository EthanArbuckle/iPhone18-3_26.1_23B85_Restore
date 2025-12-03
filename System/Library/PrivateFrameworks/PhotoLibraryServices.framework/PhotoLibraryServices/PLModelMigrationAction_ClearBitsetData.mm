@interface PLModelMigrationAction_ClearBitsetData
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ClearBitsetData

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = +[PLGraphLabel fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nodeExternalIdentifierDataHavingLabel != nil OR edgeExternalIdentifierDataHavingLabel != nil"];
  [v7 setPredicate:v8];

  v16 = 0;
  v9 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v7 pendingParentUnitCount:0 error:&v16 processingBlock:&__block_literal_global_490];

  v10 = v16;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v11 = v10;
  v12 = v11;
  if (v9 != 1 && error != 0)
  {
    v14 = v11;
    *error = v12;
  }

  return v9;
}

@end