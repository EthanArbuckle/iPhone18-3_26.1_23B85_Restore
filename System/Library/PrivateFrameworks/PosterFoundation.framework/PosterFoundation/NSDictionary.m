@interface NSDictionary
@end

@implementation NSDictionary

void __87__NSDictionary_PosterFoundation__pf_sanitizeWithAllowedKeyClasses_allowedValueClasses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 containsObject:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    LODWORD(v9) = [v9 containsObject:v6];
  }

  if ((v8 | v9))
  {
    v10 = [*(a1 + 56) bs_map:&__block_literal_global_18];
    v11 = [v10 componentsJoinedByString:{@", "}];

    v12 = [*(a1 + 64) bs_map:&__block_literal_global_4_1];
    v13 = [v12 componentsJoinedByString:{@", "}];

    v14 = PFLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [*(a1 + 72) localizedDescription];
      v21 = v20;
      v23 = 138544898;
      v22 = @"Unknown";
      v24 = v5;
      if (v20)
      {
        v22 = v20;
      }

      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = v13;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v19;
      v35 = 2114;
      v36 = v22;
      _os_log_error_impl(&dword_1C269D000, v14, OS_LOG_TYPE_ERROR, "Invalid class type for key value pair: { %{public}@ : %{public}@ }; dropping from dictionary. Allowed key classes: [ %{public}@ ]. Allowed value classes: [ %{public}@ ]. Detected key class: %{public}@. Detected value class: %{public}@. Validation error: %{public}@", &v23, 0x48u);
    }
  }

  else
  {
    [*(a1 + 48) setObject:v6 forKey:v5];
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end