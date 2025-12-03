@interface AppPrivacySettingsController
- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithCoder:(id)coder;
- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
@end

@implementation AppPrivacySettingsController

- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_3BA0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E64(v5, v7, bundle);
}

- (_TtC21WalletPrivacySettings28AppPrivacySettingsController)initWithCoder:(id)coder
{
  v3 = &self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider] = 1;
  *&self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider] = 1;
  result = sub_3C20();
  __break(1u);
  return result;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = AppPrivacySettingsController.specifiers()();

  if (v3)
  {
    v4.super.isa = sub_3BB0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end