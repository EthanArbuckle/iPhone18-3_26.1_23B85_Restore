@interface SBUISecureRenderingSettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation SBUISecureRenderingSettingsExtension

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if ([v3 matchesProperty:sel_isSecureRenderingEnabled])
  {
    [v3 setPropagating:1];
    [v3 setDefaultValue:&unk_1F1DB5A70];
    [v3 setNullPreserving:1];
  }
}

@end