@interface _UserInterfaceStyleSceneComponentProvider
- (_TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider)init;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_setScene:(id)scene;
- (void)set_traitOverrides:(id)overrides;
@end

@implementation _UserInterfaceStyleSceneComponentProvider

- (void)_setScene:(id)scene
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene);
  *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene) = scene;
  sceneCopy = scene;
}

- (void)set_traitOverrides:(id)overrides
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides);
  *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides) = overrides;
  overridesCopy = overrides;
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1DAE00AA0();
}

- (_TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end