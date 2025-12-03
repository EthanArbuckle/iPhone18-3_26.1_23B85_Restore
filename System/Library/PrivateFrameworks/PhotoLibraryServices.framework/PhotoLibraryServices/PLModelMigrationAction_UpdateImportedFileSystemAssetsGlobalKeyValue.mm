@interface PLModelMigrationAction_UpdateImportedFileSystemAssetsGlobalKeyValue
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateImportedFileSystemAssetsGlobalKeyValue

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = [PLGlobalKeyValue fetchGlobalKeyValueForKey:@"ImportedFileSystemAssets" withManagedObjectContext:context createIfMissing:0];
  v6 = v5;
  if (v5)
  {
    integerGlobalValue = [v5 integerGlobalValue];
    if (!integerGlobalValue)
    {
      bOOLGlobalValue = [v6 BOOLGlobalValue];

      if (!bOOLGlobalValue)
      {
LABEL_6:
        [v6 setBoolGlobalValue:0];
        goto LABEL_7;
      }

      v9 = MEMORY[0x1E696AD98];
      integerGlobalValue = [v6 BOOLGlobalValue];
      v10 = [v9 numberWithInteger:{objc_msgSend(integerGlobalValue, "integerValue")}];
      [v6 setIntegerGlobalValue:v10];
    }

    goto LABEL_6;
  }

LABEL_7:
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end