@interface AppPrivacySettingsProvider
- (NSArray)specifiers;
- (_TtC9PassKitUI26AppPrivacySettingsProvider)init;
- (_TtC9PassKitUI26AppPrivacySettingsProvider)initWithBundleIdentifier:(id)a3 delegate:(id)a4;
- (_TtP9PassKitUI33PKPrivacySettingsProviderDelegate_)delegate;
- (id)backgroundAddAuthorizationWithSpecifier:(id)a3;
- (void)setBackgroundAddAuthorization:(id)a3 :(id)a4;
@end

@implementation AppPrivacySettingsProvider

- (_TtP9PassKitUI33PKPrivacySettingsProviderDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9PassKitUI26AppPrivacySettingsProvider)initWithBundleIdentifier:(id)a3 delegate:(id)a4
{
  v5 = sub_1BE052434();
  v7 = v6;
  swift_unknownObjectWeakInit();
  v8 = (self + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  *v8 = v5;
  v8[1] = v7;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10.receiver = self;
  v10.super_class = type metadata accessor for AppPrivacySettingsProvider();
  return [(AppPrivacySettingsProvider *)&v10 init];
}

- (NSArray)specifiers
{
  v2 = self;
  sub_1BD4684D0();

  sub_1BD469708();
  v3 = sub_1BE052724();

  return v3;
}

- (void)setBackgroundAddAuthorization:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD468BB4(v6, v7);
}

- (id)backgroundAddAuthorizationWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BD469124(v4);

  return v6;
}

- (_TtC9PassKitUI26AppPrivacySettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end