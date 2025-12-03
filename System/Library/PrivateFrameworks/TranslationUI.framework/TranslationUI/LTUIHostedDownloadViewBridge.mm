@interface LTUIHostedDownloadViewBridge
+ (id)personalTranslatorViewControllerWithAnimatedHeaderFor:(id)for;
+ (void)presentLanguageDownloadViewInSettingContextWithTraitCollection:(id)collection specifier:(id)specifier;
- (LTUIHostedDownloadViewBridge)init;
@end

@implementation LTUIHostedDownloadViewBridge

+ (id)personalTranslatorViewControllerWithAnimatedHeaderFor:(id)for
{
  forCopy = for;
  v4 = _s13TranslationUI24HostedDownloadViewBridgeC018personalTranslatorE28ControllerWithAnimatedHeader3forSo06UIViewI0CAG_tFZ_0(forCopy);

  return v4;
}

+ (void)presentLanguageDownloadViewInSettingContextWithTraitCollection:(id)collection specifier:(id)specifier
{
  collectionCopy = collection;
  specifierCopy = specifier;
  _s13TranslationUI24HostedDownloadViewBridgeC015presentLanguagedE35InSettingContextWithTraitCollection_9specifierySo07UITraitN0C_So11PSSpecifierCtFZ_0();
}

- (LTUIHostedDownloadViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HostedDownloadViewBridge();
  return [(LTUIHostedDownloadViewBridge *)&v3 init];
}

@end