@interface ICSPhotoSettingsController
- (ICSPhotoSettingsController)init;
@end

@implementation ICSPhotoSettingsController

- (ICSPhotoSettingsController)init
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"MobileSlideShowSettings.bundle" atPath:@"System/Library/PreferenceBundles"];
  v4 = NSClassFromString(&cfstr_Mssphotostream.isa);
  if (v4)
  {
    v5 = objc_alloc_init(v4);
  }

  else
  {
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = @"MSSPhotoStreamInAccountSettingsController";
      v11 = 2112;
      v12 = @"MobileSlideShowSettings.bundle";
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "ICSPhotoSettingsController could not find the class %@ in the %@ bundle", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end