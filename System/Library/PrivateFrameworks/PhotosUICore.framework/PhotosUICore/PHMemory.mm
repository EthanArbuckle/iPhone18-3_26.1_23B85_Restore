@interface PHMemory
@end

@implementation PHMemory

uint64_t __47__PHMemory_PhotosUICore___blockablePeopleCount__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) blockableFeatures];
  v2 = PFFilter();
  v3 = [v2 count];

  return v3;
}

void __52__PHMemory_PhotosUICore__px_blockableFeatureActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = PLMemoriesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Skip duplicate blockable feature: %@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
    v9 = [[PXBlockableMemoryFeatureActionInfo alloc] initWithActionType:v6 localizedTitle:v8];
    [*(a1 + 40) addObject:v9];
    [*(a1 + 32) addObject:v6];
  }
}

void __74__PHMemory_PhotosUICore__px_mutatedPhotosGraphPropertiesWithRejectReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = a2;
    v5 = [v3 numberWithUnsignedInteger:v2];
    [v4 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v5 = a2;
    [v5 removeObjectForKey:@"PHMemoryGraphPropertyRejectReasonKey"];
  }
}

@end