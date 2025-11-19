@interface _UIZoomToolbarTransitionController
- (_TtC5UIKit34_UIZoomToolbarTransitionController)init;
- (void)beginTransitionWithToolbar:(id)a3 items:(id)a4 animated:(BOOL)a5;
- (void)cancelTransition;
- (void)dealloc;
- (void)prepareTransitionWithToolbar:(id)a3;
@end

@implementation _UIZoomToolbarTransitionController

- (void)cancelTransition
{
  v1 = a1;
  sub_188F12580();
}

- (void)prepareTransitionWithToolbar:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188F127C8(v4);
  v7 = v6;

  v8 = *(&v5->super.isa + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
  *(&v5->super.isa + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot) = v7;
}

- (void)beginTransitionWithToolbar:(id)a3 items:(id)a4 animated:(BOOL)a5
{
  sub_188A34624(0, &qword_1ED48E8C0);
  sub_18A4A7548();
  v7 = a3;
  v8 = self;
  sub_188F12AE0(v7);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_188F12580();
  v5.receiver = v4;
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