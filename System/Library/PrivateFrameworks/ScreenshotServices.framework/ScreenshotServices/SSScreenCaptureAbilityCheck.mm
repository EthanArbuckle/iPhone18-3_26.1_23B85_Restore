@interface SSScreenCaptureAbilityCheck
+ (id)abilityCheck;
@end

@implementation SSScreenCaptureAbilityCheck

+ (id)abilityCheck
{
  v2 = objc_alloc_init(self);
  [v2 setIsAbleToTakeScreenshots:1];
  [v2 setReasonForNotBeingAbleToTakeScreenshots:0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v3 = getMCProfileConnectionClass_softClass;
  v23 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getMCProfileConnectionClass_block_invoke;
    v18 = &unk_1E8590188;
    v19 = &v20;
    __getMCProfileConnectionClass_block_invoke(&v15);
    v3 = v21[3];
  }

  v4 = v3;
  _Block_object_dispose(&v20, 8);
  sharedConnection = [v3 sharedConnection];
  isScreenShotAllowed = [sharedConnection isScreenShotAllowed];

  if ((isScreenShotAllowed & 1) == 0)
  {
    [v2 setIsAbleToTakeScreenshots:0];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Disallowed from ManagedConfiguration"];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v7 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v23 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v18 = &unk_1E8590188;
    v19 = &v20;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(&v15);
    v7 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v7)
  {
    [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    goto LABEL_25;
  }

  if (v7() <= 0)
  {
    [v2 setIsAbleToTakeScreenshots:0];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Device has not done first unlock"];
  }

  sharedManager = [getUMUserManagerClass() sharedManager];
  if ([sharedManager isSharedIPad])
  {
    sharedManager2 = [getUMUserManagerClass() sharedManager];
    currentUser = [sharedManager2 currentUser];
    isLoginUser = [currentUser isLoginUser];

    if (isLoginUser)
    {
      [v2 setIsAbleToTakeScreenshots:0];
      [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Device is at the login window"];
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v12 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v23 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
    v18 = &unk_1E8590188;
    v19 = &v20;
    __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(&v15);
    v12 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v12)
  {
LABEL_25:
    v14 = [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    _Block_object_dispose(&v20, 8);
    _Unwind_Resume(v14);
  }

  if (v12())
  {
    [v2 setIsAbleToTakeScreenshots:0];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Device has not gone through Buddy"];
  }

  if (MGGetBoolAnswer() && _SSShouldIgnoreAbilityCheck())
  {
    [v2 setIsAbleToTakeScreenshots:1];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:0];
  }

  return v2;
}

@end