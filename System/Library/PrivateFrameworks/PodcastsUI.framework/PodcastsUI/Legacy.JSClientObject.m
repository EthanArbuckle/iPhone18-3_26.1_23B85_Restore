@interface Legacy.JSClientObject
- (NSArray)displayKinds;
- (NSString)buildType;
- (NSString)deviceType;
- (NSString)guid;
- (NSString)storefrontIdentifier;
- (_TtCO10PodcastsUI6Legacy14JSClientObject)init;
- (id)analyticsIdentifiers;
- (id)getDefaultForKeyName:(id)a3;
- (void)setDefaultForKeyName:(id)a3 :(id)a4;
@end

@implementation Legacy.JSClientObject

- (NSString)deviceType
{
  sub_21B3AAFE0();
  v2 = sub_21B4C96C8();

  return v2;
}

- (NSString)buildType
{
  [objc_opt_self() isRunningOnInternalOS];
  v2 = sub_21B4C96C8();

  return v2;
}

- (NSArray)displayKinds
{
  sub_21B4632B4();
  v2 = sub_21B4C9918();

  return v2;
}

- (NSString)guid
{
  v2 = [objc_opt_self() deviceGUID];
  if (!v2)
  {
    sub_21B4C9708();
    v3 = sub_21B4C96C8();

    v2 = v3;
  }

  return v2;
}

- (NSString)storefrontIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCO10PodcastsUI6Legacy14JSClientObject_accountStore);
  v3 = self;
  v4 = [v2 ams_activeiTunesAccount];
  if (v4 && (v5 = v4, v6 = [v4 ams_storefront], v5, v6))
  {
    sub_21B4C9708();

    v7 = sub_21B4C96C8();

    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)analyticsIdentifiers
{
  sub_21B40D384(MEMORY[0x277D84F90]);
  v2 = sub_21B4C9578();

  return v2;
}

- (id)getDefaultForKeyName:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 _applePodcastsFoundationSharedUserDefaults];
  v7 = [v6 stringForKey_];

  if (v7)
  {
    sub_21B4C9708();

    v7 = sub_21B4C96C8();
  }

  return v7;
}

- (void)setDefaultForKeyName:(id)a3 :(id)a4
{
  v5 = sub_21B4C9708();
  v7 = v6;
  sub_21B4C9708();
  v8 = self;
  sub_21B46348C(v5, v7);
}

- (_TtCO10PodcastsUI6Legacy14JSClientObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end