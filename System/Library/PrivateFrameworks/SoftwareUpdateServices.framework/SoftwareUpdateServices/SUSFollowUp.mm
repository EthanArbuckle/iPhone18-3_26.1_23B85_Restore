@interface SUSFollowUp
+ (id)generateFollowUpWithDescriptor:(id)descriptor userInfo:(id)info;
+ (id)uniqueIdentifier;
@end

@implementation SUSFollowUp

+ (id)uniqueIdentifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

+ (id)generateFollowUpWithDescriptor:(id)descriptor userInfo:(id)info
{
  descriptorCopy = descriptor;
  infoCopy = info;
  v8 = objc_alloc_init(MEMORY[0x277CFE508]);
  if (v8)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    [v8 setUniqueIdentifier:uniqueIdentifier];

    actions = [self actions];
    [v8 setActions:actions];

    v11 = [self titleWithDescriptor:descriptorCopy];
    [v8 setTitle:v11];

    v12 = [self informativeTextWithDescriptor:descriptorCopy];
    [v8 setInformativeText:v12];

    v13 = [self notificationWithDescriptor:descriptorCopy];
    [v8 setNotification:v13];

    extensionIdentifier = [self extensionIdentifier];
    [v8 setExtensionIdentifier:extensionIdentifier];

    groupIdentifier = [self groupIdentifier];
    [v8 setGroupIdentifier:groupIdentifier];

    categoryIdentifier = [self categoryIdentifier];
    [v8 setCategoryIdentifier:categoryIdentifier];

    [v8 setDisplayStyle:{objc_msgSend(self, "displayStyle")}];
    representingBundlePath = [self representingBundlePath];
    [v8 setRepresentingBundlePath:representingBundlePath];

    bundleIconName = [self bundleIconName];
    [v8 setBundleIconName:bundleIconName];

    [v8 setUserInfo:infoCopy];
  }

  return v8;
}

@end