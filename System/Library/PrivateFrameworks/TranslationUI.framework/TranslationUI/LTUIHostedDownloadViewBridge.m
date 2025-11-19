@interface LTUIHostedDownloadViewBridge
+ (id)personalTranslatorViewControllerWithAnimatedHeaderFor:(id)a3;
+ (void)presentLanguageDownloadViewInSettingContextWithTraitCollection:(id)a3 specifier:(id)a4;
- (LTUIHostedDownloadViewBridge)init;
@end

@implementation LTUIHostedDownloadViewBridge

+ (id)personalTranslatorViewControllerWithAnimatedHeaderFor:(id)a3
{
  v3 = a3;
  v4 = _s13TranslationUI24HostedDownloadViewBridgeC018personalTranslatorE28ControllerWithAnimatedHeader3forSo06UIViewI0CAG_tFZ_0(v3);

  return v4;
}

+ (void)presentLanguageDownloadViewInSettingContextWithTraitCollection:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s13TranslationUI24HostedDownloadViewBridgeC015presentLanguagedE35InSettingContextWithTraitCollection_9specifierySo07UITraitN0C_So11PSSpecifierCtFZ_0();
}

- (LTUIHostedDownloadViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HostedDownloadViewBridge();
  return [(LTUIHostedDownloadViewBridge *)&v3 init];
}

@end