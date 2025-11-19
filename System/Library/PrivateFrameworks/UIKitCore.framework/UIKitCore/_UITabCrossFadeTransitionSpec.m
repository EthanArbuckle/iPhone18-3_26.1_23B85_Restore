@interface _UITabCrossFadeTransitionSpec
+ (id)settingsControllerModule;
- (id)specFor:(id)a3;
- (void)setCompact:(id)a3;
- (void)setDefaultValues;
- (void)setRegular:(id)a3;
@end

@implementation _UITabCrossFadeTransitionSpec

- (void)setRegular:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular) = a3;
  v3 = a3;
}

- (void)setCompact:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact) = a3;
  v3 = a3;
}

- (id)specFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188E800D4(v4);

  return v6;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_188E7F894();
}

+ (id)settingsControllerModule
{
  sub_188E8013C();

  return v2;
}

@end