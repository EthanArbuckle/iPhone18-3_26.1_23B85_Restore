@interface SUIKPControllerFactoryInternal
+ (id)thirdPartySettingsControllerForSpecifierWithSpecifier:(id)specifier;
- (SUIKPControllerFactoryInternal)init;
@end

@implementation SUIKPControllerFactoryInternal

+ (id)thirdPartySettingsControllerForSpecifierWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = _s20SettingsUIKitPrivate18_ControllerFactoryC010thirdPartyaD12ForSpecifier9specifierSo06UIViewD0CSo11PSSpecifierC_tFZ_0(specifierCopy);

  return v4;
}

- (SUIKPControllerFactoryInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _ControllerFactory();
  return [(SUIKPControllerFactoryInternal *)&v3 init];
}

@end