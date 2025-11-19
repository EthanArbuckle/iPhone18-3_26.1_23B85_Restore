@interface SUSFollowUp
+ (id)generateFollowUpWithDescriptor:(id)a3 userInfo:(id)a4;
+ (id)uniqueIdentifier;
@end

@implementation SUSFollowUp

+ (id)uniqueIdentifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

+ (id)generateFollowUpWithDescriptor:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CFE508]);
  if (v8)
  {
    v9 = [a1 uniqueIdentifier];
    [v8 setUniqueIdentifier:v9];

    v10 = [a1 actions];
    [v8 setActions:v10];

    v11 = [a1 titleWithDescriptor:v6];
    [v8 setTitle:v11];

    v12 = [a1 informativeTextWithDescriptor:v6];
    [v8 setInformativeText:v12];

    v13 = [a1 notificationWithDescriptor:v6];
    [v8 setNotification:v13];

    v14 = [a1 extensionIdentifier];
    [v8 setExtensionIdentifier:v14];

    v15 = [a1 groupIdentifier];
    [v8 setGroupIdentifier:v15];

    v16 = [a1 categoryIdentifier];
    [v8 setCategoryIdentifier:v16];

    [v8 setDisplayStyle:{objc_msgSend(a1, "displayStyle")}];
    v17 = [a1 representingBundlePath];
    [v8 setRepresentingBundlePath:v17];

    v18 = [a1 bundleIconName];
    [v8 setBundleIconName:v18];

    [v8 setUserInfo:v7];
  }

  return v8;
}

@end