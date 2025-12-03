@interface SUSFollowUpAutoUpdate
+ (id)actions;
+ (id)informativeTextWithDescriptor:(id)descriptor;
+ (id)notificationInstallLater;
+ (id)notificationInstallNowAction;
+ (id)notificationOptions;
+ (id)notificationWithDescriptor:(id)descriptor;
+ (id)titleWithDescriptor:(id)descriptor;
@end

@implementation SUSFollowUpAutoUpdate

+ (id)titleWithDescriptor:(id)descriptor
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v4 = [v3 localizedStringForKey:@"AUTO_SU_FOLLOW_UP_TEXT_SU_TONIGHT" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];

  return v4;
}

+ (id)informativeTextWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
  if (humanReadableUpdateName)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v14 = [v13 localizedStringForKey:@"AUTO_SU_READY_TO_INSTALL" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    v15 = [v12 stringWithFormat:v14, humanReadableUpdateName];
  }

  else
  {
    SULogError(@"[SUSFollowUpAutoUpdate] Anomaly, updateName = %@, update = %@", v4, v5, v6, v7, v8, v9, v10, 0);
    v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v15 = [v13 localizedStringForKey:@"AUTO_SU_READY_TO_INSTALL_FALLBACK" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  }

  return v15;
}

+ (id)actions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
    [v2 setUrl:v3];

    [v2 setIdentifier:@"com.followup.go_to_update_pane"];
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v6 = [v5 localizedStringForKey:@"DETAILS" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    v7 = [v4 stringWithFormat:v6];
    [v2 setLabel:v7];

    v11[0] = v2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
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

    notificationInstallNowAction = [objc_opt_class() notificationInstallNowAction];
    [v4 setActivateAction:notificationInstallNowAction];

    notificationInstallLater = [objc_opt_class() notificationInstallLater];
    [v4 setClearAction:notificationInstallLater];

    [objc_opt_class() notificationFrequency];
    [v4 setFrequency:?];
    notificationOptions = [objc_opt_class() notificationOptions];
    [v4 setOptions:notificationOptions];
  }

  return v4;
}

+ (id)notificationInstallNowAction
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = v2;
  if (v2)
  {
    [v2 setIdentifier:@"com.followup.install_now_action"];
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v6 = [v5 localizedStringForKey:@"AUTO_SU_INSTALL_NOW" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    v7 = [v4 stringWithFormat:v6];
    [v3 setLabel:v7];
  }

  return v3;
}

+ (id)notificationInstallLater
{
  v2 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v3 = v2;
  if (v2)
  {
    [v2 setIdentifier:@"com.followup.install_later_action"];
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v6 = [v5 localizedStringForKey:@"AUTO_SU_INSTALL_LATER" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    v7 = [v4 stringWithFormat:v6];
    [v3 setLabel:v7];
  }

  return v3;
}

+ (id)notificationOptions
{
  v8[3] = *MEMORY[0x277D85DE8];
  defaultOptions = [MEMORY[0x277CFE510] defaultOptions];
  v3 = *MEMORY[0x277CFE478];
  v8[0] = *MEMORY[0x277CFE470];
  v8[1] = v3;
  v8[2] = *MEMORY[0x277CFE490];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [defaultOptions setByAddingObjectsFromArray:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end