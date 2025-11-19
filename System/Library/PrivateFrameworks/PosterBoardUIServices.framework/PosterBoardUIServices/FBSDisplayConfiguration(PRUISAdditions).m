@interface FBSDisplayConfiguration(PRUISAdditions)
+ (id)pruis_hardwareIdentifierForRequest:()PRUISAdditions;
@end

@implementation FBSDisplayConfiguration(PRUISAdditions)

+ (id)pruis_hardwareIdentifierForRequest:()PRUISAdditions
{
  v3 = MEMORY[0x1E699FB10];
  v4 = a3;
  v5 = [v3 pui_sharedDisplayMonitor];
  v6 = [v4 screen];

  v7 = [v6 displayIdentity];
  v8 = [v5 configurationForIdentity:v7];
  v9 = [v8 pui_displayConfigurationIdentifier];

  return v9;
}

@end