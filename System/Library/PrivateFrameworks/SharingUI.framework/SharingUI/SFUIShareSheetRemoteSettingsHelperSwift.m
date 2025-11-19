@interface SFUIShareSheetRemoteSettingsHelperSwift
+ (void)updateHostingControllerWithHostingController:(id)a3 context:(id)a4 hostProcessType:(int64_t)a5 hostPresentationStyle:(int64_t)a6 optionGroups:(id)a7 collaborationOptionsData:(id)a8 cloudShareRequest:(id)a9 isSLMEnabled:(BOOL)a10 presentationDirectionType:(int64_t)a11;
+ (void)updateHostingControllerWithHostingController:(id)a3 sessionIdentifier:(id)a4;
@end

@implementation SFUIShareSheetRemoteSettingsHelperSwift

+ (void)updateHostingControllerWithHostingController:(id)a3 context:(id)a4 hostProcessType:(int64_t)a5 hostPresentationStyle:(int64_t)a6 optionGroups:(id)a7 collaborationOptionsData:(id)a8 cloudShareRequest:(id)a9 isSLMEnabled:(BOOL)a10 presentationDirectionType:(int64_t)a11
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a7);
  MEMORY[0x1E69E5928](a8);
  MEMORY[0x1E69E5928](a9);
  if (a7)
  {
    sub_1B9ECF4D8();
    v12 = sub_1B9ED8C0C();
    MEMORY[0x1E69E5920](a7);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = sub_1B9ED849C();
  swift_getObjCClassMetadata();
  static SFUIShareSheetRemoteSettingsHelperSwift.updateHostingController(hostingController:context:hostProcessType:hostPresentationStyle:optionGroups:collaborationOptionsData:cloudShareRequest:isSLMEnabled:presentationDirectionType:)(a3, a4, a5, a6, v13, a8, a9, v11 & 1, a11);

  MEMORY[0x1E69E5920](a9);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

+ (void)updateHostingControllerWithHostingController:(id)a3 sessionIdentifier:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v5 = sub_1B9ED8AAC();
  v6 = v4;
  swift_getObjCClassMetadata();
  static SFUIShareSheetRemoteSettingsHelperSwift.updateHostingController(hostingController:sessionIdentifier:)(a3, v5, v6);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

@end