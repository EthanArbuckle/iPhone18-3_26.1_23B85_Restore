@interface PLModelMigrationAction_UpdateImportedFileSystemAssetsGlobalKeyValue
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_UpdateImportedFileSystemAssetsGlobalKeyValue

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = [PLGlobalKeyValue fetchGlobalKeyValueForKey:@"ImportedFileSystemAssets" withManagedObjectContext:a3 createIfMissing:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerGlobalValue];
    if (!v7)
    {
      v8 = [v6 BOOLGlobalValue];

      if (!v8)
      {
LABEL_6:
        [v6 setBoolGlobalValue:0];
        goto LABEL_7;
      }

      v9 = MEMORY[0x1E696AD98];
      v7 = [v6 BOOLGlobalValue];
      v10 = [v9 numberWithInteger:{objc_msgSend(v7, "integerValue")}];
      [v6 setIntegerGlobalValue:v10];
    }

    goto LABEL_6;
  }

LABEL_7:
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end