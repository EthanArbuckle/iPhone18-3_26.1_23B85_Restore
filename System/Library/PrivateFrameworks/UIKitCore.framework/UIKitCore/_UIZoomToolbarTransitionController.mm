@interface _UIZoomToolbarTransitionController
- (_TtC5UIKit34_UIZoomToolbarTransitionController)init;
- (void)beginTransitionWithToolbar:(id)toolbar items:(id)items animated:(BOOL)animated;
- (void)cancelTransition;
- (void)dealloc;
- (void)prepareTransitionWithToolbar:(id)toolbar;
@end

@implementation _UIZoomToolbarTransitionController

- (void)cancelTransition
{
  selfCopy = self;
  sub_188F12580();
}

- (void)prepareTransitionWithToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  selfCopy = self;
  sub_188F127C8(toolbarCopy);
  v7 = v6;

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot) = v7;
}

- (void)beginTransitionWithToolbar:(id)toolbar items:(id)items animated:(BOOL)animated
{
  sub_188A34624(0, &qword_1ED48E8C0);
  sub_18A4A7548();
  toolbarCopy = toolbar;
  selfCopy = self;
  sub_188F12AE0(toolbarCopy);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_188F12580();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(_UIZoomToolbarTransitionController *)&v5 dealloc];
}

- (_TtC5UIKit34_UIZoomToolbarTransitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end