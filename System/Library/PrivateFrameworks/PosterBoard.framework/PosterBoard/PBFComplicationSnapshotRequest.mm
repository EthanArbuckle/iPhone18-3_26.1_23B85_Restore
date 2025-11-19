@interface PBFComplicationSnapshotRequest
+ (id)requestForComplicationLookupInfo:(id)a3;
+ (id)requestsForPreview:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PBFComplicationSnapshotRequest)initWithWidget:(id)a3 metrics:(id)a4;
- (id)description;
@end

@implementation PBFComplicationSnapshotRequest

+ (id)requestsForPreview:(id)a3
{
  v4 = a3;
  v5 = [v4 subtitleComplication];
  if (v5 || ([v4 suggestedComplications], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "count")))
  {
  }

  else
  {
    v21 = [v4 suggestedLandscapeComplications];
    v22 = [v21 count];

    if (!v22)
    {
      v19 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke;
  aBlock[3] = &__block_descriptor_40_e92___PBFComplicationSnapshotRequest_24__0___PBFComplicationLookupInfo__8___PBFPosterPreview__16l;
  aBlock[4] = a1;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_new();
  v8 = [v4 subtitleComplication];

  if (v8)
  {
    v9 = [v4 subtitleComplication];
    v10 = v6[2](v6, v9, v4);

    [v7 bs_safeAddObject:v10];
  }

  v11 = [v4 suggestedComplications];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke_2;
  v27[3] = &unk_2782C8658;
  v12 = v6;
  v30 = v12;
  v13 = v4;
  v28 = v13;
  v14 = v7;
  v29 = v14;
  [v11 bs_each:v27];

  v15 = [v13 suggestedLandscapeComplications];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke_3;
  v23[3] = &unk_2782C8658;
  v26 = v12;
  v24 = v13;
  v16 = v14;
  v25 = v16;
  v17 = v12;
  [v15 bs_each:v23];

  v18 = v25;
  v19 = v16;

LABEL_7:

  return v19;
}

void __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  [*(a1 + 40) bs_safeAddObject:v2];
}

void __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  [*(a1 + 40) bs_safeAddObject:v2];
}

+ (id)requestForComplicationLookupInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 complicationExtensionBundleIdentifier];
    v6 = [v4 complicationContainingBundleIdentifier];
    v7 = [v4 complicationWidgetKind];
    v8 = [v4 complicationWidgetFamily];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v4 complicationIntent];

    v11 = [objc_alloc(MEMORY[0x277CFA358]) initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 kind:v7 family:v9 intent:v10];
    if (v11)
    {
      v12 = [MEMORY[0x277D3EE88] sharedInstance];
      v13 = [v12 systemMetricsForWidget:v11];

      v14 = [[a1 alloc] initWithWidget:v11 metrics:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PBFComplicationSnapshotRequest)initWithWidget:(id)a3 metrics:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  NSClassFromString(&cfstr_Chswidget.isa);
  if (!v10)
  {
    [PBFComplicationSnapshotRequest initWithWidget:a2 metrics:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotRequest initWithWidget:a2 metrics:?];
  }

  v11 = v9;
  NSClassFromString(&cfstr_Chswidgetmetri.isa);
  if (!v11)
  {
    [PBFComplicationSnapshotRequest initWithWidget:a2 metrics:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotRequest initWithWidget:a2 metrics:?];
  }

  v42.receiver = self;
  v42.super_class = PBFComplicationSnapshotRequest;
  v12 = [(PBFComplicationSnapshotRequest *)&v42 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widget, a3);
    objc_storeStrong(&v13->_metrics, a4);
    v14 = MEMORY[0x277CCACA8];
    [v11 size];
    v15 = NSStringFromCGSize(v43);
    [v11 cornerRadius];
    v17 = v16;
    [v11 scaleFactor];
    v19 = v18;
    v20 = [v11 fontStyle];
    [v11 safeAreaInsets];
    v22 = v21;
    [v11 safeAreaInsets];
    v24 = v23;
    [v11 safeAreaInsets];
    v26 = v25;
    [v11 safeAreaInsets];
    v28 = v27;
    [v11 safeAreaInsets];
    v30 = [v14 stringWithFormat:@"metrics(size%@-radii%f-scaleFactor%f-font%lu-st%f-sl%f-sb%f-st%f)", v15, v17, v19, v20, v22, v24, v26, v28, v29];

    v31 = MEMORY[0x277CCACA8];
    v32 = [v10 extensionBundleIdentifier];
    v33 = [v10 kind];
    v34 = [v10 intent];
    v35 = [v31 stringWithFormat:@"%@-%@-%@-%@-%lld-%lu", &unk_282D0A498, v32, v33, v30, objc_msgSend(v34, "_indexingHash")];
    v36 = [v35 pf_sha256Hash];
    cacheIdentifier = v13->_cacheIdentifier;
    v13->_cacheIdentifier = v36;

    v38 = [MEMORY[0x277CF0C40] builder];
    v39 = [v38 appendObject:v13->_widget];
    v40 = [v38 appendObject:v11];
    v13->_hash = [v38 hash];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v5 = v4;
      if (BSEqualObjects())
      {
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_hash withName:@"_hash"];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__PBFComplicationSnapshotRequest_description__block_invoke;
  v11 = &unk_2782C58B0;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"content" multilinePrefix:0 block:&v8];
  v6 = [v5 build];

  return v6;
}

- (void)initWithWidget:(char *)a1 metrics:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:CHSWidgetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWidget:(char *)a1 metrics:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:CHSWidgetMetricsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWidget:(char *)a1 metrics:.cold.3(char *a1)
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

- (void)initWithWidget:(char *)a1 metrics:.cold.4(char *a1)
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

@end