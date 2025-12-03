@interface PBFComplicationSnapshotRequest
+ (id)requestForComplicationLookupInfo:(id)info;
+ (id)requestsForPreview:(id)preview;
- (BOOL)isEqual:(id)equal;
- (PBFComplicationSnapshotRequest)initWithWidget:(id)widget metrics:(id)metrics;
- (id)description;
@end

@implementation PBFComplicationSnapshotRequest

+ (id)requestsForPreview:(id)preview
{
  previewCopy = preview;
  subtitleComplication = [previewCopy subtitleComplication];
  if (subtitleComplication || ([previewCopy suggestedComplications], subtitleComplication = objc_claimAutoreleasedReturnValue(), objc_msgSend(subtitleComplication, "count")))
  {
  }

  else
  {
    suggestedLandscapeComplications = [previewCopy suggestedLandscapeComplications];
    v22 = [suggestedLandscapeComplications count];

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
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_new();
  subtitleComplication2 = [previewCopy subtitleComplication];

  if (subtitleComplication2)
  {
    subtitleComplication3 = [previewCopy subtitleComplication];
    v10 = v6[2](v6, subtitleComplication3, previewCopy);

    [v7 bs_safeAddObject:v10];
  }

  suggestedComplications = [previewCopy suggestedComplications];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke_2;
  v27[3] = &unk_2782C8658;
  v12 = v6;
  v30 = v12;
  v13 = previewCopy;
  v28 = v13;
  v14 = v7;
  v29 = v14;
  [suggestedComplications bs_each:v27];

  suggestedLandscapeComplications2 = [v13 suggestedLandscapeComplications];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__PBFComplicationSnapshotRequest_requestsForPreview___block_invoke_3;
  v23[3] = &unk_2782C8658;
  v26 = v12;
  v24 = v13;
  v16 = v14;
  v25 = v16;
  v17 = v12;
  [suggestedLandscapeComplications2 bs_each:v23];

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

+ (id)requestForComplicationLookupInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    complicationExtensionBundleIdentifier = [infoCopy complicationExtensionBundleIdentifier];
    complicationContainingBundleIdentifier = [infoCopy complicationContainingBundleIdentifier];
    complicationWidgetKind = [infoCopy complicationWidgetKind];
    complicationWidgetFamily = [infoCopy complicationWidgetFamily];
    unsignedIntegerValue = [complicationWidgetFamily unsignedIntegerValue];

    complicationIntent = [infoCopy complicationIntent];

    v11 = [objc_alloc(MEMORY[0x277CFA358]) initWithExtensionBundleIdentifier:complicationExtensionBundleIdentifier containerBundleIdentifier:complicationContainingBundleIdentifier kind:complicationWidgetKind family:unsignedIntegerValue intent:complicationIntent];
    if (v11)
    {
      mEMORY[0x277D3EE88] = [MEMORY[0x277D3EE88] sharedInstance];
      v13 = [mEMORY[0x277D3EE88] systemMetricsForWidget:v11];

      v14 = [[self alloc] initWithWidget:v11 metrics:v13];
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

- (PBFComplicationSnapshotRequest)initWithWidget:(id)widget metrics:(id)metrics
{
  widgetCopy = widget;
  metricsCopy = metrics;
  v10 = widgetCopy;
  NSClassFromString(&cfstr_Chswidget.isa);
  if (!v10)
  {
    [PBFComplicationSnapshotRequest initWithWidget:a2 metrics:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotRequest initWithWidget:a2 metrics:?];
  }

  v11 = metricsCopy;
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
    objc_storeStrong(&v12->_widget, widget);
    objc_storeStrong(&v13->_metrics, metrics);
    v14 = MEMORY[0x277CCACA8];
    [v11 size];
    v15 = NSStringFromCGSize(v43);
    [v11 cornerRadius];
    v17 = v16;
    [v11 scaleFactor];
    v19 = v18;
    fontStyle = [v11 fontStyle];
    [v11 safeAreaInsets];
    v22 = v21;
    [v11 safeAreaInsets];
    v24 = v23;
    [v11 safeAreaInsets];
    v26 = v25;
    [v11 safeAreaInsets];
    v28 = v27;
    [v11 safeAreaInsets];
    v30 = [v14 stringWithFormat:@"metrics(size%@-radii%f-scaleFactor%f-font%lu-st%f-sl%f-sb%f-st%f)", v15, v17, v19, fontStyle, v22, v24, v26, v28, v29];

    v31 = MEMORY[0x277CCACA8];
    extensionBundleIdentifier = [v10 extensionBundleIdentifier];
    kind = [v10 kind];
    intent = [v10 intent];
    v35 = [v31 stringWithFormat:@"%@-%@-%@-%@-%lld-%lu", &unk_282D0A498, extensionBundleIdentifier, kind, v30, objc_msgSend(intent, "_indexingHash")];
    pf_sha256Hash = [v35 pf_sha256Hash];
    cacheIdentifier = v13->_cacheIdentifier;
    v13->_cacheIdentifier = pf_sha256Hash;

    builder = [MEMORY[0x277CF0C40] builder];
    v39 = [builder appendObject:v13->_widget];
    v40 = [builder appendObject:v11];
    v13->_hash = [builder hash];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v6 = 1;
    }

    else
    {
      v5 = equalCopy;
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
  selfCopy = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"content" multilinePrefix:0 block:&v8];
  build = [v5 build];

  return build;
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