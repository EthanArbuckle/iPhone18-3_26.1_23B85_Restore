@interface TLAlert(UserNotificationsCore)
+ (uint64_t)unc_toneLibraryAlertTypeForSectionID:()UserNotificationsCore;
@end

@implementation TLAlert(UserNotificationsCore)

+ (uint64_t)unc_toneLibraryAlertTypeForSectionID:()UserNotificationsCore
{
  v3 = unc_toneLibraryAlertTypeForSectionID__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TLAlert(UserNotificationsCore) unc_toneLibraryAlertTypeForSectionID:];
  }

  v5 = [unc_toneLibraryAlertTypeForSectionID____sectionIDToAlertType objectForKey:v4];

  integerValue = [v5 integerValue];
  return integerValue;
}

@end