@interface PRPosterDescriptorGalleryAssetLookupInfo(Project)
- (id)pbf_imageFromBundle:()Project displayContext:error:;
- (id)pbf_micaViewFromBundle:()Project error:;
@end

@implementation PRPosterDescriptorGalleryAssetLookupInfo(Project)

- (id)pbf_micaViewFromBundle:()Project error:
{
  v6 = a3;
  v7 = [a1 lookupInfo];
  v8 = [v7 objectForKey:@"micaAssetIdentifier"];

  if (v8)
  {
    v9 = [v6 URLForResource:v8 withExtension:@"ca"];
    if ([v9 checkResourceIsReachableAndReturnError:a4])
    {
      v10 = [objc_alloc(MEMORY[0x277CF0D48]) initWithPackageName:v8 inBundle:v6];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_7;
  }

  if (a4)
  {
    v9 = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *a4 = v10 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)pbf_imageFromBundle:()Project displayContext:error:
{
  v9 = a3;
  v10 = a4;
  v11 = v9;
  NSClassFromString(&cfstr_Nsbundle.isa);
  if (!v11)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo(Project) pbf_imageFromBundle:a2 displayContext:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo(Project) pbf_imageFromBundle:a2 displayContext:? error:?];
  }

  if (!v10)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo(Project) pbf_imageFromBundle:a2 displayContext:? error:?];
  }

  v12 = [a1 lookupInfo];
  v13 = [v12 objectForKeyedSubscript:@"assetCatalogIdentifier"];

  if (v13)
  {
    v14 = [v11 URLForResource:@"Assets" withExtension:@"car"];
    if ([v14 checkResourceIsReachableAndReturnError:a5])
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [v14 path];
      v17 = [v10 pbf_displayContextPersistenceIdentifier];
      v18 = [v15 stringWithFormat:@"[url, %@]-[assetid, %@]-[displayContext, %@]", v16, v13, v17];
      v19 = [v18 pf_sha256Hash];

      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__2;
      v34 = __Block_byref_object_dispose__2;
      v35 = 0;
      v20 = [objc_opt_class() imageCache];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __94__PRPosterDescriptorGalleryAssetLookupInfo_Project__pbf_imageFromBundle_displayContext_error___block_invoke;
      v24[3] = &unk_2782C7820;
      v25 = v10;
      v26 = a1;
      v27 = v14;
      v29 = &v30;
      v28 = v13;
      v21 = [v20 imageForKey:v19 generatingIfNecessaryWithBlock:v24];

      if (a5)
      {
        v22 = v31[5];
        if (v22)
        {
          *a5 = v22;
        }
      }

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)pbf_imageFromBundle:()Project displayContext:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSBundleClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pbf_imageFromBundle:()Project displayContext:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"displayContext", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pbf_imageFromBundle:()Project displayContext:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end