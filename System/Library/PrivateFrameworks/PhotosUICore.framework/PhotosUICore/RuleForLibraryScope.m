@interface RuleForLibraryScope
@end

@implementation RuleForLibraryScope

void ___RuleForLibraryScope_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 dateRangeCondition];
  v5 = v4;
  if (v4)
  {
    v6 = PXSharedLibraryStartDateFromExclusiveCondition(v4);
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      v10 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 32) uuid];
        v17 = 138543362;
        v18 = v11;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Library scope has multiple start date rules: %{public}@", &v17, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(v8, v6);
    }
  }

  v12 = [v3 personCondition];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 personUUIDs];
    if ([*(a1 + 40) count])
    {
      v15 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 32) uuid];
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Library scope has multiple person UUID rules: %{public}@", &v17, 0xCu);
      }
    }

    else
    {
      [*(a1 + 40) addObjectsFromArray:v14];
    }
  }
}

@end