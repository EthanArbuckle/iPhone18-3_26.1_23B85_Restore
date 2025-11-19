@interface _UIRemoteViewControllerAppProtectionMetrics
+ (id)metricsForExtensionBundleIdentifier:(void *)a3 extensionPlugin:;
- (NSString)debugDescription;
- (_UIRemoteViewControllerAppProtectionMetrics)init;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UIRemoteViewControllerAppProtectionMetrics

- (_UIRemoteViewControllerAppProtectionMetrics)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on _UIRemoteViewControllerAppProtectionMetrics"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"_UIRemoteViewControllerAppProtectionMetrics.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)metricsForExtensionBundleIdentifier:(void *)a3 extensionPlugin:
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  if (!v5)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v33 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v5 error:&v33];
  v8 = v7;
  if (!v33)
  {
    v20 = [v7 containingBundleRecord];
    v12 = [v20 bundleIdentifier];
    v13 = _UIMainBundleIdentifier();
    if ([v12 isEqualToString:v13])
    {
      v19 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v21 = [v8 optsOutOfAppProtectionShield];

    if (v21)
    {
      goto LABEL_16;
    }

    v27 = [objc_alloc(getAPExtensionClass()) initWithApplicationExtensionRecord:v8];
    if (v27)
    {
      v11 = v27;
LABEL_5:
      v12 = [v8 appProtectionEffectiveContainer];
      v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v12 allowPlaceholder:1 error:0];
      if (!v13)
      {
        v13 = [v8 containingBundleRecord];
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v5;
      }

      obj = v14;
      v15 = v14;
      v16 = [v13 localizedName];
      v17 = v16;
      v32 = v8;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [v6 localizedName];
      }

      v22 = v18;

      v23 = [_UIRemoteViewControllerAppProtectionMetrics alloc];
      v20 = v11;
      v31 = v15;
      v28 = v22;
      v24 = v22;
      v30 = v5;
      if (v23)
      {
        v34.receiver = v23;
        v34.super_class = _UIRemoteViewControllerAppProtectionMetrics;
        v25 = objc_msgSendSuper2(&v34, sel_init);
        v19 = v25;
        if (v25)
        {
          objc_storeStrong(v25 + 2, v11);
          objc_storeStrong(v19 + 3, obj);
          objc_storeStrong(v19 + 4, v28);
          objc_storeStrong(v19 + 1, a2);
        }
      }

      else
      {
        v19 = 0;
      }

      v8 = v32;
      goto LABEL_22;
    }
  }

  v9 = [v6 uuid];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_alloc(getAPExtensionClass()) initWithExtensionUUID:v9 bundleIdentifier:v5];

    if (v11)
    {
      goto LABEL_5;
    }
  }

LABEL_16:
  v19 = 0;
LABEL_23:

LABEL_24:

  return v19;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73___UIRemoteViewControllerAppProtectionMetrics_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73___UIRemoteViewControllerAppProtectionMetrics_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end