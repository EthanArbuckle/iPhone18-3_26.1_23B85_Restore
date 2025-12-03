@interface UIImage(PBFUtilities)
+ (id)pbf_galleryHeroSnapshotForExtension:()PBFUtilities descriptorIdentifier:displayContext:;
@end

@implementation UIImage(PBFUtilities)

+ (id)pbf_galleryHeroSnapshotForExtension:()PBFUtilities descriptorIdentifier:displayContext:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [UIImage(PBFUtilities) pbf_galleryHeroSnapshotForExtension:a2 descriptorIdentifier:? displayContext:?];
  }

  v11 = v10;
  v12 = v9;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v12)
  {
    [UIImage(PBFUtilities) pbf_galleryHeroSnapshotForExtension:a2 descriptorIdentifier:? displayContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [UIImage(PBFUtilities) pbf_galleryHeroSnapshotForExtension:a2 descriptorIdentifier:? displayContext:?];
  }

  posterExtensionBundleIdentifier = [v8 posterExtensionBundleIdentifier];
  if (PFIsPhotosPosterProviderBundleId())
  {
    v14 = [v12 componentsSeparatedByString:@"|"];
    firstObject = [v14 firstObject];

    if (firstObject)
    {
      v16 = firstObject;

      v12 = v16;
    }
  }

  if (pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext__onceToken != -1)
  {
    +[UIImage(PBFUtilities) pbf_galleryHeroSnapshotForExtension:descriptorIdentifier:displayContext:];
  }

  v17 = MEMORY[0x277CCACA8];
  pbf_displayContextPersistenceIdentifier = [v11 pbf_displayContextPersistenceIdentifier];
  persistentIdentifier = [v8 persistentIdentifier];
  pbf_sha256Hash = [persistentIdentifier pbf_sha256Hash];
  v21 = [v17 stringWithFormat:@"[%@]-[%@]-[%@]-[%@].png", posterExtensionBundleIdentifier, v12, pbf_displayContextPersistenceIdentifier, pbf_sha256Hash];

  v22 = pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext__heroCache;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __97__UIImage_PBFUtilities__pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext___block_invoke_2;
  v28[3] = &unk_2782C8CC0;
  v29 = posterExtensionBundleIdentifier;
  v30 = v12;
  v31 = v11;
  v23 = v11;
  v24 = v12;
  v25 = posterExtensionBundleIdentifier;
  v26 = [v22 imageForKey:v21 generatingIfNecessaryWithBlock:v28];

  return v26;
}

+ (void)pbf_galleryHeroSnapshotForExtension:()PBFUtilities descriptorIdentifier:displayContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pbf_galleryHeroSnapshotForExtension:()PBFUtilities descriptorIdentifier:displayContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pbf_galleryHeroSnapshotForExtension:()PBFUtilities descriptorIdentifier:displayContext:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extension", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end