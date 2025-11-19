@interface MAPreferencesSetDataValue
@end

@implementation MAPreferencesSetDataValue

void ___MAPreferencesSetDataValue_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    CFPreferencesSetAppValue(*(a1 + 32), *(a1 + 40), @"com.apple.MobileAsset");
    v4 = CFPreferencesAppSynchronize(@"com.apple.MobileAsset");
    v5 = *(a1 + 40);
    v6 = _MADLog(@"V2");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v5)
      {
        if (v7)
        {
          v8 = *(a1 + 48);
          v9 = *(a1 + 56);
          v10 = *(a1 + 32);
          *buf = 138544130;
          v26 = @"com.apple.MobileAsset";
          v27 = 2114;
          v28 = v8;
          v29 = 2114;
          *v30 = v9;
          *&v30[8] = 2114;
          *&v30[10] = v10;
          v11 = v6;
          v12 = "[MA_PREFS] {%{public}@} [%{public}@] | Completed operation to update preference %{public}@ %{public}@ to data";
LABEL_11:
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x2Au);
        }
      }

      else if (v7)
      {
        v18 = *(a1 + 48);
        v19 = *(a1 + 56);
        v20 = *(a1 + 32);
        *buf = 138544130;
        v26 = @"com.apple.MobileAsset";
        v27 = 2114;
        v28 = v18;
        v29 = 2114;
        *v30 = v19;
        *&v30[8] = 2114;
        *&v30[10] = v20;
        v11 = v6;
        v12 = "[MA_PREFS] {%{public}@} [%{public}@] | Completed operation to update preference %{public}@ %{public}@ to nil (clear)";
        goto LABEL_11;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_17;
    }

    if (v5)
    {
      if (v7)
      {
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v15 = *(a1 + 32);
        *buf = 138544386;
        v26 = v13;
        v27 = 2114;
        v28 = v14;
        v29 = 1024;
        *v30 = v3;
        *&v30[4] = 2114;
        *&v30[6] = @"com.apple.MobileAsset";
        *&v30[14] = 2114;
        *&v30[16] = v15;
        v16 = v6;
        v17 = "[MA_PREFS] {%{public}@} [%{public}@] | attemptsMade:%d | Unable to synchronize after setting preference %{public}@ %{public}@ to data";
LABEL_15:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x30u);
      }
    }

    else if (v7)
    {
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      *buf = 138544386;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 1024;
      *v30 = v3;
      *&v30[4] = 2114;
      *&v30[6] = @"com.apple.MobileAsset";
      *&v30[14] = 2114;
      *&v30[16] = v23;
      v16 = v6;
      v17 = "[MA_PREFS] {%{public}@} [%{public}@] | attemptsMade:%d | Unable to synchronize after setting preference %{public}@ %{public}@ to nil (clear)";
      goto LABEL_15;
    }

LABEL_17:
    v24 = v2 | *(*(*(a1 + 64) + 8) + 24);
    v3 = 2;
    v2 = 1;
  }

  while ((v24 & 1) == 0);
}

@end