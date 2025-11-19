@interface VUIJetPackController
+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)a3 defaults:(id)a4 urlOverrideDefaultKey:(id)a5;
+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)a3 defaults:(id)a4 urlOverrideDefaultKey:(id)a5 withCachePolicy:(unint64_t)a6;
- (id)getJetPackSource;
- (id)getJetPackURL;
@end

@implementation VUIJetPackController

+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)a3 defaults:(id)a4 urlOverrideDefaultKey:(id)a5
{
  sub_1E4205F14();
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = a4;
  static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:)();
  v10 = v9;

  return v10;
}

- (id)getJetPackURL
{
  v2 = self;
  v3 = VUIJetPackController.getJetPackURL()();

  return v3;
}

+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)a3 defaults:(id)a4 urlOverrideDefaultKey:(id)a5 withCachePolicy:(unint64_t)a6
{
  sub_1E4205F14();
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:withCachePolicy:)();
  v11 = v10;

  return v11;
}

- (id)getJetPackSource
{
  v2 = self;
  v3 = VUIJetPackController.getJetPackSource()();

  return v3;
}

@end