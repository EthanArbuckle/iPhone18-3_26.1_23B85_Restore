@interface _UITabCrossFadeTransitionSpec
+ (id)settingsControllerModule;
- (id)specFor:(id)for;
- (void)setCompact:(id)compact;
- (void)setDefaultValues;
- (void)setRegular:(id)regular;
@end

@implementation _UITabCrossFadeTransitionSpec

- (void)setRegular:(id)regular
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular) = regular;
  regularCopy = regular;
}

- (void)setCompact:(id)compact
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact) = compact;
  compactCopy = compact;
}

- (id)specFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_188E800D4(forCopy);

  return v6;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188E7F894();
}

+ (id)settingsControllerModule
{
  sub_188E8013C();

  return v2;
}

@end