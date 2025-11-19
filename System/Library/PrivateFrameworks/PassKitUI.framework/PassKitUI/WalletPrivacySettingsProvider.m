@interface WalletPrivacySettingsProvider
- (NSArray)specifiers;
- (_TtC9PassKitUI29WalletPrivacySettingsProvider)init;
- (_TtP9PassKitUI33PKPrivacySettingsProviderDelegate_)delegate;
- (id)backgroundAddAuthorizationWithSpecifier:(id)a3;
- (void)setBackgroundAddAuthorization:(id)a3 :(id)a4;
@end

@implementation WalletPrivacySettingsProvider

- (_TtP9PassKitUI33PKPrivacySettingsProviderDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)specifiers
{
  v2 = self;
  sub_1BDA7B434();

  sub_1BD0E5E8C(0, &qword_1EBD46B20);
  v3 = sub_1BE052724();

  return v3;
}

- (void)setBackgroundAddAuthorization:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BDA7BAC8(v6, v7);
}

- (id)backgroundAddAuthorizationWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BDA7EBDC(v4);

  return v6;
}

- (_TtC9PassKitUI29WalletPrivacySettingsProvider)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for WalletPrivacySettingsProvider();
  return [(WalletPrivacySettingsProvider *)&v4 init];
}

@end