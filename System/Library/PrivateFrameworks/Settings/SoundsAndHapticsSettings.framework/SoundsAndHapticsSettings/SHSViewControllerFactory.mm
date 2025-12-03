@interface SHSViewControllerFactory
+ (id)createHapticsOptionsViewController:(int64_t)controller delegate:(id)delegate;
- (_TtC24SoundsAndHapticsSettings24SHSViewControllerFactory)init;
@end

@implementation SHSViewControllerFactory

+ (id)createHapticsOptionsViewController:(int64_t)controller delegate:(id)delegate
{
  v5 = objc_allocWithZone(type metadata accessor for SHSHapticsOptionsViewController());
  swift_unknownObjectRetain();
  v6 = [v5 init];
  *&v6[OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController_selectedOption] = controller;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return v6;
}

- (_TtC24SoundsAndHapticsSettings24SHSViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SHSViewControllerFactory();
  return [(SHSViewControllerFactory *)&v3 init];
}

@end