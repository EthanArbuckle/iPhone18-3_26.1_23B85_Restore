@interface FBSDisplayConfiguration(PRUISAdditions)
+ (id)pruis_hardwareIdentifierForRequest:()PRUISAdditions;
@end

@implementation FBSDisplayConfiguration(PRUISAdditions)

+ (id)pruis_hardwareIdentifierForRequest:()PRUISAdditions
{
  v3 = MEMORY[0x1E699FB10];
  v4 = a3;
  pui_sharedDisplayMonitor = [v3 pui_sharedDisplayMonitor];
  screen = [v4 screen];

  displayIdentity = [screen displayIdentity];
  v8 = [pui_sharedDisplayMonitor configurationForIdentity:displayIdentity];
  pui_displayConfigurationIdentifier = [v8 pui_displayConfigurationIdentifier];

  return pui_displayConfigurationIdentifier;
}

@end