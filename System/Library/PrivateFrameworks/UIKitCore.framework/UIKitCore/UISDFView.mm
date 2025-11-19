@interface UISDFView
+ (Class)layerClass;
- (void)_addTrackedElementFor:(id)a3 with:(id)a4;
- (void)_removeTrackedElementFor:(id)a3;
@end

@implementation UISDFView

- (void)_addTrackedElementFor:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188B67A2C(v6, a4);
}

+ (Class)layerClass
{
  sub_188A34624(0, qword_1ED48E370);

  return swift_getObjCClassFromMetadata();
}

- (void)_removeTrackedElementFor:(id)a3
{
  if ((*(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer) & 1) == 0)
  {
    swift_beginAccess();
    v5 = a3;
    v6 = self;
    v7 = sub_1891E9C70(v5);
    swift_endAccess();
    [v7 removeFromSuperview];
  }
}

@end