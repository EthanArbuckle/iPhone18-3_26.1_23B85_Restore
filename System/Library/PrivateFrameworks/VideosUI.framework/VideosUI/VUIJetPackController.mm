@interface VUIJetPackController
+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)key defaults:(id)defaults urlOverrideDefaultKey:(id)defaultKey;
+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)key defaults:(id)defaults urlOverrideDefaultKey:(id)defaultKey withCachePolicy:(unint64_t)policy;
- (id)getJetPackSource;
- (id)getJetPackURL;
@end

@implementation VUIJetPackController

+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)key defaults:(id)defaults urlOverrideDefaultKey:(id)defaultKey
{
  sub_1E4205F14();
  swift_getObjCClassMetadata();
  keyCopy = key;
  defaultsCopy = defaults;
  static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:)();
  v10 = v9;

  return v10;
}

- (id)getJetPackURL
{
  selfCopy = self;
  v3 = VUIJetPackController.getJetPackURL()();

  return v3;
}

+ (_TtC8VideosUI20VUIJetPackController)controllerWithBagKey:(id)key defaults:(id)defaults urlOverrideDefaultKey:(id)defaultKey withCachePolicy:(unint64_t)policy
{
  sub_1E4205F14();
  swift_getObjCClassMetadata();
  keyCopy = key;
  defaultsCopy = defaults;
  static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:withCachePolicy:)();
  v11 = v10;

  return v11;
}

- (id)getJetPackSource
{
  selfCopy = self;
  v3 = VUIJetPackController.getJetPackSource()();

  return v3;
}

@end