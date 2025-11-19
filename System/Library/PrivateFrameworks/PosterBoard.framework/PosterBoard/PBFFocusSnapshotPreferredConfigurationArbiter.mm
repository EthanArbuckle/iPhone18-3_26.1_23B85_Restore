@interface PBFFocusSnapshotPreferredConfigurationArbiter
+ (void)determineDesiredConfigurations:(id *)a3 preferredConfiguration:(id *)a4 snapshotDefinition:(id *)a5 fromSwitcherConfiguration:(id)a6 configurationType:(int64_t)a7 variantType:(int64_t)a8 options:(unint64_t)a9 andFocusModeUUID:(id)a10 maxCount:(unint64_t)a11;
@end

@implementation PBFFocusSnapshotPreferredConfigurationArbiter

+ (void)determineDesiredConfigurations:(id *)a3 preferredConfiguration:(id *)a4 snapshotDefinition:(id *)a5 fromSwitcherConfiguration:(id)a6 configurationType:(int64_t)a7 variantType:(int64_t)a8 options:(unint64_t)a9 andFocusModeUUID:(id)a10 maxCount:(unint64_t)a11
{
  v16 = a11;
  v51[1] = *MEMORY[0x277D85DE8];
  v17 = a6;
  v18 = a10;
  v19 = [v17 configurations];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __212__PBFFocusSnapshotPreferredConfigurationArbiter_determineDesiredConfigurations_preferredConfiguration_snapshotDefinition_fromSwitcherConfiguration_configurationType_variantType_options_andFocusModeUUID_maxCount___block_invoke;
  v48[3] = &unk_2782C6CD0;
  v20 = v18;
  v49 = v20;
  v21 = v17;
  v50 = v21;
  v22 = [v19 bs_filter:v48];

  if ((a7 + 1) < 2)
  {
    v23 = [v21 selectedConfiguration];
    if (!v23)
    {
      goto LABEL_8;
    }

LABEL_6:
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __212__PBFFocusSnapshotPreferredConfigurationArbiter_determineDesiredConfigurations_preferredConfiguration_snapshotDefinition_fromSwitcherConfiguration_configurationType_variantType_options_andFocusModeUUID_maxCount___block_invoke_2;
    v46[3] = &unk_2782C6498;
    v24 = v23;
    v47 = v24;
    v25 = [v22 sortedArrayUsingComparator:v46];

    v22 = v25;
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a7 == 1)
  {
    v23 = [v21 activeConfiguration];
    if (v23)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v24 = 0;
  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_9:
  v26 = [v22 count];
  if ((a9 & 2) != 0 && !v26)
  {
    v27 = [v21 activeConfiguration];
    v51[0] = v27;
    [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    v28 = v21;
    v29 = a5;
    v30 = v20;
    v31 = a4;
    v32 = a8;
    v34 = v33 = a3;

    v22 = v34;
    a3 = v33;
    a8 = v32;
    a4 = v31;
    v20 = v30;
    a5 = v29;
    v21 = v28;
    v16 = a11;
  }

LABEL_12:
  if (v16)
  {
    v35 = [v22 count];
    if (v35 >= v16)
    {
      v36 = v16;
    }

    else
    {
      v36 = v35;
    }

    v37 = [v22 subarrayWithRange:{0, v36}];

    v22 = v37;
  }

  if ((a8 + 1) >= 2)
  {
    if (a8 != 1)
    {
      goto LABEL_31;
    }

    v38 = +[PBFPosterSnapshotDefinition switcherUnlockedSnapshotDefinition];
  }

  else
  {
    v38 = +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
  }

  v39 = v38;
  if (!v38)
  {
LABEL_31:
    [PBFFocusSnapshotPreferredConfigurationArbiter determineDesiredConfigurations:a2 preferredConfiguration:a1 snapshotDefinition:? fromSwitcherConfiguration:? configurationType:? variantType:? options:? andFocusModeUUID:? maxCount:?];
  }

  if (a4)
  {
    v40 = v24;
    *a4 = v24;
  }

  if (a5)
  {
    v41 = v39;
    *a5 = v39;
  }

  if (a3)
  {
    v42 = v22;
    *a3 = v22;
  }

  if (a5)
  {
    v43 = v39;
    *a5 = v39;
  }
}

uint64_t __212__PBFFocusSnapshotPreferredConfigurationArbiter_determineDesiredConfigurations_preferredConfiguration_snapshotDefinition_fromSwitcherConfiguration_configurationType_variantType_options_andFocusModeUUID_maxCount___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    return 1;
  }

  v3 = [*(a1 + 40) focusConfigurationForPoster:a2];
  v4 = [v3 activityUUID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v4 UUIDString];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __212__PBFFocusSnapshotPreferredConfigurationArbiter_determineDesiredConfigurations_preferredConfiguration_snapshotDefinition_fromSwitcherConfiguration_configurationType_variantType_options_andFocusModeUUID_maxCount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 isEqual:*(a1 + 32)])
  {
    v6 = -1;
  }

  else
  {
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  return v6;
}

+ (void)determineDesiredConfigurations:(const char *)a1 preferredConfiguration:(uint64_t)a2 snapshotDefinition:fromSwitcherConfiguration:configurationType:variantType:options:andFocusModeUUID:maxCount:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"snapshotDefinition != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBFFocusSnapshotPreferredConfigurationArbiter.m";
    v16 = 1024;
    v17 = 82;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end