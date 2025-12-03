@interface ScriptStorefrontCache
- (NSString)storefrontLanguageCode;
- (_TtC15SeymourServices21ScriptStorefrontCache)init;
@end

@implementation ScriptStorefrontCache

- (NSString)storefrontLanguageCode
{
  v3 = objc_opt_self();
  selfCopy = self;
  standardUserDefaults = [v3 standardUserDefaults];
  sub_227669D40();
  v6 = sub_22766BFD0();

  stringForKey_ = [standardUserDefaults stringForKey_];

  if (stringForKey_)
  {
    sub_22766C000();

    v8 = sub_22766BFD0();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (_TtC15SeymourServices21ScriptStorefrontCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScriptStorefrontCache();
  return [(ScriptStorefrontCache *)&v3 init];
}

@end