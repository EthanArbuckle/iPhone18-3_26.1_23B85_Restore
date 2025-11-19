@interface _UserInterfaceStyleSceneComponentProvider
- (_TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider)init;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_setScene:(id)a3;
- (void)set_traitOverrides:(id)a3;
@end

@implementation _UserInterfaceStyleSceneComponentProvider

- (void)_setScene:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene);
  *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene) = a3;
  v3 = a3;
}

- (void)set_traitOverrides:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides);
  *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides) = a3;
  v3 = a3;
}

- (void)_sceneWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE00AA0();
}

- (_TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end