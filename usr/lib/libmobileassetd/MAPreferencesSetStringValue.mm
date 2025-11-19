@interface MAPreferencesSetStringValue
@end

@implementation MAPreferencesSetStringValue

void ___MAPreferencesSetStringValue_block_invoke(uint64_t a1)
{
  v2 = 1;
  for (i = 1; ; i = 2)
  {
    v4 = v2;
    _MAPreferencesSetKeyForValue(*(a1 + 32), *(a1 + 40));
    v5 = syncPreferences(*(a1 + 48), *(a1 + 56));
    v6 = *(a1 + 40);
    v7 = _MADLog(@"V2");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      break;
    }

    if (v6)
    {
      if (v8)
      {
        v9 = *(a1 + 64);
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        *buf = 138544130;
        v26 = v9;
        v27 = 1024;
        *v28 = i;
        *&v28[4] = 2114;
        *&v28[6] = v10;
        *&v28[14] = 2114;
        *&v28[16] = v11;
        v12 = v7;
        v13 = "%{public}@ attempts:%d | Unable to synchronize after setting preference %{public}@ to string '%{public}@'";
        v14 = 38;
LABEL_8:
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
      }
    }

    else if (v8)
    {
      v15 = *(a1 + 64);
      v16 = *(a1 + 32);
      *buf = 138543874;
      v26 = v15;
      v27 = 1024;
      *v28 = i;
      *&v28[4] = 2114;
      *&v28[6] = v16;
      v12 = v7;
      v13 = "%{public}@ attempts:%d | Unable to synchronize after setting preference %{public}@ to nil (clear)";
      v14 = 28;
      goto LABEL_8;
    }

    v2 = 0;
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  if (v6)
  {
    if (v8)
    {
      v17 = *(a1 + 64);
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      *v28 = v18;
      *&v28[8] = 2114;
      *&v28[10] = v19;
      v20 = "%{public}@ Completed operation to update preference %{public}@ to string '%{public}@'";
      v21 = v7;
      v22 = 32;
      goto LABEL_16;
    }
  }

  else if (v8)
  {
    v23 = *(a1 + 64);
    v24 = *(a1 + 32);
    *buf = 138543618;
    v26 = v23;
    v27 = 2114;
    *v28 = v24;
    v20 = "%{public}@ Completed operation to update preference %{public}@ to nil (clear)";
    v21 = v7;
    v22 = 22;
LABEL_16:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
}

@end