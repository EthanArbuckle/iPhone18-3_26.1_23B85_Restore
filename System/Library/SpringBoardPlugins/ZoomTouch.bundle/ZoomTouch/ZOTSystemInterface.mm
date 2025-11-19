@interface ZOTSystemInterface
+ (void)initialize;
+ (void)sendUserEventOccurred;
@end

@implementation ZOTSystemInterface

+ (void)initialize
{
  v2 = NSClassFromString(@"AXBackBoardGlue");
  v3 = AXBackboardGlue;
  AXBackboardGlue = v2;

  v4 = +[AXValidationManager sharedInstance];
  [v4 performValidations:&__block_literal_global_1 withPreValidationHandler:&__block_literal_global_320 postValidationHandler:0];
}

BOOL __32__ZOTSystemInterface_initialize__block_invoke(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"AXBackBoardGlue" hasClassMethod:@"sendUserEventOccurred" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"AXBackBoardGlue" hasClassMethod:@"topApplicationBundleId" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"AXBackBoardGlue" hasClassMethod:@"runningApplications" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"AXBackBoardGlue" hasClassMethod:@"applicationWorkspace" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"BKApplication" hasInstanceVariable:@"_activationSettings" withType:"BKSApplicationActivationSettings"];
  [(AXValidationManager *)v2 validateClass:@"BKSApplicationActivationSettings" hasInstanceMethod:@"classic" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"BKApplication" hasInstanceMethod:@"noteSuspended:" withFullSignature:"v", "^{__GSEvent=}", 0];
  [(AXValidationManager *)v2 validateClass:@"BKApplication" hasInstanceMethod:@"noteSuspensionSettingsUpdated:" withFullSignature:"v", "^{__GSEvent=}", 0];

  return 1;
}

BOOL __32__ZOTSystemInterface_initialize__block_invoke_2(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"ZoomTouch"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"ZoomTouch"];

  return _AXPerformValidationChecks();
}

+ (void)sendUserEventOccurred
{
  v2 = +[AXUserEventTimer sharedInstance];
  [v2 userEventOccurred];
}

@end