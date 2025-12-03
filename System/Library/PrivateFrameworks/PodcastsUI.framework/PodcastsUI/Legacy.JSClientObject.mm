@interface Legacy.JSClientObject
- (NSArray)displayKinds;
- (NSString)buildType;
- (NSString)deviceType;
- (NSString)guid;
- (NSString)storefrontIdentifier;
- (_TtCO10PodcastsUI6Legacy14JSClientObject)init;
- (id)analyticsIdentifiers;
- (id)getDefaultForKeyName:(id)name;
- (void)setDefaultForKeyName:(id)name :(id)a4;
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
  deviceGUID = [objc_opt_self() deviceGUID];
  if (!deviceGUID)
  {
    sub_21B4C9708();
    v3 = sub_21B4C96C8();

    deviceGUID = v3;
  }

  return deviceGUID;
}

- (NSString)storefrontIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCO10PodcastsUI6Legacy14JSClientObject_accountStore);
  selfCopy = self;
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];
  if (ams_activeiTunesAccount && (v5 = ams_activeiTunesAccount, v6 = [ams_activeiTunesAccount ams_storefront], v5, v6))
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

- (id)getDefaultForKeyName:(id)name
{
  v4 = objc_opt_self();
  nameCopy = name;
  _applePodcastsFoundationSharedUserDefaults = [v4 _applePodcastsFoundationSharedUserDefaults];
  stringForKey_ = [_applePodcastsFoundationSharedUserDefaults stringForKey_];

  if (stringForKey_)
  {
    sub_21B4C9708();

    stringForKey_ = sub_21B4C96C8();
  }

  return stringForKey_;
}

- (void)setDefaultForKeyName:(id)name :(id)a4
{
  v5 = sub_21B4C9708();
  v7 = v6;
  sub_21B4C9708();
  selfCopy = self;
  sub_21B46348C(v5, v7);
}

- (_TtCO10PodcastsUI6Legacy14JSClientObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end