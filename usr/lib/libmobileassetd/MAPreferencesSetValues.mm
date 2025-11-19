@interface MAPreferencesSetValues
@end

@implementation MAPreferencesSetValues

void ___MAPreferencesSetValues_block_invoke(uint64_t a1, __n128 a2)
{
  v3 = 0;
  a2.n128_u64[0] = 138543874;
  v12 = a2;
  while (1)
  {
    v4 = v3;
    [*(a1 + 32) enumerateKeysAndObjectsUsingBlock:{&__block_literal_global_1388, *&v12}];
    v5 = syncPreferences(*(a1 + 40), *(a1 + 48));
    v6 = _MADLog(@"V2");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      break;
    }

    if (v7)
    {
      v8 = *(a1 + 56);
      v3 = v4 + 1;
      v9 = *(a1 + 32);
      *buf = v12.n128_u32[0];
      v14 = v8;
      v15 = 1024;
      LODWORD(v16[0]) = v4 + 1;
      WORD2(v16[0]) = 2114;
      *(v16 + 6) = v9;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ attempts:%d | Unable to synchronize after setting preferences with values %{public}@", buf, 0x1Cu);
    }

    else
    {
      v3 = v4 + 1;
    }

    if (v4)
    {
      return;
    }
  }

  if (v7)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    *buf = 138543618;
    v14 = v10;
    v15 = 2114;
    v16[0] = v11;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed operation to update preferences with values %{public}@", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
}

@end