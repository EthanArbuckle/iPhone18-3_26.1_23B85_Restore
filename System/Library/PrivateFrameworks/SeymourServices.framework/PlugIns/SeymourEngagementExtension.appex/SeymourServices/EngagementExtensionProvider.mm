@interface EngagementExtensionProvider
+ (void)performRequestWithObject:(id)a3 completion:(id)a4;
- (_TtC26SeymourEngagementExtension27EngagementExtensionProvider)init;
@end

@implementation EngagementExtensionProvider

+ (void)performRequestWithObject:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  swift_unknownObjectRetain();
  sub_1000051F8();
  swift_unknownObjectRelease();
  sub_1000030BC(v5, v4);
  _Block_release(v4);
  sub_1000044EC(v5);
}

- (_TtC26SeymourEngagementExtension27EngagementExtensionProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EngagementExtensionProvider();
  return [(EngagementExtensionProvider *)&v3 init];
}

@end