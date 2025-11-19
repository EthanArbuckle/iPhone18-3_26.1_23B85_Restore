@interface SUSFollowUpInsufficientDiskSpace
+ (id)_goToSUPaneAction;
+ (id)actions;
+ (id)informativeTextWithDescriptor:(id)a3;
+ (id)notificationInformativeTextWithDescriptor:(id)a3;
+ (id)notificationOptions;
+ (id)notificationTitleWithDescriptor:(id)a3;
+ (id)notificationWithDescriptor:(id)a3;
+ (id)titleWithDescriptor:(id)a3;
@end

@implementation SUSFollowUpInsufficientDiskSpace

+ (id)titleWithDescriptor:(id)a3
{
  v3 = a3;
  if ([v3 upgradeType] == 2)
  {
    v11 = [v3 humanReadableUpdateName];
    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
      v14 = [v13 localizedStringForKey:@"AUTO_SU_FOLLOW_UP_TEXT_SU_AVAILABLE_MAJOR" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
      v15 = [v12 stringWithFormat:v14, v11];
    }

    else
    {
      SULogError(@"[SUSFollowUpInsufficientDiskSpace] Anomaly, updateName = %@, update = %@", v4, v5, v6, v7, v8, v9, v10, 0);
      v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
      v15 = [v13 localizedStringForKey:@"AUTO_SU_FOLLOW_UP_TEXT_SU_AVAILABLE_MINOR" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    }
  }

  else
  {
    v16 = [v3 isSplatOnly];
    v17 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v11 = v17;
    if (v16)
    {
      v18 = @"AUTO_SU_FOLLOW_UP_TEXT_RSR_AVAILABLE_MINOR";
    }

    else
    {
      v18 = @"AUTO_SU_FOLLOW_UP_TEXT_SU_AVAILABLE_MINOR";
    }

    v15 = [v17 localizedStringForKey:v18 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  }

  return v15;
}

+ (id)informativeTextWithDescriptor:(id)a3
{
  v3 = [a3 isSplatOnly];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = v4;
  if (v3)
  {
    v6 = @"AUTO_SU_FOLLOW_UP_INSUFFICIENT_DISK_SPACE_CELL_RSR_BODY";
  }

  else
  {
    v6 = @"AUTO_SU_FOLLOW_UP_INSUFFICIENT_DISK_SPACE_CELL_UPDATE_BODY";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];

  return v7;
}

+ (id)_goToSUPaneAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  [v2 setUrl:v3];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v6 = [v5 localizedStringForKey:@"DETAILS" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v7 = [v4 stringWithFormat:v6];
  [v2 setLabel:v7];

  return v2;
}

+ (id)actions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 _goToSUPaneAction];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)notificationWithDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CFE510]);
  if (v4)
  {
    v5 = [objc_opt_class() notificationTitleWithDescriptor:v3];
    [v4 setTitle:v5];

    v6 = [objc_opt_class() notificationInformativeTextWithDescriptor:v3];
    [v4 setInformativeText:v6];

    v7 = [objc_opt_class() _goToSUPaneAction];
    [v4 setActivateAction:v7];

    [objc_opt_class() notificationFrequency];
    [v4 setFrequency:?];
    v8 = [objc_opt_class() notificationOptions];
    [v4 setOptions:v8];
  }

  return v4;
}

+ (id)notificationTitleWithDescriptor:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 isSplatOnly];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v6 = v5;
  if (v4)
  {
    v7 = @"AUTO_SU_FOLLOW_UP_INSUFFICIENT_DISK_SPACE_RSR_TITLE";
  }

  else
  {
    v7 = @"AUTO_SU_FOLLOW_UP_INSUFFICIENT_DISK_SPACE_UPDATE_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v9 = [v3 stringWithFormat:v8];

  return v9;
}

+ (id)notificationInformativeTextWithDescriptor:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 isSplatOnly];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v6 = v5;
  if (v4)
  {
    v7 = @"AUTO_SU_FOLLOW_UP_INSUFFICIENT_DISK_SPACE_RSR_BODY";
  }

  else
  {
    v7 = @"AUTO_SU_FOLLOW_UP_INSUFFICIENT_DISK_SPACE_UPDATE_BODY";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v9 = [v3 stringWithFormat:v8];

  return v9;
}

+ (id)notificationOptions
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE510] defaultOptions];
  v3 = *MEMORY[0x277CFE490];
  v9[0] = *MEMORY[0x277CFE498];
  v9[1] = v3;
  v4 = *MEMORY[0x277CFE470];
  v9[2] = *MEMORY[0x277CFE4A0];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v2 setByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end