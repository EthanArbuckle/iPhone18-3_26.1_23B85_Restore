@interface ScriptStorefrontCache
- (NSString)storefrontLanguageCode;
- (_TtC15SeymourServices21ScriptStorefrontCache)init;
@end

@implementation ScriptStorefrontCache

- (NSString)storefrontLanguageCode
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 standardUserDefaults];
  sub_227669D40();
  v6 = sub_22766BFD0();

  v7 = [v5 stringForKey_];

  if (v7)
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