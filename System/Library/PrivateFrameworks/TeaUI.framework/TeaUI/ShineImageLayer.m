@interface ShineImageLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC5TeaUI15ShineImageLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation ShineImageLayer

- (_TtC5TeaUI15ShineImageLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1D8191F34();
  swift_unknownObjectRelease();
  return sub_1D7F8CF0C(v4);
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  v3 = sub_1D8190F14();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1D7F8D190(v3, v5);

  return v6 & 1;
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1D7F8D2B0();
}

@end