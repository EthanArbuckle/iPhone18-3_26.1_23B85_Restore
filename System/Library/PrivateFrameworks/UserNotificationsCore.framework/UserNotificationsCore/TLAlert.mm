@interface TLAlert
@end

@implementation TLAlert

void __71__TLAlert_UserNotificationsCore__unc_toneLibraryAlertTypeForSectionID___block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.mobilemail";
  v3[1] = @"com.apple.MobileSMS";
  v4[0] = &unk_1F56635A8;
  v4[1] = &unk_1F56635C0;
  v3[2] = @"com.apple.mobilephone";
  v3[3] = @"com.apple.facetime";
  v4[2] = &unk_1F56635D8;
  v4[3] = &unk_1F56635D8;
  v3[4] = @"com.apple.mobilecal";
  v3[5] = @"com.apple.reminders";
  v4[4] = &unk_1F56635F0;
  v4[5] = &unk_1F5663608;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = unc_toneLibraryAlertTypeForSectionID____sectionIDToAlertType;
  unc_toneLibraryAlertTypeForSectionID____sectionIDToAlertType = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end