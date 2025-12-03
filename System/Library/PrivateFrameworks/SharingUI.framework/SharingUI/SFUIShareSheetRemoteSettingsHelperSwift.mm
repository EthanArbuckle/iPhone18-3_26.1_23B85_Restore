@interface SFUIShareSheetRemoteSettingsHelperSwift
+ (void)updateHostingControllerWithHostingController:(id)controller context:(id)context hostProcessType:(int64_t)type hostPresentationStyle:(int64_t)style optionGroups:(id)groups collaborationOptionsData:(id)data cloudShareRequest:(id)request isSLMEnabled:(BOOL)self0 presentationDirectionType:(int64_t)self1;
+ (void)updateHostingControllerWithHostingController:(id)controller sessionIdentifier:(id)identifier;
@end

@implementation SFUIShareSheetRemoteSettingsHelperSwift

+ (void)updateHostingControllerWithHostingController:(id)controller context:(id)context hostProcessType:(int64_t)type hostPresentationStyle:(int64_t)style optionGroups:(id)groups collaborationOptionsData:(id)data cloudShareRequest:(id)request isSLMEnabled:(BOOL)self0 presentationDirectionType:(int64_t)self1
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](context);
  MEMORY[0x1E69E5928](groups);
  MEMORY[0x1E69E5928](data);
  MEMORY[0x1E69E5928](request);
  if (groups)
  {
    sub_1B9ECF4D8();
    v12 = sub_1B9ED8C0C();
    MEMORY[0x1E69E5920](groups);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = sub_1B9ED849C();
  swift_getObjCClassMetadata();
  static SFUIShareSheetRemoteSettingsHelperSwift.updateHostingController(hostingController:context:hostProcessType:hostPresentationStyle:optionGroups:collaborationOptionsData:cloudShareRequest:isSLMEnabled:presentationDirectionType:)(controller, context, type, style, v13, data, request, v11 & 1, directionType);

  MEMORY[0x1E69E5920](request);
  MEMORY[0x1E69E5920](data);
  MEMORY[0x1E69E5920](context);
  MEMORY[0x1E69E5920](controller);
}

+ (void)updateHostingControllerWithHostingController:(id)controller sessionIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](identifier);
  v5 = sub_1B9ED8AAC();
  v6 = v4;
  swift_getObjCClassMetadata();
  static SFUIShareSheetRemoteSettingsHelperSwift.updateHostingController(hostingController:sessionIdentifier:)(controller, v5, v6);

  MEMORY[0x1E69E5920](identifier);
  MEMORY[0x1E69E5920](controller);
}

@end