@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __75__NSManagedObjectContext_PLManagedObjectContext__pl_resultWithError_block___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 32) + 16))();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void __124__NSManagedObjectContext_PLManagedObjectContext__enumerateWithIncrementalSaveUsingObjects_shouldRefreshAfterSave_withBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 save:&v10];
  v4 = v10;
  v5 = v10;
  if ((v3 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to save incrementally: %@", buf, 0xCu);
    }

    v7 = *(*(a1 + 40) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, v4);
    }
  }
}

uint64_t __110__NSManagedObjectContext_PLManagedObjectContext__enumerateObjectsFromFetchRequest_count_batchSize_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }

  return (*(*(a1 + 32) + 16))();
}

void __63__NSManagedObjectContext_PLManagedObjectContext__pl_graphCache__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = [v5 objectForKeyedSubscript:@"com.apple.photos.PLMigrationGraphCacheKey"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61__NSManagedObjectContext_PLManagedObjectContext__pathManager__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = [v5 objectForKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end