@interface PXInternalSettingsDiagnosticsService
- (BOOL)canPerformAction;
- (void)performAction;
@end

@implementation PXInternalSettingsDiagnosticsService

- (void)performAction
{
  v2 = NSClassFromString(&cfstr_Purootsettings.isa);
  v3 = NSSelectorFromString(&cfstr_Presentsetting.isa);

  [(objc_class *)v2 performSelector:v3];
}

- (BOOL)canPerformAction
{
  v2 = +[PXDiagnosticsSettings sharedInstance];
  v3 = [v2 enableInternalSettingsService];

  return v3;
}

@end