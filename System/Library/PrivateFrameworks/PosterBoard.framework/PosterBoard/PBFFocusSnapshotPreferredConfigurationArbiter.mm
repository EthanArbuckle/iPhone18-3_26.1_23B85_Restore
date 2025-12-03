@interface PBFFocusSnapshotPreferredConfigurationArbiter
+ (void)determineDesiredConfigurations:(id *)configurations preferredConfiguration:(id *)configuration snapshotDefinition:(id *)definition fromSwitcherConfiguration:(id)switcherConfiguration configurationType:(int64_t)type variantType:(int64_t)variantType options:(unint64_t)options andFocusModeUUID:(id)self0 maxCount:(unint64_t)self1;
@end

@implementation PBFFocusSnapshotPreferredConfigurationArbiter

+ (void)determineDesiredConfigurations:(id *)configurations preferredConfiguration:(id *)configuration snapshotDefinition:(id *)definition fromSwitcherConfiguration:(id)switcherConfiguration configurationType:(int64_t)type variantType:(int64_t)variantType options:(unint64_t)options andFocusModeUUID:(id)self0 maxCount:(unint64_t)self1
{
  countCopy2 = count;
  v51[1] = *MEMORY[0x277D85DE8];
  switcherConfigurationCopy = switcherConfiguration;
  dCopy = d;
  configurations = [switcherConfigurationCopy configurations];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __212__PBFFocusSnapshotPreferredConfigurationArbiter_determineDesiredConfigurations_preferredConfiguration_snapshotDefinition_fromSwitcherConfiguration_configurationType_variantType_options_andFocusModeUUID_maxCount___block_invoke;
  v48[3] = &unk_2782C6CD0;
  v20 = dCopy;
  v49 = v20;
  v21 = switcherConfigurationCopy;
  v50 = v21;
  v22 = [configurations bs_filter:v48];

  if ((type + 1) < 2)
  {
    selectedConfiguration = [v21 selectedConfiguration];
    if (!selectedConfiguration)
    {
      goto LABEL_8;
    }

LABEL_6:
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __212__PBFFocusSnapshotPreferredConfigurationArbiter_determineDesiredConfigurations_preferredConfiguration_snapshotDefinition_fromSwitcherConfiguration_configurationType_variantType_options_andFocusModeUUID_maxCount___block_invoke_2;
    v46[3] = &unk_2782C6498;
    v24 = selectedConfiguration;
    v47 = v24;
    v25 = [v22 sortedArrayUsingComparator:v46];

    v22 = v25;
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (type == 1)
  {
    selectedConfiguration = [v21 activeConfiguration];
    if (selectedConfiguration)
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
  if ((options & 2) != 0 && !v26)
  {
    activeConfiguration = [v21 activeConfiguration];
    v51[0] = activeConfiguration;
    [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    v28 = v21;
    definitionCopy = definition;
    v30 = v20;
    configurationCopy = configuration;
    variantTypeCopy = variantType;
    v34 = v33 = configurations;

    v22 = v34;
    configurations = v33;
    variantType = variantTypeCopy;
    configuration = configurationCopy;
    v20 = v30;
    definition = definitionCopy;
    v21 = v28;
    countCopy2 = count;
  }

LABEL_12:
  if (countCopy2)
  {
    v35 = [v22 count];
    if (v35 >= countCopy2)
    {
      v36 = countCopy2;
    }

    else
    {
      v36 = v35;
    }

    v37 = [v22 subarrayWithRange:{0, v36}];

    v22 = v37;
  }

  if ((variantType + 1) >= 2)
  {
    if (variantType != 1)
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
    [PBFFocusSnapshotPreferredConfigurationArbiter determineDesiredConfigurations:a2 preferredConfiguration:self snapshotDefinition:? fromSwitcherConfiguration:? configurationType:? variantType:? options:? andFocusModeUUID:? maxCount:?];
  }

  if (configuration)
  {
    v40 = v24;
    *configuration = v24;
  }

  if (definition)
  {
    v41 = v39;
    *definition = v39;
  }

  if (configurations)
  {
    v42 = v22;
    *configurations = v22;
  }

  if (definition)
  {
    v43 = v39;
    *definition = v39;
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