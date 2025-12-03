@interface SUSFollowUpInsufficientDiskSpace
+ (id)_goToSUPaneAction;
+ (id)actions;
+ (id)informativeTextWithDescriptor:(id)descriptor;
+ (id)notificationInformativeTextWithDescriptor:(id)descriptor;
+ (id)notificationOptions;
+ (id)notificationTitleWithDescriptor:(id)descriptor;
+ (id)notificationWithDescriptor:(id)descriptor;
+ (id)titleWithDescriptor:(id)descriptor;
@end

@implementation SUSFollowUpInsufficientDiskSpace

+ (id)titleWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy upgradeType] == 2)
  {
    humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
    if (humanReadableUpdateName)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
      v14 = [v13 localizedStringForKey:@"AUTO_SU_FOLLOW_UP_TEXT_SU_AVAILABLE_MAJOR" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
      v15 = [v12 stringWithFormat:v14, humanReadableUpdateName];
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
    isSplatOnly = [descriptorCopy isSplatOnly];
    v17 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    humanReadableUpdateName = v17;
    if (isSplatOnly)
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

+ (id)informativeTextWithDescriptor:(id)descriptor
{
  isSplatOnly = [descriptor isSplatOnly];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v5 = v4;
  if (isSplatOnly)
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
  _goToSUPaneAction = [self _goToSUPaneAction];
  v6[0] = _goToSUPaneAction;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)notificationWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_alloc_init(MEMORY[0x277CFE510]);
  if (v4)
  {
    v5 = [objc_opt_class() notificationTitleWithDescriptor:descriptorCopy];
    [v4 setTitle:v5];

    v6 = [objc_opt_class() notificationInformativeTextWithDescriptor:descriptorCopy];
    [v4 setInformativeText:v6];

    _goToSUPaneAction = [objc_opt_class() _goToSUPaneAction];
    [v4 setActivateAction:_goToSUPaneAction];

    [objc_opt_class() notificationFrequency];
    [v4 setFrequency:?];
    notificationOptions = [objc_opt_class() notificationOptions];
    [v4 setOptions:notificationOptions];
  }

  return v4;
}

+ (id)notificationTitleWithDescriptor:(id)descriptor
{
  v3 = MEMORY[0x277CCACA8];
  isSplatOnly = [descriptor isSplatOnly];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v6 = v5;
  if (isSplatOnly)
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

+ (id)notificationInformativeTextWithDescriptor:(id)descriptor
{
  v3 = MEMORY[0x277CCACA8];
  isSplatOnly = [descriptor isSplatOnly];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v6 = v5;
  if (isSplatOnly)
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
  defaultOptions = [MEMORY[0x277CFE510] defaultOptions];
  v3 = *MEMORY[0x277CFE490];
  v9[0] = *MEMORY[0x277CFE498];
  v9[1] = v3;
  v4 = *MEMORY[0x277CFE470];
  v9[2] = *MEMORY[0x277CFE4A0];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [defaultOptions setByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end