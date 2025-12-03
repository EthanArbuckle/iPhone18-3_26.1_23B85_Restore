@interface UISDFView
+ (Class)layerClass;
- (void)_addTrackedElementFor:(id)for with:(id)with;
- (void)_removeTrackedElementFor:(id)for;
@end

@implementation UISDFView

- (void)_addTrackedElementFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  sub_188B67A2C(forCopy, with);
}

+ (Class)layerClass
{
  sub_188A34624(0, qword_1ED48E370);

  return swift_getObjCClassFromMetadata();
}

- (void)_removeTrackedElementFor:(id)for
{
  if ((*(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer) & 1) == 0)
  {
    swift_beginAccess();
    forCopy = for;
    selfCopy = self;
    v7 = sub_1891E9C70(forCopy);
    swift_endAccess();
    [v7 removeFromSuperview];
  }
}

@end